// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;

import android.util.Log;
import java.util.Map;
import org.alljoyn.bus.BusException;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;
import org.alljoyn.ioe.controlpanelservice.ControllableDevice;
import org.alljoyn.ioe.controlpanelservice.communication.TaskManager;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ListPropertyControl;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ListPropertyControlSecured;
import org.alljoyn.ioe.controlpanelservice.ui.ajstruct.ListPropertyWidgetRecordAJ;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            ListPropertyWidget, DeviceControlPanel, ControlPanelEventsListener

public class ListPropertyWidgetSignalHandler
    implements ListPropertyControl, ListPropertyControlSecured
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler.getSimpleName()).toString();
    private ListPropertyWidget listPropertyWidget;

    public ListPropertyWidgetSignalHandler(ListPropertyWidget listpropertywidget)
    {
        listPropertyWidget = listpropertywidget;
    }

    public void Add()
        throws BusException
    {
    }

    public void Cancel()
        throws BusException
    {
    }

    public void Confirm()
        throws BusException
    {
    }

    public void Delete(short word0)
        throws BusException
    {
    }

    public void MetadataChanged()
        throws BusException
    {
        String s = (new StringBuilder()).append("Device: '").append(listPropertyWidget.device.getDeviceId()).append("', ListProperty: '").append(listPropertyWidget.objectPath).append("', received METADATA_CHANGED signal").toString();
        Log.d(TAG, s);
        final ControlPanelEventsListener eventsListener = listPropertyWidget.controlPanel.getEventsListener();
        try
        {
            listPropertyWidget.refreshProperties();
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s1 = (new StringBuilder()).append(s).append(", but failed to refresh the widget properties").toString();
            Log.e(TAG, s1);
            eventsListener.errorOccurred(listPropertyWidget.controlPanel, s1);
            return;
        }
        TaskManager.getInstance().execute(new Runnable() {

            final ListPropertyWidgetSignalHandler this$0;
            final ControlPanelEventsListener val$eventsListener;

            public void run()
            {
                eventsListener.metadataChanged(listPropertyWidget.controlPanel, listPropertyWidget);
            }

            
            {
                this$0 = ListPropertyWidgetSignalHandler.this;
                eventsListener = controlpaneleventslistener;
                super();
            }
        }
);
    }

    public void Update(short word0)
        throws BusException
    {
    }

    public void ValueChanged()
        throws BusException
    {
        ControlPanelEventsListener controlpaneleventslistener = listPropertyWidget.controlPanel.getEventsListener();
        String s = (new StringBuilder()).append("Device: '").append(listPropertyWidget.device.getDeviceId()).append("', ListProperty: '").append(listPropertyWidget.objectPath).append("', received VALUE_CHANGED signal").toString();
        Log.d(TAG, s);
        try
        {
            java.util.List list = listPropertyWidget.getValue();
            controlpaneleventslistener.valueChanged(listPropertyWidget.controlPanel, listPropertyWidget, list);
            return;
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s1 = (new StringBuilder()).append(s).append(", but failed to read the new values, Error: '").append(controlpanelexception.getMessage()).append("'").toString();
            Log.e(TAG, s1);
            controlpaneleventslistener.errorOccurred(listPropertyWidget.controlPanel, s1);
            return;
        }
    }

    public void View(short word0)
        throws BusException
    {
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

    public ListPropertyWidgetRecordAJ[] getValue()
        throws BusException
    {
        return null;
    }

    public short getVersion()
        throws BusException
    {
        return 0;
    }


}
