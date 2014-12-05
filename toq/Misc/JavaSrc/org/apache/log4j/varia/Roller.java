// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import java.io.*;
import java.net.Socket;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;

public class Roller
{

    static Logger cat;
    static Class class$org$apache$log4j$varia$Roller;
    static String host;
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
        host = s;
        try
        {
            port = Integer.parseInt(s1);
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            usage("Second argument " + s1 + " is not a valid integer.");
        }
    }

    public static void main(String args[])
    {
        BasicConfigurator.configure();
        if (args.length == 2)
            init(args[0], args[1]);
        else
            usage("Wrong number of arguments.");
        roll();
    }

    static void roll()
    {
        String s;
        Socket socket = new Socket(host, port);
        DataOutputStream dataoutputstream = new DataOutputStream(socket.getOutputStream());
        DataInputStream datainputstream = new DataInputStream(socket.getInputStream());
        dataoutputstream.writeUTF("RollOver");
        s = datainputstream.readUTF();
        if (!"OK".equals(s)) goto _L2; else goto _L1
_L1:
        cat.info("Roll over signal acknowledged by remote appender.");
_L4:
        System.exit(0);
        return;
_L2:
        try
        {
            cat.warn("Unexpected return code " + s + " from remote entity.");
            System.exit(2);
        }
        catch (IOException ioexception)
        {
            cat.error("Could not send roll signal on host " + host + " port " + port + " .", ioexception);
            System.exit(2);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void usage(String s)
    {
        System.err.println(s);
        PrintStream printstream = System.err;
        StringBuffer stringbuffer = (new StringBuffer()).append("Usage: java ");
        Class class1;
        if (class$org$apache$log4j$varia$Roller == null)
        {
            class1 = _mthclass$("org.apache.log4j.varia.Roller");
            class$org$apache$log4j$varia$Roller = class1;
        } else
        {
            class1 = class$org$apache$log4j$varia$Roller;
        }
        printstream.println(stringbuffer.append(class1.getName()).append("host_name port_number").toString());
        System.exit(1);
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$varia$Roller == null)
        {
            class1 = _mthclass$("org.apache.log4j.varia.Roller");
            class$org$apache$log4j$varia$Roller = class1;
        } else
        {
            class1 = class$org$apache$log4j$varia$Roller;
        }
        cat = Logger.getLogger(class1);
    }
}
