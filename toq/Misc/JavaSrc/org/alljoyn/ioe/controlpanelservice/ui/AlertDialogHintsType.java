// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class AlertDialogHintsType extends Enum
{

    private static final AlertDialogHintsType $VALUES[];
    public static final AlertDialogHintsType ALERT_DIALOG;
    public final short ID;

    private AlertDialogHintsType(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static AlertDialogHintsType getEnumById(short word0)
    {
        AlertDialogHintsType aalertdialoghintstype[] = values();
        int i = aalertdialoghintstype.length;
        int j = 0;
        do
        {
label0:
            {
                AlertDialogHintsType alertdialoghintstype = null;
                if (j < i)
                {
                    AlertDialogHintsType alertdialoghintstype1 = aalertdialoghintstype[j];
                    if (word0 != alertdialoghintstype1.ID)
                        break label0;
                    alertdialoghintstype = alertdialoghintstype1;
                }
                return alertdialoghintstype;
            }
            j++;
        } while (true);
    }

    public static AlertDialogHintsType valueOf(String s)
    {
        return (AlertDialogHintsType)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/AlertDialogHintsType, s);
    }

    public static AlertDialogHintsType[] values()
    {
        return (AlertDialogHintsType[])$VALUES.clone();
    }

    static 
    {
        ALERT_DIALOG = new AlertDialogHintsType("ALERT_DIALOG", 0, (short)1);
        AlertDialogHintsType aalertdialoghintstype[] = new AlertDialogHintsType[1];
        aalertdialoghintstype[0] = ALERT_DIALOG;
        $VALUES = aalertdialoghintstype;
    }
}
