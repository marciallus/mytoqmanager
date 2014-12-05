// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class ContainerWidgetEnum extends Enum
{

    private static final ContainerWidgetEnum $VALUES[];
    public static final ContainerWidgetEnum BG_COLOR;
    public static final ContainerWidgetEnum LABEL;
    public static final ContainerWidgetEnum LAYOUT_HINTS;
    public final short ID;

    private ContainerWidgetEnum(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static ContainerWidgetEnum valueOf(String s)
    {
        return (ContainerWidgetEnum)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetEnum, s);
    }

    public static ContainerWidgetEnum[] values()
    {
        return (ContainerWidgetEnum[])$VALUES.clone();
    }

    static 
    {
        LABEL = new ContainerWidgetEnum("LABEL", 0, (short)0);
        BG_COLOR = new ContainerWidgetEnum("BG_COLOR", 1, (short)1);
        LAYOUT_HINTS = new ContainerWidgetEnum("LAYOUT_HINTS", 2, (short)2);
        ContainerWidgetEnum acontainerwidgetenum[] = new ContainerWidgetEnum[3];
        acontainerwidgetenum[0] = LABEL;
        acontainerwidgetenum[1] = BG_COLOR;
        acontainerwidgetenum[2] = LAYOUT_HINTS;
        $VALUES = acontainerwidgetenum;
    }
}
