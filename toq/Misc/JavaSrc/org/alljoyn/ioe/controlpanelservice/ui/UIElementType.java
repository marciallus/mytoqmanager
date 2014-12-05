// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class UIElementType extends Enum
{

    private static final UIElementType $VALUES[];
    public static final UIElementType ACTION_WIDGET;
    public static final UIElementType ALERT_DIALOG;
    public static final UIElementType CONTAINER;
    public static final UIElementType ERROR_WIDGET;
    public static final UIElementType LABEL_WIDGET;
    public static final UIElementType LIST_PROPERTY_WIDGET;
    public static final UIElementType PROPERTY_WIDGET;

    private UIElementType(String s, int i)
    {
        super(s, i);
    }

    public static UIElementType valueOf(String s)
    {
        return (UIElementType)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/UIElementType, s);
    }

    public static UIElementType[] values()
    {
        return (UIElementType[])$VALUES.clone();
    }

    static 
    {
        CONTAINER = new UIElementType("CONTAINER", 0);
        PROPERTY_WIDGET = new UIElementType("PROPERTY_WIDGET", 1);
        LIST_PROPERTY_WIDGET = new UIElementType("LIST_PROPERTY_WIDGET", 2);
        ACTION_WIDGET = new UIElementType("ACTION_WIDGET", 3);
        ALERT_DIALOG = new UIElementType("ALERT_DIALOG", 4);
        LABEL_WIDGET = new UIElementType("LABEL_WIDGET", 5);
        ERROR_WIDGET = new UIElementType("ERROR_WIDGET", 6);
        UIElementType auielementtype[] = new UIElementType[7];
        auielementtype[0] = CONTAINER;
        auielementtype[1] = PROPERTY_WIDGET;
        auielementtype[2] = LIST_PROPERTY_WIDGET;
        auielementtype[3] = ACTION_WIDGET;
        auielementtype[4] = ALERT_DIALOG;
        auielementtype[5] = LABEL_WIDGET;
        auielementtype[6] = ERROR_WIDGET;
        $VALUES = auielementtype;
    }
}
