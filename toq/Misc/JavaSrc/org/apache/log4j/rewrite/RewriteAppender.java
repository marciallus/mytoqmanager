// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.rewrite;

import java.util.Enumeration;
import java.util.Properties;
import org.apache.log4j.Appender;
import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.helpers.AppenderAttachableImpl;
import org.apache.log4j.spi.*;
import org.apache.log4j.xml.DOMConfigurator;
import org.apache.log4j.xml.UnrecognizedElementHandler;
import org.w3c.dom.Element;

// Referenced classes of package org.apache.log4j.rewrite:
//            RewritePolicy

public class RewriteAppender extends AppenderSkeleton
    implements AppenderAttachable, UnrecognizedElementHandler
{

    static Class class$org$apache$log4j$rewrite$RewritePolicy;
    private final AppenderAttachableImpl appenders = new AppenderAttachableImpl();
    private RewritePolicy policy;


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

    public void addAppender(Appender appender)
    {
        synchronized (appenders)
        {
            appenders.addAppender(appender);
        }
        return;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void append(LoggingEvent loggingevent)
    {
        LoggingEvent loggingevent1 = loggingevent;
        if (policy != null)
            loggingevent1 = policy.rewrite(loggingevent);
        if (loggingevent1 != null)
        {
            synchronized (appenders)
            {
                appenders.appendLoopOnAppenders(loggingevent1);
            }
            return;
        } else
        {
            return;
        }
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void close()
    {
        closed = true;
        AppenderAttachableImpl appenderattachableimpl = appenders;
        appenderattachableimpl;
        JVM INSTR monitorenter ;
        Enumeration enumeration = appenders.getAllAppenders();
        if (enumeration == null)
            break MISSING_BLOCK_LABEL_67;
        do
        {
            if (!enumeration.hasMoreElements())
                break;
            Object obj = enumeration.nextElement();
            if (obj instanceof Appender)
                ((Appender)obj).close();
        } while (true);
        break MISSING_BLOCK_LABEL_67;
        Exception exception;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
    }

    public Enumeration getAllAppenders()
    {
        Enumeration enumeration;
        synchronized (appenders)
        {
            enumeration = appenders.getAllAppenders();
        }
        return enumeration;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Appender getAppender(String s)
    {
        Appender appender;
        synchronized (appenders)
        {
            appender = appenders.getAppender(s);
        }
        return appender;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isAttached(Appender appender)
    {
        boolean flag;
        synchronized (appenders)
        {
            flag = appenders.isAttached(appender);
        }
        return flag;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean parseUnrecognizedElement(Element element, Properties properties)
        throws Exception
    {
        if ("rewritePolicy".equals(element.getNodeName()))
        {
            Class class1;
            if (class$org$apache$log4j$rewrite$RewritePolicy == null)
            {
                class1 = _mthclass$("org.apache.log4j.rewrite.RewritePolicy");
                class$org$apache$log4j$rewrite$RewritePolicy = class1;
            } else
            {
                class1 = class$org$apache$log4j$rewrite$RewritePolicy;
            }
            Object obj = DOMConfigurator.parseElement(element, properties, class1);
            if (obj != null)
            {
                if (obj instanceof OptionHandler)
                    ((OptionHandler)obj).activateOptions();
                setRewritePolicy((RewritePolicy)obj);
            }
            return true;
        } else
        {
            return false;
        }
    }

    public void removeAllAppenders()
    {
        synchronized (appenders)
        {
            appenders.removeAllAppenders();
        }
        return;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void removeAppender(String s)
    {
        synchronized (appenders)
        {
            appenders.removeAppender(s);
        }
        return;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void removeAppender(Appender appender)
    {
        synchronized (appenders)
        {
            appenders.removeAppender(appender);
        }
        return;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean requiresLayout()
    {
        return false;
    }

    public void setRewritePolicy(RewritePolicy rewritepolicy)
    {
        policy = rewritepolicy;
    }
}
