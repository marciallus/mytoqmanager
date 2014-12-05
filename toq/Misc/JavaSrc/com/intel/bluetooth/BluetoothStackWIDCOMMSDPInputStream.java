// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import java.io.InputStream;
import javax.bluetooth.DataElement;
import javax.bluetooth.UUID;

// Referenced classes of package com.intel.bluetooth:
//            Utils

class BluetoothStackWIDCOMMSDPInputStream extends InputStream
{

    static final int ATTR_TYPE_ARRAY = 4;
    static final int ATTR_TYPE_BOOL = 3;
    static final int ATTR_TYPE_INT = 0;
    static final int ATTR_TYPE_TWO_COMP = 1;
    static final int ATTR_TYPE_UUID = 2;
    static final int MAX_ATTR_LEN_OLD = 256;
    static final int MAX_SEQ_ENTRIES = 20;
    public static final boolean debug;
    private InputStream source;
    private int valueSize;

    protected BluetoothStackWIDCOMMSDPInputStream(InputStream inputstream)
        throws IOException
    {
        valueSize = 0;
        source = inputstream;
        readVersionInfo();
    }

    static byte[] getUUIDHexBytes(UUID uuid)
    {
        return Utils.UUIDToByteArray(uuid);
    }

    static String hexString(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
                return stringbuffer.toString();
            stringbuffer.append(Integer.toHexString(0xf & abyte0[i] >> 4));
            stringbuffer.append(Integer.toHexString(0xf & abyte0[i]));
            i++;
        } while (true);
    }

    private byte[] readBytes(int i)
        throws IOException
    {
        byte abyte0[] = new byte[i];
        int j = 0;
        do
        {
            if (j >= i)
                return abyte0;
            abyte0[j] = (byte)read();
            j++;
        } while (true);
    }

    private int readInt()
        throws IOException
    {
        return (int)readLong(4);
    }

    private long readLong(int i)
        throws IOException
    {
        long l = 0L;
        int j = 0;
        do
        {
            if (j >= i)
                return l;
            l += (long)read() << j * 8;
            j++;
        } while (true);
    }

    private long readLongDebug(int i)
        throws IOException
    {
        long l = 0L;
        int j = 0;
        do
        {
            if (j >= i)
                return l;
            l += (long)read() << j * 8;
            j++;
        } while (true);
    }

    private void readVersionInfo()
        throws IOException
    {
        valueSize = readInt();
    }

    public int read()
        throws IOException
    {
        return source.read();
    }

    public DataElement readElement()
        throws IOException
    {
        DataElement dataelement;
        DataElement dataelement1;
        DataElement dataelement2;
        int i;
        int j;
        dataelement = null;
        dataelement1 = null;
        dataelement2 = null;
        i = readInt();
        if (i < 0 || i > 20)
            break MISSING_BLOCK_LABEL_849;
        j = 0;
_L12:
        int k;
        int l;
        boolean flag;
        if (j >= i)
            return dataelement;
        k = readInt();
        l = readInt();
        if (readInt() != 0)
            flag = true;
        else
            flag = false;
        if (l < 0 || valueSize < l)
            break MISSING_BLOCK_LABEL_824;
        k;
        JVM INSTR tableswitch 0 4: default 799
    //                   0 486
    //                   1 302
    //                   2 173
    //                   3 139
    //                   4 116;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        break MISSING_BLOCK_LABEL_799;
_L6:
        DataElement dataelement3;
        dataelement3 = new DataElement(32, Utils.newStringUTF8(readBytes(l)));
        break; /* Loop/switch isn't completed */
_L5:
        boolean flag1;
        if (readLong(l) != 0L)
            flag1 = true;
        else
            flag1 = false;
        dataelement3 = new DataElement(flag1);
        break; /* Loop/switch isn't completed */
_L4:
        l;
        JVM INSTR lookupswitch 3: default 277
    //                   2: 247
    //                   4: 230
    //                   16: 208;
           goto _L7 _L8 _L9 _L10
_L10:
        UUID uuid;
        uuid = new UUID(hexString(readBytes(16)), false);
        break; /* Loop/switch isn't completed */
_L9:
        uuid = new UUID(readLong(4));
        break; /* Loop/switch isn't completed */
_L8:
        uuid = new UUID(readLong(2));
        dataelement3 = new DataElement(24, uuid);
        break; /* Loop/switch isn't completed */
_L7:
        throw new IOException((new StringBuilder("Unknown UUID length ")).append(l).toString());
_L3:
        switch (l)
        {
        case 16: // '\020'
            dataelement3 = new DataElement(20, readBytes(16));
            break;

        case 8: // '\b'
            dataelement3 = new DataElement(19, readLongDebug(8));
            break;

        case 4: // '\004'
            dataelement3 = new DataElement(18, (int)readLong(4));
            break;

        case 2: // '\002'
            dataelement3 = new DataElement(17, (short)(int)readLong(2));
            break;

        case 1: // '\001'
            dataelement3 = new DataElement(16, (byte)(int)readLong(1));
            break;

        default:
            throw new IOException((new StringBuilder("Unknown INT length ")).append(l).toString());
        }
        break; /* Loop/switch isn't completed */
_L2:
        switch (l)
        {
        default:
            break; /* Loop/switch isn't completed */

        case 16: // '\020'
            dataelement3 = new DataElement(12, readBytes(16));
            break;

        case 8: // '\b'
            dataelement3 = new DataElement(11, readBytes(8));
            break;

        case 4: // '\004'
            dataelement3 = new DataElement(10, readLong(4));
            break;

        case 2: // '\002'
            dataelement3 = new DataElement(9, readLong(2));
            break;

        case 1: // '\001'
            dataelement3 = new DataElement(8, readLong(1));
            break;
        }
        if (flag)
        {
            DataElement dataelement4 = new DataElement(48);
            dataelement4.addElement(dataelement3);
            dataelement3 = dataelement4;
            if (j != 0)
                if (dataelement1 != null)
                {
                    dataelement1.addElement(dataelement4);
                } else
                {
                    dataelement1 = new DataElement(48);
                    dataelement = dataelement1;
                    dataelement1.addElement(dataelement2);
                    dataelement1.addElement(dataelement4);
                }
            dataelement2 = dataelement4;
        } else
        if (dataelement2 != null)
            dataelement2.addElement(dataelement3);
        if (dataelement == null)
            dataelement = dataelement3;
        if (j < i - 1 && skip(valueSize - l) != (long)(valueSize - l))
            throw new IOException("Unexpected end of data");
        j++;
        if (true) goto _L12; else goto _L11
_L11:
        throw new IOException((new StringBuilder("Unknown U_INT length ")).append(l).toString());
        throw new IOException((new StringBuilder("Unknown data type ")).append(k).toString());
        throw new IOException((new StringBuilder("Unexpected length ")).append(l).toString());
        throw new IOException((new StringBuilder("Unexpected number of elements ")).append(i).toString());
    }
}
