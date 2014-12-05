// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.alljoyn;

import android.os.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.alljoyn.demo.DemoAllJoynControlPanelController;
import com.qualcomm.toq.smartwatch.alljoyn.demo.controlpanel.AllJoynDeviceManager;
import org.alljoyn.about.AboutService;
import org.alljoyn.about.AboutServiceImpl;
import org.alljoyn.bus.*;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;
import org.alljoyn.ioe.controlpanelservice.ControlPanelService;
import org.alljoyn.ns.NotificationReceiver;
import org.alljoyn.ns.NotificationService;
import org.alljoyn.services.common.AnnouncementHandler;

// Referenced classes of package com.qualcomm.toq.smartwatch.alljoyn:
//            AllJoynNotificationReceiver

public final class AllJoynBusHandler extends Handler
{
    private class BusHandler extends Handler
    {

        public static final int INITIALIZE = 0;
        public static final int JOIN_SESSION = 1;
        public static final int LEAVE_SESSION = 2;
        public static final int SHUTDOWN = 10;
        private BusAttachment mBus;
        final AllJoynBusHandler this$0;

        private void handleShutdown()
        {
            shutdown();
        }

        private void initialize()
        {
            this;
            JVM INSTR monitorenter ;
            Status status;
            Status status1;
            Log.d("AllJoyn", "AllJoynBusHandler.BusHandler.initialize");
            if (mBus != null)
                shutdown(true);
            mBus = new BusAttachment("TOQ", org.alljoyn.bus.BusAttachment.RemoteMessage.Receive);
            status = mBus.connect();
            Log.d("AllJoyn", (new StringBuilder()).append("AllJoynBusHandler.BusHandler.initialize - BusAttachment.connect(): ").append(status).toString());
            status1 = Status.OK;
            if (status == status1) goto _L2; else goto _L1
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
_L2:
            setAboutHandler(DemoAllJoynControlPanelController.getController());
            if (aboutService.isClientRunning())
                aboutService.stopAboutClient();
            aboutService.startAboutClient(mBus);
_L3:
            controlPanelService.init(mBus);
_L4:
            registerBusListenerForFoundAdvertisedName();
            setReceiver(new AllJoynNotificationReceiver());
            mBus.addMatch("sessionless='t'");
              goto _L1
            Exception exception;
            exception;
            throw exception;
            Exception exception1;
            exception1;
            exception1.printStackTrace();
              goto _L3
            ControlPanelException controlpanelexception;
            controlpanelexception;
            Log.w("AllJoyn", "caught ControlPanelException in initialize - trying to shutdown ControlPanelService then re-init with mBus");
            controlPanelService.shutdown();
            controlPanelService.init(mBus);
              goto _L4
            ControlPanelException controlpanelexception1;
            controlpanelexception1;
            Log.w("AllJoyn", (new StringBuilder()).append("caught another ControlPanelException in initialize: ").append(controlpanelexception1.getMessage()).toString());
            controlpanelexception1.printStackTrace();
              goto _L4
        }

        private void joinSession(Object obj)
        {
            Log.d("AllJoyn", (new StringBuilder()).append("AllJoynBusHandler.BusHandler.joinSession -  obj: ").append(obj).toString());
        }

        private void leaveSession(Object obj)
        {
            Log.d("AllJoyn", (new StringBuilder()).append("AllJoynBusHandler.BusHandler.leaveSession -  obj: ").append(obj).toString());
        }

