// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class ListPropertyWidgetEnum extends Enum
{

    private static final ListPropertyWidgetEnum $VALUES[];
    public static final ListPropertyWidgetEnum BG_COLOR;
    public static final ListPropertyWidgetEnum HINTS;
    public static final ListPropertyWidgetEnum LABEL;
    public final short ID;

    private ListPropertyWidgetEnum(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static ListPropertyWidgetEnum valueOf(String s)
    {
        return (ListPropertyWidgetEnum)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetEnum, s);
    }

    public static ListPropertyWidgetEnum[] values()
    {
        return (ListPropertyWidgetEnum[])$VALUES.clone();
    }

    static 
    {
        LABEL = new ListPropertyWidgetEnum("LABEL", 0, (short)0);
        BG_COLOR = new ListPropertyWidgetEnum("BG_COLOR", 1, (short)1);
        HINTS = new ListPropertyWidgetEnum("HINTS", 2, (short)2);
        ListPropertyWidgetEnum alistpropertywidgetenum[] = new ListPropertyWidgetEnum[3];
        alistpropertywidgetenum[0] = LABEL;
        alistpropertywidgetenum[1] = BG_COLOR;
        alistpropertywidgetenum[2] = HINTS;
        $VALUES = alistpropertywidgetenum;
    }
}
