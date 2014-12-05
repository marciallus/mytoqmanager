// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class LabelWidgetEnum extends Enum
{

    private static final LabelWidgetEnum $VALUES[];
    public static final LabelWidgetEnum BG_COLOR;
    public static final LabelWidgetEnum HINTS;
    public final short ID;

    private LabelWidgetEnum(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static LabelWidgetEnum valueOf(String s)
    {
        return (LabelWidgetEnum)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum, s);
    }

    public static LabelWidgetEnum[] values()
    {
        return (LabelWidgetEnum[])$VALUES.clone();
    }

    static 
    {
        BG_COLOR = new LabelWidgetEnum("BG_COLOR", 0, (short)1);
        HINTS = new LabelWidgetEnum("HINTS", 1, (short)2);
        LabelWidgetEnum alabelwidgetenum[] = new LabelWidgetEnum[2];
        alabelwidgetenum[0] = BG_COLOR;
        alabelwidgetenum[1] = HINTS;
        $VALUES = alabelwidgetenum;
    }
}
