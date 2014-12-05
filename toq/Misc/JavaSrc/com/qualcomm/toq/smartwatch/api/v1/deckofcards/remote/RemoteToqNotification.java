// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Parcel;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.ToqNotification;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.NotificationTextCard;

public final class RemoteToqNotification extends ToqNotification
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public RemoteToqNotification createFromParcel(Parcel parcel)
        {
            return new RemoteToqNotification(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public RemoteToqNotification[] newArray(int i)
        {
            return new RemoteToqNotification[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;

    public RemoteToqNotification(Context context, long l, String s, String as[])
    {
        super(context.getPackageName(), context.getApplicationInfo().loadLabel(context.getPackageManager()).toString(), l, s, as);
    }

    public RemoteToqNotification(Context context, NotificationTextCard notificationtextcard)
    {
        super(context.getPackageName(), context.getApplicationInfo().loadLabel(context.getPackageManager()).toString(), notificationtextcard);
    }

    private RemoteToqNotification(Parcel parcel)
    {
        super(parcel);
    }

    RemoteToqNotification(Parcel parcel, RemoteToqNotification remotetoqnotification)
    {
        this(parcel);
    }

}
