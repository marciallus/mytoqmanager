// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal;

import android.os.Parcel;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.ListCard;

public final class InternalListCard extends ListCard
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public InternalListCard createFromParcel(Parcel parcel)
        {
            return new InternalListCard(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public InternalListCard[] newArray(int i)
        {
            return new InternalListCard[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;


    private InternalListCard(Parcel parcel)
    {
        super(parcel);
    }


    public String toString()
    {
        return (new StringBuilder()).append("InternalListCard[").append(super.toString()).append("]").toString();
    }

}
