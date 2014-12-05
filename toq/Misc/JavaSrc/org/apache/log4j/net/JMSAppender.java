// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.util.Properties;
import javax.jms.*;
import javax.naming.*;
import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.ErrorHandler;
import org.apache.log4j.spi.LoggingEvent;

public class JMSAppender extends AppenderSkeleton
{

    String initialContextFactoryName;
    boolean locationInfo;
    String password;
    String providerURL;
    String securityCredentials;
    String securityPrincipalName;
    String tcfBindingName;
    String topicBindingName;
    TopicConnection topicConnection;
    TopicPublisher topicPublisher;
    TopicSession topicSession;
    String urlPkgPrefixes;
    String userName;


    public void activateOptions()
    {
        LogLog.debug("Getting initial context.");
        if (initialContextFactoryName == null) goto _L2; else goto _L1
_L1:
        Properties properties;
        properties = new Properties();
        properties.put("java.naming.factory.initial", initialContextFactoryName);
        if (providerURL == null) goto _L4; else goto _L3
_L3:
        properties.put("java.naming.provider.url", providerURL);
_L9:
        if (urlPkgPrefixes != null)
            properties.put("java.naming.factory.url.pkgs", urlPkgPrefixes);
        if (securityPrincipalName == null) goto _L6; else goto _L5
_L5:
        properties.put("java.naming.security.principal", securityPrincipalName);
        if (securityCredentials == null) goto _L8; else goto _L7
_L7:
        properties.put("java.naming.security.credentials", securityCredentials);
_L6:
        InitialContext initialcontext = new InitialContext(properties);
_L10:
        TopicConnectionFactory topicconnectionfactory;
        LogLog.debug("Looking up [" + tcfBindingName + "]");
        topicconnectionfactory = (TopicConnectionFactory)lookup(initialcontext, tcfBindingName);
        LogLog.debug("About to create TopicConnection.");
        if (userName == null)
            break MISSING_BLOCK_LABEL_411;
        topicConnection = topicconnectionfactory.createTopicConnection(userName, password);
_L11:
        LogLog.debug("Creating TopicSession, non-transactional, in AUTO_ACKNOWLEDGE mode.");
        topicSession = topicConnection.createTopicSession(false, 1);
        LogLog.debug("Looking up topic name [" + topicBindingName + "].");
        Topic topic = (Topic)lookup(initialcontext, topicBindingName);
        LogLog.debug("Creating TopicPublisher.");
        topicPublisher = topicSession.createPublisher(topic);
        LogLog.debug("Starting TopicConnection.");
        topicConnection.start();
        initialcontext.close();
        return;
_L4:
        try
        {
            LogLog.warn("You have set InitialContextFactoryName option but not the ProviderURL. This is likely to cause problems.");
        }
        catch (JMSException jmsexception)
        {
            errorHandler.error("Error while activating options for appender named [" + name + "].", jmsexception, 0);
            return;
        }
        catch (NamingException namingexception)
        {
            errorHandler.error("Error while activating options for appender named [" + name + "].", namingexception, 0);
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            errorHandler.error("Error while activating options for appender named [" + name + "].", runtimeexception, 0);
            return;
        }
          goto _L9
_L8:
        LogLog.warn("You have set SecurityPrincipalName option but not the SecurityCredentials. This is likely to cause problems.");
          goto _L6
_L2:
        initialcontext = new InitialContext();
          goto _L10
        topicConnection = topicconnectionfactory.createTopicConnection();
          goto _L11
    }

    public void append(LoggingEvent loggingevent)
    {
        if (!checkEntryConditions())
            return;
        try
        {
            ObjectMessage objectmessage = topicSession.createObjectMessage();
            if (locationInfo)
                loggingevent.getLocationInformation();
            objectmessage.setObject(loggingevent);
            topicPublisher.publish(objectmessage);
            return;
        }
        catch (JMSException jmsexception)
        {
            errorHandler.error("Could not publish message in JMSAppender [" + name + "].", jmsexception, 0);
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            errorHandler.error("Could not publish message in JMSAppender [" + name + "].", runtimeexception, 0);
        }
    }

    protected boolean checkEntryConditions()
    {
        String s;
        if (topicConnection == null)
            s = "No TopicConnection";
        else
        if (topicSession == null)
        {
            s = "No TopicSession";
        } else
        {
            TopicPublisher topicpublisher = topicPublisher;
            s = null;
            if (topicpublisher == null)
                s = "No TopicPublisher";
        }
        if (s != null)
        {
            errorHandler.error(s + " for JMSAppender named [" + name + "].");
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
        boolean flag = closed;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        LogLog.debug("Closing appender [" + name + "].");
        closed = true;
        if (topicSession != null)
            topicSession.close();
        if (topicConnection != null)
            topicConnection.close();
_L4:
        topicPublisher = null;
        topicSession = null;
        topicConnection = null;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
        JMSException jmsexception;
        jmsexception;
        LogLog.error("Error while closing JMSAppender [" + name + "].", jmsexception);
          goto _L4
        RuntimeException runtimeexception;
        runtimeexception;
        LogLog.error("Error while closing JMSAppender [" + name + "].", runtimeexception);
          goto _L4
    }

    public String getInitialContextFactoryName()
    {
        return initialContextFactoryName;
    }

    public boolean getLocationInfo()
    {
        return locationInfo;
    }

    public String getPassword()
    {
        return password;
    }

    public String getProviderURL()
    {
        return providerURL;
    }

    public String getSecurityCredentials()
    {
        return securityCredentials;
    }

    public String getSecurityPrincipalName()
    {
        return securityPrincipalName;
    }

    public String getTopicBindingName()
    {
        return topicBindingName;
    }

    protected TopicConnection getTopicConnection()
    {
        return topicConnection;
    }

    public String getTopicConnectionFactoryBindingName()
    {
        return tcfBindingName;
    }

    protected TopicPublisher getTopicPublisher()
    {
        return topicPublisher;
    }

    protected TopicSession getTopicSession()
    {
        return topicSession;
    }

    String getURLPkgPrefixes()
    {
        return urlPkgPrefixes;
    }

    public String getUserName()
    {
        return userName;
    }

    protected Object lookup(Context context, String s)
        throws NamingException
    {
        Object obj;
        try
        {
            obj = context.lookup(s);
        }
        catch (NameNotFoundException namenotfoundexception)
        {
            LogLog.error("Could not find name [" + s + "].");
            throw namenotfoundexception;
        }
        return obj;
    }

    public boolean requiresLayout()
    {
        return false;
    }

    public void setInitialContextFactoryName(String s)
    {
        initialContextFactoryName = s;
    }

    public void setLocationInfo(boolean flag)
    {
        locationInfo = flag;
    }

    public void setPassword(String s)
    {
        password = s;
    }

    public void setProviderURL(String s)
    {
        providerURL = s;
    }

    public void setSecurityCredentials(String s)
    {
        securityCredentials = s;
    }

    public void setSecurityPrincipalName(String s)
    {
        securityPrincipalName = s;
    }

    public void setTopicBindingName(String s)
    {
        topicBindingName = s;
    }

    public void setTopicConnectionFactoryBindingName(String s)
    {
        tcfBindingName = s;
    }

    public void setURLPkgPrefixes(String s)
    {
        urlPkgPrefixes = s;
    }

    public void setUserName(String s)
    {
        userName = s;
    }
}
