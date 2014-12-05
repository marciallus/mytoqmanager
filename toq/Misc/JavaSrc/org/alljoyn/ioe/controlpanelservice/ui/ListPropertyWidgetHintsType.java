// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class ListPropertyWidgetHintsType extends Enum
{

    private static final ListPropertyWidgetHintsType $VALUES[];
    public static final ListPropertyWidgetHintsType DYNAMIC_SPINNER;
    public final short ID;

    private ListPropertyWidgetHintsType(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static ListPropertyWidgetHintsType getEnumById(short word0)
    {
        ListPropertyWidgetHintsType alistpropertywidgethintstype[] = values();
        int i = alistpropertywidgethintstype.length;
        int j = 0;
        do
        {
label0:
            {
                ListPropertyWidgetHintsType listpropertywidgethintstype = null;
                if (j < i)
                {
                    ListPropertyWidgetHintsType listpropertywidgethintstype1 = alistpropertywidgethintstype[j];
                    if (word0 != listpropertywidgethintstype1.ID)
                        break label0;
                    listpropertywidgethintstype = listpropertywidgethintstype1;
                }
                return listpropertywidgethintstype;
            }
            j++;
        } while (true);
    }

    public static ListPropertyWidgetHintsType valueOf(String s)
    {
        return (ListPropertyWidgetHintsType)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetHintsType, s);
    }

    public static ListPropertyWidgetHintsType[] values()
    {
        return (ListPropertyWidgetHintsType[])$VALUES.clone();
    }

    static 
    {
        DYNAMIC_SPINNER = new ListPropertyWidgetHintsType("DYNAMIC_SPINNER", 0, (short)1);
        ListPropertyWidgetHintsType alistpropertywidgethintstype[] = new ListPropertyWidgetHintsType[1];
        alistpropertywidgethintstype[0] = DYNAMIC_SPINNER;
        $VALUES = alistpropertywidgethintstype;
    }
}
