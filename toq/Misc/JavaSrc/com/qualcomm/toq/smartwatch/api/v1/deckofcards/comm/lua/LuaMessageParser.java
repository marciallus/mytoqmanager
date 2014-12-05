// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.comm.lua;

import android.text.TextUtils;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.comm.MessageParser;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.Message;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class LuaMessageParser
    implements MessageParser
{

    private static LuaMessageParser inst;
    private Pattern cardPattern;

    private LuaMessageParser()
    {
        cardPattern = Pattern.compile("\\{(.*?)\\}", 32);
    }

    public static LuaMessageParser getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new LuaMessageParser();
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Message parseMessage(String s, byte abyte0[])
    {
        Message message;
        String s1;
        message = new Message(s, abyte0);
        s1 = null;
        s1 = (new String(abyte0, "UTF-8")).trim();
        if (s1.startsWith("CardEvent"))
            break MISSING_BLOCK_LABEL_74;
        Log.w("DeckOfCards", (new StringBuilder()).append("LuaMessageParser.parseMessage - card is not a 'CardEvent', aborting parsing, appName: ").append(s).append(", card: ").append(s1).toString());
        return message;
        int j;
        String s3;
        String s4;
        String as[];
        int i;
        String s2;
        String as1[];
        try
        {
            Matcher matcher = cardPattern.matcher(s1);
            matcher.find();
            as = matcher.group(1).split("[\r\n]+");
            i = as.length;
        }
        catch (Exception exception)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("LuaMessageParser.parseMessage - an error occurred parsing the message, aborting parsing, appName: ").append(s).append(", card: ").append(s1).toString(), exception);
            return message;
        }
        j = 0;
_L2:
        if (j >= i)
            break MISSING_BLOCK_LABEL_420;
        s2 = as[j].trim();
        if (TextUtils.isEmpty(s2))
            break MISSING_BLOCK_LABEL_422;
        as1 = s2.split("=");
        s3 = as1[0].trim();
        s4 = as1[1].replace("\"", "").replace(",", "").trim();
        if (s3.equals("id"))
        {
            message.setCardId(s4);
            break MISSING_BLOCK_LABEL_422;
        }
        if (!s3.equals("event"))
            break MISSING_BLOCK_LABEL_376;
        if (s4.equals("open"))
        {
            message.setEventType(1);
            break MISSING_BLOCK_LABEL_422;
        }
        if (s4.equals("visible"))
        {
            message.setEventType(2);
            break MISSING_BLOCK_LABEL_422;
        }
        if (s4.equals("invisible"))
        {
            message.setEventType(3);
            break MISSING_BLOCK_LABEL_422;
        }
        if (s4.equals("closed"))
        {
            message.setEventType(4);
            break MISSING_BLOCK_LABEL_422;
        }
        if (s4.equals("selected"))
        {
            message.setEventType(5);
            break MISSING_BLOCK_LABEL_422;
        }
        Log.w("DeckOfCards", (new StringBuilder()).append("LuaMessageParser.parseMessage - unknown card event, aborting parsing, appName: ").append(s).append(", card: ").append(s1).toString());
        return message;
        if (s3.equals("eventdata"))
        {
            message.setSelectedMenuOption(s4);
            break MISSING_BLOCK_LABEL_422;
        }
        if (s3.equals("eventdata2"))
        {
            message.setEventType(6);
            message.setQuickReplyOption(s4);
        }
        break MISSING_BLOCK_LABEL_422;
        return message;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
