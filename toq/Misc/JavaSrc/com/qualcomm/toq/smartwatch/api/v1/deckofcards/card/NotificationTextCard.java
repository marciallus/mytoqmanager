// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.card;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import java.util.ArrayList;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.card:
//            Card

public class NotificationTextCard extends Card
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public NotificationTextCard createFromParcel(Parcel parcel)
        {
            return new NotificationTextCard(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public NotificationTextCard[] newArray(int i)
        {
            return new NotificationTextCard[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    public static final String ID = "notification";

    public NotificationTextCard(long l, String s, String as[])
    {
        super("notification");
        setTimeMillis(l);
        setTitleText(s);
        setMessageText(as);
        setInfoText(null);
        setShowDivider(false);
        setVibeAlert(true);
    }

    protected NotificationTextCard(Parcel parcel)
    {
        super(parcel);
    }

    private String delimit(String s)
    {
        return s.replace("\r", "").replace("\f", "").replaceAll("\\\\+\"", "\"").replaceAll("\\\\+'", "'").replace("\n", "\\n").replace("\"", "\\\"").replace("'", "\\'").trim();
    }

    private ArrayList delimit(String as[])
    {
        ArrayList arraylist = new ArrayList();
        int i = as.length;
        int j = 0;
        do
        {
            if (j >= i)
                return arraylist;
            String s = as[j];
            if (!TextUtils.isEmpty(s))
            {
                String s1 = delimit(s);
                if (!TextUtils.isEmpty(s1))
                    arraylist.add(s1);
            }
            j++;
        } while (true);
    }

    public String getInfoText()
    {
        return bundle.getString("infoText");
    }

    public String[] getMessageText()
    {
        ArrayList arraylist = bundle.getStringArrayList("messageText");
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    public long getTimeMillis()
    {
        return bundle.getLong("timeMillis");
    }

    public String getTitleText()
    {
        return bundle.getString("titleText");
    }

    public boolean isShowDivider()
    {
        return bundle.getBoolean("isShowDivider");
    }

    public boolean isVibeAlert()
    {
        return bundle.getBoolean("isVibeAlert", true);
    }

    public void setInfoText(String s)
    {
        if (s != null)
        {
            bundle.putString("infoText", delimit(s));
            return;
        } else
        {
            bundle.putString("infoText", "");
            return;
        }
    }

    public void setMessageText(String as[])
    {
        if (as != null && as.length != 0)
        {
            ArrayList arraylist = delimit(as);
            if (arraylist.size() == 0)
            {
                throw new IllegalArgumentException("messageText must not be zero length");
            } else
            {
                bundle.putStringArrayList("messageText", arraylist);
                return;
            }
        } else
        {
            throw new IllegalArgumentException("messageText must not be null or zero length");
        }
    }

    public void setShowDivider(boolean flag)
    {
        bundle.putBoolean("isShowDivider", flag);
    }

    public void setTimeMillis(long l)
    {
        if (l <= 0L)
        {
            throw new IllegalArgumentException("timeMillis must be > 0");
        } else
        {
            bundle.putLong("timeMillis", l);
            return;
        }
    }

    public void setTitleText(String s)
    {
        if (s == null)
            throw new IllegalArgumentException("titleText must not be null");
        String s1 = delimit(s);
        if (TextUtils.isEmpty(s1))
        {
            throw new IllegalArgumentException("titleText must not be zero length");
        } else
        {
            bundle.putString("titleText", s1);
            return;
        }
    }

    public void setVibeAlert(boolean flag)
    {
        bundle.putBoolean("isVibeAlert", flag);
    }

    public String toString()
    {
        return (new StringBuilder()).append("NotificationTextCard[").append(super.toString()).append("]").toString();
    }

}
