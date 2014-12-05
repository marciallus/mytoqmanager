// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.message;


public class Message
{

    public int destAdd;
    public int messageType;
    public Object payload;
    public int payloadLength;
    public int srcAdd;
    public int transactionId;

    public Message(int i, int j, Object obj, int k, int l)
    {
        srcAdd = 0;
        destAdd = 0;
        payloadLength = 0;
        messageType = 0;
        transactionId = 0;
        srcAdd = i;
        destAdd = j;
        payload = obj;
        messageType = k;
        transactionId = l;
    }

    public void setPayloadLength(int i)
    {
        payloadLength = i;
    }
}
