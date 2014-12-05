// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.handler;

import com.qualcomm.toq.base.factory.PackerFactory;
import com.qualcomm.toq.base.message.Message;
import com.qualcomm.toq.base.packer.IPacker;
import com.qualcomm.toq.base.utils.ByteUtils;

public class MessageHandler
{

    private static MessageHandler mInstance;

    private MessageHandler()
    {
    }

    private int getDestAdd(byte abyte0[])
    {
        return ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 1, 2));
    }

    public static MessageHandler getMessageHandler()
    {
        com/qualcomm/toq/base/handler/MessageHandler;
        JVM INSTR monitorenter ;
        if (mInstance == null)
            mInstance = new MessageHandler();
        com/qualcomm/toq/base/handler/MessageHandler;
        JVM INSTR monitorexit ;
        return mInstance;
        Exception exception;
        exception;
        com/qualcomm/toq/base/handler/MessageHandler;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public byte[] packMessage(Message message)
    {
        return PackerFactory.getPackerFactory().getMessagePacker(message.destAdd).createPackedMessage(message);
    }

    public Message unpackMessage(byte abyte0[])
    {
        return PackerFactory.getPackerFactory().getMessagePacker(getDestAdd(abyte0)).parseMessage(abyte0);
    }
}
