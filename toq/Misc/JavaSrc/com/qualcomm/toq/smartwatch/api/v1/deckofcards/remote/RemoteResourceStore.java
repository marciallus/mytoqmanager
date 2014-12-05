// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote;

import android.os.Parcel;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.ResourceStore;

public final class RemoteResourceStore extends ResourceStore
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public RemoteResourceStore createFromParcel(Parcel parcel)
        {
            return new RemoteResourceStore(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public RemoteResourceStore[] newArray(int i)
        {
            return new RemoteResourceStore[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;


    private RemoteResourceStore(Parcel parcel)
    {
        super(parcel);
    }

    RemoteResourceStore(Parcel parcel, RemoteResourceStore remoteresourcestore)
    {
        this(parcel);
    }

}
