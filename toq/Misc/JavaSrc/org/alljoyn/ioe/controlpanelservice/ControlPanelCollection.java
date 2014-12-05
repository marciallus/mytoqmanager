// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice;

import android.util.Log;
import java.util.*;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.ProxyBusObject;
import org.alljoyn.ioe.controlpanelservice.communication.CommunicationUtil;
import org.alljoyn.ioe.controlpanelservice.communication.ConnectionManager;
import org.alljoyn.ioe.controlpanelservice.communication.IntrospectionNode;
import org.alljoyn.ioe.controlpanelservice.communication.UIWidgetSignalHandler;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ControlPanel;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.NotificationAction;
import org.alljoyn.ioe.controlpanelservice.ui.ControlPanelEventsListener;
import org.alljoyn.ioe.controlpanelservice.ui.DeviceControlPanel;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice:
//            ControlPanelException, ControllableDevice, Unit

public class ControlPanelCollection
{
    public class NotificationActionReceiver
        implements NotificationAction
    {

        final ControlPanelCollection this$0;

        public void Dismiss()
            throws BusException
        {
            Log.d(ControlPanelCollection.TAG, (new StringBuilder()).append("Received NotificationAction.Dismiss() signal, objPath: '").append(objectPath).append("', notify ControlPanels").toString());
            Iterator iterator = controlPanels.values().iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                DeviceControlPanel devicecontrolpanel = (DeviceControlPanel)iterator.next();
                ControlPanelEventsListener controlpaneleventslistener = devicecontrolpanel.getEventsListener();
                if (controlpaneleventslistener != null)
                    controlpaneleventslistener.notificationActionDismiss(devicecontrolpanel);
            } while (true);
        }

        public short getVersion()
            throws BusException
        {
            return 0;
        }

