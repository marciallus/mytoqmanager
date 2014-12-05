// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice;

import android.util.Log;
import java.util.*;
import org.alljoyn.about.AboutService;
import org.alljoyn.about.AboutServiceImpl;
import org.alljoyn.bus.BusAttachment;
import org.alljoyn.bus.Status;
import org.alljoyn.ioe.controlpanelservice.communication.AnnouncementReceiver;
import org.alljoyn.ioe.controlpanelservice.communication.CommunicationUtil;
import org.alljoyn.ioe.controlpanelservice.communication.ConnManagerEventType;
import org.alljoyn.ioe.controlpanelservice.communication.ConnManagerEventsListener;
import org.alljoyn.ioe.controlpanelservice.communication.ConnectionManager;
import org.alljoyn.ioe.controlpanelservice.communication.TaskManager;
import org.alljoyn.services.common.BusObjectDescription;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice:
//            ControlPanelException, DeviceRegistry, ControllableDevice

public class ControlPanelService
    implements ConnManagerEventsListener
{

    public static final String INTERFACE_PREFIX = "org.alljoyn.ControlPanel";
    private static final ControlPanelService SELF = new ControlPanelService();
    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ControlPanelService.getSimpleName()).toString();
    private AnnouncementReceiver announcementReceiver;
    private ConnectionManager connMgr;
    private DeviceRegistry deviceRegistry;

    private ControlPanelService()
    {
        connMgr = ConnectionManager.getInstance();
    }

    public static ControlPanelService getInstance()
    {
        return SELF;
    }

    private void handleAnnouncement(Map map)
    {
        String s;
        String s1;
        String s2;
        BusObjectDescription abusobjectdescription[];
        s = (String)map.get("DEVICE_ID");
        s1 = (String)map.get("APP_ID");
        s2 = (String)map.get("SENDER");
        abusobjectdescription = (BusObjectDescription[])(BusObjectDescription[])map.get("OBJ_DESC");
        if (s != null && s.length() != 0) goto _L2; else goto _L1
_L1:
        Log.e(TAG, "Received a bad Announcement signal, deviceId can't be NULL or empty");
_L11:
        return;
_L2:
        String s3;
        boolean flag;
        boolean flag1;
        ControllableDevice controllabledevice;
        int i;
        int j;
        if (s2 == null || s2.length() == 0)
        {
            Log.e(TAG, "Received a bad Announcement signal, sender can't be NULL or empty");
            return;
        }
        if (abusobjectdescription == null || abusobjectdescription.length == 0)
        {
            Log.e(TAG, "Received a bad Announcement signal, BusObjectDescription array is empty");
            return;
        }
        s3 = (new StringBuilder()).append(s).append("_").append(s1).toString();
        flag = false;
        flag1 = false;
        controllabledevice = (ControllableDevice)deviceRegistry.getDevices().get(s3);
        i = abusobjectdescription.length;
        j = 0;
_L4:
        BusObjectDescription busobjectdescription;
        int k;
        if (j >= i)
            continue; /* Loop/switch isn't completed */
        busobjectdescription = abusobjectdescription[j];
        Log.v(TAG, (new StringBuilder()).append("Found objPath: '").append(busobjectdescription.getPath()).append("'").toString());
        k = CommunicationUtil.getInterfaceMask(busobjectdescription.getInterfaces());
        if (CommunicationUtil.maskIncludes(k, 1) || CommunicationUtil.maskIncludes(k, 2))
            break; /* Loop/switch isn't completed */
_L9:
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        String s4;
        s4 = busobjectdescription.getPath();
        Log.d(TAG, (new StringBuilder()).append("Found ControlPanel object, path: '").append(s4).append("'").toString());
        if (flag1)
            break MISSING_BLOCK_LABEL_624;
        if (controllabledevice != null) goto _L6; else goto _L5
_L5:
        Log.d(TAG, (new StringBuilder()).append("Discovered new device, deviceId: '").append(s3).append("', sender: '").append(s2).append("'").toString());
        controllabledevice = new ControllableDevice(s3, s2);
        controllabledevice.subscribeOnFoundLostEvents();
        flag = true;
_L8:
        controllabledevice.setReachable(true);
        controllabledevice.startDeviceFoundVerificationService();
        Log.d(TAG, (new StringBuilder()).append("Start findAdvertisedName for sender: '").append(s2).append("'").toString());
        ControlPanelException controlpanelexception1;
        Status status;
        try
        {
            status = connMgr.findAdvertisedName(s2);
        }
        catch (ControlPanelException controlpanelexception2)
        {
            Log.e(TAG, (new StringBuilder()).append("Failed to call findAdvertisedName(), Error: '").append(controlpanelexception2.getMessage()).append("'").toString());
            return;
        }
        if (status != Status.OK)
        {
            Log.d(TAG, (new StringBuilder()).append("Failed to start findAdvertisedName for sender: '").append(s2).append("', Error: '").append(status).append("'").toString());
            controllabledevice.stopDeviceActivities();
            return;
        }
        break; /* Loop/switch isn't completed */
_L6:
        Log.d(TAG, (new StringBuilder()).append("Device with deviceId: '").append(s3).append("' already exists, updating sender to be: '").append(s2).append("'").toString());
        controllabledevice.setSender(s2);
        try
        {
            connMgr.cancelFindAdvertisedName(s2);
        }
        // Misplaced declaration of an exception variable
        catch (ControlPanelException controlpanelexception1)
        {
            Log.e(TAG, (new StringBuilder()).append("Failed to call cancelFindAdvertisedName(), Error: '").append(controlpanelexception1.getMessage()).append("'").toString());
            return;
        }
        if (true) goto _L8; else goto _L7
_L7:
        flag1 = true;
        try
        {
            controllabledevice.addControlPanel(s4, k);
        }
        catch (ControlPanelException controlpanelexception)
        {
            Log.w(TAG, (new StringBuilder()).append("Received a broken object path: '").append(s4).append("', Error: '").append(controlpanelexception.getMessage()).append("'").toString());
        }
          goto _L9
        if (!flag1) goto _L11; else goto _L10
_L10:
        if (flag)
        {
            deviceRegistry.foundNewDevice(controllabledevice);
            return;
        } else
        {
            deviceRegistry.reachabilityChanged(controllabledevice, true);
            return;
        }
    }

    public void connMgrEventOccured(ConnManagerEventType connmanagereventtype, Map map)
    {
        Log.d(TAG, (new StringBuilder()).append("Received event from connection manager, type: '").append(connmanagereventtype).append("'").toString());
        static class _cls1
        {

            static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType[];

            static 
            {
                $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType = new int[ConnManagerEventType.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType[ConnManagerEventType.ANNOUNCEMENT_RECEIVED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
            }
        }

        switch (_cls1..SwitchMap.org.alljoyn.ioe.controlpanelservice.communication.ConnManagerEventType[connmanagereventtype.ordinal()])
        {
        case 1: // '\001'
            handleAnnouncement(map);
            return;
        }
    }

    public ControllableDevice getControllableDevice(String s)
        throws ControlPanelException
    {
        return getControllableDevice(UUID.randomUUID().toString(), s);
    }

    public ControllableDevice getControllableDevice(String s, String s1)
        throws ControlPanelException
    {
        if (s1 != null && s1.length() != 0)
        {
            Log.i(TAG, (new StringBuilder()).append("Creating ControllableDevice, Sender: '").append(s1).append("', DeviceId: '").append(s).append("'").toString());
            return new ControllableDevice(s, s1);
        } else
        {
            throw new ControlPanelException((new StringBuilder()).append("Received an illegal sender name, Sender: '").append(s1).append("'").toString());
        }
    }

    public DeviceRegistry getDeviceRegistry()
    {
        return deviceRegistry;
    }

    public void init(BusAttachment busattachment)
        throws ControlPanelException
    {
        connMgr.setBusAttachment(busattachment);
        TaskManager.getInstance().initPool();
    }

    public void init(BusAttachment busattachment, DeviceRegistry deviceregistry)
        throws ControlPanelException
    {
        if (deviceregistry == null)
            throw new ControlPanelException("deviceRegistry can't be NULL");
        AboutService aboutservice = AboutServiceImpl.getInstance();
        if (!aboutservice.isClientRunning())
        {
            throw new ControlPanelException("The AboutService is not running, impossible to receive Announcement signals");
        } else
        {
            init(busattachment);
            deviceRegistry = deviceregistry;
            Log.d(TAG, "Start listening for Announcement signals");
            connMgr.registerEventListener(ConnManagerEventType.ANNOUNCEMENT_RECEIVED, this);
            announcementReceiver = new AnnouncementReceiver();
            aboutservice.addAnnouncementHandler(announcementReceiver);
            return;
        }
    }

    public void shutdown()
    {
        Log.d(TAG, "Shutdown ControlPanelService");
        if (announcementReceiver != null)
            AboutServiceImpl.getInstance().removeAnnouncementHandler(announcementReceiver);
        if (deviceRegistry != null)
        {
            Log.d(TAG, "Clear devices registry");
            for (Iterator iterator = deviceRegistry.getDevices().values().iterator(); iterator.hasNext(); stopControllableDevice((ControllableDevice)iterator.next()));
            deviceRegistry = null;
        }
        TaskManager taskmanager = TaskManager.getInstance();
        if (taskmanager.isRunning())
            taskmanager.shutdown();
        connMgr.shutdown();
    }

    public void stopControllableDevice(ControllableDevice controllabledevice)
    {
        Log.d(TAG, (new StringBuilder()).append("Stop device: '").append(controllabledevice.getDeviceId()).append("' activities").toString());
        controllabledevice.stopDeviceActivities();
    }

}
