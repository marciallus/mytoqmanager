// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.comm;

import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalNotifyTextCard;

public interface MessageTranslator
{

    public abstract String generateDismissPopupMessage(InternalNotifyTextCard internalnotifytextcard);

    public abstract String generateNotifyMessage(InternalNotifyTextCard internalnotifytextcard);

    public abstract String generateShowPopupMessage(InternalNotifyTextCard internalnotifytextcard);
}
