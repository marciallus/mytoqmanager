// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource;

import android.os.*;
import android.text.TextUtils;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.BundleUtil;

public class Resource
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Resource createFromParcel(Parcel parcel)
        {
            return new Resource(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Resource[] newArray(int i)
        {
            return new Resource[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    protected Bundle bundle;

    protected Resource(Parcel parcel)
    {
        bundle = new Bundle();
        readFromParcel(parcel);
    }

    protected Resource(String s)
    {
        bundle = new Bundle();
        if (TextUtils.isEmpty(s))
        {
            throw new IllegalArgumentException("id must not be null or zero length");
        } else
        {
            bundle.putString("id", s);
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
            return BundleUtil.equals(bundle, ((Resource)obj).bundle);
        else
            return false;
    }

    public String getId()
    {
        return bundle.getString("id");
    }

    public int hashCode()
    {
        return 37 * (185 + getClass().getName().hashCode()) + BundleUtil.hashCode(bundle);
    }

    protected void readFromParcel(Parcel parcel)
    {
        bundle = parcel.readBundle(com/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource.getClassLoader());
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