        private void setAboutHandler(AnnouncementHandler announcementhandler)
        {
            Log.d("AllJoyn", (new StringBuilder()).append("AllJoynBusHandler.BusHandler.setAboutHandler - handler: ").append(announcementhandler).toString());
            try
            {
                aboutService.addAnnouncementHandler(announcementhandler);
                Status status = mBus.registerSignalHandlers(announcementhandler);
                Log.d("AllJoyn", (new StringBuilder()).append("AllJoynBusHandler.BusHandler.setAboutHandler - Registered the about Signal Handler: ").append(status).toString());
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }

        private void setReceiver(NotificationReceiver notificationreceiver)
        {
            Log.d("AllJoyn", (new StringBuilder()).append("AllJoynBusHandler.BusHandler.setReceiver - receiver: ").append(notificationreceiver).toString());
            try
            {
                notificationService.initReceive(mBus, notificationreceiver);
                Status status = mBus.registerSignalHandlers(notificationreceiver);
                Log.d("AllJoyn", (new StringBuilder()).append("AllJoynBusHandler.BusHandler.setReceiver - Registered the notification Signal Handler: ").append(status).toString());
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }

        private void shutdown()
        {
            this;
            JVM INSTR monitorenter ;
            shutdown(false);
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        private void shutdown(boolean flag)
        {
            this;
            JVM INSTR monitorenter ;
            Log.d("AllJoyn", "AllJoynBusHandler.BusHandler.shutdown");
            notificationService.shutdown();
_L1:
            aboutService.stopAboutClient();
_L2:
            if (DemoAllJoynControlPanelController.getController() != null)
                DemoAllJoynControlPanelController.getController().shutdown();
_L3:
            controlPanelService.shutdown();
_L4:
            if (mBus != null)
                mBus.disconnect();
            if (flag)
                break MISSING_BLOCK_LABEL_78;
            getLooper().quit();
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception1;
            exception1;
            exception1.printStackTrace();
              goto _L1
            Exception exception;
            exception;
            throw exception;
            Exception exception2;
            exception2;
            exception2.printStackTrace();
              goto _L2
            Exception exception3;
            exception3;
            exception3.printStackTrace();
              goto _L3
            Exception exception4;
            exception4;
            exception4.printStackTrace();
              goto _L4
        }

        public void handleMessage(Message message)
        {
            Log.d("AllJoyn", (new StringBuilder()).append("AllJoynBusHandler.BusHandler.handleMessage - msg: ").append(message).toString());
            message.what;
            JVM INSTR lookupswitch 4: default 72
        //                       0: 73
        //                       1: 91
        //                       2: 100
        //                       10: 109;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            return;
_L2:
            if (mBus == null)
            {
                try
                {
                    Thread.sleep(10000L);
                }
                catch (Exception exception) { }
                initialize();
                return;
            }
              goto _L1
_L3:
            joinSession(message.obj);
            return;
_L4:
            leaveSession(message.obj);
            return;
_L5:
            shutdown();
            return;
        }


        private BusHandler(Looper looper)
        {
            this$0 = AllJoynBusHandler.this;
            super(looper);
        }

    }


    public static final String TAG = "AllJoyn";
    private static AllJoynBusHandler mInstance = null;
    private AboutService aboutService;
    private ControlPanelService controlPanelService;
    private BusHandler mBusHandler;
    private NotificationService notificationService;

    public AllJoynBusHandler()
    {
        notificationService = NotificationService.getInstance();
        aboutService = AboutServiceImpl.getInstance();
        controlPanelService = ControlPanelService.getInstance();
        mInstance = this;
    }

    public static BusAttachment getAllJoynBusAttachment()
    {
        AllJoynBusHandler alljoynbushandler = mInstance;
        BusAttachment busattachment = null;
        if (alljoynbushandler != null)
        {
            BusHandler bushandler = mInstance.mBusHandler;
            busattachment = null;
            if (bushandler != null)
                busattachment = mInstance.mBusHandler.mBus;
        }
        return busattachment;
    }

    public static AllJoynBusHandler getInstance()
    {
        if (mInstance == null)
            mInstance = new AllJoynBusHandler();
        return mInstance;
    }

    private void initAllJoyn(boolean flag)
    {
        if (mBusHandler == null || flag)
        {
            HandlerThread handlerthread = new HandlerThread("BusHandler");
            handlerthread.start();
            mBusHandler = new BusHandler(handlerthread.getLooper());
            mBusHandler.sendEmptyMessage(0);
        }
    }

    private void registerBusListenerForFoundAdvertisedName()
    {
        BusAttachment busattachment = getAllJoynBusAttachment();
        if (busattachment != null)
            busattachment.registerBusListener(new BusListener() {

                final AllJoynBusHandler this$0;

                public void foundAdvertisedName(String s, short word0, String s1)
                {
                    Log.d("AllJoyn", (new StringBuilder()).append("foundAdvertisedName: '").append(s).append("'").toString());
                    onDeviceFound(s);
                }

                public void lostAdvertisedName(String s, short word0, String s1)
                {
                    Log.i("AllJoyn", String.format("lostAdvertisedName, name = %s. Do nothing, handled by about service callback", new Object[] {
                        s
                    }));
                }

                public void nameOwnerChanged(String s, String s1, String s2)
                {
                    Log.d("AllJoyn", String.format("nameOwnerChanged(%s, %s, %s)", new Object[] {
                        s, s1, s2
                    }));
                }

            
            {
                this$0 = AllJoynBusHandler.this;
                super();
            }
            }
);
    }

    public static void startAllJoyn()
    {
        startAllJoyn(false);
    }

    public static void startAllJoyn(boolean flag)
    {
        com/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;
        JVM INSTR monitorenter ;
        Log.d("AllJoyn", "AllJoynBusHandler.startAllJoyn");
        if (mInstance == null)
            mInstance = new AllJoynBusHandler();
        mInstance.initAllJoyn(flag);
        AllJoynDeviceManager.getInstance().registerReceiverForWifiConnectionChanged();
        com/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void stopAllJoyn()
    {
        stopAllJoyn(true);
    }

    public static void stopAllJoyn(boolean flag)
    {
        com/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;
        JVM INSTR monitorenter ;
        Log.d("AllJoyn", "AllJoynBusHandler.stopAllJoyn");
        if (mInstance != null)
        {
            if (mInstance.mBusHandler != null)
                mInstance.mBusHandler.sendEmptyMessage(10);
            mInstance.mBusHandler = null;
        }
        if (!flag)
            break MISSING_BLOCK_LABEL_54;
        AllJoynDeviceManager.getInstance().unregisterReceiverForWifiConnectionChanged();
        com/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isAlljoynRunning()
    {
        BusAttachment busattachment = getAllJoynBusAttachment();
        boolean flag = false;
        if (busattachment != null)
            flag = busattachment.isConnected();
        return flag;
    }

    public void onDeviceFound(final String serviceName)
    {
        (new Thread(new Runnable() {

            final AllJoynBusHandler this$0;
            final String val$serviceName;

            public void run()
            {
                AllJoynDeviceManager.getInstance().onDeviceFound(serviceName);
            }

            
            {
                this$0 = AllJoynBusHandler.this;
                serviceName = s;
                super();
            }
        }
)).start();
    }

    static 
    {
        System.loadLibrary("alljoyn_java");
    }




}
