// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal;

import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsEventListener;

public interface InternalDeckOfCardsEventListener
    extends DeckOfCardsEventListener
{

    public abstract void onReceivedMessage(byte abyte0[]);
}
