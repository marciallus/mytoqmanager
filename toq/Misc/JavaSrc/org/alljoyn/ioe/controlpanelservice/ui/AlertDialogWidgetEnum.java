// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class AlertDialogWidgetEnum extends Enum
{

    private static final AlertDialogWidgetEnum $VALUES[];
    public static final AlertDialogWidgetEnum BG_COLOR;
    public static final AlertDialogWidgetEnum HINTS;
    public static final AlertDialogWidgetEnum LABEL;
    public static final AlertDialogWidgetEnum LABEL_ACTION1;
    public static final AlertDialogWidgetEnum LABEL_ACTION2;
    public static final AlertDialogWidgetEnum LABEL_ACTION3;
    public final short ID;

    private AlertDialogWidgetEnum(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static AlertDialogWidgetEnum valueOf(String s)
    {
        return (AlertDialogWidgetEnum)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum, s);
    }

    public static AlertDialogWidgetEnum[] values()
    {
        return (AlertDialogWidgetEnum[])$VALUES.clone();
    }

    static 
    {
        LABEL = new AlertDialogWidgetEnum("LABEL", 0, (short)0);
        BG_COLOR = new AlertDialogWidgetEnum("BG_COLOR", 1, (short)1);
        HINTS = new AlertDialogWidgetEnum("HINTS", 2, (short)2);
        LABEL_ACTION1 = new AlertDialogWidgetEnum("LABEL_ACTION1", 3, (short)6);
        LABEL_ACTION2 = new AlertDialogWidgetEnum("LABEL_ACTION2", 4, (short)7);
        LABEL_ACTION3 = new AlertDialogWidgetEnum("LABEL_ACTION3", 5, (short)8);
        AlertDialogWidgetEnum aalertdialogwidgetenum[] = new AlertDialogWidgetEnum[6];
        aalertdialogwidgetenum[0] = LABEL;
        aalertdialogwidgetenum[1] = BG_COLOR;
        aalertdialogwidgetenum[2] = HINTS;
        aalertdialogwidgetenum[3] = LABEL_ACTION1;
        aalertdialogwidgetenum[4] = LABEL_ACTION2;
        aalertdialogwidgetenum[5] = LABEL_ACTION3;
        $VALUES = aalertdialogwidgetenum;
    }
}
