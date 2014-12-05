// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;

import java.util.Enumeration;
import org.apache.log4j.Appender;

public interface AppenderAttachable
{

    public abstract void addAppender(Appender appender);

    public abstract Enumeration getAllAppenders();

    public abstract Appender getAppender(String s);

    public abstract boolean isAttached(Appender appender);

    public abstract void removeAllAppenders();

    public abstract void removeAppender(String s);

    public abstract void removeAppender(Appender appender);
}
