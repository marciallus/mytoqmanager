// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource:
//            Icon

public class DeckOfCardsLauncherIcon extends Icon
{

    public static final int COLOR = 2;
    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public DeckOfCardsLauncherIcon createFromParcel(Parcel parcel)
        {
            return new DeckOfCardsLauncherIcon(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public DeckOfCardsLauncherIcon[] newArray(int i)
        {
            return new DeckOfCardsLauncherIcon[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    public static final int HEIGHT = 62;
    public static final int WHITE = 1;
    public static final int WIDTH = 132;

    private DeckOfCardsLauncherIcon(Parcel parcel)
    {
        super(parcel);
    }

    DeckOfCardsLauncherIcon(Parcel parcel, DeckOfCardsLauncherIcon deckofcardslaunchericon)
    {
        this(parcel);
    }

    public DeckOfCardsLauncherIcon(String s, Bitmap bitmap, int i)
    {
        super(s, bitmap);
        if (bitmap.getWidth() != 132)
            throw new IllegalArgumentException("launcher icon width must be 132 pixels");
        if (bitmap.getHeight() != 62)
            throw new IllegalArgumentException("launcher icon height must be 62 pixels");
        if (i != 1 && i != 2)
        {
            throw new IllegalArgumentException("type must WHITE or COLOR");
        } else
        {
            bundle.putInt("type", i);
            return;
        }
    }

    public int getType()
    {
        return bundle.getInt("type");
    }

}
