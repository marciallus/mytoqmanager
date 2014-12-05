// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.comm.lua;

import android.text.TextUtils;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.MenuOption;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.comm.MessageTranslator;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalNotifyTextCard;
import java.util.*;

public final class LuaMessageTranslator
    implements MessageTranslator
{

    private static final String DELETE_CARD_TYPE = "DeleteCard";
    private static final String NOTIFY_CARD_TYPE = "NotifyCard";
    private static final String POPUP_CARD_TYPE = "PopupCard";
    private static final String VERSION = "2";
    private static LuaMessageTranslator inst;

    private LuaMessageTranslator()
    {
    }

    private String addPartialDetail(String s, InternalNotifyTextCard internalnotifytextcard)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = -8 + (3834 - s.getBytes("UTF-8").length);
        boolean flag = true;
        Iterator iterator = Arrays.asList(internalnotifytextcard.getMessageText()).iterator();
_L1:
        StringBuilder stringbuilder1;
        if (!iterator.hasNext())
            break MISSING_BLOCK_LABEL_150;
        stringbuilder1 = new StringBuilder();
        if (flag)
            break MISSING_BLOCK_LABEL_73;
        stringbuilder1.append(", ");
        int j;
        stringbuilder1.append("\"").append((String)iterator.next()).append("\"");
        j = stringbuilder1.toString().getBytes("UTF-8").length;
        if (j > i)
            break MISSING_BLOCK_LABEL_150;
        stringbuilder.append(stringbuilder1);
        i -= j;
        flag = false;
          goto _L1
        Exception exception;
        exception;
        Log.w("DeckOfCards", "LuaMessageTranslator.addPartialDetail - an error occurred parsing the card detail", exception);
        return s.replace("%DETAIL%", stringbuilder.toString());
    }

    private String generateBasicCard(String s, InternalNotifyTextCard internalnotifytextcard)
    {
        StringBuilder stringbuilder = new StringBuilder((new StringBuilder()).append(s).append(" { ").toString());
        stringbuilder.append((new StringBuilder()).append("id = \"").append(internalnotifytextcard.getId()).append("\", ").toString());
        stringbuilder.append("version = 2, ");
        if (!TextUtils.isEmpty(internalnotifytextcard.getHeaderText()))
            stringbuilder.append((new StringBuilder()).append("app = \"").append(internalnotifytextcard.getHeaderText()).append("\", ").toString());
        if (!TextUtils.isEmpty(internalnotifytextcard.getTitleText()))
            stringbuilder.append((new StringBuilder()).append("title = \"").append(internalnotifytextcard.getTitleText()).append("\", ").toString());
        if (internalnotifytextcard.getTimeMillis() > 0L || !s.equals("NotifyCard"))
            stringbuilder.append((new StringBuilder()).append("time = \"").append(internalnotifytextcard.getTimeMillis()).append("\", ").toString());
        if (!TextUtils.isEmpty(internalnotifytextcard.getInfoText()))
            stringbuilder.append((new StringBuilder()).append("info = \"").append(internalnotifytextcard.getInfoText()).append("\", ").toString());
        if (internalnotifytextcard.isReceivingEvents())
        {
            stringbuilder.append("cardevents = \"true\", ");
            MenuOption amenuoption[] = internalnotifytextcard.getMenuOptionObjs();
            if (amenuoption.length > 0)
                stringbuilder.append((new StringBuilder()).append("options = {").append(generateLuaMenuOptionsArray(amenuoption)).append("}, ").toString());
        }
        if (internalnotifytextcard.isShowDivider())
            stringbuilder.append("divider = \"true\", ");
        if (!TextUtils.isEmpty(internalnotifytextcard.getIconURI()))
        {
            String s1 = internalnotifytextcard.getIconURI();
            if (!s1.startsWith("fms:/"))
                s1 = (new StringBuilder()).append("fms:/").append(s1).toString();
            stringbuilder.append((new StringBuilder()).append("icon = \"").append(s1).append("\", ").toString());
        }
        if (!TextUtils.isEmpty(internalnotifytextcard.getCardImageURI()))
            stringbuilder.append((new StringBuilder()).append("picture = \"").append(internalnotifytextcard.getCardImageURI()).append("\", ").toString());
        if (!internalnotifytextcard.isVibeAlert() && s.equals("PopupCard"))
            stringbuilder.append("suppressvibe = \"true\", ");
        if (internalnotifytextcard.getMessageText().length > 0)
            stringbuilder.append("detail = { %DETAIL% } ");
        stringbuilder.append("}\n");
        return stringbuilder.toString();
    }

    private String generateCard(String s, InternalNotifyTextCard internalnotifytextcard, boolean flag)
    {
        String s1;
label0:
        {
            s1 = generateBasicCard(s, internalnotifytextcard);
            if (internalnotifytextcard.getMessageText().length > 0)
            {
                if (!flag)
                    break label0;
                s1 = addPartialDetail(s1, internalnotifytextcard);
            }
            return s1;
        }
        return s1.replace("%DETAIL%", generateLuaArray(internalnotifytextcard.getMessageText()));
    }

    private String generateLuaArray(String as[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = Arrays.asList(as).iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            stringbuilder.append("\"").append((String)iterator.next()).append("\"");
            if (iterator.hasNext())
                stringbuilder.append(", ");
        } while (true);
        return stringbuilder.toString();
    }

    private String generateLuaMenuOptionsArray(MenuOption amenuoption[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = Arrays.asList(amenuoption).iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            MenuOption menuoption = (MenuOption)iterator.next();
            stringbuilder.append("{\"").append(menuoption.getName().replaceAll("\"", "")).append("\", ").append(menuoption.isQuickReply()).append("}");
            if (iterator.hasNext())
                stringbuilder.append(", ");
        } while (true);
        return stringbuilder.toString();
    }

    public static LuaMessageTranslator getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new LuaMessageTranslator();
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String generateDismissPopupMessage(InternalNotifyTextCard internalnotifytextcard)
    {
        StringBuilder stringbuilder = new StringBuilder("DeleteCard { ");
        stringbuilder.append((new StringBuilder()).append("id = \"").append(internalnotifytextcard.getId()).append("\", ").toString());
        stringbuilder.append((new StringBuilder()).append("timestamp = \"").append(System.currentTimeMillis()).append("\", ").toString());
        stringbuilder.append("}\n");
        return stringbuilder.toString();
    }

    public String generateNotifyMessage(InternalNotifyTextCard internalnotifytextcard)
    {
        return generateCard("NotifyCard", internalnotifytextcard, false);
    }

    public String generateShowPopupMessage(InternalNotifyTextCard internalnotifytextcard)
    {
        return generateCard("PopupCard", internalnotifytextcard, true);
    }
}
