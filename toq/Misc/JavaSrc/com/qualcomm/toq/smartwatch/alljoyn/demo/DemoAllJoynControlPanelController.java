// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.alljoyn.demo;

import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.alljoyn.demo.controlpanel.AllJoynDeviceManager;
import java.util.Map;
import org.alljoyn.services.common.AnnouncementHandler;
import org.alljoyn.services.common.BusObjectDescription;

public class DemoAllJoynControlPanelController
    implements AnnouncementHandler
{

    public static final String TAG = "AllJoynControlPanelController";
    private static DemoAllJoynControlPanelController mInstance = null;

    public DemoAllJoynControlPanelController()
    {
        AllJoynDeviceManager.getInstance().init();
    }

    public static DemoAllJoynControlPanelController getController()
    {
        if (mInstance == null)
            mInstance = new DemoAllJoynControlPanelController();
        else
            AllJoynDeviceManager.getInstance().init();
        return mInstance;
    }

    public void onAnnouncement(final String serviceName, final short port, final BusObjectDescription objectDescriptions[], final Map serviceMetadata)
    {
        Log.d("AllJoynControlPanelController", "--------");
        Log.d("AllJoynControlPanelController", (new StringBuilder()).append("Received an About Announcement: ").append(serviceName).append(", ").append(port).toString());
        int i = objectDescriptions.length;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    BusObjectDescription busobjectdescription = objectDescriptions[j];
                    Log.d("AllJoynControlPanelController", (new StringBuilder()).append("Service: ").append(busobjectdescription.toString()).toString());
                    if (!busobjectdescription.getPath().startsWith("/ControlPanel"))
                        break label0;
                    flag = true;
                }
                if (flag)
                    (new Thread(new Runnable() {

                        final DemoAllJoynControlPanelController this$0;
                        final BusObjectDescription val$objectDescriptions[];
                        final short val$port;
                        final Map val$serviceMetadata;
                        final String val$serviceName;

                        public void run()
                        {
                            AllJoynDeviceManager.getInstance().onAnnouncement(serviceName, port, objectDescriptions, serviceMetadata);
                        }

            
            {
                this$0 = DemoAllJoynControlPanelController.this;
                serviceName = s;
                port = word0;
                objectDescriptions = abusobjectdescription;
                serviceMetadata = map;
                super();
            }
                    }
)).start();
                Log.d("AllJoynControlPanelController", (new StringBuilder()).append("-------- ").append(flag).toString());
                return;
            }
            j++;
        } while (true);
    }

    public void onDeviceLost(final String serviceName)
    {
        Log.d("AllJoynControlPanelController", "--------");
        Log.d("AllJoynControlPanelController", (new StringBuilder()).append("Lost device an About Announcement: ").append(serviceName).toString());
        Log.d("AllJoynControlPanelController", "--------");
        (new Thread(new Runnable() {

            final DemoAllJoynControlPanelController this$0;
            final String val$serviceName;

            public void run()
            {
                AllJoynDeviceManager.getInstance().onDeviceLost(serviceName);
            }

            
            {
                this$0 = DemoAllJoynControlPanelController.this;
                serviceName = s;
                super();
            }
        }
)).start();
    }

    public void shutdown()
    {
        if (AllJoynDeviceManager.getInstance() != null)
            AllJoynDeviceManager.getInstance().shutdown();
    }

}
