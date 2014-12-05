// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui.ajstruct;

import android.util.Log;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.Variant;

public class PropertyWidgetRangeConstraintAJ
{

    public Variant increment;
    public Variant max;
    public Variant min;


    public org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.RangeConstraint getPropertyWidgetRangeConstraint(org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType valuetype)
    {
        Log.v((new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ.getSimpleName()).toString(), "Unmarshalling PropertyWidget range constraint");
        static class _cls1
        {

            static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[];

            static 
            {
                $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType = new int[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.BYTE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.DOUBLE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.INT.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.LONG.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.SHORT.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        int i;
        org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.RangeConstraint rangeconstraint1;
        try
        {
            i = _cls1..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType[valuetype.ordinal()];
        }
        catch (BusException busexception)
        {
            Log.e((new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ.getSimpleName()).toString(), (new StringBuilder()).append("Failed to unmarshal Range constraint: Error: '").append(busexception.getMessage()).append("'").toString());
            return null;
        }
        i;
        JVM INSTR tableswitch 1 5: default 76
    //                   1 107
    //                   2 215
    //                   3 262
    //                   4 309
    //                   5 356;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        Log.e((new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ.getSimpleName()).toString(), "Failed to unmarshal Range constraint");
        return null;
_L2:
        rangeconstraint1 = new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.RangeConstraint((Byte)min.getObject(Byte.TYPE), (Byte)max.getObject(Byte.TYPE), (Byte)increment.getObject(Byte.TYPE));
        return rangeconstraint1;
_L3:
        return new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.RangeConstraint((Double)min.getObject(Double.TYPE), (Double)max.getObject(Double.TYPE), (Double)increment.getObject(Double.TYPE));
_L4:
        return new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.RangeConstraint((Integer)min.getObject(Integer.TYPE), (Integer)max.getObject(Integer.TYPE), (Integer)increment.getObject(Integer.TYPE));
_L5:
        return new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.RangeConstraint((Long)min.getObject(Long.TYPE), (Long)max.getObject(Long.TYPE), (Long)increment.getObject(Long.TYPE));
_L6:
        org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.RangeConstraint rangeconstraint = new org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.RangeConstraint((Short)min.getObject(Short.TYPE), (Short)max.getObject(Short.TYPE), (Short)increment.getObject(Short.TYPE));
        return rangeconstraint;
    }
}
