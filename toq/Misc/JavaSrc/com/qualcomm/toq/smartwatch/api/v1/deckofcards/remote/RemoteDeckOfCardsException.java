// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote;


public class RemoteDeckOfCardsException extends Exception
{

    private static final long serialVersionUID = 0x687366ad086a1553L;
    private int errorCode;

    public RemoteDeckOfCardsException()
    {
        errorCode = 0;
    }

    public RemoteDeckOfCardsException(int i, String s)
    {
        super(s);
        errorCode = 0;
        errorCode = i;
    }

    public RemoteDeckOfCardsException(int i, String s, Throwable throwable)
    {
        super(s, throwable);
        errorCode = 0;
        errorCode = i;
    }

    public RemoteDeckOfCardsException(String s)
    {
        super(s);
        errorCode = 0;
    }

    public RemoteDeckOfCardsException(String s, Throwable throwable)
    {
        super(s, throwable);
        errorCode = 0;
    }

    public RemoteDeckOfCardsException(Throwable throwable)
    {
        super(throwable);
        errorCode = 0;
    }

    public int getErrorCode()
    {
        return errorCode;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[").append("errorCode=").append(errorCode).append(",").append(super.toString()).append("]").toString();
    }
}
