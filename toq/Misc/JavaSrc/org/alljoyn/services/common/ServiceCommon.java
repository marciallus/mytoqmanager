// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common;

import java.util.List;
import org.alljoyn.services.common.utils.GenericLogger;

public interface ServiceCommon
{

    public abstract List getBusObjectDescriptions();

    public abstract boolean isClientRunning();

    public abstract boolean isServerRunning();

    public abstract void setLogger(GenericLogger genericlogger);
}
