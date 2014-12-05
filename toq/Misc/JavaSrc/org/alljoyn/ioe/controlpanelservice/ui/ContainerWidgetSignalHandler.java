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
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.Container;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ContainerSecured;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            ContainerWidget, DeviceControlPanel, ControlPanelEventsListener

public class ContainerWidgetSignalHandler
    implements Container, ContainerSecured
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler.getSimpleName()).toString();
    private ContainerWidget containerWidget;

    public ContainerWidgetSignalHandler(ContainerWidget containerwidget)
    {
        containerWidget = containerwidget;
    }

    public void MetadataChanged()
        throws BusException
    {
        String s = (new StringBuilder()).append("Device: '").append(containerWidget.device.getDeviceId()).append("', ContainerWidget: '").append(containerWidget.objectPath).append("', received METADATA_CHANGED signal").toString();
        Log.d(TAG, s);
        final ControlPanelEventsListener eventsListener = containerWidget.controlPanel.getEventsListener();
        try
        {
            containerWidget.refreshProperties();
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s1 = (new StringBuilder()).append(s).append(", but failed to refresh the Container properties").toString();
            Log.e(TAG, s1);
            eventsListener.errorOccurred(containerWidget.controlPanel, s1);
            return;
        }
        TaskManager.getInstance().execute(new Runnable() {

            final ContainerWidgetSignalHandler this$0;
            final ControlPanelEventsListener val$eventsListener;

            public void run()
            {
                eventsListener.metadataChanged(containerWidget.controlPanel, containerWidget);
            }

            
            {
                this$0 = ContainerWidgetSignalHandler.this;
                eventsListener = controlpaneleventslistener;
                super();
            }
        }
);
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
