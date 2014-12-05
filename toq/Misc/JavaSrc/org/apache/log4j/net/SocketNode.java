// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.io.*;
import java.net.Socket;
import java.net.SocketException;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerRepository;
import org.apache.log4j.spi.LoggingEvent;

public class SocketNode
    implements Runnable
{

    static Class class$org$apache$log4j$net$SocketNode;
    static Logger logger;
    LoggerRepository hierarchy;
    ObjectInputStream ois;
    Socket socket;

    public SocketNode(Socket socket1, LoggerRepository loggerrepository)
    {
        socket = socket1;
        hierarchy = loggerrepository;
        try
        {
            ois = new ObjectInputStream(new BufferedInputStream(socket1.getInputStream()));
            return;
        }
        catch (InterruptedIOException interruptedioexception)
        {
            Thread.currentThread().interrupt();
            logger.error("Could not open ObjectInputStream to " + socket1, interruptedioexception);
            return;
        }
        catch (IOException ioexception)
        {
            logger.error("Could not open ObjectInputStream to " + socket1, ioexception);
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            logger.error("Could not open ObjectInputStream to " + socket1, runtimeexception);
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

    public void run()
    {
        eofexception;
        logger.info("Caught java.io.EOFException closing conneciton.");
        InterruptedIOException interruptedioexception7;
        Exception exception8;
        if (ois != null)
            try
            {
                ois.close();
            }
            catch (Exception exception7)
            {
                logger.info("Could not close connection.", exception7);
            }
        if (socket == null)
            break MISSING_BLOCK_LABEL_99;
        socket.close();
_L1:
        return;
        EOFException eofexception;
        if (ois != null)
            do
            {
                LoggingEvent loggingevent;
                Logger logger1;
                do
                {
                    loggingevent = (LoggingEvent)ois.readObject();
                    logger1 = hierarchy.getLogger(loggingevent.getLoggerName());
                } while (!loggingevent.getLevel().isGreaterOrEqual(logger1.getEffectiveLevel()));
                logger1.callAppenders(loggingevent);
            } while (true);
        if (ois != null)
            try
            {
                ois.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception8)
            {
                logger.info("Could not close connection.", exception8);
            }
        if (socket != null)
        {
            Exception exception;
            IOException ioexception;
            InterruptedIOException interruptedioexception;
            Exception exception1;
            Exception exception2;
            IOException ioexception1;
            InterruptedIOException interruptedioexception1;
            Exception exception3;
            IOException ioexception2;
            IOException ioexception3;
            InterruptedIOException interruptedioexception2;
            Exception exception4;
            InterruptedIOException interruptedioexception3;
            IOException ioexception4;
            InterruptedIOException interruptedioexception4;
            Exception exception5;
            SocketException socketexception;
            IOException ioexception5;
            InterruptedIOException interruptedioexception5;
            Exception exception6;
            IOException ioexception6;
            InterruptedIOException interruptedioexception6;
            try
            {
                socket.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedIOException interruptedioexception7)
            {
                Thread.currentThread().interrupt();
            }
            catch (IOException ioexception7)
            {
                return;
            }
            return;
        }
          goto _L1
        interruptedioexception6;
        Thread.currentThread().interrupt();
        return;
        socketexception;
        logger.info("Caught java.net.SocketException closing conneciton.");
        if (ois != null)
            try
            {
                ois.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception6)
            {
                logger.info("Could not close connection.", exception6);
            }
        if (socket == null) goto _L1; else goto _L2
_L2:
        try
        {
            socket.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedIOException interruptedioexception5)
        {
            Thread.currentThread().interrupt();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception5)
        {
            return;
        }
        return;
        interruptedioexception3;
        Thread.currentThread().interrupt();
        logger.info("Caught java.io.InterruptedIOException: " + interruptedioexception3);
        logger.info("Closing connection.");
        if (ois != null)
            try
            {
                ois.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception5)
            {
                logger.info("Could not close connection.", exception5);
            }
        if (socket == null) goto _L1; else goto _L3
_L3:
        try
        {
            socket.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedIOException interruptedioexception4)
        {
            Thread.currentThread().interrupt();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception4)
        {
            return;
        }
        return;
        ioexception2;
        logger.info("Caught java.io.IOException: " + ioexception2);
        logger.info("Closing connection.");
        if (ois != null)
            try
            {
                ois.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception4)
            {
                logger.info("Could not close connection.", exception4);
            }
        if (socket == null) goto _L1; else goto _L4
_L4:
        try
        {
            socket.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedIOException interruptedioexception2)
        {
            Thread.currentThread().interrupt();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception3)
        {
            return;
        }
        return;
        exception2;
        logger.error("Unexpected exception. Closing conneciton.", exception2);
        if (ois != null)
            try
            {
                ois.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception3)
            {
                logger.info("Could not close connection.", exception3);
            }
        if (socket == null) goto _L1; else goto _L5
_L5:
        try
        {
            socket.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedIOException interruptedioexception1)
        {
            Thread.currentThread().interrupt();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception1)
        {
            return;
        }
        return;
        exception;
        if (ois != null)
            try
            {
                ois.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1)
            {
                logger.info("Could not close connection.", exception1);
            }
        if (socket != null)
            try
            {
                socket.close();
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedIOException interruptedioexception)
            {
                Thread.currentThread().interrupt();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
        throw exception;
        ioexception6;
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$net$SocketNode == null)
        {
            class1 = _mthclass$("org.apache.log4j.net.SocketNode");
            class$org$apache$log4j$net$SocketNode = class1;
        } else
        {
            class1 = class$org$apache$log4j$net$SocketNode;
        }
        logger = Logger.getLogger(class1);
    }
}
