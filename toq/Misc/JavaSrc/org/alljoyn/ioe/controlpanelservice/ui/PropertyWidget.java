// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;

import android.util.Log;
import java.lang.reflect.Type;
import java.util.*;
import org.alljoyn.bus.*;
import org.alljoyn.bus.ifaces.Properties;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;
import org.alljoyn.ioe.controlpanelservice.ControllableDevice;
import org.alljoyn.ioe.controlpanelservice.communication.CommunicationUtil;
import org.alljoyn.ioe.controlpanelservice.communication.ConnectionManager;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.PropertyControlSuper;
import org.alljoyn.ioe.controlpanelservice.ui.ajstruct.PropertyWidgetConstrainToValuesAJ;
import org.alljoyn.ioe.controlpanelservice.ui.ajstruct.PropertyWidgetRangeConstraintAJ;
import org.alljoyn.ioe.controlpanelservice.ui.ajstruct.PropertyWidgetThreeShortAJ;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            UIElement, UIElementType, PropertyWidgetEnum, PropertyWidgetHintsType, 
//            DeviceControlPanel, ControlPanelEventsListener, PropertyWidgetSignalHandler, WidgetFactory

public class PropertyWidget extends UIElement
{
    public static class ConstrainToValues
    {

        private String label;
        private Object value;

        public String getLabel()
        {
            return label;
        }

        public Object getValue()
        {
            return value;
        }

        public ConstrainToValues(Object obj, String s)
        {
            value = obj;
            label = s;
        }
    }

    public static class Date
    {

        public static final short TYPE_CODE;
        private short day;
        private short month;
        private short year;

        public short getDay()
        {
            return day;
        }

        public short getMonth()
        {
            return month;
        }

        public short getYear()
        {
            return year;
        }

        public void setDay(short word0)
        {
            day = word0;
        }

        public void setMonth(short word0)
        {
            month = word0;
        }

        public void setYear(short word0)
        {
            year = word0;
        }

        public String toString()
        {
            return (new StringBuilder()).append(day).append("/").append(month).append("/").append(year).toString();
        }



/*
        static short access$002(Date date, short word0)
        {
            date.day = word0;
            return word0;
        }

*/



/*
        static short access$102(Date date, short word0)
        {
            date.month = word0;
            return word0;
        }

*/



/*
        static short access$202(Date date, short word0)
        {
            date.year = word0;
            return word0;
        }

*/

    }

    public static class RangeConstraint
    {

        private Object increment;
        private Object max;
        private Object min;

        public Object getIncrement()
        {
            return increment;
        }

        public Object getMax()
        {
            return max;
        }

        public Object getMin()
        {
            return min;
        }

        public RangeConstraint(Object obj, Object obj1, Object obj2)
        {
            min = obj;
            max = obj1;
            increment = obj2;
        }
    }

    public static class Time
    {

        public static final short TYPE_CODE = 1;
        private short hour;
        private short minute;
        private short second;

        public short getHour()
        {
            return hour;
        }

        public short getMinute()
        {
            return minute;
        }

        public short getSecond()
        {
            return second;
        }

        public void setHour(short word0)
        {
            hour = word0;
        }

        public void setMinute(short word0)
        {
            minute = word0;
        }

        public void setSecond(short word0)
        {
            second = word0;
        }

        public String toString()
        {
            return (new StringBuilder()).append(hour).append(":").append(minute).append(":").append(second).toString();
        }



/*
        static short access$302(Time time, short word0)
        {
            time.hour = word0;
            return word0;
        }

*/



/*
        static short access$402(Time time, short word0)
        {
            time.minute = word0;
            return word0;
        }

*/



/*
        static short access$502(Time time, short word0)
        {
            time.second = word0;
            return word0;
        }

*/

    }

    public static final class ValueType extends Enum
    {

        private static final ValueType $VALUES[];
        public static final ValueType BOOLEAN;
        public static final ValueType BYTE;
        public static final ValueType DATE;
        public static final ValueType DOUBLE;
        public static final ValueType INT;
        public static final ValueType LONG;
        public static final ValueType SHORT;
        public static final ValueType STRING;
        public static final ValueType TIME;

        public static ValueType valueOf(String s)
        {
            return (ValueType)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType, s);
        }

        public static ValueType[] values()
        {
            return (ValueType[])$VALUES.clone();
        }

