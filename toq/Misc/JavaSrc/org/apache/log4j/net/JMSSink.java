// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.io.*;
import javax.jms.*;
import javax.naming.*;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.spi.LoggingEvent;
import org.apache.log4j.xml.DOMConfigurator;

public class JMSSink
    implements MessageListener
{

    static Class class$org$apache$log4j$net$JMSSink;
    static Logger logger;

    public JMSSink(String s, String s1, String s2, String s3)
    {
        try
        {
            InitialContext initialcontext = new InitialContext();
            TopicConnection topicconnection = ((TopicConnectionFactory)lookup(initialcontext, s)).createTopicConnection(s2, s3);
            topicconnection.start();
            topicconnection.createTopicSession(false, 1).createSubscriber((Topic)initialcontext.lookup(s1)).setMessageListener(this);
            return;
        }
        catch (JMSException jmsexception)
        {
            logger.error("Could not read JMS message.", jmsexception);
            return;
        }
        catch (NamingException namingexception)
        {
            logger.error("Could not read JMS message.", namingexception);
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            logger.error("Could not read JMS message.", runtimeexception);
        }
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

    protected static Object lookup(Context context, String s)
        throws NamingException
    {
        Object obj;
        try
        {
            obj = context.lookup(s);
        }
        catch (NameNotFoundException namenotfoundexception)
        {
            logger.error("Could not find name [" + s + "].");
            throw namenotfoundexception;
        }
        return obj;
    }

    public static void main(String args[])
        throws Exception
    {
        if (args.length != 5)
            usage("Wrong number of arguments.");
        String s = args[0];
        String s1 = args[1];
        String s2 = args[2];
        String s3 = args[3];
        String s4 = args[4];
        if (s4.endsWith(".xml"))
            DOMConfigurator.configure(s4);
        else
            PropertyConfigurator.configure(s4);
        new JMSSink(s, s1, s2, s3);
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Type \"exit\" to quit JMSSink.");
        while (!bufferedreader.readLine().equalsIgnoreCase("exit")) ;
        System.out.println("Exiting. Kill the application if it does not exit due to daemon threads.");
    }

    static void usage(String s)
    {
        System.err.println(s);
        PrintStream printstream = System.err;
        StringBuffer stringbuffer = (new StringBuffer()).append("Usage: java ");
        Class class1;
        if (class$org$apache$log4j$net$JMSSink == null)
        {
            class1 = _mthclass$("org.apache.log4j.net.JMSSink");
            class$org$apache$log4j$net$JMSSink = class1;
        } else
        {
            class1 = class$org$apache$log4j$net$JMSSink;
        }
        printstream.println(stringbuffer.append(class1.getName()).append(" TopicConnectionFactoryBindingName TopicBindingName username password configFile").toString());
        System.exit(1);
    }

    public void onMessage(Message message)
    {
        if (message instanceof ObjectMessage)
        {
            LoggingEvent loggingevent = (LoggingEvent)((ObjectMessage)message).getObject();
            Logger.getLogger(loggingevent.getLoggerName()).callAppenders(loggingevent);
            return;
        }
        try
        {
            logger.warn("Received message is of type " + message.getJMSType() + ", was expecting ObjectMessage.");
            return;
        }
        catch (JMSException jmsexception)
        {
            logger.error("Exception thrown while processing incoming message.", jmsexception);
        }
        return;
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$net$JMSSink == null)
        {
            class1 = _mthclass$("org.apache.log4j.net.JMSSink");
            class$org$apache$log4j$net$JMSSink = class1;
        } else
        {
            class1 = class$org$apache$log4j$net$JMSSink;
        }
        logger = Logger.getLogger(class1);
    }
}
