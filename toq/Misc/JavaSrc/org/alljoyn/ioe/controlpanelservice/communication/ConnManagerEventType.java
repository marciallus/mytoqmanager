// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication;


public final class ConnManagerEventType extends Enum
{

    private static final ConnManagerEventType $VALUES[];
    public static final ConnManagerEventType ANNOUNCEMENT_RECEIVED;
    public static final ConnManagerEventType FOUND_DEVICE;
    public static final ConnManagerEventType LOST_DEVICE;
    public static final ConnManagerEventType SESSION_JOINED;
    public static final ConnManagerEventType SESSION_JOIN_FAIL;
    public static final ConnManagerEventType SESSION_LOST;

    private ConnManagerEventType(String s, int i)
    {
        super(s, i);
    }

    public static ConnManagerEventType valueOf(String s)
    {
        return (ConnManagerEventType)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType, s);
    }

    public static ConnManagerEventType[] values()
    {
        return (ConnManagerEventType[])$VALUES.clone();
    }

    static 
    {
        ANNOUNCEMENT_RECEIVED = new ConnManagerEventType("ANNOUNCEMENT_RECEIVED", 0);
        SESSION_JOINED = new ConnManagerEventType("SESSION_JOINED", 1);
        SESSION_JOIN_FAIL = new ConnManagerEventType("SESSION_JOIN_FAIL", 2);
        SESSION_LOST = new ConnManagerEventType("SESSION_LOST", 3);
        FOUND_DEVICE = new ConnManagerEventType("FOUND_DEVICE", 4);
        LOST_DEVICE = new ConnManagerEventType("LOST_DEVICE", 5);
        ConnManagerEventType aconnmanagereventtype[] = new ConnManagerEventType[6];
        aconnmanagereventtype[0] = ANNOUNCEMENT_RECEIVED;
        aconnmanagereventtype[1] = SESSION_JOINED;
        aconnmanagereventtype[2] = SESSION_JOIN_FAIL;
        aconnmanagereventtype[3] = SESSION_LOST;
        aconnmanagereventtype[4] = FOUND_DEVICE;
        aconnmanagereventtype[5] = LOST_DEVICE;
        $VALUES = aconnmanagereventtype;
    }
}
