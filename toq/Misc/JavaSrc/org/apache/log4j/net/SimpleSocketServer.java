// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;
import org.apache.log4j.*;
import org.apache.log4j.xml.DOMConfigurator;

// Referenced classes of package org.apache.log4j.net:
//            SocketNode

public class SimpleSocketServer
{

    static Logger cat;
    static Class class$org$apache$log4j$net$SimpleSocketServer;
    static int port;


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

    static void init(String s, String s1)
    {
        try
        {
            port = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            numberformatexception.printStackTrace();
            usage("Could not interpret port number [" + s + "].");
        }
        if (s1.endsWith(".xml"))
        {
            DOMConfigurator.configure(s1);
            return;
        } else
        {
            PropertyConfigurator.configure(s1);
            return;
        }
    }

    public static void main(String args[])
    {
        if (args.length == 2)
            init(args[0], args[1]);
        else
            usage("Wrong number of arguments.");
        try
        {
            cat.info("Listening on port " + port);
            ServerSocket serversocket = new ServerSocket(port);
            do
            {
                cat.info("Waiting to accept a new client.");
                Socket socket = serversocket.accept();
                cat.info("Connected to client at " + socket.getInetAddress());
                cat.info("Starting new socket node.");
                (new Thread(new SocketNode(socket, LogManager.getLoggerRepository()), "SimpleSocketServer-" + port)).start();
            } while (true);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    static void usage(String s)
    {
        System.err.println(s);
        PrintStream printstream = System.err;
        StringBuffer stringbuffer = (new StringBuffer()).append("Usage: java ");
        Class class1;
        if (class$org$apache$log4j$net$SimpleSocketServer == null)
        {
            class1 = _mthclass$("org.apache.log4j.net.SimpleSocketServer");
            class$org$apache$log4j$net$SimpleSocketServer = class1;
        } else
        {
            class1 = class$org$apache$log4j$net$SimpleSocketServer;
        }
        printstream.println(stringbuffer.append(class1.getName()).append(" port configFile").toString());
        System.exit(1);
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$net$SimpleSocketServer == null)
        {
            class1 = _mthclass$("org.apache.log4j.net.SimpleSocketServer");
            class$org$apache$log4j$net$SimpleSocketServer = class1;
        } else
        {
            class1 = class$org$apache$log4j$net$SimpleSocketServer;
        }
        cat = Logger.getLogger(class1);
    }
}
