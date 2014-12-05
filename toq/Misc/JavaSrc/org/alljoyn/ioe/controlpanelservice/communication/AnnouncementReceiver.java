// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication;

import android.os.Message;
import android.util.Log;
import java.util.*;
import org.alljoyn.bus.*;
import org.alljoyn.services.common.AnnouncementHandler;
import org.alljoyn.services.common.BusObjectDescription;
import org.alljoyn.services.common.utils.TransportUtil;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.communication:
//            ConnectionManager, ConnManagerEventType

public class AnnouncementReceiver
    implements AnnouncementHandler
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver.getSimpleName()).toString();


    public void onAnnouncement(String s, short word0, BusObjectDescription abusobjectdescription[], Map map)
    {
        android.os.Handler handler;
        Variant variant;
        Log.v(TAG, "Received Announcement signal");
        handler = ConnectionManager.getInstance().getHandler();
        if (handler == null)
            return;
        try
        {
            variant = (Variant)map.get("AppId");
            String s1 = VariantUtil.getSignature(variant);
            if (!s1.equals("ay"))
            {
                Log.e(TAG, (new StringBuilder()).append("Received 'AppId', that has an unexpected signature: '").append(s1).append("', the expected signature is: 'ay'").toString());
                return;
            }
        }
        catch (BusException busexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Failed to retreive an Announcement properties, Error: '").append(busexception.getMessage()).append("'").toString());
            return;
        }
        UUID uuid = TransportUtil.byteArrayToUUID((byte[])variant.getObject([B));
        if (uuid != null)
            break MISSING_BLOCK_LABEL_155;
        Log.e(TAG, "Failed to translate the received AppId into UUID");
        return;
        Variant variant1;
        variant1 = (Variant)map.get("DeviceId");
        String s2 = VariantUtil.getSignature(variant1);
        if (!s2.equals("s"))
        {
            Log.e(TAG, (new StringBuilder()).append("Received 'DeviceId', that has an unexpected signature: '").append(s2).append("', the expected signature is: 's'").toString());
            return;
        }
        String s3 = (String)variant1.getObject(java/lang/String);
        HashMap hashmap = new HashMap();
        hashmap.put("SENDER", s);
        hashmap.put("DEVICE_ID", s3);
        hashmap.put("APP_ID", uuid.toString());
        hashmap.put("OBJ_DESC", abusobjectdescription);
        Message.obtain(handler, ConnManagerEventType.ANNOUNCEMENT_RECEIVED.ordinal(), hashmap).sendToTarget();
        return;
    }

    public void onDeviceLost(String s)
    {
    }

}
