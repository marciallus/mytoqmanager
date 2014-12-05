// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Enumeration;
import javax.bluetooth.DataElement;
import javax.bluetooth.UUID;

// Referenced classes of package com.intel.bluetooth:
//            Utils, BlueCoveImpl

class SDPOutputStream extends OutputStream
{

    OutputStream dst;

    public SDPOutputStream(OutputStream outputstream)
    {
        dst = outputstream;
    }

    static int getLength(DataElement dataelement)
    {
label0:
        {
            byte byte0 = 3;
            switch (dataelement.getDataType())
            {
            default:
                break label0;

            case 9: // '\t'
            case 17: // '\021'
                break;

            case 48: // '0'
            case 56: // '8'
                int i = 1;
                Enumeration enumeration = (Enumeration)dataelement.getValue();
                do
                {
                    if (!enumeration.hasMoreElements())
                    {
                        if (i < 255)
                            return i + 1;
                        if (i < 65535)
                            return i + 2;
                        else
                            return i + 4;
                    }
                    i += getLength((DataElement)enumeration.nextElement());
                } while (true);

            case 64: // '@'
                byte abyte1[] = Utils.getASCIIBytes((String)dataelement.getValue());
                if (abyte1.length < 256)
                    return 2 + abyte1.length;
                if (abyte1.length < 0x10000)
                    return 3 + abyte1.length;
                else
                    return 5 + abyte1.length;

            case 32: // ' '
                byte abyte0[];
                if (BlueCoveImpl.getConfigProperty("bluecove.sdp.string_encoding_ascii", false))
                    abyte0 = Utils.getASCIIBytes((String)dataelement.getValue());
                else
                    abyte0 = Utils.getUTF8Bytes((String)dataelement.getValue());
                if (abyte0.length < 256)
                    return 2 + abyte0.length;
                if (abyte0.length < 0x10000)
                    return 3 + abyte0.length;
                else
                    return 5 + abyte0.length;

            case 24: // '\030'
                long l = Utils.UUIDTo32Bit((UUID)dataelement.getValue());
                if (l == -1L)
                    return 17;
                if (l > 65535L)
                    return 5;
                break;

            case 12: // '\f'
            case 20: // '\024'
                return 17;

            case 11: // '\013'
            case 19: // '\023'
                return 9;

            case 10: // '\n'
            case 18: // '\022'
                return 5;

            case 8: // '\b'
            case 16: // '\020'
            case 40: // '('
                return 2;

            case 0: // '\0'
                byte0 = 1;
                break;
            }
            return byte0;
        }
        throw new IllegalArgumentException();
    }

    private void writeBytes(byte abyte0[])
        throws IOException
    {
        int i = 0;
        do
        {
            if (i >= abyte0.length)
                return;
            write(abyte0[i]);
            i++;
        } while (true);
    }

    private void writeLong(long l, int i)
        throws IOException
    {
        int j = 0;
        do
        {
            if (j >= i)
                return;
            write((int)(l >> (i - 1 << 3)));
            l <<= 8;
            j++;
        } while (true);
    }

    public void write(int i)
        throws IOException
    {
        dst.write(i);
    }

    void writeElement(DataElement dataelement)
        throws IOException
    {
label0:
        {
            switch (dataelement.getDataType())
            {
            default:
                break label0;

            case 64: // '@'
                byte abyte1[] = Utils.getASCIIBytes((String)dataelement.getValue());
                if (abyte1.length < 256)
                {
                    write(69);
                    writeLong(abyte1.length, 1);
                } else
                if (abyte1.length < 0x10000)
                {
                    write(70);
                    writeLong(abyte1.length, 2);
                } else
                {
                    write(71);
                    writeLong(abyte1.length, 4);
                }
                writeBytes(abyte1);
                return;

            case 56: // '8'
                int i1 = -5 + getLength(dataelement);
                byte byte2;
                byte byte3;
                if (i1 < 255)
                {
                    byte2 = 5;
                    byte3 = 1;
                } else
                if (i1 < 65535)
                {
                    byte2 = 6;
                    byte3 = 2;
                } else
                {
                    byte2 = 7;
                    byte3 = 4;
                }
                write(byte2 | 0x38);
                writeLong(i1, byte3);
                for (Enumeration enumeration1 = (Enumeration)dataelement.getValue(); enumeration1.hasMoreElements(); writeElement((DataElement)enumeration1.nextElement()));
                break;

            case 48: // '0'
                int j = getLength(dataelement);
                byte byte0;
                byte byte1;
                if (j < 257)
                {
                    byte0 = 5;
                    byte1 = 1;
                } else
                if (j < 0x10002)
                {
                    byte0 = 6;
                    byte1 = 2;
                } else
                {
                    byte0 = 7;
                    byte1 = 4;
                }
                int k = j - (byte1 + 1);
                write(byte0 | 0x30);
                writeLong(k, byte1);
                for (Enumeration enumeration = (Enumeration)dataelement.getValue(); enumeration.hasMoreElements(); writeElement((DataElement)enumeration.nextElement()));
                break;

            case 40: // '('
                write(40);
                boolean flag = dataelement.getBoolean();
                int i = 0;
                if (flag)
                    i = 1;
                writeLong(i, 1);
                return;

            case 32: // ' '
                byte abyte0[];
                if (BlueCoveImpl.getConfigProperty("bluecove.sdp.string_encoding_ascii", false))
                    abyte0 = Utils.getASCIIBytes((String)dataelement.getValue());
                else
                    abyte0 = Utils.getUTF8Bytes((String)dataelement.getValue());
                if (abyte0.length < 256)
                {
                    write(37);
                    writeLong(abyte0.length, 1);
                } else
                if (abyte0.length < 0x10000)
                {
                    write(38);
                    writeLong(abyte0.length, 2);
                } else
                {
                    write(39);
                    writeLong(abyte0.length, 4);
                }
                writeBytes(abyte0);
                return;

            case 24: // '\030'
                long l = Utils.UUIDTo32Bit((UUID)dataelement.getValue());
                if (l == -1L)
                {
                    write(28);
                    writeBytes(Utils.UUIDToByteArray((UUID)dataelement.getValue()));
                    return;
                }
                if (l <= 65535L)
                {
                    write(25);
                    writeLong(l, 2);
                    return;
                } else
                {
                    write(26);
                    writeLong(l, 4);
                    return;
                }

            case 20: // '\024'
                write(20);
                writeBytes((byte[])dataelement.getValue());
                return;

            case 19: // '\023'
                write(19);
                writeLong(dataelement.getLong(), 8);
                return;

            case 18: // '\022'
                write(18);
                writeLong(dataelement.getLong(), 4);
                return;

            case 17: // '\021'
                write(17);
                writeLong(dataelement.getLong(), 2);
                return;

            case 16: // '\020'
                write(16);
                writeLong(dataelement.getLong(), 1);
                return;

            case 12: // '\f'
                write(12);
                writeBytes((byte[])dataelement.getValue());
                return;

            case 11: // '\013'
                write(11);
                writeBytes((byte[])dataelement.getValue());
                return;

            case 10: // '\n'
                write(10);
                writeLong(dataelement.getLong(), 4);
                return;

            case 9: // '\t'
                write(9);
                writeLong(dataelement.getLong(), 2);
                return;

            case 8: // '\b'
                write(8);
                writeLong(dataelement.getLong(), 1);
                return;

            case 0: // '\0'
                write(0);
                break;
            }
            return;
        }
        throw new IOException();
    }
}
