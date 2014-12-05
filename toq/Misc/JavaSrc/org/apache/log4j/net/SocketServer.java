// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.io.File;
import java.io.PrintStream;
import java.net.*;
import java.util.Hashtable;
import org.apache.log4j.*;
import org.apache.log4j.spi.LoggerRepository;
import org.apache.log4j.spi.RootLogger;

// Referenced classes of package org.apache.log4j.net:
//            SocketNode

public class SocketServer
{

    static String CONFIG_FILE_EXT = ".lcf";
    static String GENERIC = "generic";
    static Logger cat;
    static Class class$org$apache$log4j$net$SocketServer;
    static int port;
    static SocketServer server;
    File dir;
    LoggerRepository genericHierarchy;
    Hashtable hierarchyMap;

    public SocketServer(File file)
    {
        dir = file;
        hierarchyMap = new Hashtable(11);
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

    static void init(String s, String s1, String s2)
    {
        File file;
        try
        {
            port = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            numberformatexception.printStackTrace();
            usage("Could not interpret port number [" + s + "].");
        }
        PropertyConfigurator.configure(s1);
        file = new File(s2);
        if (!file.isDirectory())
            usage("[" + s2 + "] is not a directory.");
        server = new SocketServer(file);
    }

    public static void main(String args[])
    {
        Exception exception;
        ServerSocket serversocket;
        Socket socket;
        InetAddress inetaddress;
        LoggerRepository loggerrepository;
        if (args.length == 3)
            init(args[0], args[1], args[2]);
        else
            usage("Wrong number of arguments.");
        cat.info("Listening on port " + port);
        serversocket = new ServerSocket(port);
_L1:
        cat.info("Waiting to accept a new client.");
        socket = serversocket.accept();
        inetaddress = socket.getInetAddress();
        cat.info("Connected to client at " + inetaddress);
        loggerrepository = (LoggerRepository)server.hierarchyMap.get(inetaddress);
        if (loggerrepository != null)
            break MISSING_BLOCK_LABEL_132;
        loggerrepository = server.configureHierarchy(inetaddress);
        cat.info("Starting new socket node.");
        (new Thread(new SocketNode(socket, loggerrepository))).start();
          goto _L1
        exception;
        exception.printStackTrace();
        return;
    }

    static void usage(String s)
    {
        System.err.println(s);
        PrintStream printstream = System.err;
        StringBuffer stringbuffer = (new StringBuffer()).append("Usage: java ");
        Class class1;
        if (class$org$apache$log4j$net$SocketServer == null)
        {
            class1 = _mthclass$("org.apache.log4j.net.SocketServer");
            class$org$apache$log4j$net$SocketServer = class1;
        } else
        {
            class1 = class$org$apache$log4j$net$SocketServer;
        }
        printstream.println(stringbuffer.append(class1.getName()).append(" port configFile directory").toString());
        System.exit(1);
    }

    LoggerRepository configureHierarchy(InetAddress inetaddress)
    {
        cat.info("Locating configuration file for " + inetaddress);
        String s = inetaddress.toString();
        int i = s.indexOf("/");
        if (i == -1)
        {
            cat.warn("Could not parse the inetAddress [" + inetaddress + "]. Using default hierarchy.");
            return genericHierarchy();
        }
        String s1 = s.substring(0, i);
        File file = new File(dir, s1 + CONFIG_FILE_EXT);
        if (file.exists())
        {
            Hierarchy hierarchy = new Hierarchy(new RootLogger(Level.DEBUG));
            hierarchyMap.put(inetaddress, hierarchy);
            (new PropertyConfigurator()).doConfigure(file.getAbsolutePath(), hierarchy);
            return hierarchy;
        } else
        {
            cat.warn("Could not find config file [" + file + "].");
            return genericHierarchy();
        }
    }

    LoggerRepository genericHierarchy()
    {
        if (genericHierarchy == null)
        {
            File file = new File(dir, GENERIC + CONFIG_FILE_EXT);
            if (file.exists())
            {
                genericHierarchy = new Hierarchy(new RootLogger(Level.DEBUG));
                (new PropertyConfigurator()).doConfigure(file.getAbsolutePath(), genericHierarchy);
            } else
            {
                cat.warn("Could not find config file [" + file + "]. Will use the default hierarchy.");
                genericHierarchy = LogManager.getLoggerRepository();
            }
        }
        return genericHierarchy;
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$net$SocketServer == null)
        {
            class1 = _mthclass$("org.apache.log4j.net.SocketServer");
            class$org$apache$log4j$net$SocketServer = class1;
        } else
        {
            class1 = class$org$apache$log4j$net$SocketServer;
        }
        cat = Logger.getLogger(class1);
    }
}