        public NotificationActionReceiver()
        {
            this$0 = ControlPanelCollection.this;
            super();
        }
    }


    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ControlPanelCollection.getSimpleName()).toString();
    private Short controlPanelVersion;
    private Map controlPanels;
    private ControllableDevice device;
    private int ifaceMask;
    private String name;
    private UIWidgetSignalHandler notifActSignalHandler;
    private Short notificationActionVersion;
    private String objectPath;
    private Unit unit;

    public ControlPanelCollection(ControllableDevice controllabledevice, Unit unit1, String s, String s1)
    {
        device = controllabledevice;
        unit = unit1;
        name = s;
        objectPath = s1;
        controlPanels = new HashMap();
    }

    private void checkVersion()
        throws ControlPanelException
    {
        boolean flag1;
        ProxyBusObject proxybusobject;
        short word1;
        boolean flag = CommunicationUtil.maskIncludes(ifaceMask, 1);
        flag1 = CommunicationUtil.maskIncludes(ifaceMask, 4);
        ArrayList arraylist = new ArrayList(2);
        if (flag)
            arraylist.add(org/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel);
        if (flag1)
            arraylist.add(org/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction);
        proxybusobject = ConnectionManager.getInstance().getProxyObject(device.getSender(), objectPath, device.getSessionId().intValue(), (Class[])(Class[])arraylist.toArray(new Class[0]));
        if (!flag)
            break MISSING_BLOCK_LABEL_283;
        Log.d(TAG, (new StringBuilder()).append("The objPath: '").append(objectPath).append("' implements the ControlPanel interface, performing version check").toString());
        try
        {
            word1 = ((ControlPanel)proxybusobject.getInterface(org/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel)).getVersion();
            Log.d(TAG, (new StringBuilder()).append("Version check for ControlPanel interface, my protocol version is: '1' the remote device version is: '").append(word1).append("'").toString());
        }
        catch (BusException busexception1)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to call getVersion() for ControlPanel interface, objPath: '").append(objectPath).append("', Error: '").append(busexception1.getMessage()).append("'").toString());
        }
        if (word1 <= 1)
            break MISSING_BLOCK_LABEL_274;
        throw new ControlPanelException((new StringBuilder()).append("Incompatible ControlPanel version, my protocol version is: '1' the remote device version is: '").append(word1).append("'").toString());
        controlPanelVersion = Short.valueOf(word1);
        if (!flag1)
            break MISSING_BLOCK_LABEL_478;
        Log.d(TAG, (new StringBuilder()).append("The objPath: '").append(objectPath).append("' implements the NotificationAction interface, performing version check").toString());
        short word0;
        word0 = ((NotificationAction)proxybusobject.getInterface(org/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction)).getVersion();
        Log.d(TAG, (new StringBuilder()).append("Version check for NotificationAction interface, my protocol version is: '1' the remote device version is: '").append(word0).append("'").toString());
        if (word0 > 1)
        {
            try
            {
                Log.e(TAG, (new StringBuilder()).append("Incompatible NotificationAction version, my protocol version is: '1' the remote device version is: '").append(word0).append("'").toString());
                notificationActionVersion = null;
                return;
            }
            catch (BusException busexception)
            {
                Log.e(TAG, (new StringBuilder()).append("Failed to call getVersion() for NotificationAction interface, objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString());
            }
            break MISSING_BLOCK_LABEL_473;
        }
        notificationActionVersion = Short.valueOf(word0);
        return;
        notificationActionVersion = null;
    }

    private void releaseControlPanels()
    {
        for (Iterator iterator = controlPanels.values().iterator(); iterator.hasNext(); ((DeviceControlPanel)iterator.next()).release());
        controlPanels.clear();
    }

    public Short getControlPanelVersion()
    {
        return controlPanelVersion;
    }

    public Collection getControlPanels()
    {
        return Collections.unmodifiableCollection(controlPanels.values());
    }

    public ControllableDevice getDevice()
    {
        return device;
    }

    public Set getLanguages()
    {
        return Collections.unmodifiableSet(controlPanels.keySet());
    }

    public String getName()
    {
        return name;
    }

    public Short getNotificationActionVersion()
    {
        return notificationActionVersion;
    }

    public String getObjectPath()
    {
        return objectPath;
    }

    public Unit getUnit()
    {
        return unit;
    }

    void handleNotificationAction()
        throws ControlPanelException
    {
        if (!CommunicationUtil.maskIncludes(ifaceMask, 4))
            throw new ControlPanelException((new StringBuilder()).append("The received objectPath: '").append(objectPath).append("' doesn't implement the NotificationAction protocol").toString());
        if (notificationActionVersion == null)
            throw new ControlPanelException("Undefined the NotificationAction protocol version");
        Log.d(TAG, (new StringBuilder()).append("Registering NotificationAction signal handler, objPath: '").append(objectPath).append("'").toString());
        java.lang.reflect.Method method = CommunicationUtil.getNotificationActionDismissSignal("Dismiss");
        if (method == null)
        {
            throw new ControlPanelException("Failed to register the NotificationAction.Dismiss signal, no reflection method was found");
        } else
        {
            notifActSignalHandler = new UIWidgetSignalHandler(objectPath, new NotificationActionReceiver(), method, "org.alljoyn.ControlPanel.NotificationAction");
            notifActSignalHandler.register();
            return;
        }
    }

    public void release()
    {
        Log.d(TAG, (new StringBuilder()).append("Cleaning the ControlPanelCollection: '").append(name).append("'").toString());
        if (notifActSignalHandler != null)
        {
            try
            {
                notifActSignalHandler.unregister();
            }
            catch (ControlPanelException controlpanelexception)
            {
                Log.d(TAG, "Failed to unregister the NotificationAction signal handler");
            }
            notifActSignalHandler = null;
        }
        releaseControlPanels();
    }

    void retrievePanels()
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("Introspecting ControlPanels for objectPath: '").append(objectPath).append("'").toString());
        if (device.getSessionId() == null)
            throw new ControlPanelException("The session wasn't established, can't introspect ControlPanels");
        try
        {
            IntrospectionNode introspectionnode = new IntrospectionNode(objectPath);
            introspectionnode.parseOneLevel(ConnectionManager.getInstance().getBusAttachment(), device.getSender(), device.getSessionId().intValue());
            ifaceMask = CommunicationUtil.getInterfaceMask((String[])(String[])introspectionnode.getInterfaces().toArray(new String[0]));
            checkVersion();
            releaseControlPanels();
            Log.d(TAG, (new StringBuilder()).append("Fill the ControlPanelCollection, objectPath: '").append(objectPath).append("'").toString());
            String s1;
            DeviceControlPanel devicecontrolpanel;
            for (Iterator iterator = introspectionnode.getChidren().iterator(); iterator.hasNext(); controlPanels.put(s1, devicecontrolpanel))
            {
                String s = ((IntrospectionNode)iterator.next()).getPath();
                String as[] = s.split("/");
                s1 = as[-1 + as.length].replace("_", "-");
                Log.v(TAG, (new StringBuilder()).append("Introspected ControlPanel lang: '").append(s1).append("', objPath: '").append(objectPath).append("'").toString());
                devicecontrolpanel = new DeviceControlPanel(device, unit, this, s, s1);
            }

        }
        catch (Exception exception)
        {
            Log.e(TAG, (new StringBuilder()).append("Failed to introspect the ControlPanels for objectPath: '").append(objectPath).append("', Error: '").append(exception.getMessage()).append("'").toString());
            throw new ControlPanelException("Failed to introspect the ControlPanels");
        }
    }




}
