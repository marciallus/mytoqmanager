// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import java.io.InputStream;
import javax.bluetooth.DataElement;
import javax.bluetooth.UUID;

// Referenced classes of package com.intel.bluetooth:
//            Utils, DebugLog

class SDPInputStream extends InputStream
{

    private int pos;
    private InputStream source;

    public SDPInputStream(InputStream inputstream)
    {
        source = inputstream;
        pos = 0;
    }

    private String hexString(byte abyte0[])
        throws IOException
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
            {
                pos = i + pos;
                return abyte0;
            }
            abyte0[j] = (byte)read();
            j++;
        } while (true);
    }

    private int readInteger(int i)
        throws IOException
    {
        int j = 0;
        int k = 0;
        do
        {
            if (k >= i)
            {
                pos = i + pos;
                return j;
            }
            j = j << 8 | read();
            k++;
        } while (true);
    }

    private long readLong(int i)
        throws IOException
    {
        long l = 0L;
        int j = 0;
        do
        {
            if (j >= i)
            {
                pos = i + pos;
                return l;
            }
            l = l << 8 | (long)read();
            j++;
        } while (true);
    }

    public int read()
        throws IOException
    {
        return source.read();
    }

    public DataElement readElement()
        throws IOException
    {
        int j;
        int k;
        int i = read();
        j = 0x1f & i >> 3;
        k = i & 7;
        pos = 1 + pos;
        j;
        JVM INSTR tableswitch 0 8: default 970
    //                   0 957
    //                   1 837
    //                   2 710
    //                   3 604
    //                   4 500
    //                   5 471
    //                   6 318
    //                   7 162
    //                   8 80;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L10:
        k;
        JVM INSTR tableswitch 5 7: default 154
    //                   5 128
    //                   6 118
    //                   7 108;
           goto _L11 _L12 _L13 _L14
_L14:
        int j2;
        j2 = readInteger(4);
        break; /* Loop/switch isn't completed */
_L13:
        j2 = readInteger(2);
        break; /* Loop/switch isn't completed */
_L12:
        j2 = readInteger(1);
        return new DataElement(64, Utils.newStringASCII(readBytes(j2)));
_L11:
        throw new IOException();
_L9:
        k;
        JVM INSTR tableswitch 5 7: default 310
    //                   5 208
    //                   6 198
    //                   7 188;
           goto _L15 _L16 _L17 _L18
_L18:
        int l1;
        l1 = readInteger(4);
        break; /* Loop/switch isn't completed */
_L17:
        l1 = readInteger(2);
        break; /* Loop/switch isn't completed */
_L16:
        l1 = readInteger(1);
        DataElement dataelement;
        dataelement = new DataElement(56);
        int i2 = pos;
        long l2 = l1 + pos;
        do
        {
            if ((long)pos >= l2)
            {
                if (i2 + l1 != pos)
                    throw new IOException((new StringBuilder("DATALT size corruption ")).append((i2 + l1) - pos).toString());
                break;
            }
            dataelement.addElement(readElement());
        } while (true);
          goto _L19
_L15:
        throw new IOException();
_L8:
        k;
        JVM INSTR tableswitch 5 7: default 463
    //                   5 364
    //                   6 354
    //                   7 344;
           goto _L20 _L21 _L22 _L23
_L23:
        int i1;
        i1 = readInteger(4);
        break; /* Loop/switch isn't completed */
_L22:
        i1 = readInteger(2);
        break; /* Loop/switch isn't completed */
_L21:
        i1 = readInteger(1);
        dataelement = new DataElement(48);
        int j1 = pos;
        int k1 = i1 + pos;
        do
        {
            if (pos >= k1)
            {
                if (j1 + i1 != pos)
                    throw new IOException((new StringBuilder("DATSEQ size corruption ")).append((j1 + i1) - pos).toString());
                break;
            }
            dataelement.addElement(readElement());
        } while (true);
          goto _L19
_L20:
        throw new IOException();
_L7:
        boolean flag;
        if (readLong(1) != 0L)
            flag = true;
        else
            flag = false;
        return new DataElement(flag);
_L6:
        k;
        JVM INSTR tableswitch 5 7: default 596
    //                   5 548
    //                   6 538
    //                   7 528;
           goto _L24 _L25 _L26 _L27
_L27:
        int l;
        l = readInteger(4);
        break; /* Loop/switch isn't completed */
_L26:
        l = readInteger(2);
        break; /* Loop/switch isn't completed */
_L25:
        l = readInteger(1);
        String s = Utils.newStringUTF8(readBytes(l));
        DebugLog.debug("DataElement.STRING", s, Integer.toString(l - s.length()));
        return new DataElement(32, s);
_L24:
        throw new IOException();
_L5:
        k;
        JVM INSTR tableswitch 1 4: default 702
    //                   1 676
    //                   2 659
    //                   3 702
    //                   4 636;
           goto _L28 _L29 _L30 _L28 _L31
_L31:
        UUID uuid;
        uuid = new UUID(hexString(readBytes(16)), false);
        break; /* Loop/switch isn't completed */
_L30:
        uuid = new UUID(readLong(4));
        break; /* Loop/switch isn't completed */
_L29:
        uuid = new UUID(readLong(2));
        return new DataElement(24, uuid);
_L28:
        throw new IOException();
_L4:
        switch (k)
        {
        case 4: // '\004'
            return new DataElement(20, readBytes(16));

        case 3: // '\003'
            return new DataElement(19, readLong(8));

        case 2: // '\002'
            return new DataElement(18, (int)readLong(4));

        case 1: // '\001'
            return new DataElement(17, (short)(int)readLong(2));

        case 0: // '\0'
            return new DataElement(16, (byte)(int)readLong(1));
        }
        throw new IOException();
_L3:
        switch (k)
        {
        case 4: // '\004'
            return new DataElement(12, readBytes(16));

        case 3: // '\003'
            return new DataElement(11, readBytes(8));

        case 2: // '\002'
            return new DataElement(10, readLong(4));

        case 1: // '\001'
            return new DataElement(9, readLong(2));

        case 0: // '\0'
            return new DataElement(8, readLong(1));
        }
        throw new IOException();
_L2:
        dataelement = new DataElement(0);
_L19:
        return dataelement;
_L1:
        throw new IOException((new StringBuilder("Unknown type ")).append(j).toString());
    }
}
