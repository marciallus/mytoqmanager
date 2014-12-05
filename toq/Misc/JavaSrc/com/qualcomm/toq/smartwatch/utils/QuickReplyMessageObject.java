// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import java.io.Serializable;

public class QuickReplyMessageObject
    implements Serializable
{

    private static final long serialVersionUID = 0x4329c0f2a6015c46L;
    private boolean defaultMessage;
    private String quickReplyMessage;

    public QuickReplyMessageObject(String s, boolean flag)
    {
        quickReplyMessage = s;
        defaultMessage = flag;
    }

    public String getQRMessage()
    {
        return quickReplyMessage;
    }

    public boolean isDefault()
    {
        return defaultMessage;
    }
}
