// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class LabelWidgetHintsType extends Enum
{

    private static final LabelWidgetHintsType $VALUES[];
    public static final LabelWidgetHintsType TEXT_LABEL;
    public final short ID;

    private LabelWidgetHintsType(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static LabelWidgetHintsType getEnumById(short word0)
    {
        LabelWidgetHintsType alabelwidgethintstype[] = values();
        int i = alabelwidgethintstype.length;
        int j = 0;
        do
        {
label0:
            {
                LabelWidgetHintsType labelwidgethintstype = null;
                if (j < i)
                {
                    LabelWidgetHintsType labelwidgethintstype1 = alabelwidgethintstype[j];
                    if (word0 != labelwidgethintstype1.ID)
                        break label0;
                    labelwidgethintstype = labelwidgethintstype1;
                }
                return labelwidgethintstype;
            }
            j++;
        } while (true);
    }

    public static LabelWidgetHintsType valueOf(String s)
    {
        return (LabelWidgetHintsType)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType, s);
    }

    public static LabelWidgetHintsType[] values()
    {
        return (LabelWidgetHintsType[])$VALUES.clone();
    }

    static 
    {
        TEXT_LABEL = new LabelWidgetHintsType("TEXT_LABEL", 0, (short)1);
        LabelWidgetHintsType alabelwidgethintstype[] = new LabelWidgetHintsType[1];
        alabelwidgethintstype[0] = TEXT_LABEL;
        $VALUES = alabelwidgethintstype;
    }
}
