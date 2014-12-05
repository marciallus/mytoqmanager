// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource;

import android.graphics.Bitmap;
import android.os.Parcel;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource:
//            Image

public class CardImage extends Image
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public CardImage createFromParcel(Parcel parcel)
        {
            return new CardImage(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public CardImage[] newArray(int i)
        {
            return new CardImage[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    public static final int HEIGHT = 288;
    public static final int WIDTH = 250;

    private CardImage(Parcel parcel)
    {
        super(parcel);
    }

    CardImage(Parcel parcel, CardImage cardimage)
    {
        this(parcel);
    }

    public CardImage(String s, Bitmap bitmap)
    {
        super(s, bitmap);
        if (bitmap.getWidth() != 250)
            throw new IllegalArgumentException("card image width must be 250 pixels");
        if (bitmap.getHeight() != 288)
            throw new IllegalArgumentException("card image height must be 288 pixels");
        else
            return;
    }

}
