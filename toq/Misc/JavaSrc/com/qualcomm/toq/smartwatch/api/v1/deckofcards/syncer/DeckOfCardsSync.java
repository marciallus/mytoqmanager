// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.syncer;

import com.qualcomm.toq.smartwatch.api.v1.deckofcards.*;

public interface DeckOfCardsSync
{

    public abstract void installDeckOfCards(DeckOfCards deckofcards, ResourceStore resourcestore)
        throws DeckOfCardsException;

    public abstract void uninstallDeckOfCards(String s, String s1)
        throws DeckOfCardsException;

    public abstract void updateDeckOfCards(DeckOfCards deckofcards, ResourceStore resourcestore)
        throws DeckOfCardsException;

    public abstract void updateDeckOfCardsAppZip(String s)
        throws DeckOfCardsException;
}
