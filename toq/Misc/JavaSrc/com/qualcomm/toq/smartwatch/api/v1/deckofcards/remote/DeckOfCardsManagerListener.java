// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote;


public interface DeckOfCardsManagerListener
{

    public abstract void onConnected();

    public abstract void onDisconnected();

    public abstract void onInstallationDenied();

    public abstract void onInstallationSuccessful();

    public abstract void onUninstalled();
}
