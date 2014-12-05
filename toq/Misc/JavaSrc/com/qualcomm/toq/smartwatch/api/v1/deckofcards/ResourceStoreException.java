// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards;


// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards:
//            DeckOfCardsException

public class ResourceStoreException extends DeckOfCardsException
{

    private static final long serialVersionUID = 0x687366ad086a1553L;


    public ResourceStoreException(String s)
    {
        super(s);
    }

    public ResourceStoreException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public ResourceStoreException(Throwable throwable)
    {
        super(throwable);
    }
}
