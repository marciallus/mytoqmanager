// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice;

import android.util.Log;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicBoolean;
import org.alljoyn.bus.Status;
import org.alljoyn.ioe.controlpanelservice.communication.CommunicationUtil;
import org.alljoyn.ioe.controlpanelservice.communication.ConnManagerEventType;
import org.alljoyn.ioe.controlpanelservice.communication.ConnManagerEventsListener;
import org.alljoyn.ioe.controlpanelservice.communication.ConnectionManager;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice:
//            ControlPanelService, Unit, DeviceRegistry, DeviceEventsListener, 
//            ControlPanelException, ControlPanelCollection

public class ControllableDevice
    implements ConnManagerEventsListener
{

    private static final int DEVICE_FOUND_TIME = 45;
    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ControllableDevice.getSimpleName()).toString();
    private ConnectionManager connMgr;
    private DeviceEventsListener deviceEventsListener;
    private String deviceId;
    private DeviceRegistry deviceRegistry;
    private AtomicBoolean isReachable;
    private ScheduledExecutorService scheduledService;
    private String sender;
    private Integer sessionId;
    private Map unitMap;

    public ControllableDevice(String s, String s1)
    {
        deviceId = s;
        sender = s1;
        isReachable = new AtomicBoolean(false);
        unitMap = new HashMap();
        sessionId = null;
        deviceRegistry = ControlPanelService.getInstance().getDeviceRegistry();
        connMgr = ConnectionManager.getInstance();
    }

    private Collection getControlPanelCollections()
    {
        LinkedList linkedlist = new LinkedList();
        for (Iterator iterator = unitMap.values().iterator(); iterator.hasNext(); linkedlist.addAll(((Unit)iterator.next()).getControlPanelCollection()));
        return linkedlist;
    }

    private void handleFoundAdvName(Map map)
    {
        String s = map.get("SENDER").toString();
        Log.v(TAG, (new StringBuilder()).append("Received foundAdvertisedName of sender: '").append(s).append("', my sender name is: '").append(sender).append("'").toString());
        if (s != null && s.equals(sender))
        {
            stopDeviceFoundVerificationService();
            if (isReachable.compareAndSet(false, true))
            {
                boolean flag = isReachable.get();
                Log.d(TAG, (new StringBuilder()).append("The device: '").append(deviceId).append("' isReachable set to: '").append(flag).append("'").toString());
                deviceRegistry.reachabilityChanged(this, flag);
                return;
            }
        } else
        {
            Log.v(TAG, (new StringBuilder()).append("The received sender: '").append(s).append("' doesn't belong to this device").toString());
        }
    }

    private void handleLostAdvName(Map map)
    {
        String s = map.get("SENDER").toString();
        Log.d(TAG, (new StringBuilder()).append("Received lostAdvertisedName of sender: '").append(s).append("', my sender name is: '").append(sender).append("'").toString());
        if (s != null && s.equals(sender))
        {
            stopDeviceFoundVerificationService();
            if (isReachable.compareAndSet(true, false))
            {
                boolean flag = isReachable.get();
                Log.d(TAG, (new StringBuilder()).append("The device: '").append(deviceId).append("' isReachable set to: '").append(flag).append("'").toString());
                deviceRegistry.reachabilityChanged(this, flag);
                return;
            }
        } else
        {
            Log.v(TAG, (new StringBuilder()).append("Received sender: '").append(s).append("' doesn't belong to this device").toString());
        }
    }

    private void handleSessionJoinFailed(Map map)
    {
        String s = map.get("DEVICE_ID").toString();
        Object obj = map.get("STATUS");
        if (obj != null && (obj instanceof Status))
        {
            String s1 = ((Status)obj).name();
            Log.w(TAG, (new StringBuilder()).append("Received SESSION_JOIN_FAIL event for deviceId: '").append(s).append("', this deviceId is: '").append(deviceId).append("', Status: '").append(s1).append("'").toString());
            if (s != null && s.equals(deviceId))
            {
                sessionId = null;
                connMgr.unregisterEventListener(ConnManagerEventType.SESSION_JOINED, this);
                connMgr.unregisterEventListener(ConnManagerEventType.SESSION_LOST, this);
                connMgr.unregisterEventListener(ConnManagerEventType.SESSION_JOIN_FAIL, this);
                deviceEventsListener.errorOccurred(this, s1);
                return;
            }
        }
    }

    private void handleSessionJoined(Map map)
    {
        String s = map.get("DEVICE_ID").toString();
        Integer integer = (Integer)map.get("SESSION_ID");
        Log.i(TAG, (new StringBuilder()).append("Received SESSION_JOINED event for deviceId: '").append(s).append("', this deviceId is: '").append(deviceId).append("', sid: '").append(integer).append("'").toString());
        if (s == null || !s.equals(deviceId))
            return;
        sessionId = integer;
        for (Iterator iterator = unitMap.values().iterator(); iterator.hasNext();)
        {
            Unit unit = (Unit)iterator.next();
            try
            {
                unit.fillControlPanelCollections();
            }
            catch (ControlPanelException controlpanelexception)
            {
                String s1 = (new StringBuilder()).append("Failed to fill the ControlPanelCollection of the  unit: '").append(unit.getUnitId()).append("'").toString();
                Log.e(TAG, s1);
                deviceEventsListener.errorOccurred(this, s1);
            }
        }

        deviceEventsListener.sessionEstablished(this, getControlPanelCollections());
    }

    private void handleSessionLost(Map map)
    {
        Integer integer = (Integer)map.get("SESSION_ID");
        Log.w(TAG, (new StringBuilder()).append("Received SESSION_LOST event for sessionId: '").append(integer).append("', this device sessionId is: '").append(sessionId).append("'").toString());
        if (integer != null && integer.equals(sessionId))
        {
            sessionId = null;
            connMgr.unregisterEventListener(ConnManagerEventType.SESSION_JOINED, this);
            connMgr.unregisterEventListener(ConnManagerEventType.SESSION_LOST, this);
            connMgr.unregisterEventListener(ConnManagerEventType.SESSION_JOIN_FAIL, this);
            deviceEventsListener.sessionLost(this);
            return;
        } else
        {
            return;
        }
    }

    private void stopDeviceFoundVerificationService()
    {
        if (scheduledService == null)
        {
            return;
        } else
        {
            Log.d(TAG, (new StringBuilder()).append("Device: '").append(deviceId).append("' stops DeviceFoundVerification scheduled service").toString());
            scheduledService.shutdownNow();
            scheduledService = null;
            return;
        }
    }

    Unit addControlPanel(String s, int i)
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("Creating ControlPanelCollection object for objPath: '").append(s).append("', device: '").append(deviceId).append("'").toString());
        String as[] = CommunicationUtil.parseObjPath(s);
        String s1 = as[0];
        String s2 = as[1];
        Unit unit = (Unit)unitMap.get(s1);
        if (unit == null)
        {
            Log.v(TAG, (new StringBuilder()).append("Found new functional unit: '").append(s1).append("', panel: '").append(s2).append("'").toString());
            unit = new Unit(this, s1);
            unitMap.put(s1, unit);
        } else
        {
            Log.v(TAG, (new StringBuilder()).append("Found an existent functional unit: '").append(s1).append("', panel: '").append(s2).append("'").toString());
        }
        if (CommunicationUtil.maskIncludes(i, 2))
        {
            Log.d(TAG, (new StringBuilder()).append("The objPath: '").append(s).append("' belongs to the HTTPControl interface, setting").toString());
            unit.setHttpControlObjPath(s);
            return unit;
        } else
        {
            unit.createControlPanelCollection(s, s2);
            return unit;
        }
    }

    public transient Unit addControlPanel(String s, String as[])
        throws ControlPanelException
    {
        if (s == null)
            throw new ControlPanelException((new StringBuilder()).append("The objectPath: '").append(s).append("' is undefined").toString());
        int i = CommunicationUtil.getInterfaceMask(as);
        if (!CommunicationUtil.maskIncludes(i, 1) && !CommunicationUtil.maskIncludes(i, 2))
            throw new ControlPanelException((new StringBuilder()).append("The objectPath: '").append(s).append("', doesn't implement any ControlPanel permitted interface").toString());
        else
            return addControlPanel(s, i);
    }

    public void connMgrEventOccured(ConnManagerEventType connmanagereventtype, Map map)
    {
        static class _cls2
        {

            static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType[];

            static 
            {
                $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType = new int[ConnManagerEventType.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType[ConnManagerEventType.FOUND_DEVICE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType[ConnManagerEventType.LOST_DEVICE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType[ConnManagerEventType.SESSION_JOINED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType[ConnManagerEventType.SESSION_JOIN_FAIL.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType[ConnManagerEventType.SESSION_LOST.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        switch (_cls2..SwitchMap.org.alljoyn.ioe.controlpanelservice.communication.ConnManagerEventType[connmanagereventtype.ordinal()])
        {
        case 5: // '\005'
            handleSessionLost(map);
            return;

        case 4: // '\004'
            handleSessionJoinFailed(map);
            return;

        case 3: // '\003'
            handleSessionJoined(map);
            return;

        case 2: // '\002'
            handleLostAdvName(map);
            return;

        case 1: // '\001'
            handleFoundAdvName(map);
            return;
        }
    }

    public ControlPanelCollection createNotificationAction(String s)
        throws ControlPanelException
    {
        if (sessionId == null)
            throw new ControlPanelException("The session wasn't established, can't create a ControlPanelCollection");
        if (s == null)
        {
            throw new ControlPanelException("Received an undefined objectPath");
        } else
        {
            Log.i(TAG, (new StringBuilder()).append("Creating a NotificationAction control panel, objectPath: '").append(s).append("'").toString());
            String as[] = CommunicationUtil.parseObjPath(s);
            String s1 = as[0];
            String s2 = as[1];
            ControlPanelCollection controlpanelcollection = (new Unit(this, s1)).createControlPanelCollection(s, s2);
            controlpanelcollection.retrievePanels();
            controlpanelcollection.handleNotificationAction();
            return controlpanelcollection;
        }
    }

    public Status endSession()
    {
        Log.i(TAG, "endSession has been called, leaving the session");
        if (sessionId == null)
        {
            Log.w(TAG, "Fail to execute endSession, sessionId is NULL, returning Status of FAIL");
            return Status.FAIL;
        }
        Status status;
        String s;
        try
        {
            status = connMgr.leaveSession(sessionId.intValue());
        }
        catch (ControlPanelException controlpanelexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Failed to call leaveSession, Error: '").append(controlpanelexception.getMessage()).append("', returning status of FAIL").toString());
            return Status.FAIL;
        }
        s = (new StringBuilder()).append("endSession return Status is: '").append(status).append("'").toString();
        if (status == Status.OK)
        {
            sessionId = null;
            Log.i(TAG, s);
            connMgr.unregisterEventListener(ConnManagerEventType.SESSION_JOINED, this);
            connMgr.unregisterEventListener(ConnManagerEventType.SESSION_LOST, this);
            connMgr.unregisterEventListener(ConnManagerEventType.SESSION_JOIN_FAIL, this);
            return status;
        } else
        {
            Log.w(TAG, s);
            return status;
        }
    }

    public DeviceEventsListener getDeviceEventsListener()
    {
        return deviceEventsListener;
    }

    public String getDeviceId()
    {
        return deviceId;
    }

    public String getSender()
    {
        return sender;
    }

    public Integer getSessionId()
    {
        return sessionId;
    }

    public Collection getUnitCollection()
    {
        return Collections.unmodifiableCollection(unitMap.values());
    }

    public boolean isReachable()
    {
        return isReachable.get();
    }

    public void removeNotificationAction(ControlPanelCollection controlpanelcollection)
    {
        controlpanelcollection.getUnit().release();
    }

    void setReachable(boolean flag)
    {
        isReachable.set(flag);
    }

    void setSender(String s)
    {
        sender = s;
    }

    void startDeviceFoundVerificationService()
    {
        Log.d(TAG, (new StringBuilder()).append("Start DeviceFoundVerificationService for device: '").append(deviceId).append("', the verification will be done after: ").append(45).append(" seconds").toString());
        stopDeviceFoundVerificationService();
        scheduledService = Executors.newScheduledThreadPool(1);
        scheduledService.schedule(new Runnable() {

            final ControllableDevice this$0;

            public void run()
            {
                Log.d(ControllableDevice.TAG, (new StringBuilder()).append("DeviceFoundVerificationService is wake up, set the device: '").append(deviceId).append("' reachability to 'false'").toString());
                isReachable.set(false);
                deviceRegistry.reachabilityChanged(ControllableDevice.this, false);
            }

            
            {
                this$0 = ControllableDevice.this;
                super();
            }
        }
, 45L, TimeUnit.SECONDS);
    }

    public void startSession(DeviceEventsListener deviceeventslistener)
        throws ControlPanelException
    {
        if (deviceeventslistener == null)
            throw new ControlPanelException("Events listener can't be NULL");
        deviceEventsListener = deviceeventslistener;
        if (sessionId != null)
        {
            String s1 = (new StringBuilder()).append("The device is already in session: '").append(deviceId).append("', sessionId: '").append(sessionId).append("'").toString();
            Log.d(TAG, s1);
            deviceEventsListener.sessionEstablished(this, getControlPanelCollections());
        } else
        {
            connMgr.registerEventListener(ConnManagerEventType.SESSION_JOINED, this);
            connMgr.registerEventListener(ConnManagerEventType.SESSION_LOST, this);
            connMgr.registerEventListener(ConnManagerEventType.SESSION_JOIN_FAIL, this);
            Log.d(TAG, (new StringBuilder()).append("Device: '").append(deviceId).append("' starting session with sender: '").append(sender).append("'").toString());
            Status status = connMgr.joinSession(sender, deviceId);
            if (status != Status.OK)
            {
                String s = status.name();
                Log.e(TAG, (new StringBuilder()).append("Failed to join session: '").append(s).append("'").toString());
                deviceEventsListener.errorOccurred(this, s);
                return;
            }
        }
    }

    void stopDeviceActivities()
    {
        isReachable.set(false);
        Status status;
        try
        {
            connMgr.cancelFindAdvertisedName(sender);
        }
        catch (ControlPanelException controlpanelexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Failed to call cancelFindAdvertisedName(), Error: '").append(controlpanelexception.getMessage()).append("'").toString());
        }
        connMgr.unregisterEventListener(ConnManagerEventType.FOUND_DEVICE, this);
        connMgr.unregisterEventListener(ConnManagerEventType.LOST_DEVICE, this);
        status = endSession();
        if (status != Status.OK)
            Log.e(TAG, (new StringBuilder()).append("Failed to end the session, Status: '").append(status).append("'").toString());
        stopDeviceFoundVerificationService();
        for (Iterator iterator = unitMap.values().iterator(); iterator.hasNext(); ((Unit)iterator.next()).release());
        unitMap.clear();
    }

    void subscribeOnFoundLostEvents()
    {
        Log.d(TAG, "Register on ConnManager to receive events of found and lost advertised name");
        connMgr.registerEventListener(ConnManagerEventType.FOUND_DEVICE, this);
        connMgr.registerEventListener(ConnManagerEventType.LOST_DEVICE, this);
    }





}
