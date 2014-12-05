// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.service;


public interface PHubFMS
{

    public abstract int fmsGetAppId();

    public abstract int fmsMakeDir(int i, String s);

    public abstract int fmsRemoveDir(int i, String s, boolean flag);

    public abstract int fmsRemoveFile(int i, String s);

    public abstract boolean fmsResynchRequest(int i, String s);

    public abstract int fmsSyncFile(int i, String s, String s1, int j);
}
