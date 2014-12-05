// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Parcel;
import java.io.ByteArrayOutputStream;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource:
//            Resource

public class Icon extends Resource
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Icon createFromParcel(Parcel parcel)
        {
            return new Icon(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Icon[] newArray(int i)
        {
            return new Icon[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    protected Bitmap icon;

    protected Icon(Parcel parcel)
    {
        super(parcel);
    }

    public Icon(String s, Bitmap bitmap)
    {
        super(s);
        if (bitmap == null)
        {
            throw new IllegalArgumentException("icon must not be null");
        } else
        {
            icon = bitmap;
            return;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                if (obj == null || obj.getClass() != getClass())
                    break label0;
                Icon icon1 = (Icon)obj;
                if (!super.equals(icon1) || !getIcon().equals(icon1.getIcon()))
                    return false;
            }
            return true;
        }
        return false;
    }

    public Bitmap getIcon()
    {
        return icon;
    }

    public int hashCode()
    {
        return 37 * super.hashCode() + getIcon().hashCode();
    }

    protected void readFromParcel(Parcel parcel)
    {
        super.readFromParcel(parcel);
        byte abyte0[] = parcel.createByteArray();
        icon = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
    }

    public String toString()
    {
        return (new StringBuilder()).append("[").append(super.toString()).append(",").append("icon=").append(getIcon()).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        icon.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
        parcel.writeByteArray(bytearrayoutputstream.toByteArray());
    }

}
