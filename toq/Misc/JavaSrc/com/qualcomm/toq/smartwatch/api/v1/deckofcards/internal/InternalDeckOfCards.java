// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCards;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal:
//            InternalListCard

public final class InternalDeckOfCards extends DeckOfCards
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public InternalDeckOfCards createFromParcel(Parcel parcel)
        {
            return new InternalDeckOfCards(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public InternalDeckOfCards[] newArray(int i)
        {
            return new InternalDeckOfCards[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;

    private InternalDeckOfCards(Parcel parcel)
    {
        super(parcel);
    }


    public InternalDeckOfCards(String s, String s1, String s2)
    {
        this(s, s1, s2, true);
    }

    public InternalDeckOfCards(String s, String s1, String s2, boolean flag)
    {
        super(s, s1, new InternalListCard());
        bundle.putString("appZipFileName", s2);
        bundle.putBoolean("isNewAppZip", flag);
    }

    public String getAppZipFileName()
    {
        return bundle.getString("appZipFileName");
    }

    public boolean isNewAppZip()
    {
        return bundle.getBoolean("isNewAppZip");
    }

    public void setNewAppZip(boolean flag)
    {
        bundle.putBoolean("isNewAppZip", flag);
    }

    public String toString()
    {
        return (new StringBuilder()).append("InternalDeckOfCards[").append(super.toString()).append("]").toString();
    }

}
