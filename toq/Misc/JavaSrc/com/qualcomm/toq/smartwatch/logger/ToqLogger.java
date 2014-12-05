// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.logger;


public interface ToqLogger
{

    public abstract void autoUploadLogs();

    public abstract void configure();

    public abstract void disableAutoUploadLogs();

    public abstract void init();

    public abstract void sendLogs();
}