        static 
        {
            BOOLEAN = new ValueType("BOOLEAN", 0);
            DOUBLE = new ValueType("DOUBLE", 1);
            INT = new ValueType("INT", 2);
            SHORT = new ValueType("SHORT", 3);
            STRING = new ValueType("STRING", 4);
            LONG = new ValueType("LONG", 5);
            BYTE = new ValueType("BYTE", 6);
            DATE = new ValueType("DATE", 7);
            TIME = new ValueType("TIME", 8);
            ValueType avaluetype[] = new ValueType[9];
            avaluetype[0] = BOOLEAN;
            avaluetype[1] = DOUBLE;
            avaluetype[2] = INT;
            avaluetype[3] = SHORT;
            avaluetype[4] = STRING;
            avaluetype[5] = LONG;
            avaluetype[6] = BYTE;
            avaluetype[7] = DATE;
            avaluetype[8] = TIME;
            $VALUES = avaluetype;
        }

        private ValueType(String s, int i)
        {
            super(s, i);
        }
    }


    private static final int ENABLED_MASK = 1;
    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/PropertyWidget.getSimpleName()).toString();
    private static final int WRITABLE_MASK = 2;
    private Integer bgColor;
    private Type conversionType;
    private boolean enabled;
    private List hints;
    private String label;
    private List listOfValuesConstraint;
    private Map optParams;
    private RangeConstraint propertyRangeConstraint;
    private PropertyControlSuper remoteControl;
    private String signature;
    private String unitOfMeasure;
    private ValueType valueType;
    private boolean writable;

    public PropertyWidget(String s, String s1, DeviceControlPanel devicecontrolpanel, List list)
        throws ControlPanelException
    {
        super(UIElementType.PROPERTY_WIDGET, s, s1, devicecontrolpanel, list);
    }

    private void definePropertyType(Variant variant)
        throws ControlPanelException
    {
        if (valueType != null)
            return;
        try
        {
            signature = VariantUtil.getSignature(variant);
            fromDbusSignatureToType(variant);
            Log.d(TAG, (new StringBuilder()).append("The PropertyWidget objPath: '").append(objectPath).append("', type is: '").append(valueType).append("', DbusSign: '").append(signature).append("'").toString());
            return;
        }
        catch (BusException busexception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to read the property objPath: '").append(objectPath).append("' value, Error: '").append(busexception.getMessage()).append("'").toString());
        }
    }

    private void fillOptionalParams(Map map)
        throws ControlPanelException
    {
        PropertyWidgetEnum apropertywidgetenum[];
        int i;
        int j;
        Log.d(TAG, "PropertyWidget - scanning optional parameters");
        apropertywidgetenum = PropertyWidgetEnum.values();
        i = apropertywidgetenum.length;
        j = 0;
_L5:
        if (j >= i) goto _L2; else goto _L1
_L1:
        PropertyWidgetEnum propertywidgetenum;
        Variant variant;
        propertywidgetenum = apropertywidgetenum[j];
        variant = (Variant)map.get(Short.valueOf(propertywidgetenum.ID));
        if (variant != null) goto _L4; else goto _L3
_L3:
        Log.v(TAG, (new StringBuilder()).append("OptionalParameter: '").append(propertywidgetenum).append("', is not found").toString());
_L6:
        j++;
          goto _L5
_L4:
        Log.v(TAG, (new StringBuilder()).append("Found OptionalParameter: '").append(propertywidgetenum).append("'").toString());
        static class _cls2
        {

            static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetEnum[];

            static 
            {
                $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetEnum = new int[PropertyWidgetEnum.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetEnum[PropertyWidgetEnum.LABEL.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetEnum[PropertyWidgetEnum.UNIT_OF_MEASURE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetEnum[PropertyWidgetEnum.BG_COLOR.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetEnum[PropertyWidgetEnum.CONSTRAINT_TO_VALUES.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetEnum[PropertyWidgetEnum.RANGE.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetEnum[PropertyWidgetEnum.HINTS.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.PropertyWidgetEnum[propertywidgetenum.ordinal()];
        JVM INSTR tableswitch 1 6: default 368
    //                   1 176
    //                   2 230
    //                   3 247
    //                   4 265
    //                   5 282
    //                   6 350;
           goto _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L7:
        BusException busexception;
        label = (String)variant.getObject(java/lang/String);
          goto _L6
_L8:
        try
        {
            unitOfMeasure = (String)variant.getObject(java/lang/String);
        }
        // Misplaced declaration of an exception variable
        catch (BusException busexception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to unmarshal optional parameters for PropertyWidget objPath: '").append(objectPath).append("'").toString());
        }
          goto _L6
_L9:
        bgColor = (Integer)variant.getObject(Integer.TYPE);
          goto _L6
_L10:
        setListOfValuesConstraints((PropertyWidgetConstrainToValuesAJ[])variant.getObject([Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;));
          goto _L6
_L11:
        RangeConstraint rangeconstraint = ((PropertyWidgetRangeConstraintAJ)variant.getObject(org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ)).getPropertyWidgetRangeConstraint(valueType);
        if (rangeconstraint != null) goto _L14; else goto _L13
_L13:
        throw new ControlPanelException((new StringBuilder()).append("Fail to unmarshal a range constraint for PropertyWidget objPath: '").append(objectPath).append("'").toString());
_L14:
        propertyRangeConstraint = rangeconstraint;
          goto _L6
_L12:
        setListOfPropertyWidgetHints((short[])variant.getObject([S));
          goto _L6
_L2:
    }

    private void fromDbusSignatureToType(Variant variant)
        throws ControlPanelException
    {
        if ("b".equals(signature))
        {
            valueType = ValueType.BOOLEAN;
            conversionType = Boolean.TYPE;
            return;
        }
        if ("d".equals(signature))
        {
            valueType = ValueType.DOUBLE;
            conversionType = Double.TYPE;
            return;
        }
        if ("s".equals(signature))
        {
            valueType = ValueType.STRING;
            conversionType = java/lang/String;
            return;
        }
        if ("y".equals(signature))
        {
            valueType = ValueType.BYTE;
            conversionType = Byte.TYPE;
            return;
        }
        if ("n".equals(signature) || "q".equals(signature))
        {
            valueType = ValueType.SHORT;
            conversionType = Short.TYPE;
            return;
        }
        if ("i".equals(signature) || "u".equals(signature))
        {
            valueType = ValueType.INT;
            conversionType = Integer.TYPE;
            return;
        }
        if ("t".equals(signature) || "x".equals(signature))
        {
            valueType = ValueType.LONG;
            conversionType = Long.TYPE;
            return;
        }
        if ("(q(qqq))".equals(signature))
        {
            PropertyWidgetThreeShortAJ propertywidgetthreeshortaj;
            try
            {
                propertywidgetthreeshortaj = (PropertyWidgetThreeShortAJ)variant.getObject(org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ);
            }
            catch (BusException busexception)
            {
                throw new ControlPanelException((new StringBuilder()).append("PropertyWidget objPath: '").append(objectPath).append("', failed to unmarshal value of sugnature: '").append(signature).append("'").toString());
            }
            switch (propertywidgetthreeshortaj.dataType)
            {
            default:
                throw new ControlPanelException((new StringBuilder()).append("PropertyWidget objPath: '").append(objectPath).append("' belongs to an unsupported composite type: '").append(signature).append("'").toString());

            case 0: // '\0'
                valueType = ValueType.DATE;
                conversionType = org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
                return;

            case 1: // '\001'
                valueType = ValueType.TIME;
                break;
            }
            conversionType = org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
            return;
        } else
        {
            throw new ControlPanelException((new StringBuilder()).append("PropertyWidget objPath: '").append(objectPath).append("' belongs to an unsupported type: '").append(signature).append("'").toString());
        }
    }

    private void setListOfPropertyWidgetHints(short aword0[])
    {
        Log.v(TAG, (new StringBuilder()).append("PropertyWidget objPath: '").append(objectPath).append("', filling PropertyWidget hints").toString());
        hints = new ArrayList(aword0.length);
        int i = aword0.length;
        for (int j = 0; j < i; j++)
        {
            short word0 = aword0[j];
            PropertyWidgetHintsType propertywidgethintstype = PropertyWidgetHintsType.getEnumById(word0);
            if (propertywidgethintstype == null)
                Log.w(TAG, (new StringBuilder()).append("Received unrecognized hintId: '").append(word0).append("', ignoring").toString());
            else
                hints.add(propertywidgethintstype);
        }

    }

    private void setListOfValuesConstraints(PropertyWidgetConstrainToValuesAJ apropertywidgetconstraintovaluesaj[])
        throws ControlPanelException
    {
        listOfValuesConstraint = new ArrayList(apropertywidgetconstraintovaluesaj.length);
        int i = apropertywidgetconstraintovaluesaj.length;
        for (int j = 0; j < i; j++)
        {
            ConstrainToValues constraintovalues = apropertywidgetconstraintovaluesaj[j].getPropertyWidgetConstrainToValues(valueType);
            if (constraintovalues == null)
                throw new ControlPanelException((new StringBuilder()).append("PropertyWidget objPath: '").append(objectPath).append("', failed to unmarshal constraint value object").toString());
            listOfValuesConstraint.add(constraintovalues);
        }

    }

    protected void createChildWidgets()
        throws ControlPanelException
    {
        int i = children.size();
        Log.d(TAG, (new StringBuilder()).append("Test PropertyWidget validity - PropertyWidget can't has child nodes. #ChildNodes: '").append(i).append("'").toString());
        if (i > 0)
            throw new ControlPanelException((new StringBuilder()).append("The PropertyWidget objPath: '").append(objectPath).append("' is not valid, found '").append(i).append("' child nodes").toString());
        else
            return;
    }

    public Integer getBgColor()
    {
        return bgColor;
    }

    public Object getCurrentValue()
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("getCurrentValue called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        Object obj;
        try
        {
            obj = unmarshalCurrentValue(remoteControl.getValue());
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to\tgetCurrentValue,  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
        return obj;
    }

    public List getHints()
    {
        return hints;
    }

    public String getLabel()
    {
        return label;
    }

    public List getListOfConstraint()
    {
        return listOfValuesConstraint;
    }

    public RangeConstraint getPropertyRangeConstraint()
    {
        return propertyRangeConstraint;
    }

    public String getSignature()
    {
        return signature;
    }

    public String getUnitOfMeasure()
    {
        return unitOfMeasure;
    }

    public ValueType getValueType()
    {
        return valueType;
    }

    public boolean isEnabled()
    {
        return enabled;
    }

    public boolean isWritable()
    {
        return writable;
    }

    protected void registerSignalHandler()
    {
        java.lang.reflect.Method method;
        try
        {
            method = CommunicationUtil.getPropertyMetadataChanged("MetadataChanged");
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s = (new StringBuilder()).append("Device: '").append(device.getDeviceId()).append("', PropertyWidget, failed to register signal handler, Error: '").append(controlpanelexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            controlPanel.getEventsListener().errorOccurred(controlPanel, s);
            return;
        }
        if (method != null)
            break MISSING_BLOCK_LABEL_106;
        Log.e(TAG, "PropertyWidget, MetadataChanged method isn't defined");
        throw new ControlPanelException("PropertyWidget, MetadataChanged method isn't defined");
        java.lang.reflect.Method method1 = CommunicationUtil.getPropertyValueChanged("ValueChanged");
        if (method1 != null)
            break MISSING_BLOCK_LABEL_140;
        Log.e(TAG, "PropertyWidget, ValueChanged method isn't defined");
        throw new ControlPanelException("PropertyWidget, ValueChanged method isn't defined");
        Log.d(TAG, (new StringBuilder()).append("PropertyWidget objPath: '").append(objectPath).append("', registering signal handler 'MetadataChanged'").toString());
        registerSignalHander(new PropertyWidgetSignalHandler(this), method);
        Log.d(TAG, (new StringBuilder()).append("PropertyWidget objPath: '").append(objectPath).append("', registering signal handler 'ValueChanged'").toString());
        registerSignalHander(new PropertyWidgetSignalHandler(this), method1);
        return;
    }

    public void setCurrentValue(Object obj)
        throws ControlPanelException
    {
        Log.i(TAG, (new StringBuilder()).append("setCurrentValue called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("', value: '").append(obj).append("'").toString());
        if (obj == null)
            throw new ControlPanelException((new StringBuilder()).append("PropertyWidget: '").append(objectPath).append("', the new value can't be NULL").toString());
        PropertyWidgetThreeShortAJ propertywidgetthreeshortaj;
        Time time;
        try
        {
            if (valueType == ValueType.DATE)
            {
                Date date = (Date)obj;
                PropertyWidgetThreeShortAJ propertywidgetthreeshortaj1 = new PropertyWidgetThreeShortAJ();
                propertywidgetthreeshortaj1.dataType = 0;
                propertywidgetthreeshortaj1.data = new org.alljoyn.ioe.controlpanelservice.ui.ajstruct.PropertyWidgetThreeShortAJ.ThreeShortAJ();
                propertywidgetthreeshortaj1.data.var1 = date.day;
                propertywidgetthreeshortaj1.data.var2 = date.month;
                propertywidgetthreeshortaj1.data.var3 = date.year;
                remoteControl.setValue(new Variant(propertywidgetthreeshortaj1, signature));
                return;
            }
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to setCurrentValue objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
        if (valueType == ValueType.TIME)
        {
            propertywidgetthreeshortaj = new PropertyWidgetThreeShortAJ();
            time = (Time)obj;
            propertywidgetthreeshortaj.dataType = 1;
            propertywidgetthreeshortaj.data = new org.alljoyn.ioe.controlpanelservice.ui.ajstruct.PropertyWidgetThreeShortAJ.ThreeShortAJ();
            propertywidgetthreeshortaj.data.var1 = time.hour;
            propertywidgetthreeshortaj.data.var2 = time.minute;
            propertywidgetthreeshortaj.data.var3 = time.second;
            remoteControl.setValue(new Variant(propertywidgetthreeshortaj, signature));
            return;
        }
        remoteControl.setValue(new Variant(obj, signature));
        return;
    }

    protected void setProperty(String s, Variant variant)
        throws ControlPanelException
    {
        int i;
        if (!"States".equals(s))
            break MISSING_BLOCK_LABEL_60;
        i = ((Integer)variant.getObject(Integer.TYPE)).intValue();
        boolean flag;
        boolean flag1;
        if ((i & 1) == 1)
            flag = true;
        else
            flag = false;
        try
        {
            enabled = flag;
        }
        catch (BusException busexception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to unmarshal the property: '").append(s).append("', Error: '").append(busexception.getMessage()).append("'").toString());
        }
        if ((i & 2) == 2)
            flag1 = true;
        else
            flag1 = false;
        writable = flag1;
        return;
        if ("OptParams".equals(s))
        {
            optParams = (Map)variant.getObject(new VariantTypeReference() {

                final PropertyWidget this$0;

            
            {
                this$0 = PropertyWidget.this;
                super();
            }
            }
);
            if (valueType != null)
            {
                fillOptionalParams(optParams);
                optParams = null;
                return;
            }
            break MISSING_BLOCK_LABEL_200;
        }
        if ("Value".equals(s))
        {
            definePropertyType((Variant)variant.getObject(org/alljoyn/bus/Variant));
            if (optParams != null)
            {
                fillOptionalParams(optParams);
                optParams = null;
            }
        }
    }

    protected void setRemoteController()
        throws ControlPanelException
    {
        WidgetFactory widgetfactory = WidgetFactory.getWidgetFactory(ifName);
        if (widgetfactory == null)
        {
            String s1 = (new StringBuilder()).append("Received an unrecognized interface name: '").append(ifName).append("'").toString();
            Log.e(TAG, s1);
            throw new ControlPanelException(s1);
        }
        Class class1 = widgetfactory.getIfaceClass();
        ProxyBusObject proxybusobject = ConnectionManager.getInstance().getProxyObject(device.getSender(), objectPath, sessionId.intValue(), new Class[] {
            class1, org/alljoyn/bus/ifaces/Properties
        });
        Log.d(TAG, (new StringBuilder()).append("Setting remote control PropertyWidget, objPath: '").append(objectPath).append("'").toString());
        properties = (Properties)proxybusobject.getInterface(org/alljoyn/bus/ifaces/Properties);
        remoteControl = (PropertyControlSuper)proxybusobject.getInterface(class1);
        try
        {
            version = remoteControl.getVersion();
            return;
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call getVersion for element: '").append(elementType).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
    }

    Object unmarshalCurrentValue(Variant variant)
        throws ControlPanelException
    {
        Date date;
        if (valueType != ValueType.DATE)
            break MISSING_BLOCK_LABEL_76;
        date = new Date();
        PropertyWidgetThreeShortAJ propertywidgetthreeshortaj = (PropertyWidgetThreeShortAJ)variant.getObject(org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ);
        date.day = propertywidgetthreeshortaj.data.var1;
        date.month = propertywidgetthreeshortaj.data.var2;
        date.year = propertywidgetthreeshortaj.data.var3;
        return date;
        Time time;
        if (valueType != ValueType.TIME)
            break MISSING_BLOCK_LABEL_152;
        time = new Time();
        PropertyWidgetThreeShortAJ propertywidgetthreeshortaj1 = (PropertyWidgetThreeShortAJ)variant.getObject(org/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ);
        time.hour = propertywidgetthreeshortaj1.data.var1;
        time.minute = propertywidgetthreeshortaj1.data.var2;
        time.second = propertywidgetthreeshortaj1.data.var3;
        return time;
        Object obj;
        try
        {
            obj = variant.getObject(conversionType);
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to unmarshal current property value, Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
        return obj;
    }

}
