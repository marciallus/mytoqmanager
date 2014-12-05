// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns;

import java.util.List;
import java.util.Map;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.commons.NativePlatform;
import org.alljoyn.ns.commons.NativePlatformFactory;
import org.alljoyn.ns.commons.NativePlatformFactoryException;
import org.alljoyn.ns.transport.Transport;

// Referenced classes of package org.alljoyn.ns:
//            NotificationServiceException, Notification, RichAudioUrl, NotificationText, 
//            PayloadAdapter, NotificationMessageType

public class NotificationSender
{

    public static final int MESSAGE_TTL_LL = 30;
    public static final int MESSAGE_TTL_UL = 43200;
    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/NotificationSender.getSimpleName()).toString();
    private NativePlatform nativePlatform;

    public NotificationSender()
        throws NotificationServiceException
    {
        try
        {
            nativePlatform = NativePlatformFactory.getPlatformObject();
            nativePlatform.getNativeLogger().info(TAG, "Notification Sender created");
            return;
        }
        catch (NativePlatformFactoryException nativeplatformfactoryexception)
        {
            throw new NotificationServiceException((new StringBuilder()).append("Failed to create Notification Service: ").append(nativeplatformfactoryexception.getMessage()).toString());
        }
    }

    public void deleteLastMsg(NotificationMessageType notificationmessagetype)
        throws NotificationServiceException
    {
        if (notificationmessagetype == null)
        {
            throw new NotificationServiceException("MessageType parameter must be set");
        } else
        {
            Transport.getInstance().deleteLastMessage(notificationmessagetype);
            return;
        }
    }

    public void send(Notification notification, int i)
        throws NotificationServiceException
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        if (i >= 30 && i <= 43200)
        {
            Transport transport = Transport.getInstance();
            Map map = transport.readAllProperties();
            java.util.UUID uuid = transport.getAppId(map);
            String s = (String)map.get("DeviceId");
            if (s != null && s.length() != 0)
            {
                String s1 = (String)map.get("DeviceName");
                if (s1 != null && s1.length() != 0)
                {
                    String s2 = (String)map.get("AppName");
                    if (s2 != null && s2.length() != 0)
                    {
                        NotificationMessageType notificationmessagetype = notification.getMessageType();
                        List list = notification.getText();
                        List list1 = notification.getRichAudioUrl();
                        Map map1 = notification.getCustomAttributes();
                        String s3 = notification.getRichIconUrl();
                        String s4 = notification.getRichIconObjPath();
                        String s5 = notification.getRichAudioObjPath();
                        String s6 = notification.getResponseObjectPath();
                        String s7 = null;
                        if (list1 != null)
                        {
                            int j = list1.size();
                            s7 = null;
                            if (j > 0)
                                s7 = ((RichAudioUrl)list1.get(0)).getUrl();
                        }
                        genericlogger.debug(TAG, (new StringBuilder()).append("Sending message with message type: ").append(notificationmessagetype).append(", TTL: ").append(i).append(", message: ").append(((NotificationText)list.get(0)).getText()).append(", richIconUrl: '").append(s3).append("' RichAudioUrl: '").append(s7).append(", richIconObjPath: '").append(s4).append("' RichAudioObjPath: '").append(s5).append("'").toString());
                        PayloadAdapter.sendPayload(s, s1, uuid, s2, notificationmessagetype, list, map1, i, s3, list1, s4, s5, s6);
                        return;
                    } else
                    {
                        genericlogger.error(TAG, "The AppName is NULL or empty");
                        throw new NotificationServiceException("The AppName is not set in the PropertyStore");
                    }
                } else
                {
                    genericlogger.error(TAG, "The DeviceName is NULL or empty");
                    throw new NotificationServiceException("The DeviceName is not set in the PropertyStore");
                }
            } else
            {
                genericlogger.error(TAG, "The DeviceId is NULL or empty");
                throw new NotificationServiceException("The DeviceId is not set in the PropertyStore");
            }
        } else
        {
            genericlogger.error(TAG, "The allowed TTL range is between '30' and '43200'");
            throw new NotificationServiceException("The allowed TTL range is between '30' and '43200'");
        }
    }

}
