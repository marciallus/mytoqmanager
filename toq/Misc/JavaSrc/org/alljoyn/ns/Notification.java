// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns;

import java.io.PrintStream;
import java.util.*;
import org.alljoyn.ns.transport.consumer.NotificationFeedback;

// Referenced classes of package org.alljoyn.ns:
//            NotificationServiceException, NotificationMessageType

public class Notification
{

    private UUID appId;
    private String appName;
    private Map customAttributes;
    private String deviceId;
    private String deviceName;
    private int messageId;
    private NotificationMessageType messageType;
    private String origSender;
    private String responseObjectPath;
    private String richAudioObjPath;
    private List richAudioUrl;
    private String richIconObjPath;
    private String richIconUrl;
    private String sender;
    private List text;
    private int version;

    public Notification(NotificationMessageType notificationmessagetype, List list)
        throws NotificationServiceException
    {
        setMessageType(notificationmessagetype);
        setText(list);
    }

    public void dismiss()
    {
        try
        {
            (new NotificationFeedback(this)).dismiss();
            return;
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            System.out.println((new StringBuilder()).append("Failed to call the dismiss method, Error: '").append(notificationserviceexception.getMessage()).append("'").toString());
        }
    }

    public UUID getAppId()
    {
        return appId;
    }

    public String getAppName()
    {
        return appName;
    }

    public Map getCustomAttributes()
    {
        return customAttributes;
    }

    public String getDeviceId()
    {
        return deviceId;
    }

    public String getDeviceName()
    {
        return deviceName;
    }

    public int getMessageId()
    {
        return messageId;
    }

    public NotificationMessageType getMessageType()
    {
        return messageType;
    }

    public String getOriginalSenderBusName()
    {
        return origSender;
    }

    public String getResponseObjectPath()
    {
        return responseObjectPath;
    }

    public String getRichAudioObjPath()
    {
        return richAudioObjPath;
    }

    public List getRichAudioUrl()
    {
        return richAudioUrl;
    }

    public String getRichIconObjPath()
    {
        return richIconObjPath;
    }

    public String getRichIconUrl()
    {
        return richIconUrl;
    }

    public String getSenderBusName()
    {
        return sender;
    }

    public List getText()
    {
        return text;
    }

    public int getVersion()
    {
        return version;
    }

    void setAppId(UUID uuid)
    {
        appId = uuid;
    }

    void setAppName(String s)
    {
        appName = s;
    }

    public void setCustomAttributes(Map map)
    {
        customAttributes = map;
    }

    void setDeviceId(String s)
    {
        deviceId = s;
    }

    void setDeviceName(String s)
    {
        deviceName = s;
    }

    void setMessageId(int i)
    {
        messageId = i;
    }

    public void setMessageType(NotificationMessageType notificationmessagetype)
        throws NotificationServiceException
    {
        if (notificationmessagetype == null)
        {
            throw new NotificationServiceException("MessageType must be set");
        } else
        {
            messageType = notificationmessagetype;
            return;
        }
    }

    void setOrigSender(String s)
    {
        origSender = s;
    }

    public void setResponseObjectPath(String s)
    {
        responseObjectPath = s;
    }

    public void setRichAudioObjPath(String s)
    {
        richAudioObjPath = s;
    }

    public void setRichAudioUrl(List list)
    {
        richAudioUrl = list;
    }

    public void setRichIconObjPath(String s)
    {
        richIconObjPath = s;
    }

    public void setRichIconUrl(String s)
    {
        richIconUrl = s;
    }

    void setSender(String s)
    {
        sender = s;
    }

    public void setText(List list)
        throws NotificationServiceException
    {
        if (list != null && list.size() != 0)
        {
            text = list;
            return;
        } else
        {
            throw new NotificationServiceException("The text argument must be set and may not be an empty list");
        }
    }

    void setVersion(int i)
    {
        version = i;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Notification: ");
        stringbuilder.append("Id: '").append(messageId).append("'").append(", MsgType: '").append(messageType).append("'").append(", DeviceId: '").append(deviceId).append("'").append(", DeviceName: '").append(deviceName).append("'").append(", Version: '").append(version).append("'").append(", Sender: '").append(sender).append("'").append(", OrigSender: '").append(origSender).append("'").append(", AppId: '").append(appId).append("'").append(", AppName: '").append(appName).append("'").append(", CustomAttributes: '").append(customAttributes).append("'").append(", TextMessage: '").append(text).append("'");
        if (richIconUrl != null && richIconUrl.length() > 0)
            stringbuilder.append(", RichIconURL: '").append(richIconUrl).append("'");
        if (richIconObjPath != null && richIconObjPath.length() > 0)
            stringbuilder.append(", RichIconObjPath: '").append(richIconObjPath).append("'");
        if (richAudioUrl != null && richAudioUrl.size() > 0)
            stringbuilder.append(", RichAudioUrl: '").append(richAudioUrl).append("'");
        if (richAudioObjPath != null && richAudioObjPath.length() > 0)
            stringbuilder.append(", RichAudioObjPath: '").append(richAudioObjPath).append("'");
        if (responseObjectPath != null && responseObjectPath.length() > 0)
            stringbuilder.append(", ResponseObjPath: '").append(responseObjectPath).append("'");
        return stringbuilder.toString();
    }
}
