// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns;


public final class NotificationMessageType extends Enum
{

    private static final NotificationMessageType $VALUES[];
    public static final NotificationMessageType EMERGENCY;
    public static final NotificationMessageType INFO;
    public static final NotificationMessageType WARNING;
    private short typeId;

    private NotificationMessageType(String s, int i, short word0)
    {
        super(s, i);
        typeId = word0;
    }

    public static NotificationMessageType getMsgTypeById(short word0)
    {
        NotificationMessageType anotificationmessagetype[] = values();
        int i = anotificationmessagetype.length;
        int j = 0;
        do
        {
label0:
            {
                NotificationMessageType notificationmessagetype = null;
                if (j < i)
                {
                    NotificationMessageType notificationmessagetype1 = anotificationmessagetype[j];
                    if (word0 != notificationmessagetype1.getTypeId())
                        break label0;
                    notificationmessagetype = notificationmessagetype1;
                }
                return notificationmessagetype;
            }
            j++;
        } while (true);
    }

    public static NotificationMessageType valueOf(String s)
    {
        return (NotificationMessageType)Enum.valueOf(org/alljoyn/ns/NotificationMessageType, s);
    }

    public static NotificationMessageType[] values()
    {
        return (NotificationMessageType[])$VALUES.clone();
    }

    public short getTypeId()
    {
        return typeId;
    }

    static 
    {
        EMERGENCY = new NotificationMessageType("EMERGENCY", 0, (short)0);
        WARNING = new NotificationMessageType("WARNING", 1, (short)1);
        INFO = new NotificationMessageType("INFO", 2, (short)2);
        NotificationMessageType anotificationmessagetype[] = new NotificationMessageType[3];
        anotificationmessagetype[0] = EMERGENCY;
        anotificationmessagetype[1] = WARNING;
        anotificationmessagetype[2] = INFO;
        $VALUES = anotificationmessagetype;
    }
}
