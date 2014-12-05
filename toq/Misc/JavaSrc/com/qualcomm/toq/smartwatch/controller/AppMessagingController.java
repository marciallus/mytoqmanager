// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.comm.MessagingUtils;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.comm.lua.LuaMessageParser;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.comm.lua.LuaMessageTranslator;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalDeckOfCardsEventListener;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalNotifyTextCard;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.Message;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

public class AppMessagingController extends DefaultController
{

    private static final int APP_ID_BYTES = 256;
    public static final int FREE_MESSAGE_BYTES = 3834;
    private static final int HEADER_BYTES = 6;
    private static final int MAX_BYTES = 4096;
    private static final int MAX_PAYLOAD_BYTES = 4090;
    private static AppMessagingController inst;
    private Map internalEventListeners;

    private AppMessagingController()
    {
        internalEventListeners = new HashMap();
    }

    private void debugPayloadBytes(byte abyte0[])
        throws UnsupportedEncodingException
    {
        byte byte0 = abyte0[0];
        byte abyte1[] = new byte[byte0];
        System.arraycopy(abyte0, 1, abyte1, 0, byte0);
        byte abyte2[] = new byte[-1 + (abyte0.length - byte0)];
        System.arraycopy(abyte0, byte0 + 1, abyte2, 0, abyte2.length);
        Log.d("DeckOfCards", (new StringBuilder()).append("AppMessagingController.debugPayloadBytes - payloadBytes.length: ").append(abyte0.length).append(", destAppIdLen: ").append(byte0).append(", destAppIdBytes: ").append(new String(abyte1, "UTF-8")).append(", messageBytes: ").append(new String(abyte2, "UTF-8")).toString());
    }

