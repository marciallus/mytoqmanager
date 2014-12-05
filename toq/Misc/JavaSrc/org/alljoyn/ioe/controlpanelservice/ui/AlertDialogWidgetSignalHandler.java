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
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.AlertDialog;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.AlertDialogSecured;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            AlertDialogWidget, DeviceControlPanel, ControlPanelEventsListener

public class AlertDialogWidgetSignalHandler
    implements AlertDialog, AlertDialogSecured
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler.getSimpleName()).toString();
    private AlertDialogWidget alertDialog;

    public AlertDialogWidgetSignalHandler(AlertDialogWidget alertdialogwidget)
    {
        alertDialog = alertdialogwidget;
    }

    public void Action1()
        throws BusException
    {
    }

    public void Action2()
        throws BusException
    {
    }

    public void Action3()
        throws BusException
    {
    }

    public void MetadataChanged()
        throws BusException
    {
        String s = (new StringBuilder()).append("Device: '").append(alertDialog.device.getDeviceId()).append("', AlertDialogWidget: '").append(alertDialog.objectPath).append("', received METADATA_CHANGED signal").toString();
        Log.d(TAG, s);
        final ControlPanelEventsListener eventsListener = alertDialog.controlPanel.getEventsListener();
        try
        {
            alertDialog.refreshProperties();
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s1 = (new StringBuilder()).append(s).append(", but failed to refresh the Container properties").toString();
            Log.e(TAG, s1);
            eventsListener.errorOccurred(alertDialog.controlPanel, s1);
            return;
        }
        TaskManager.getInstance().execute(new Runnable() {

            final AlertDialogWidgetSignalHandler this$0;
            final ControlPanelEventsListener val$eventsListener;

            public void run()
            {
                eventsListener.metadataChanged(alertDialog.controlPanel, alertDialog);
            }

            
            {
                this$0 = AlertDialogWidgetSignalHandler.this;
                eventsListener = controlpaneleventslistener;
                super();
            }
        }
);
    }

    public String getMessage()
        throws BusException
    {
        return null;
    }

    public short getNumActions()
        throws BusException
    {
        return 0;
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
