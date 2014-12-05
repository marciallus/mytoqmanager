// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.util.Enumeration;
import java.util.Vector;
import org.apache.log4j.Appender;
import org.apache.log4j.spi.AppenderAttachable;
import org.apache.log4j.spi.LoggingEvent;

public class AppenderAttachableImpl
    implements AppenderAttachable
{

    protected Vector appenderList;


    public void addAppender(Appender appender)
    {
        if (appender != null)
        {
            if (appenderList == null)
                appenderList = new Vector(1);
            if (!appenderList.contains(appender))
            {
                appenderList.addElement(appender);
                return;
            }
        }
    }

    public int appendLoopOnAppenders(LoggingEvent loggingevent)
    {
        Vector vector = appenderList;
        int i = 0;
        if (vector != null)
        {
            i = appenderList.size();
            for (int j = 0; j < i; j++)
                ((Appender)appenderList.elementAt(j)).doAppend(loggingevent);

        }
        return i;
    }

    public Enumeration getAllAppenders()
    {
        if (appenderList == null)
            return null;
        else
            return appenderList.elements();
    }

    public Appender getAppender(String s)
    {
        Appender appender;
label0:
        {
            if (appenderList != null && s != null)
            {
                int i = appenderList.size();
                for (int j = 0; j < i; j++)
                {
                    appender = (Appender)appenderList.elementAt(j);
                    if (s.equals(appender.getName()))
                        break label0;
                }

                return null;
            }
            appender = null;
        }
        return appender;
    }

    public boolean isAttached(Appender appender)
    {
        if (appenderList != null && appender != null)
        {
            int i = appenderList.size();
            for (int j = 0; j < i; j++)
                if ((Appender)appenderList.elementAt(j) == appender)
                    return true;

        }
        return false;
    }

    public void removeAllAppenders()
    {
        if (appenderList != null)
        {
            int i = appenderList.size();
            for (int j = 0; j < i; j++)
                ((Appender)appenderList.elementAt(j)).close();

            appenderList.removeAllElements();
            appenderList = null;
        }
    }

    public void removeAppender(String s)
    {
        if (s != null && appenderList != null)
        {
            int i = appenderList.size();
            for (int j = 0; j < i; j++)
                if (s.equals(((Appender)appenderList.elementAt(j)).getName()))
                {
                    appenderList.removeElementAt(j);
                    return;
                }

        }
    }

    public void removeAppender(Appender appender)
    {
        if (appender != null && appenderList != null)
        {
            appenderList.removeElement(appender);
            return;
        } else
        {
            return;
        }
    }
}
