// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class PropertyWidgetEnum extends Enum
{

    private static final PropertyWidgetEnum $VALUES[];
    public static final PropertyWidgetEnum BG_COLOR;
    public static final PropertyWidgetEnum CONSTRAINT_TO_VALUES;
    public static final PropertyWidgetEnum HINTS;
    public static final PropertyWidgetEnum LABEL;
    public static final PropertyWidgetEnum RANGE;
    public static final PropertyWidgetEnum UNIT_OF_MEASURE;
    public final short ID;

    private PropertyWidgetEnum(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static PropertyWidgetEnum valueOf(String s)
    {
        return (PropertyWidgetEnum)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum, s);
    }

    public static PropertyWidgetEnum[] values()
    {
        return (PropertyWidgetEnum[])$VALUES.clone();
    }

    static 
    {
        LABEL = new PropertyWidgetEnum("LABEL", 0, (short)0);
        BG_COLOR = new PropertyWidgetEnum("BG_COLOR", 1, (short)1);
        HINTS = new PropertyWidgetEnum("HINTS", 2, (short)2);
        UNIT_OF_MEASURE = new PropertyWidgetEnum("UNIT_OF_MEASURE", 3, (short)3);
        CONSTRAINT_TO_VALUES = new PropertyWidgetEnum("CONSTRAINT_TO_VALUES", 4, (short)4);
        RANGE = new PropertyWidgetEnum("RANGE", 5, (short)5);
        PropertyWidgetEnum apropertywidgetenum[] = new PropertyWidgetEnum[6];
        apropertywidgetenum[0] = LABEL;
        apropertywidgetenum[1] = BG_COLOR;
        apropertywidgetenum[2] = HINTS;
        apropertywidgetenum[3] = UNIT_OF_MEASURE;
        apropertywidgetenum[4] = CONSTRAINT_TO_VALUES;
        apropertywidgetenum[5] = RANGE;
        $VALUES = apropertywidgetenum;
    }
}
