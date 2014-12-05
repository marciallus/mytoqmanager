// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


public class SessionOpts
{

    public static final byte PROXIMITY_ANY = -1;
    public static final byte PROXIMITY_NETWORK = 2;
    public static final byte PROXIMITY_PHYSICAL = 1;
    public static final byte TRAFFIC_MESSAGES = 1;
    public static final byte TRAFFIC_RAW_RELIABLE = 4;
    public static final byte TRAFFIC_RAW_UNRELIABLE = 2;
    public static final short TRANSPORT_ANY = -129;
    public static final short TRANSPORT_BLUETOOTH = 2;
    public static final short TRANSPORT_ICE = 32;
    public static final short TRANSPORT_LAN = 16;
    public static final short TRANSPORT_LOCAL = 1;
    public static final short TRANSPORT_NONE = 0;
    public static final short TRANSPORT_TCP = 4;
    public static final short TRANSPORT_WFD = 128;
    public static final short TRANSPORT_WLAN = 4;
    public static final short TRANSPORT_WWAN = 8;
    public boolean isMultipoint;
    public byte proximity;
    public byte traffic;
    public short transports;

    public SessionOpts()
    {
        traffic = 1;
        isMultipoint = false;
        proximity = -1;
        transports = -129;
    }

    public SessionOpts(byte byte0, boolean flag, byte byte1, short word0)
    {
        traffic = byte0;
        isMultipoint = flag;
        proximity = byte1;
        transports = word0;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder()).append(getClass().getName()).append(" {").toString());
        stringbuilder.append("traffic = ");
        Object aobj[] = new Object[1];
        aobj[0] = Byte.valueOf(traffic);
        stringbuilder.append(String.format("(0x%02x)", aobj));
        if ((1 & traffic) != 0)
            stringbuilder.append(" TRAFFIC_MESSAGES");
        if ((2 & traffic) != 0)
            stringbuilder.append(" TRAFFIC_RAW_UNRELIABLE");
        if ((4 & traffic) != 0)
            stringbuilder.append(" TRAFFIC_RAW_RELIABLE");
        stringbuilder.append(", isMultipoint = ");
        Object aobj1[] = new Object[1];
        aobj1[0] = Boolean.valueOf(isMultipoint);
        stringbuilder.append(String.format("%b", aobj1));
        stringbuilder.append(", proximity =");
        Object aobj2[] = new Object[1];
        aobj2[0] = Byte.valueOf(proximity);
        stringbuilder.append(String.format("(0x%02x)", aobj2));
        if ((1 & proximity) != 0)
            stringbuilder.append(" PROXIMITY_PHYSICAL");
        if ((2 & proximity) != 0)
            stringbuilder.append(" PROXIMITY_NETWORK");
        stringbuilder.append(", transports =");
        Object aobj3[] = new Object[1];
        aobj3[0] = Short.valueOf(transports);
        stringbuilder.append(String.format("(0x%04x)", aobj3));
        if ((1 & transports) != 0)
            stringbuilder.append(" TRANSPORT_LOCAL");
        if ((2 & transports) != 0)
            stringbuilder.append(" TRANSPORT_BLUETOOTH");
        if ((4 & transports) != 0)
            stringbuilder.append(" TRANSPORT_WLAN");
        if ((8 & transports) != 0)
            stringbuilder.append(" TRANSPORT_WWAN");
        if ((0x20 & transports) != 0)
            stringbuilder.append(" TRANSPORT_ICE");
        if ((0x80 & transports) != 0)
            stringbuilder.append(" TRANSPORT_WFD");
        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
