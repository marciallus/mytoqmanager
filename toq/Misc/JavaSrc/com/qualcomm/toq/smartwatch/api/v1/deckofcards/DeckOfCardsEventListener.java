// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards;


public interface DeckOfCardsEventListener
{

    public abstract void onCardClosed(String s);

    public abstract void onCardInvisible(String s);

    public abstract void onCardOpen(String s);

    public abstract void onCardVisible(String s);

    public abstract void onMenuOptionSelected(String s, String s1);

    public abstract void onMenuOptionSelected(String s, String s1, String s2);
}
