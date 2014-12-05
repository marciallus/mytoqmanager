// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class ActionWidgetHintsType extends Enum
{

    private static final ActionWidgetHintsType $VALUES[];
    public static final ActionWidgetHintsType ACTION_BUTTON;
    public final short ID;

    private ActionWidgetHintsType(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static ActionWidgetHintsType getEnumById(short word0)
    {
        ActionWidgetHintsType aactionwidgethintstype[] = values();
        int i = aactionwidgethintstype.length;
        int j = 0;
        do
        {
label0:
            {
                ActionWidgetHintsType actionwidgethintstype = null;
                if (j < i)
                {
                    ActionWidgetHintsType actionwidgethintstype1 = aactionwidgethintstype[j];
                    if (word0 != actionwidgethintstype1.ID)
                        break label0;
                    actionwidgethintstype = actionwidgethintstype1;
                }
                return actionwidgethintstype;
            }
            j++;
        } while (true);
    }

    public static ActionWidgetHintsType valueOf(String s)
    {
        return (ActionWidgetHintsType)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/ActionWidgetHintsType, s);
    }

    public static ActionWidgetHintsType[] values()
    {
        return (ActionWidgetHintsType[])$VALUES.clone();
    }

    static 
    {
        ACTION_BUTTON = new ActionWidgetHintsType("ACTION_BUTTON", 0, (short)1);
        ActionWidgetHintsType aactionwidgethintstype[] = new ActionWidgetHintsType[1];
        aactionwidgethintstype[0] = ACTION_BUTTON;
        $VALUES = aactionwidgethintstype;
    }
}
