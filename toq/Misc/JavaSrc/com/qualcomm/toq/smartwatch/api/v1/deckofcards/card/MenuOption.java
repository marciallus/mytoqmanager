// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.card;

import android.os.*;
import android.text.TextUtils;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.BundleUtil;

public class MenuOption
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public MenuOption createFromParcel(Parcel parcel)
        {
            return new MenuOption(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public MenuOption[] newArray(int i)
        {
            return new MenuOption[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    protected Bundle bundle;

    protected MenuOption(Parcel parcel)
    {
        bundle = new Bundle();
        readFromParcel(parcel);
    }

    public MenuOption(String s)
    {
        this(s, false);
    }

    public MenuOption(String s, boolean flag)
    {
        bundle = new Bundle();
        if (s == null)
            throw new IllegalArgumentException("name must not be null");
        String s1 = s.trim();
        if (TextUtils.isEmpty(s1))
        {
            throw new IllegalArgumentException("name must not be zero length");
        } else
        {
            bundle.putString("name", s1);
            bundle.putBoolean("isQuickReply", flag);
            return;
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
            return BundleUtil.equals(bundle, ((MenuOption)obj).bundle);
        else
            return false;
    }

    public String getName()
    {
        return bundle.getString("name");
    }

    public int hashCode()
    {
        return 37 * (185 + getClass().getName().hashCode()) + BundleUtil.hashCode(bundle);
    }

    public boolean isQuickReply()
    {
        return bundle.getBoolean("isQuickReply");
    }

    protected void readFromParcel(Parcel parcel)
    {
        bundle = parcel.readBundle(com/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption.getClassLoader());
    }

    public void setQuickReply(Boolean boolean1)
    {
        bundle.putBoolean("isQuickReply", boolean1.booleanValue());
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
