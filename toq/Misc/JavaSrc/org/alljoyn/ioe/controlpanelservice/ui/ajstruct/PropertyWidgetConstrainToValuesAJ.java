// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui.ajstruct;

import android.util.Log;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.Variant;

public class PropertyWidgetConstrainToValuesAJ
{

    public String label;
    public Variant value;


    public org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues getPropertyWidgetConstrainToValues(org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType valuetype)
    {
        Log.v((new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ.getSimpleName()).toString(), (new StringBuilder()).append("Unmarshalling PropertyWidget LOV constraint, label: '").append(label).append("'").toString());
        static class _cls1
        {

            static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[];

            static 
            {
                $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType = new int[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.BOOLEAN.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.BYTE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.DOUBLE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.INT.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.LONG.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.SHORT.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.STRING.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6)
                {
                    return;
                }
            }
        }

        int i;
        org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues constraintovalues1;
        try
        {
            i = _cls1..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType[valuetype.ordinal()];
        }
        catch (BusException busexception)
        {
            Log.e((new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ.getSimpleName()).toString(), (new StringBuilder()).append("Failed to unmarshal PropertyWidget LOV - Error: '").append(busexception.getMessage()).append("'").toString());
            return null;
        }
        i;
        JVM INSTR tableswitch 1 7: default 108
    //                   1 139
    //                   2 225
    //                   3 250
    //                   4 275
    //                   5 300
    //                   6 325
    //                   7 350;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        Log.e((new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ.getSimpleName()).toString(), "Failed to unmarshal PropertyWidget LOV");
        return null;
_L2:
        constraintovalues1 = new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues((Boolean)value.getObject(Boolean.TYPE), label);
        return constraintovalues1;
_L3:
        return new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues((Byte)value.getObject(Byte.TYPE), label);
_L4:
        return new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues((Double)value.getObject(Double.TYPE), label);
_L5:
        return new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues((Integer)value.getObject(Integer.TYPE), label);
_L6:
        return new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues((Long)value.getObject(Long.TYPE), label);
_L7:
        return new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues((Short)value.getObject(Short.TYPE), label);
_L8:
        org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues constraintovalues = new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues((String)value.getObject(java/lang/String), label);
        return constraintovalues;
    }
}
