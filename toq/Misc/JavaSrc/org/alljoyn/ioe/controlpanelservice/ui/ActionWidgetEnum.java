// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class ActionWidgetEnum extends Enum
{

    private static final ActionWidgetEnum $VALUES[];
    public static final ActionWidgetEnum BG_COLOR;
    public static final ActionWidgetEnum HINTS;
    public static final ActionWidgetEnum LABEL;
    public final short ID;

    private ActionWidgetEnum(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static ActionWidgetEnum valueOf(String s)
    {
        return (ActionWidgetEnum)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum, s);
    }

    public static ActionWidgetEnum[] values()
    {
        return (ActionWidgetEnum[])$VALUES.clone();
    }

    static 
    {
        LABEL = new ActionWidgetEnum("LABEL", 0, (short)0);
        BG_COLOR = new ActionWidgetEnum("BG_COLOR", 1, (short)1);
        HINTS = new ActionWidgetEnum("HINTS", 2, (short)2);
        ActionWidgetEnum aactionwidgetenum[] = new ActionWidgetEnum[3];
        aactionwidgetenum[0] = LABEL;
        aactionwidgetenum[1] = BG_COLOR;
        aactionwidgetenum[2] = HINTS;
        $VALUES = aactionwidgetenum;
    }
}
