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
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.Label;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            LabelWidget, DeviceControlPanel, ControlPanelEventsListener

public class LabelWidgetSignalHandler
    implements Label
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/LabelWidgetSignalHandler.getSimpleName()).toString();
    private LabelWidget labelWidget;

    public LabelWidgetSignalHandler(LabelWidget labelwidget)
    {
        labelWidget = labelwidget;
    }

    public void MetadataChanged()
        throws BusException
    {
        String s = (new StringBuilder()).append("Device: '").append(labelWidget.device.getDeviceId()).append("', labelWidget: '").append(labelWidget.objectPath).append("', received METADATA_CHANGED signal").toString();
        Log.d(TAG, s);
        final ControlPanelEventsListener eventsListener = labelWidget.controlPanel.getEventsListener();
        try
        {
            labelWidget.refreshProperties();
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s1 = (new StringBuilder()).append(s).append(", but failed to refresh the LabelWidget properties").toString();
            Log.e(TAG, s1);
            eventsListener.errorOccurred(labelWidget.controlPanel, s1);
            return;
        }
        TaskManager.getInstance().execute(new Runnable() {

            final LabelWidgetSignalHandler this$0;
            final ControlPanelEventsListener val$eventsListener;

            public void run()
            {
                eventsListener.metadataChanged(labelWidget.controlPanel, labelWidget);
            }

            
            {
                this$0 = LabelWidgetSignalHandler.this;
                eventsListener = controlpaneleventslistener;
                super();
            }
        }
);
    }

    public String getLabel()
        throws BusException
    {
        return null;
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

    public short getVersion()
        throws BusException
    {
        return 0;
    }


}
