// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication;

import android.os.*;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.*;
import java.util.concurrent.ConcurrentSkipListSet;
import org.alljoyn.bus.*;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.communication:
//            ConnManagerEventType, ConnManagerEventsListener, AnnouncementReceiver

public class ConnectionManager
    implements android.os.Handler.Callback
{
    private class ConnMgrBusListener extends BusListener
    {

        final ConnectionManager this$0;

        public void foundAdvertisedName(String s, short word0, String s1)
        {
            if (bus != null)
            {
                bus.enableConcurrentCallbacks();
                HashMap hashmap = new HashMap();
                hashmap.put("SENDER", s);
                if (handler != null)
                {
                    Message.obtain(handler, ConnManagerEventType.FOUND_DEVICE.ordinal(), hashmap).sendToTarget();
                    return;
                }
            }
        }

        public void lostAdvertisedName(String s, short word0, String s1)
        {
            bus.enableConcurrentCallbacks();
            HashMap hashmap = new HashMap();
            hashmap.put("SENDER", s);
            if (handler != null)
                Message.obtain(handler, ConnManagerEventType.LOST_DEVICE.ordinal(), hashmap).sendToTarget();
        }

        private ConnMgrBusListener()
        {
            this$0 = ConnectionManager.this;
            super();
        }

    }

    private class ConnMgrOnJoinSessionListener extends OnJoinSessionListener
    {

        final ConnectionManager this$0;

        public void onJoinSession(Status status, int i, SessionOpts sessionopts, Object obj)
        {
            super.onJoinSession(status, i, sessionopts, obj);
            HashMap hashmap = new HashMap();
            hashmap.put("DEVICE_ID", obj.toString());
            hashmap.put("STATUS", status);
            if (status != Status.OK)
            {
                Log.e(ConnectionManager.TAG, (new StringBuilder()).append("JoinSessionCB - Failed to join session, device: '").append(obj.toString()).append("' Status: '").append(status).append("'").toString());
                if (handler != null)
                    Message.obtain(handler, ConnManagerEventType.SESSION_JOIN_FAIL.ordinal(), hashmap).sendToTarget();
            } else
            {
                Log.d(ConnectionManager.TAG, (new StringBuilder()).append("JoinSessionCB - Succeeded to join session, device: '").append(obj.toString()).append("' SID: '").append(i).append("'").toString());
                hashmap.put("SESSION_ID", Integer.valueOf(i));
                if (handler != null)
                {
                    Message.obtain(handler, ConnManagerEventType.SESSION_JOINED.ordinal(), hashmap).sendToTarget();
                    return;
                }
            }
        }

        private ConnMgrOnJoinSessionListener()
        {
            this$0 = ConnectionManager.this;
            super();
        }

    }

    private class ConnMgrSessionListener extends SessionListener
    {

        final ConnectionManager this$0;

        public void sessionLost(int i, int j)
        {
            Log.d(ConnectionManager.TAG, (new StringBuilder()).append("Received SESSION_LOST for session: '").append(i).append("', Reason: '").append(j).append("'").toString());
            HashMap hashmap = new HashMap();
            hashmap.put("SESSION_ID", Integer.valueOf(i));
            if (handler != null)
                Message.obtain(handler, ConnManagerEventType.SESSION_LOST.ordinal(), hashmap).sendToTarget();
        }

        private ConnMgrSessionListener()
        {
            this$0 = ConnectionManager.this;
            super();
        }

    }

    private class ListenersComparator
        implements Comparator
    {

        final ConnectionManager this$0;

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((ConnManagerEventsListener)obj, (ConnManagerEventsListener)obj1);
        }

        public int compare(ConnManagerEventsListener connmanagereventslistener, ConnManagerEventsListener connmanagereventslistener1)
        {
            if (connmanagereventslistener.hashCode() > connmanagereventslistener1.hashCode())
                return 1;
            return connmanagereventslistener.hashCode() >= connmanagereventslistener1.hashCode() ? 0 : -1;
        }

        private ListenersComparator()
        {
            this$0 = ConnectionManager.this;
            super();
        }

    }


    public static final String ANNOUNCE_SIGNAL_NAME = "Announce";
    private static final short PORT_NUMBER = 1000;
    private static final ConnectionManager SELF = new ConnectionManager();
    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/communication/ConnectionManager.getSimpleName()).toString();
    private AnnouncementReceiver announcementReceiver;
    private BusAttachment bus;
    private ConnMgrBusListener busListener;
    private Handler handler;
    private HandlerThread handlerThread;
    private volatile Map listenersContainer;
    private ConnMgrOnJoinSessionListener onJoinSessionListener;
    private ConnMgrSessionListener sessionListener;

    private ConnectionManager()
    {
        listenersContainer = new EnumMap(org/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType);
        sessionListener = new ConnMgrSessionListener();
        onJoinSessionListener = new ConnMgrOnJoinSessionListener();
        busListener = new ConnMgrBusListener();
    }

    public static ConnectionManager getInstance()
    {
        return SELF;
    }

    private SessionOpts getSessionOpts()
    {
        SessionOpts sessionopts = new SessionOpts();
        sessionopts.traffic = 1;
        sessionopts.isMultipoint = false;
        sessionopts.proximity = -1;
        sessionopts.transports = -129;
        return sessionopts;
    }

    public Status cancelFindAdvertisedName(String s)
        throws ControlPanelException
    {
        if (bus == null)
            throw new ControlPanelException("The BusAttachment is not defined");
        else
            return bus.cancelFindAdvertisedName(s);
    }

    public Status findAdvertisedName(String s)
        throws ControlPanelException
    {
        if (bus == null)
            throw new ControlPanelException("The BusAttachment is not defined");
        else
            return bus.findAdvertisedName(s);
    }

    public AnnouncementReceiver getAnnouncementReceiver()
    {
        return announcementReceiver;
    }

    public BusAttachment getBusAttachment()
    {
        return bus;
    }

    public Handler getHandler()
    {
        return handler;
    }

    public ProxyBusObject getProxyObject(String s, String s1, int i, Class aclass[])
        throws ControlPanelException
    {
        if (bus == null)
            throw new ControlPanelException("The BusAttachment is not defined");
        else
            return bus.getProxyBusObject(s, s1, i, aclass);
    }

    public boolean handleMessage(Message message)
    {
        ConnManagerEventType connmanagereventtype = ConnManagerEventType.values()[message.what];
        Log.d(TAG, (new StringBuilder()).append("Received message type: '").append(connmanagereventtype).append("'").toString());
        notifyListeners(connmanagereventtype, (Map)message.obj);
        return true;
    }

    public Status joinSession(String s, String s1)
        throws ControlPanelException
    {
        if (bus == null)
            throw new ControlPanelException("The BusAttachment is not defined");
        else
            return bus.joinSession(s, (short)1000, getSessionOpts(), sessionListener, onJoinSessionListener, s1);
    }

    public Status leaveSession(int i)
        throws ControlPanelException
    {
        if (bus == null)
            throw new ControlPanelException("LeaveSession was called, but BusAttachment has not been defined");
        else
            return bus.leaveSession(i);
    }

    public void notifyListeners(ConnManagerEventType connmanagereventtype, Map map)
    {
        Set set = (Set)listenersContainer.get(connmanagereventtype);
        if (set != null)
        {
            for (Iterator iterator = set.iterator(); iterator.hasNext(); ((ConnManagerEventsListener)iterator.next()).connMgrEventOccured(connmanagereventtype, map));
        }
    }

    public void registerEventListener(ConnManagerEventType connmanagereventtype, ConnManagerEventsListener connmanagereventslistener)
    {
        Map map = listenersContainer;
        map;
        JVM INSTR monitorenter ;
        Set set = (Set)listenersContainer.get(connmanagereventtype);
        if (set != null)
            break MISSING_BLOCK_LABEL_70;
        ConcurrentSkipListSet concurrentskiplistset = new ConcurrentSkipListSet(new ListenersComparator());
        concurrentskiplistset.add(connmanagereventslistener);
        listenersContainer.put(connmanagereventtype, concurrentskiplistset);
_L2:
        map;
        JVM INSTR monitorexit ;
        return;
        set.add(connmanagereventslistener);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void registerObjectAndSetSignalHandler(String s, String s1, Method method, Object obj, String s2, String s3)
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("Registering BusObject and setting signal handler, IFName: '").append(s).append(", method: '").append(method.getName()).append("'").toString());
        if (bus == null)
            throw new ControlPanelException("Not initialized BusAttachment");
        Status status;
        if (s3.length() == 0)
        {
            Log.d(TAG, "Registering signal handler without source object");
            status = bus.registerSignalHandler(s, s1, obj, method);
        } else
        {
            Log.d(TAG, (new StringBuilder()).append("Registering signal handler with source object: '").append(s3).append("'").toString());
            status = bus.registerSignalHandler(s, s1, obj, method, s3);
        }
        if (status == Status.OK)
        {
            Log.d(TAG, (new StringBuilder()).append("Signal receiver ifname: '").append(s).append("', signal '").append(s1).append("' registered successfully").toString());
            Status status1 = bus.addMatch((new StringBuilder()).append("type='signal',interface='").append(s).append("',member='").append(s1).append("'").toString());
            if (status1 != Status.OK)
            {
                Log.e(TAG, (new StringBuilder()).append("Failed to register addMatch rule for interface: '").append(s).append("',signal: '").append(s1).append("', status: '").append(status1).append("'").toString());
                throw new ControlPanelException("Failed to register signal handler");
            } else
            {
                return;
            }
        } else
        {
            Log.e(TAG, (new StringBuilder()).append("Failed to register signal handler, status: '").append(status).append("'").toString());
            throw new ControlPanelException("Failed to register signal handler");
        }
    }

    public void setBusAttachment(BusAttachment busattachment)
        throws ControlPanelException
    {
        if (busattachment != null && busattachment.isConnected())
        {
            if (bus != null)
                throw new ControlPanelException("The BusAttachment already exists");
            if (handlerThread == null)
            {
                handlerThread = new HandlerThread("ControlPanelConnMgr");
                handlerThread.start();
                handler = new Handler(handlerThread.getLooper(), this);
            }
            bus = busattachment;
            bus.registerBusListener(busListener);
            return;
        } else
        {
            throw new ControlPanelException("The received BusAttachment is not connected");
        }
    }

    public void shutdown()
    {
        Log.d(TAG, "Shutdown the ConnectionMgr service");
        if (handlerThread != null)
        {
            handlerThread.getLooper().quit();
            handlerThread = null;
            handler = null;
        }
        bus = null;
    }

    public void unregisterEventListener(ConnManagerEventType connmanagereventtype, ConnManagerEventsListener connmanagereventslistener)
    {
        Set set = (Set)listenersContainer.get(connmanagereventtype);
        if (set == null)
        {
            return;
        } else
        {
            set.remove(connmanagereventslistener);
            return;
        }
    }

    public void unregisterSignalHandler(Object obj, Method method)
        throws ControlPanelException
    {
        if (bus == null)
        {
            throw new ControlPanelException("The BusAttachment is not defined");
        } else
        {
            bus.unregisterSignalHandler(obj, method);
            return;
        }
    }




}
