// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;

import android.util.Log;
import java.util.Map;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.Variant;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;
import org.alljoyn.ioe.controlpanelservice.ControllableDevice;
import org.alljoyn.ioe.controlpanelservice.communication.TaskManager;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.PropertyControl;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.PropertyControlSecured;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            PropertyWidget, DeviceControlPanel, ControlPanelEventsListener

public class PropertyWidgetSignalHandler
    implements PropertyControl, PropertyControlSecured
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler.getSimpleName()).toString();
    private PropertyWidget propertyWidget;

    public PropertyWidgetSignalHandler(PropertyWidget propertywidget)
    {
        propertyWidget = propertywidget;
    }

    public void MetadataChanged()
        throws BusException
    {
        String s = (new StringBuilder()).append("Device: '").append(propertyWidget.device.getDeviceId()).append("', PropertyWidget: '").append(propertyWidget.objectPath).append("', received METADATA_CHANGED signal").toString();
        Log.d(TAG, s);
        final ControlPanelEventsListener eventsListener = propertyWidget.controlPanel.getEventsListener();
        try
        {
            propertyWidget.refreshProperties();
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s1 = (new StringBuilder()).append(s).append(", but failed to refresh the widget properties").toString();
            Log.e(TAG, s1);
            eventsListener.errorOccurred(propertyWidget.controlPanel, s1);
            return;
        }
        TaskManager.getInstance().execute(new Runnable() {

            final PropertyWidgetSignalHandler this$0;
            final ControlPanelEventsListener val$eventsListener;

            public void run()
            {
                eventsListener.metadataChanged(propertyWidget.controlPanel, propertyWidget);
            }

            
            {
                this$0 = PropertyWidgetSignalHandler.this;
                eventsListener = controlpaneleventslistener;
                super();
            }
        }
);
    }

    public void ValueChanged(Variant variant)
        throws BusException
    {
        ControlPanelEventsListener controlpaneleventslistener = propertyWidget.controlPanel.getEventsListener();
        String s = (new StringBuilder()).append("Device: '").append(propertyWidget.device.getDeviceId()).append("', PropertyWidget: '").append(propertyWidget.objectPath).append("', received VALUE_CHANGED signal").toString();
        Log.d(TAG, s);
        try
        {
            Object obj = propertyWidget.unmarshalCurrentValue(variant);
            Log.d(TAG, (new StringBuilder()).append("The new property: '").append(propertyWidget.objectPath).append("' value is: '").append(obj).append("'").toString());
            controlpaneleventslistener.valueChanged(propertyWidget.controlPanel, propertyWidget, obj);
            return;
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s1 = (new StringBuilder()).append(s).append(", but failed to unmarshal the received data, Error: '").append(controlpanelexception.getMessage()).append("'").toString();
            Log.e(TAG, s1);
            controlpaneleventslistener.errorOccurred(propertyWidget.controlPanel, s1);
            return;
        }
    }

    public Map getOptParams()
        throws BusException
    {
        return null;
    }

    public int getStates()
        throws BusException
    {
        return 0;
    }

    public Variant getValue()
        throws BusException
    {
        return null;
    }

    public short getVersion()
        throws BusException
    {
        return 0;
    }

    public void setValue(Variant variant)
        throws BusException
    {
    }


}