    private void dispatchLocalMessage(String s, Message message)
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("AppMessagingController.dispatchLocalMessage - packageName: ").append(s).append(", message: ").append(message).toString());
        InternalDeckOfCardsEventListener internaldeckofcardseventlistener = (InternalDeckOfCardsEventListener)internalEventListeners.get(s);
        switch (message.getEventType())
        {
        case 4: // '\004'
            internaldeckofcardseventlistener.onCardClosed(message.getCardId());
            return;

        case 3: // '\003'
            internaldeckofcardseventlistener.onCardInvisible(message.getCardId());
            return;

        case 2: // '\002'
            internaldeckofcardseventlistener.onCardVisible(message.getCardId());
            return;

        case 1: // '\001'
            internaldeckofcardseventlistener.onCardOpen(message.getCardId());
            return;
        }
        internaldeckofcardseventlistener.onReceivedMessage(message.getMessageBytes());
    }

    private String extractAppId(byte abyte0[])
        throws UnsupportedEncodingException
    {
        byte byte0 = abyte0[0];
        byte abyte1[] = new byte[byte0 - 1];
        System.arraycopy(abyte0, 1, abyte1, 0, byte0 - 1);
        return new String(abyte1, "UTF-8");
    }

    private byte[] extractMessageBytes(byte abyte0[])
    {
        byte byte0 = abyte0[0];
        byte abyte1[] = new byte[-1 + (abyte0.length - byte0)];
        if (abyte1.length > 0)
            System.arraycopy(abyte0, byte0 + 1, abyte1, 0, abyte1.length);
        return abyte1;
    }

    private byte[] generatePayloadBytes(String s, String s1)
        throws UnsupportedEncodingException
    {
        byte abyte0[] = s.getBytes("UTF-8");
        byte abyte1[] = new byte[1 + abyte0.length];
        System.arraycopy(abyte0, 0, abyte1, 0, abyte0.length);
        byte byte0 = (byte)abyte1.length;
        byte abyte2[] = s1.getBytes("UTF-8");
        byte abyte3[] = new byte[1 + abyte1.length + abyte2.length];
        abyte3[0] = byte0;
        System.arraycopy(abyte1, 0, abyte3, 1, abyte1.length);
        System.arraycopy(abyte2, 0, abyte3, 1 + abyte1.length, abyte2.length);
        return abyte3;
    }

    public static AppMessagingController getAppMessagingController()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/controller/AppMessagingController;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new AppMessagingController();
        com/qualcomm/toq/smartwatch/controller/AppMessagingController;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/controller/AppMessagingController;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void addInternalEventListener(String s, InternalDeckOfCardsEventListener internaldeckofcardseventlistener)
    {
        internalEventListeners.put(s, internaldeckofcardseventlistener);
    }

    public void dismissNotificationPopup(String s, String s1, InternalNotifyTextCard internalnotifytextcard)
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("AppMessagingController.dismissNotificationPopup - appPackageName: ").append(s).append(", appName: ").append(s1).append(", notifyTextCard: ").append(internalnotifytextcard).toString());
        if (ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) != 1)
        {
            Log.w("DeckOfCards", "AppMessagingController.dismissNotificationPopup - unable to send outgoing message, not connected to WD");
            return;
        }
        try
        {
            String s2 = LuaMessageTranslator.getInstance().generateDismissPopupMessage(internalnotifytextcard);
            byte abyte0[] = generatePayloadBytes(MessagingUtils.generateAppId(s, s1), s2);
            debugPayloadBytes(abyte0);
            if (abyte0.length > 4090)
                Log.w("DeckOfCards", (new StringBuilder()).append("AppMessagingController.dismissNotificationPopup - payload length (").append(abyte0.length).append(") > max payload length (").append(4090).append(")").toString());
            super.sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 26, 27, abyte0, 32768, 0);
            return;
        }
        catch (Exception exception)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("AppMessagingController.dismissNotificationPopup - unable to send outgoing message, appPackageName: ").append(s).append(", appName: ").append(s1).append(", notifyTextCard: ").append(internalnotifytextcard).toString(), exception);
        }
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        String s;
        s = null;
        if (obj == null)
        {
            try
            {
                throw new UnsupportedOperationException("Payload is null");
            }
            catch (Exception exception)
            {
                Log.w("DeckOfCards", (new StringBuilder()).append("AppMessagingController.handleConnHandlerMessage - unable to process incoming message, destApp: ").append(s).toString(), exception);
            }
            return;
        }
        boolean flag = obj instanceof byte[];
        s = null;
        if (flag)
            break MISSING_BLOCK_LABEL_88;
        throw new UnsupportedOperationException((new StringBuilder()).append("Payload not byte[], unsupported type, payload: ").append(obj).toString());
        String s1;
        Message message;
        boolean flag1;
        byte abyte0[] = (byte[])(byte[])obj;
        debugPayloadBytes(abyte0);
        s = extractAppId(abyte0);
        s1 = MessagingUtils.getAppPackageName(s);
        String s2 = MessagingUtils.getAppName(s);
        Log.d("DeckOfCards", (new StringBuilder()).append("AppMessagingController.handleConnHandlerMessage - destAppId: ").append(s).append(", appPackageName: ").append(s1).append(", appName: ").append(s2).toString());
        byte abyte1[] = extractMessageBytes(abyte0);
        message = LuaMessageParser.getInstance().parseMessage(s2, abyte1);
        Log.d("DeckOfCards", (new StringBuilder()).append("AppMessagingController.handleConnHandlerMessage - message: ").append(message).toString());
        flag1 = internalEventListeners.containsKey(s1);
        if (!flag1)
            break MISSING_BLOCK_LABEL_283;
        dispatchLocalMessage(s1, message);
        return;
        Exception exception2;
        exception2;
        Log.w("DeckOfCards", (new StringBuilder()).append("AppMessagingController.handleConnHandlerMessage - an error occurred dispatching local message, appPackageName: ").append(s1).append(", message: ").append(message).toString(), exception2);
        return;
        int i1 = message.getEventType();
        if (i1 == 0)
            break MISSING_BLOCK_LABEL_347;
        LocalDeckOfCardsManager.getInstance().dispatchRemoteMessage(s1, message);
        return;
        Exception exception1;
        exception1;
        Log.w("DeckOfCards", (new StringBuilder()).append("AppMessagingController.handleConnHandlerMessage - an error occurred dispatching remote message, appPackageName: ").append(s1).append(", message: ").append(message).toString(), exception1);
        return;
        Log.w("DeckOfCards", (new StringBuilder()).append("AppMessagingController.handleConnHandlerMessage - remote message contains an undefined event, dropping event, appPackageName: ").append(s1).append(", message: ").append(message).toString());
        return;
    }

    public void removeInternalEventListener(String s)
    {
        internalEventListeners.remove(s);
    }

    public void showNotificationPopup(String s, String s1, InternalNotifyTextCard internalnotifytextcard)
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("AppMessagingController.showNotificationPopup - appPackageName: ").append(s).append(", appName: ").append(s1).append(", notifyTextCard: ").append(internalnotifytextcard).toString());
        if (ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) != 1)
        {
            Log.w("DeckOfCards", "AppMessagingController.showNotificationPopup - unable to send outgoing message, not connected to WD");
            return;
        }
        try
        {
            String s2 = LuaMessageTranslator.getInstance().generateShowPopupMessage(internalnotifytextcard);
            byte abyte0[] = generatePayloadBytes(MessagingUtils.generateAppId(s, s1), s2);
            debugPayloadBytes(abyte0);
            if (abyte0.length > 4090)
                Log.w("DeckOfCards", (new StringBuilder()).append("AppMessagingController.showNotificationPopup - payload length (").append(abyte0.length).append(") > max payload length (").append(4090).append(")").toString());
            super.sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 26, 27, abyte0, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
            return;
        }
        catch (Exception exception)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("AppMessagingController.showNotificationPopup - unable to send outgoing message, appPackageName: ").append(s).append(", appName: ").append(s1).append(", notifyTextCard: ").append(internalnotifytextcard).toString(), exception);
        }
    }
}
