// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.packer;

import com.qualcomm.toq.base.message.Message;

public interface IPacker
{

    public abstract byte[] createPackedMessage(Message message);

    public abstract Message parseMessage(byte abyte0[]);
}
