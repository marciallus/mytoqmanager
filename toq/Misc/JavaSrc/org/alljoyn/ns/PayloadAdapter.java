// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns;

import java.util.*;
import org.alljoyn.bus.BusAttachment;
import org.alljoyn.bus.Variant;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.commons.NativePlatform;
import org.alljoyn.ns.commons.NativePlatformFactory;
import org.alljoyn.ns.commons.NativePlatformFactoryException;
import org.alljoyn.ns.transport.Transport;
import org.alljoyn.ns.transport.TransportNotificationText;
import org.alljoyn.ns.transport.TransportRichAudioUrl;

// Referenced classes of package org.alljoyn.ns:
//            NotificationServiceException, NotificationMessageType, NotificationText, Notification, 
//            RichAudioUrl

public class PayloadAdapter
{
    private static final class ArgumentKey extends Enum
    {

        private static final ArgumentKey $VALUES[];
        public static final ArgumentKey ORIGINAL_SENDER_NAME;
        public static final ArgumentKey RESPONSE_OBJECT_PATH;
        public static final ArgumentKey RICH_NOTIFICATION_AUDIO_OBJECT_PATH;
        public static final ArgumentKey RICH_NOTIFICATION_AUDIO_URL;
        public static final ArgumentKey RICH_NOTIFICATION_ICON_OBJECT_PATH;
        public static final ArgumentKey RICH_NOTIFICATION_ICON_URL;
        public final int ID;

        public static ArgumentKey getArgumentKeyById(int i)
        {
            ArgumentKey aargumentkey[] = values();
            int j = aargumentkey.length;
            int k = 0;
            do
            {
label0:
                {
                    ArgumentKey argumentkey = null;
                    if (k < j)
                    {
                        ArgumentKey argumentkey1 = aargumentkey[k];
                        if (argumentkey1.ID != i)
                            break label0;
                        argumentkey = argumentkey1;
                    }
                    return argumentkey;
                }
                k++;
            } while (true);
        }

        public static ArgumentKey valueOf(String s)
        {
            return (ArgumentKey)Enum.valueOf(org/alljoyn/ns/PayloadAdapter$ArgumentKey, s);
        }

        public static ArgumentKey[] values()
        {
            return (ArgumentKey[])$VALUES.clone();
        }

        static 
        {
            RICH_NOTIFICATION_ICON_URL = new ArgumentKey("RICH_NOTIFICATION_ICON_URL", 0, 0);
            RICH_NOTIFICATION_AUDIO_URL = new ArgumentKey("RICH_NOTIFICATION_AUDIO_URL", 1, 1);
            RICH_NOTIFICATION_ICON_OBJECT_PATH = new ArgumentKey("RICH_NOTIFICATION_ICON_OBJECT_PATH", 2, 2);
            RICH_NOTIFICATION_AUDIO_OBJECT_PATH = new ArgumentKey("RICH_NOTIFICATION_AUDIO_OBJECT_PATH", 3, 3);
            RESPONSE_OBJECT_PATH = new ArgumentKey("RESPONSE_OBJECT_PATH", 4, 4);
            ORIGINAL_SENDER_NAME = new ArgumentKey("ORIGINAL_SENDER_NAME", 5, 5);
            ArgumentKey aargumentkey[] = new ArgumentKey[6];
            aargumentkey[0] = RICH_NOTIFICATION_ICON_URL;
            aargumentkey[1] = RICH_NOTIFICATION_AUDIO_URL;
            aargumentkey[2] = RICH_NOTIFICATION_ICON_OBJECT_PATH;
            aargumentkey[3] = RICH_NOTIFICATION_AUDIO_OBJECT_PATH;
            aargumentkey[4] = RESPONSE_OBJECT_PATH;
            aargumentkey[5] = ORIGINAL_SENDER_NAME;
            $VALUES = aargumentkey;
        }

