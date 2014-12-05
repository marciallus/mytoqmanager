// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Parcel;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCards;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.ListCard;

public final class RemoteDeckOfCards extends DeckOfCards
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public RemoteDeckOfCards createFromParcel(Parcel parcel)
        {
            return new RemoteDeckOfCards(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public RemoteDeckOfCards[] newArray(int i)
        {
            return new RemoteDeckOfCards[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;

    public RemoteDeckOfCards(Context context)
    {
        this(context, new ListCard());
    }

    public RemoteDeckOfCards(Context context, ListCard listcard)
    {
        super(context.getPackageName(), context.getApplicationInfo().loadLabel(context.getPackageManager()).toString(), listcard);
    }

    private RemoteDeckOfCards(Parcel parcel)
    {
        super(parcel);
    }

    RemoteDeckOfCards(Parcel parcel, RemoteDeckOfCards remotedeckofcards)
    {
        this(parcel);
    }

}
