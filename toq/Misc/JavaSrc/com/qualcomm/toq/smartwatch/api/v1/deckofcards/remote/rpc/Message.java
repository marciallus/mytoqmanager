// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc;

import android.os.*;
import android.text.TextUtils;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.BundleUtil;

public class Message
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Message createFromParcel(Parcel parcel)
        {
            return new Message(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Message[] newArray(int i)
        {
            return new Message[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    public static final int EVENT_CARD_CLOSED = 4;
    public static final int EVENT_CARD_INVISIBLE = 3;
    public static final int EVENT_CARD_OPEN = 1;
    public static final int EVENT_CARD_VISIBLE = 2;
    public static final int EVENT_MENU_OPTION_SELECTED = 5;
    public static final int EVENT_QUICK_REPLY_OPTION_SELECTED = 6;
    public static final int EVENT_UNDEFINED;
    protected Bundle bundle;

    protected Message(Parcel parcel)
    {
        bundle = new Bundle();
        readFromParcel(parcel);
    }

    public Message(String s, byte abyte0[])
    {
        bundle = new Bundle();
        if (TextUtils.isEmpty(s))
            throw new IllegalArgumentException("appName must not be null or zero length");
        if (abyte0 != null && abyte0.length != 0)
        {
            bundle.putString("appName", s);
            bundle.putByteArray("msgBytes", abyte0);
            bundle.putString("cardId", null);
            bundle.putInt("eventType", 0);
            bundle.putString("selectedMenuOption", null);
            bundle.putString("quickReplyOption", null);
            return;
        } else
        {
            throw new IllegalArgumentException("msgBytes must not be null or zero length");
        }
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
            return BundleUtil.equals(bundle, ((Message)obj).bundle);
        else
            return false;
    }

    public String getAppName()
    {
        return bundle.getString("appName");
    }

    public String getCardId()
    {
        return bundle.getString("cardId");
    }

    public int getEventType()
    {
        return bundle.getInt("eventType");
    }

    public byte[] getMessageBytes()
    {
        return bundle.getByteArray("msgBytes");
    }

    public String getQuickReplyOption()
    {
        return bundle.getString("quickReplyOption");
    }

    public String getSelectedMenuOption()
    {
        return bundle.getString("selectedMenuOption");
    }

    public int hashCode()
    {
        return 37 * (185 + getClass().getName().hashCode()) + BundleUtil.hashCode(bundle);
    }

    protected void readFromParcel(Parcel parcel)
    {
        bundle = parcel.readBundle(com/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message.getClassLoader());
    }

    public void setCardId(String s)
    {
        bundle.putString("cardId", s);
    }

    public void setEventType(int i)
    {
        bundle.putInt("eventType", i);
    }

    public void setQuickReplyOption(String s)
    {
        bundle.putString("quickReplyOption", s);
    }

    public void setSelectedMenuOption(String s)
    {
        bundle.putString("selectedMenuOption", s);
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