        private ArgumentKey(String s, int i, int j)
        {
            super(s, i);
            ID = j;
        }
    }


    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/PayloadAdapter.getSimpleName()).toString();
    private static int msgId = (int)(10000D * Math.random());


    public static UUID byteArrayToUUID(byte abyte0[])
    {
        long l = 0L;
        long l1 = 0L;
        if (abyte0.length != 16)
            return null;
        for (int i = 0; i < 8; i++)
            l = l << 8 | (long)(0xff & abyte0[i]);

        for (int j = 8; j < 16; j++)
            l1 = l1 << 8 | (long)(0xff & abyte0[j]);

        return new UUID(l, l1);
    }

    public static int genMsgId()
    {
        if (msgId == 0x7fffffff)
            msgId = 0;
        int i = 1 + msgId;
        msgId = i;
        return i;
    }

    public static void receivePayload(int i, int j, String s, short word0, String s1, String s2, byte abyte0[], String s3, 
            Map map, Map map1, TransportNotificationText atransportnotificationtext[])
        throws NotificationServiceException
    {
        GenericLogger genericlogger;
        NotificationMessageType notificationmessagetype;
        try
        {
            genericlogger = NativePlatformFactory.getPlatformObject().getNativeLogger();
            genericlogger.debug(TAG, (new StringBuilder()).append("Received notification Id: '").append(j).append("', parsing...").toString());
            notificationmessagetype = NotificationMessageType.getMsgTypeById(word0);
        }
        catch (Exception exception)
        {
            throw new NotificationServiceException((new StringBuilder()).append("Failed to parse received notification payload, Error: ").append(exception.getMessage()).toString());
        }
        if (notificationmessagetype != null)
            break MISSING_BLOCK_LABEL_120;
        throw new NotificationServiceException((new StringBuilder()).append("Received unknown message type id: '").append(word0).append("'").toString());
        LinkedList linkedlist;
        int k;
        linkedlist = new LinkedList();
        k = atransportnotificationtext.length;
        int l = 0;
_L2:
        if (l >= k)
            break; /* Loop/switch isn't completed */
        TransportNotificationText transportnotificationtext = atransportnotificationtext[l];
        linkedlist.add(new NotificationText(transportnotificationtext.language, transportnotificationtext.text));
        l++;
        if (true) goto _L2; else goto _L1
_L1:
        Notification notification;
        UUID uuid;
        notification = new Notification(notificationmessagetype, linkedlist);
        uuid = byteArrayToUUID(abyte0);
        if (uuid != null)
            break MISSING_BLOCK_LABEL_233;
        genericlogger.error(TAG, "Received a bad length of byte array that doesn't represent UUID of an appId");
        NotificationServiceException notificationserviceexception = new NotificationServiceException("Received a bad length of byte array that doesn't represent UUID of an appId");
        throw notificationserviceexception;
        Iterator iterator;
        notification.setVersion(i);
        notification.setMessageId(j);
        notification.setDeviceId(s1);
        notification.setDeviceName(s2);
        notification.setSender(s);
        notification.setAppId(uuid);
        notification.setAppName(s3);
        iterator = map.keySet().iterator();
_L5:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        Integer integer;
        Variant variant;
        ArgumentKey argumentkey;
        integer = (Integer)iterator.next();
        variant = (Variant)map.get(integer);
        argumentkey = ArgumentKey.getArgumentKeyById(integer.intValue());
        if (argumentkey != null)
            break MISSING_BLOCK_LABEL_382;
        genericlogger.warn(TAG, (new StringBuilder()).append("An unknown attribute key: '").append(integer).append("' received, ignoring the key").toString());
          goto _L5
        static class _cls1
        {

            static final int $SwitchMap$org$alljoyn$ns$PayloadAdapter$ArgumentKey[];

            static 
            {
                $SwitchMap$org$alljoyn$ns$PayloadAdapter$ArgumentKey = new int[ArgumentKey.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ns$PayloadAdapter$ArgumentKey[ArgumentKey.RICH_NOTIFICATION_ICON_URL.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$alljoyn$ns$PayloadAdapter$ArgumentKey[ArgumentKey.RICH_NOTIFICATION_AUDIO_URL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$alljoyn$ns$PayloadAdapter$ArgumentKey[ArgumentKey.RICH_NOTIFICATION_ICON_OBJECT_PATH.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$org$alljoyn$ns$PayloadAdapter$ArgumentKey[ArgumentKey.RICH_NOTIFICATION_AUDIO_OBJECT_PATH.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$org$alljoyn$ns$PayloadAdapter$ArgumentKey[ArgumentKey.RESPONSE_OBJECT_PATH.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$org$alljoyn$ns$PayloadAdapter$ArgumentKey[ArgumentKey.ORIGINAL_SENDER_NAME.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.org.alljoyn.ns.PayloadAdapter.ArgumentKey[argumentkey.ordinal()];
        JVM INSTR tableswitch 1 6: default 826
    //                   1 428
    //                   2 485
    //                   3 590
    //                   4 647
    //                   5 681
    //                   6 739;
           goto _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L6:
        String s8 = (String)variant.getObject(java/lang/String);
        genericlogger.debug(TAG, (new StringBuilder()).append("Received rich icon url: '").append(s8).append("'").toString());
        notification.setRichIconUrl(s8);
          goto _L5
_L7:
        TransportRichAudioUrl atransportrichaudiourl[] = (TransportRichAudioUrl[])variant.getObject([Lorg/alljoyn/ns/transport/TransportRichAudioUrl;);
        if (atransportrichaudiourl.length == 0) goto _L5; else goto _L12
_L12:
        ArrayList arraylist;
        int i1;
        arraylist = new ArrayList(atransportrichaudiourl.length);
        genericlogger.debug(TAG, "Received rich audio url");
        i1 = atransportrichaudiourl.length;
        int j1 = 0;
_L14:
        if (j1 >= i1)
            break; /* Loop/switch isn't completed */
        TransportRichAudioUrl transportrichaudiourl = atransportrichaudiourl[j1];
        arraylist.add(new RichAudioUrl(transportrichaudiourl.language, transportrichaudiourl.url));
        j1++;
        if (true) goto _L14; else goto _L13
_L13:
        notification.setRichAudioUrl(arraylist);
          goto _L5
_L8:
        String s7 = (String)variant.getObject(java/lang/String);
        genericlogger.debug(TAG, (new StringBuilder()).append("Received rich icon object path: '").append(s7).append("'").toString());
        notification.setRichIconObjPath(s7);
          goto _L5
_L9:
        String s6 = (String)variant.getObject(java/lang/String);
        genericlogger.debug(TAG, "Received rich audio object path");
        notification.setRichAudioObjPath(s6);
          goto _L5
_L10:
        String s5 = (String)variant.getObject(java/lang/String);
        genericlogger.debug(TAG, (new StringBuilder()).append("Received a Response ObjectPath object path: '").append(s5).append("'").toString());
        notification.setResponseObjectPath(s5);
          goto _L5
_L11:
        String s4 = (String)variant.getObject(java/lang/String);
        genericlogger.debug(TAG, (new StringBuilder()).append("Received an original sender: '").append(s4).append("'").toString());
        notification.setOrigSender(s4);
          goto _L5
_L4:
        genericlogger.debug(TAG, "Set the custom attributes");
        notification.setCustomAttributes(map1);
        Transport.getInstance().onReceivedNotification(notification);
        return;
    }

    public static void sendPayload(String s, String s1, UUID uuid, String s2, NotificationMessageType notificationmessagetype, List list, Map map, int i, 
            String s3, List list1, String s4, String s5, String s6)
        throws NotificationServiceException
    {
        HashMap hashmap;
label0:
        {
            GenericLogger genericlogger;
            try
            {
                genericlogger = NativePlatformFactory.getPlatformObject().getNativeLogger();
            }
            catch (NativePlatformFactoryException nativeplatformfactoryexception)
            {
                throw new NotificationServiceException(nativeplatformfactoryexception.getMessage());
            }
            genericlogger.debug(TAG, "Preparing message for sending...");
            hashmap = new HashMap();
            if (s3 != null)
            {
                genericlogger.debug(TAG, "Preparing to send richIconUrl...");
                hashmap.put(Integer.valueOf(ArgumentKey.RICH_NOTIFICATION_ICON_URL.ID), new Variant(s3, "s"));
            }
            if (list1 != null)
            {
                genericlogger.debug(TAG, "Preparing to send richAudioUrl...");
                int k = 0;
                TransportRichAudioUrl atransportrichaudiourl[] = new TransportRichAudioUrl[list1.size()];
                for (Iterator iterator2 = list1.iterator(); iterator2.hasNext();)
                {
                    atransportrichaudiourl[k] = TransportRichAudioUrl.buildInstance((RichAudioUrl)iterator2.next());
                    k++;
                }

                hashmap.put(Integer.valueOf(ArgumentKey.RICH_NOTIFICATION_AUDIO_URL.ID), new Variant(atransportrichaudiourl, "ar"));
            }
            if (s4 != null)
            {
                genericlogger.debug(TAG, "Preparing to send richIconObjPath...");
                hashmap.put(Integer.valueOf(ArgumentKey.RICH_NOTIFICATION_ICON_OBJECT_PATH.ID), new Variant(s4, "s"));
            }
            if (s5 != null)
            {
                genericlogger.debug(TAG, "Preparing to send richAudioObjPath...");
                hashmap.put(Integer.valueOf(ArgumentKey.RICH_NOTIFICATION_AUDIO_OBJECT_PATH.ID), new Variant(s5, "s"));
            }
            if (s6 != null)
            {
                genericlogger.debug(TAG, "Preparing to sendCPS Ocject Path...");
                hashmap.put(Integer.valueOf(ArgumentKey.RESPONSE_OBJECT_PATH.ID), new Variant(s6, "s"));
            }
            String s7 = Transport.getInstance().getBusAttachment().getUniqueName();
            hashmap.put(Integer.valueOf(ArgumentKey.ORIGINAL_SENDER_NAME.ID), new Variant(s7, "s"));
            if (map != null)
            {
                genericlogger.debug(TAG, "Preparing customAttributes...");
                Iterator iterator1 = map.keySet().iterator();
                String s8;
                do
                {
                    if (!iterator1.hasNext())
                        break label0;
                    s8 = (String)iterator1.next();
                    if (s8 == null)
                        throw new NotificationServiceException("The key of customAttributes can't be null");
                } while ((String)map.get(s8) != null);
                throw new NotificationServiceException((new StringBuilder()).append("The value of customAttributes for key: '").append(s8).append("' can't be null").toString());
            }
            map = new HashMap();
        }
        int j = 0;
        TransportNotificationText atransportnotificationtext[] = new TransportNotificationText[list.size()];
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            atransportnotificationtext[j] = TransportNotificationText.buildInstance((NotificationText)iterator.next());
            j++;
        }

        Transport.getInstance().sendNotification(2, genMsgId(), notificationmessagetype, s, s1, uuidToByteArray(uuid), s2, hashmap, map, atransportnotificationtext, i);
    }

    public static byte[] uuidToByteArray(UUID uuid)
    {
        long l = uuid.getMostSignificantBits();
        long l1 = uuid.getLeastSignificantBits();
        byte abyte0[] = new byte[16];
        for (int i = 0; i < 8; i++)
            abyte0[i] = (byte)(int)(l >>> 8 * (7 - i));

        for (int j = 8; j < 16; j++)
            abyte0[j] = (byte)(int)(l1 >>> 8 * (7 - j));

        return abyte0;
    }

}
