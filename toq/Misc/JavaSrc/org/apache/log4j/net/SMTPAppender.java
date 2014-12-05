// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.io.*;
import java.util.Date;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.Layout;
import org.apache.log4j.helpers.*;
import org.apache.log4j.spi.*;
import org.apache.log4j.xml.DOMConfigurator;
import org.apache.log4j.xml.UnrecognizedElementHandler;
import org.w3c.dom.Element;

// Referenced classes of package org.apache.log4j.net:
//            DefaultEvaluator

public class SMTPAppender extends AppenderSkeleton
    implements UnrecognizedElementHandler
{

    static Class class$org$apache$log4j$spi$TriggeringEventEvaluator;
    private String bcc;
    private int bufferSize;
    protected CyclicBuffer cb;
    private String cc;
    protected TriggeringEventEvaluator evaluator;
    private String from;
    private boolean locationInfo;
    protected Message msg;
    private String replyTo;
    private boolean sendOnClose;
    private boolean smtpDebug;
    private String smtpHost;
    private String smtpPassword;
    private int smtpPort;
    private String smtpProtocol;
    private String smtpUsername;
    private String subject;
    private String to;

    public SMTPAppender()
    {
        this(((TriggeringEventEvaluator) (new DefaultEvaluator())));
    }

    public SMTPAppender(TriggeringEventEvaluator triggeringeventevaluator)
    {
        smtpPort = -1;
        smtpDebug = false;
        bufferSize = 512;
        locationInfo = false;
        sendOnClose = false;
        cb = new CyclicBuffer(bufferSize);
        evaluator = triggeringeventevaluator;
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    public void activateOptions()
    {
        msg = new MimeMessage(createSession());
        String s;
        addressMessage(msg);
        s = subject;
        if (s == null)
            break MISSING_BLOCK_LABEL_49;
        msg.setSubject(MimeUtility.encodeText(subject, "UTF-8", null));
_L2:
        if (evaluator instanceof OptionHandler)
            ((OptionHandler)evaluator).activateOptions();
        return;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        try
        {
            LogLog.error("Unable to encode SMTP subject", unsupportedencodingexception);
        }
        catch (MessagingException messagingexception)
        {
            LogLog.error("Could not activate SMTPAppender options.", messagingexception);
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void addressMessage(Message message)
        throws MessagingException
    {
        if (from != null)
            message.setFrom(getAddress(from));
        else
            message.setFrom();
        if (replyTo != null && replyTo.length() > 0)
            message.setReplyTo(parseAddress(replyTo));
        if (to != null && to.length() > 0)
            message.setRecipients(javax.mail.Message.RecipientType.TO, parseAddress(to));
        if (cc != null && cc.length() > 0)
            message.setRecipients(javax.mail.Message.RecipientType.CC, parseAddress(cc));
        if (bcc != null && bcc.length() > 0)
            message.setRecipients(javax.mail.Message.RecipientType.BCC, parseAddress(bcc));
    }

    public void append(LoggingEvent loggingevent)
    {
        if (checkEntryConditions())
        {
            loggingevent.getThreadName();
            loggingevent.getNDC();
            loggingevent.getMDCCopy();
            if (locationInfo)
                loggingevent.getLocationInformation();
            loggingevent.getRenderedMessage();
            loggingevent.getThrowableStrRep();
            cb.add(loggingevent);
            if (evaluator.isTriggeringEvent(loggingevent))
            {
                sendBuffer();
                return;
            }
        }
    }

    protected boolean checkEntryConditions()
    {
        if (msg == null)
        {
            errorHandler.error("Message object not configured.");
            return false;
        }
        if (evaluator == null)
        {
            errorHandler.error("No TriggeringEventEvaluator is set for appender [" + name + "].");
            return false;
        }
        if (layout == null)
        {
            errorHandler.error("No layout set for appender named [" + name + "].");
            return false;
        } else
        {
            return true;
        }
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        closed = true;
        if (sendOnClose && cb.length() > 0)
            sendBuffer();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected Session createSession()
    {
        Properties properties;
        String s;
        String s1;
        _cls1 _lcls1;
        Session session;
        try
        {
            properties = new Properties(System.getProperties());
        }
        catch (SecurityException securityexception)
        {
            properties = new Properties();
        }
        s = "mail.smtp";
        if (smtpProtocol != null)
        {
            properties.put("mail.transport.protocol", smtpProtocol);
            s = "mail." + smtpProtocol;
        }
        if (smtpHost != null)
            properties.put(s + ".host", smtpHost);
        if (smtpPort > 0)
            properties.put(s + ".port", String.valueOf(smtpPort));
        s1 = smtpPassword;
        _lcls1 = null;
        if (s1 != null)
        {
            String s2 = smtpUsername;
            _lcls1 = null;
            if (s2 != null)
            {
                properties.put(s + ".auth", "true");
                _lcls1 = new _cls1();
            }
        }
        session = Session.getInstance(properties, _lcls1);
        if (smtpProtocol != null)
            session.setProtocolForAddress("rfc822", smtpProtocol);
        if (smtpDebug)
            session.setDebug(smtpDebug);
        return session;
    }

    protected String formatBody()
    {
        StringBuffer stringbuffer = new StringBuffer();
        String s = layout.getHeader();
        if (s != null)
            stringbuffer.append(s);
        int i = cb.length();
        for (int j = 0; j < i; j++)
        {
            LoggingEvent loggingevent = cb.get();
            stringbuffer.append(layout.format(loggingevent));
            if (!layout.ignoresThrowable())
                continue;
            String as[] = loggingevent.getThrowableStrRep();
            if (as == null)
                continue;
            for (int k = 0; k < as.length; k++)
            {
                stringbuffer.append(as[k]);
                stringbuffer.append(Layout.LINE_SEP);
            }

        }

        String s1 = layout.getFooter();
        if (s1 != null)
            stringbuffer.append(s1);
        return stringbuffer.toString();
    }

    InternetAddress getAddress(String s)
    {
        InternetAddress internetaddress;
        try
        {
            internetaddress = new InternetAddress(s);
        }
        catch (AddressException addressexception)
        {
            errorHandler.error("Could not parse address [" + s + "].", addressexception, 6);
            return null;
        }
        return internetaddress;
    }

    public String getBcc()
    {
        return bcc;
    }

    public int getBufferSize()
    {
        return bufferSize;
    }

    public String getCc()
    {
        return cc;
    }

    public final TriggeringEventEvaluator getEvaluator()
    {
        return evaluator;
    }

    public String getEvaluatorClass()
    {
        if (evaluator == null)
            return null;
        else
            return evaluator.getClass().getName();
    }

    public String getFrom()
    {
        return from;
    }

    public boolean getLocationInfo()
    {
        return locationInfo;
    }

    public String getReplyTo()
    {
        return replyTo;
    }

    public boolean getSMTPDebug()
    {
        return smtpDebug;
    }

    public String getSMTPHost()
    {
        return smtpHost;
    }

    public String getSMTPPassword()
    {
        return smtpPassword;
    }

    public final int getSMTPPort()
    {
        return smtpPort;
    }

    public final String getSMTPProtocol()
    {
        return smtpProtocol;
    }

    public String getSMTPUsername()
    {
        return smtpUsername;
    }

    public final boolean getSendOnClose()
    {
        return sendOnClose;
    }

    public String getSubject()
    {
        return subject;
    }

    public String getTo()
    {
        return to;
    }

    InternetAddress[] parseAddress(String s)
    {
        InternetAddress ainternetaddress[];
        try
        {
            ainternetaddress = InternetAddress.parse(s, true);
        }
        catch (AddressException addressexception)
        {
            errorHandler.error("Could not parse address [" + s + "].", addressexception, 6);
            return null;
        }
        return ainternetaddress;
    }

    public boolean parseUnrecognizedElement(Element element, Properties properties)
        throws Exception
    {
        if ("triggeringPolicy".equals(element.getNodeName()))
        {
            Class class1;
            if (class$org$apache$log4j$spi$TriggeringEventEvaluator == null)
            {
                class1 = _mthclass$("org.apache.log4j.spi.TriggeringEventEvaluator");
                class$org$apache$log4j$spi$TriggeringEventEvaluator = class1;
            } else
            {
                class1 = class$org$apache$log4j$spi$TriggeringEventEvaluator;
            }
            Object obj = DOMConfigurator.parseElement(element, properties, class1);
            if (obj instanceof TriggeringEventEvaluator)
                setEvaluator((TriggeringEventEvaluator)obj);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean requiresLayout()
    {
        return true;
    }

    protected void sendBuffer()
    {
        boolean flag;
        int i;
        int j;
        String s;
        MimeBodyPart mimebodypart;
        MimeMultipart mimemultipart;
        ByteArrayOutputStream bytearrayoutputstream;
        OutputStreamWriter outputstreamwriter;
        Exception exception;
        StringBuffer stringbuffer;
        InternetHeaders internetheaders;
        try
        {
            s = formatBody();
        }
        catch (MessagingException messagingexception)
        {
            LogLog.error("Error occured while sending e-mail notification.", messagingexception);
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            LogLog.error("Error occured while sending e-mail notification.", runtimeexception);
            return;
        }
        flag = true;
        i = 0;
_L7:
        if (i >= s.length() || !flag) goto _L2; else goto _L1
_L2:
        if (!flag) goto _L4; else goto _L3
_L3:
        mimebodypart = new MimeBodyPart();
        mimebodypart.setContent(s, layout.getContentType());
_L5:
        mimemultipart = new MimeMultipart();
        mimemultipart.addBodyPart(mimebodypart);
        msg.setContent(mimemultipart);
        msg.setSentDate(new Date());
        Transport.send(msg);
        return;
_L4:
        bytearrayoutputstream = new ByteArrayOutputStream();
        outputstreamwriter = new OutputStreamWriter(MimeUtility.encode(bytearrayoutputstream, "quoted-printable"), "UTF-8");
        outputstreamwriter.write(s);
        outputstreamwriter.close();
        internetheaders = new InternetHeaders();
        internetheaders.setHeader("Content-Type", layout.getContentType() + "; charset=UTF-8");
        internetheaders.setHeader("Content-Transfer-Encoding", "quoted-printable");
        mimebodypart = new MimeBodyPart(internetheaders, bytearrayoutputstream.toByteArray());
          goto _L5
        exception;
        stringbuffer = new StringBuffer(s);
        j = 0;
_L8:
        if (j < stringbuffer.length())
        {
            if (stringbuffer.charAt(j) >= '\200')
                stringbuffer.setCharAt(j, '?');
            break MISSING_BLOCK_LABEL_337;
        }
        mimebodypart = new MimeBodyPart();
        mimebodypart.setContent(stringbuffer.toString(), layout.getContentType());
          goto _L5
_L1:
        if (s.charAt(i) <= '\177')
            flag = true;
        else
            flag = false;
        i++;
        if (true) goto _L7; else goto _L6
_L6:
        j++;
          goto _L8
    }

    public void setBcc(String s)
    {
        bcc = s;
    }

    public void setBufferSize(int i)
    {
        bufferSize = i;
        cb.resize(i);
    }

    public void setCc(String s)
    {
        cc = s;
    }

    public final void setEvaluator(TriggeringEventEvaluator triggeringeventevaluator)
    {
        if (triggeringeventevaluator == null)
        {
            throw new NullPointerException("trigger");
        } else
        {
            evaluator = triggeringeventevaluator;
            return;
        }
    }

    public void setEvaluatorClass(String s)
    {
        Class class1;
        if (class$org$apache$log4j$spi$TriggeringEventEvaluator == null)
        {
            class1 = _mthclass$("org.apache.log4j.spi.TriggeringEventEvaluator");
            class$org$apache$log4j$spi$TriggeringEventEvaluator = class1;
        } else
        {
            class1 = class$org$apache$log4j$spi$TriggeringEventEvaluator;
        }
        evaluator = (TriggeringEventEvaluator)OptionConverter.instantiateByClassName(s, class1, evaluator);
    }

    public void setFrom(String s)
    {
        from = s;
    }

    public void setLocationInfo(boolean flag)
    {
        locationInfo = flag;
    }

    public void setReplyTo(String s)
    {
        replyTo = s;
    }

    public void setSMTPDebug(boolean flag)
    {
        smtpDebug = flag;
    }

    public void setSMTPHost(String s)
    {
        smtpHost = s;
    }

    public void setSMTPPassword(String s)
    {
        smtpPassword = s;
    }

    public final void setSMTPPort(int i)
    {
        smtpPort = i;
    }

    public final void setSMTPProtocol(String s)
    {
        smtpProtocol = s;
    }

    public void setSMTPUsername(String s)
    {
        smtpUsername = s;
    }

    public final void setSendOnClose(boolean flag)
    {
        sendOnClose = flag;
    }

    public void setSubject(String s)
    {
        subject = s;
    }

    public void setTo(String s)
    {
        to = s;
    }



    private class _cls1 extends Authenticator
    {

        private final SMTPAppender this$0;

        protected PasswordAuthentication getPasswordAuthentication()
        {
            return new PasswordAuthentication(smtpUsername, smtpPassword);
        }

        _cls1()
        {
            this$0 = SMTPAppender.this;
            super();
        }
    }

}
