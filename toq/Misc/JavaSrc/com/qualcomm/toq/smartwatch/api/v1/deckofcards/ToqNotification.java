// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards;

import android.os.*;
import android.text.TextUtils;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.NotificationTextCard;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.BundleUtil;
import java.util.ArrayList;

public class ToqNotification
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public ToqNotification createFromParcel(Parcel parcel)
        {
            return new ToqNotification(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public ToqNotification[] newArray(int i)
        {
            return new ToqNotification[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    protected Bundle bundle;

    protected ToqNotification(Parcel parcel)
    {
        bundle = new Bundle();
        readFromParcel(parcel);
    }

    protected ToqNotification(String s, String s1, long l, String s2, String as[])
    {
        this(s, s1, new NotificationTextCard(l, s2, as));
    }

    protected ToqNotification(String s, String s1, NotificationTextCard notificationtextcard)
    {
        bundle = new Bundle();
        if (TextUtils.isEmpty(s))
            throw new IllegalArgumentException("id must not be null or zero length");
        if (TextUtils.isEmpty(s1))
            throw new IllegalArgumentException("name must not be null or zero length");
        if (notificationtextcard == null)
        {
            throw new IllegalArgumentException("notificationCard must not be null");
        } else
        {
            bundle.putString("id", s);
            bundle.putString("name", s1);
            bundle.putParcelable("notificationCard", notificationtextcard);
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
            return BundleUtil.equals(bundle, ((ToqNotification)obj).bundle);
        else
            return false;
    }

    public String getId()
    {
        return bundle.getString("id");
    }

    public String getInfoText()
    {
        if (getNotificationCard() != null)
            return getNotificationCard().getInfoText();
        else
            return bundle.getString("infoText");
    }

    public String[] getMessageText()
    {
        if (getNotificationCard() != null)
        {
            return getNotificationCard().getMessageText();
        } else
        {
            ArrayList arraylist = bundle.getStringArrayList("messageText");
            return (String[])arraylist.toArray(new String[arraylist.size()]);
        }
    }

    public String getName()
    {
        return bundle.getString("name");
    }

    public NotificationTextCard getNotificationCard()
    {
        return (NotificationTextCard)bundle.getParcelable("notificationCard");
    }

    public long getTimeMillis()
    {
        if (getNotificationCard() != null)
            return getNotificationCard().getTimeMillis();
        else
            return bundle.getLong("timeMillis");
    }

    public String getTitleText()
    {
        if (getNotificationCard() != null)
            return getNotificationCard().getTitleText();
        else
            return bundle.getString("titleText");
    }

    public int hashCode()
    {
        return 37 * (185 + getClass().getName().hashCode()) + BundleUtil.hashCode(bundle);
    }

    protected void readFromParcel(Parcel parcel)
    {
        bundle = parcel.readBundle(com/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification.getClassLoader());
    }

    public void setInfoText(String s)
    {
        getNotificationCard().setInfoText(s);
    }

    public void setMessageText(String as[])
    {
        getNotificationCard().setMessageText(as);
    }

    public void setTimeMillis(long l)
    {
        getNotificationCard().setTimeMillis(l);
    }

    public void setTitleText(String s)
    {
        getNotificationCard().setTitleText(s);
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
