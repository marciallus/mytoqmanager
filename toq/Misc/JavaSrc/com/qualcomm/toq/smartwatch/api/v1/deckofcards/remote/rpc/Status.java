// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc;

import android.os.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.BundleUtil;

public class Status
    implements Parcelable
{

    public static final int CLIENT_API_VERSION_INCOMPATIBLE = -600;
    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Status createFromParcel(Parcel parcel)
        {
            return new Status(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Status[] newArray(int i)
        {
            return new Status[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    public static final int CREDENTIALS_INVALID = -200;
    public static final int DECK_OF_CARDS_ALREADY_INSTALLED = -202;
    public static final int DECK_OF_CARDS_INSTALL_ERROR = -400;
    public static final int DECK_OF_CARDS_NOT_INSTALLED = -201;
    public static final int DECK_OF_CARDS_UNINSTALL_ERROR = -402;
    public static final int DECK_OF_CARDS_UPDATE_ERROR = -401;
    public static final int INVALID_REQUEST = -999;
    public static final int OK = 1;
    public static final int RESET_INSTALLATION_ERROR = -500;
    public static final int SENDING_NOTIFICATION_ERROR = -300;
    public static final int TOQ_BLUETOOTH_DISABLED = -100;
    public static final int TOQ_INVALID_STATE = -101;
    public static final int UNDEFINED;
    protected Bundle bundle;

    public Status()
    {
        bundle = new Bundle();
        bundle.putInt("statusCode", 0);
        bundle.putString("message", "Not Defined");
        bundle.putInt("clientApiVersion", 152);
    }

    public Status(int i, String s)
    {
        bundle = new Bundle();
        bundle.putInt("statusCode", i);
        bundle.putString("message", s);
    }

    protected Status(Parcel parcel)
    {
        bundle = new Bundle();
        readFromParcel(parcel);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
            return true;
        if (obj != null && obj.getClass() == getClass())
            return BundleUtil.equals(bundle, ((Status)obj).bundle);
        else
            return false;
    }

    public int getClientApiVersion()
    {
        return bundle.getInt("clientApiVersion", 131);
    }

    public String getMessage()
    {
        return bundle.getString("message");
    }

    public int getStatusCode()
    {
        return bundle.getInt("statusCode");
    }

    public int hashCode()
    {
        return 37 * (185 + getClass().getName().hashCode()) + BundleUtil.hashCode(bundle);
    }

    protected void readFromParcel(Parcel parcel)
    {
        bundle = parcel.readBundle(com/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status.getClassLoader());
    }

    public void setMessage(String s)
    {
        bundle.putString("message", s);
    }

    public void setStatus(int i, String s)
    {
        bundle.putInt("statusCode", i);
        bundle.putString("message", s);
    }

    public void setStatusCode(int i)
    {
        bundle.putInt("statusCode", i);
    }

    public String toString()
    {
        return BundleUtil.toString(bundle);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeBundle(bundle);
    }

}
