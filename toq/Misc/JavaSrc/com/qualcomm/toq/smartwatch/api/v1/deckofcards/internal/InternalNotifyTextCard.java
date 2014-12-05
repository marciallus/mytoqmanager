// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.NotificationTextCard;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.SimpleTextCard;

public final class InternalNotifyTextCard extends SimpleTextCard
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public InternalNotifyTextCard createFromParcel(Parcel parcel)
        {
            return new InternalNotifyTextCard(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public InternalNotifyTextCard[] newArray(int i)
        {
            return new InternalNotifyTextCard[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;

    private InternalNotifyTextCard(Parcel parcel)
    {
        super(parcel);
    }


    private InternalNotifyTextCard(String s, String s1, long l, String s2, String as[])
    {
        super(s, s1, l, s2, as);
        setIconURI(null);
        setVibeAlert(false);
        setCardImageURI(null);
    }

    public static InternalNotifyTextCard getAllJoynNotificationInstance(String s, String s1, long l, String s2, String as[])
    {
        InternalNotifyTextCard internalnotifytextcard = new InternalNotifyTextCard(s, s1, l, s2, as);
        internalnotifytextcard.setMenuOptionObjs(null);
        internalnotifytextcard.setInfoText(null);
        internalnotifytextcard.setReceivingEvents(false);
        internalnotifytextcard.setShowDivider(false);
        internalnotifytextcard.setVibeAlert(true);
        internalnotifytextcard.setIconURI(null);
        internalnotifytextcard.setCardImageURI(null);
        return internalnotifytextcard;
    }

    public static InternalNotifyTextCard getNotificationHandlerInstance(String s, String s1, long l, String s2, String as[], String s3, boolean flag)
    {
        InternalNotifyTextCard internalnotifytextcard = new InternalNotifyTextCard(s, s1, l, s2, as);
        internalnotifytextcard.setMenuOptionObjs(null);
        internalnotifytextcard.setInfoText(s3);
        internalnotifytextcard.setReceivingEvents(flag);
        internalnotifytextcard.setShowDivider(false);
        internalnotifytextcard.setVibeAlert(true);
        internalnotifytextcard.setIconURI(null);
        internalnotifytextcard.setCardImageURI(null);
        return internalnotifytextcard;
    }

    public static InternalNotifyTextCard getRemoteToqNotificationInstance(NotificationTextCard notificationtextcard, String s, String s1)
    {
        InternalNotifyTextCard internalnotifytextcard = new InternalNotifyTextCard(notificationtextcard.getId(), s, notificationtextcard.getTimeMillis(), notificationtextcard.getTitleText(), notificationtextcard.getMessageText());
        internalnotifytextcard.setMenuOptionObjs(notificationtextcard.getMenuOptionObjs());
        internalnotifytextcard.setInfoText(notificationtextcard.getInfoText());
        internalnotifytextcard.setReceivingEvents(notificationtextcard.isReceivingEvents());
        internalnotifytextcard.setShowDivider(notificationtextcard.isShowDivider());
        internalnotifytextcard.setVibeAlert(notificationtextcard.isVibeAlert());
        internalnotifytextcard.setIconURI(s1);
        internalnotifytextcard.setCardImageURI(null);
        return internalnotifytextcard;
    }

    public static InternalNotifyTextCard getRemoteToqNotificationLegacyInstance(String s, String s1, long l, String s2, String as[], String s3, String s4)
    {
        InternalNotifyTextCard internalnotifytextcard = new InternalNotifyTextCard(s, s1, l, s2, as);
        internalnotifytextcard.setMenuOptionObjs(null);
        internalnotifytextcard.setInfoText(s3);
        internalnotifytextcard.setReceivingEvents(false);
        internalnotifytextcard.setShowDivider(false);
        internalnotifytextcard.setVibeAlert(true);
        internalnotifytextcard.setIconURI(s4);
        internalnotifytextcard.setCardImageURI(null);
        return internalnotifytextcard;
    }

    public static InternalNotifyTextCard getSimpleTextCardInstance(SimpleTextCard simpletextcard)
    {
        InternalNotifyTextCard internalnotifytextcard = new InternalNotifyTextCard(simpletextcard.getId(), simpletextcard.getHeaderText(), simpletextcard.getTimeMillis(), simpletextcard.getTitleText(), simpletextcard.getMessageText());
        internalnotifytextcard.setMenuOptionObjs(simpletextcard.getMenuOptionObjs());
        internalnotifytextcard.setInfoText(simpletextcard.getInfoText());
        internalnotifytextcard.setReceivingEvents(simpletextcard.isReceivingEvents());
        internalnotifytextcard.setShowDivider(simpletextcard.isShowDivider());
        internalnotifytextcard.setCardImageId(simpletextcard.getCardImageId());
        internalnotifytextcard.setVibeAlert(false);
        internalnotifytextcard.setIconURI(null);
        internalnotifytextcard.setCardImageURI(null);
        return internalnotifytextcard;
    }

    private void setCardImageId(String s)
    {
        bundle.putString("cardImageId", s);
    }

    public String getCardImageURI()
    {
        return bundle.getString("cardImageURI");
    }

    public String getIconURI()
    {
        return bundle.getString("icon");
    }

    public boolean isVibeAlert()
    {
        return bundle.getBoolean("isVibeAlert");
    }

    public void setCardImageURI(String s)
    {
        bundle.putString("cardImageURI", s);
    }

    public void setIconURI(String s)
    {
        bundle.putString("icon", s);
    }

    public void setVibeAlert(boolean flag)
    {
        bundle.putBoolean("isVibeAlert", flag);
    }

    public String toString()
    {
        return (new StringBuilder()).append("InternalNotifyTextCard[").append(super.toString()).append("]").toString();
    }

}
