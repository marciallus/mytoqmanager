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
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ActionControl;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ActionControlSecured;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            ActionWidget, DeviceControlPanel, ControlPanelEventsListener

public class ActionWidgetSignalHandler
    implements ActionControl, ActionControlSecured
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler.getSimpleName()).toString();
    private ActionWidget actionWidget;

    public ActionWidgetSignalHandler(ActionWidget actionwidget)
    {
        actionWidget = actionwidget;
    }

    public void Exec()
    {
    }

    public void MetadataChanged()
    {
        String s = (new StringBuilder()).append("Device: '").append(actionWidget.device.getDeviceId()).append("', ActionWidget: '").append(actionWidget.objectPath).append("', received METADATA_CHANGED signal").toString();
        Log.d(TAG, s);
        final ControlPanelEventsListener eventsListener = actionWidget.controlPanel.getEventsListener();
        try
        {
            actionWidget.refreshProperties();
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s1 = (new StringBuilder()).append(s).append(", but failed to refresh the ActionWidget properties").toString();
            Log.e(TAG, s1);
            eventsListener.errorOccurred(actionWidget.controlPanel, s1);
            return;
        }
        TaskManager.getInstance().execute(new Runnable() {

            final ActionWidgetSignalHandler this$0;
            final ControlPanelEventsListener val$eventsListener;

            public void run()
            {
                eventsListener.metadataChanged(actionWidget.controlPanel, actionWidget);
            }

            
            {
                this$0 = ActionWidgetSignalHandler.this;
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
