// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.syncer;

import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsException;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.syncer:
//            DeckOfCardsSyncImpl_v2, DeckOfCardsSync

public final class DeckOfCardsSyncFactory
{

    private static DeckOfCardsSyncFactory inst;

    private DeckOfCardsSyncFactory()
    {
    }

    public static DeckOfCardsSyncFactory getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new DeckOfCardsSyncFactory();
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public DeckOfCardsSync getDeckOfCardsSync()
        throws DeckOfCardsException
    {
        return DeckOfCardsSyncImpl_v2.getInstance();
    }
}
