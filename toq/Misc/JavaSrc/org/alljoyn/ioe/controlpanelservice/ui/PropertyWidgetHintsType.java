// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class PropertyWidgetHintsType extends Enum
{

    private static final PropertyWidgetHintsType $VALUES[];
    public static final PropertyWidgetHintsType CHECKBOX;
    public static final PropertyWidgetHintsType DATE_PICKER;
    public static final PropertyWidgetHintsType EDIT_TEXT;
    public static final PropertyWidgetHintsType NUMBER_PICKER;
    public static final PropertyWidgetHintsType NUMERIC_KEYPAD;
    public static final PropertyWidgetHintsType NUMERIC_VIEW;
    public static final PropertyWidgetHintsType RADIO_BUTTON;
    public static final PropertyWidgetHintsType ROTARY_KNOB;
    public static final PropertyWidgetHintsType SLIDER;
    public static final PropertyWidgetHintsType SPINNER;
    public static final PropertyWidgetHintsType SWITCH;
    public static final PropertyWidgetHintsType TEXT_VIEW;
    public static final PropertyWidgetHintsType TIME_PICKER;
    public final short ID;

    private PropertyWidgetHintsType(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static PropertyWidgetHintsType getEnumById(short word0)
    {
        PropertyWidgetHintsType apropertywidgethintstype[] = values();
        int i = apropertywidgethintstype.length;
        int j = 0;
        do
        {
label0:
            {
                PropertyWidgetHintsType propertywidgethintstype = null;
                if (j < i)
                {
                    PropertyWidgetHintsType propertywidgethintstype1 = apropertywidgethintstype[j];
                    if (word0 != propertywidgethintstype1.ID)
                        break label0;
                    propertywidgethintstype = propertywidgethintstype1;
                }
                return propertywidgethintstype;
            }
            j++;
        } while (true);
    }

    public static PropertyWidgetHintsType valueOf(String s)
    {
        return (PropertyWidgetHintsType)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType, s);
    }

    public static PropertyWidgetHintsType[] values()
    {
        return (PropertyWidgetHintsType[])$VALUES.clone();
    }

    static 
    {
        SWITCH = new PropertyWidgetHintsType("SWITCH", 0, (short)1);
        CHECKBOX = new PropertyWidgetHintsType("CHECKBOX", 1, (short)2);
        SPINNER = new PropertyWidgetHintsType("SPINNER", 2, (short)3);
        RADIO_BUTTON = new PropertyWidgetHintsType("RADIO_BUTTON", 3, (short)4);
        SLIDER = new PropertyWidgetHintsType("SLIDER", 4, (short)5);
        TIME_PICKER = new PropertyWidgetHintsType("TIME_PICKER", 5, (short)6);
        DATE_PICKER = new PropertyWidgetHintsType("DATE_PICKER", 6, (short)7);
        NUMBER_PICKER = new PropertyWidgetHintsType("NUMBER_PICKER", 7, (short)8);
        NUMERIC_KEYPAD = new PropertyWidgetHintsType("NUMERIC_KEYPAD", 8, (short)9);
        ROTARY_KNOB = new PropertyWidgetHintsType("ROTARY_KNOB", 9, (short)10);
        TEXT_VIEW = new PropertyWidgetHintsType("TEXT_VIEW", 10, (short)11);
        NUMERIC_VIEW = new PropertyWidgetHintsType("NUMERIC_VIEW", 11, (short)12);
        EDIT_TEXT = new PropertyWidgetHintsType("EDIT_TEXT", 12, (short)13);
        PropertyWidgetHintsType apropertywidgethintstype[] = new PropertyWidgetHintsType[13];
        apropertywidgethintstype[0] = SWITCH;
        apropertywidgethintstype[1] = CHECKBOX;
        apropertywidgethintstype[2] = SPINNER;
        apropertywidgethintstype[3] = RADIO_BUTTON;
        apropertywidgethintstype[4] = SLIDER;
        apropertywidgethintstype[5] = TIME_PICKER;
        apropertywidgethintstype[6] = DATE_PICKER;
        apropertywidgethintstype[7] = NUMBER_PICKER;
        apropertywidgethintstype[8] = NUMERIC_KEYPAD;
        apropertywidgethintstype[9] = ROTARY_KNOB;
        apropertywidgethintstype[10] = TEXT_VIEW;
        apropertywidgethintstype[11] = NUMERIC_VIEW;
        apropertywidgethintstype[12] = EDIT_TEXT;
        $VALUES = apropertywidgethintstype;
    }
}
