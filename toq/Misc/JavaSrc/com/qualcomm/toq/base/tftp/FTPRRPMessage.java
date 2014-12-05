// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.tftp;

import com.qualcomm.toq.base.utils.ByteUtils;

// Referenced classes of package com.qualcomm.toq.base.tftp:
//            FTPBaseMessage, FTPMessageException

public class FTPRRPMessage extends FTPBaseMessage
{

    protected int windowSize;

    FTPRRPMessage()
    {
        windowSize = 1;
        opCode = 2;
        srcTID = 0;
        desTID = 0;
        fileName = "";
        fileSize = 0L;
        crc = 0L;
        windowSize = 1;
    }

    FTPRRPMessage(int i, int j, String s, long l, long l1, 
            int k)
    {
        windowSize = 1;
        opCode = 2;
        srcTID = i;
        desTID = j;
        fileName = s;
        fileSize = l;
        crc = l1;
        windowSize = k;
    }

    public byte[] pack()
        throws FTPMessageException
    {
        if (fileName.length() > 200)
            throw new FTPMessageException("File Name is more than 200 bytes");
        byte abyte0[] = new byte[213];
        abyte0[0] = opCode;
        abyte0[1] = (byte)srcTID;
        abyte0[2] = (byte)desTID;
        abyte0[3] = 0;
        byte abyte1[] = fileName.getBytes();
        int i = 4;
        if (abyte1 != null)
        {
            int l1 = abyte1.length;
            for (int i2 = 0; i2 < l1; i2++)
            {
                abyte0[i] = abyte1[i2];
                i++;
            }

        }
        byte abyte2[] = ByteUtils.convertUnsignedNumbersToBytes(fileSize, 4);
        int j = 204;
        if (abyte2 != null)
        {
            int j1 = abyte2.length;
            for (int k1 = 0; k1 < j1; k1++)
            {
                abyte0[j] = abyte2[k1];
                j++;
            }

        }
        byte abyte3[] = ByteUtils.convertUnsignedNumbersToBytes(crc, 4);
        int k = 208;
        if (abyte3 != null)
        {
            int l = abyte3.length;
            for (int i1 = 0; i1 < l; i1++)
            {
                abyte0[k] = abyte3[i1];
                k++;
            }

        }
        abyte0[212] = (byte)windowSize;
        return abyte0;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("[RRP] {").append("src: ").append(srcTID).toString();
        String s1 = (new StringBuilder()).append(s).append(" dst: ").append(desTID).toString();
        String s2 = (new StringBuilder()).append(s1).append(" file: ").append(fileName).toString();
        String s3 = (new StringBuilder()).append(s2).append(" size: ").append(fileSize).toString();
        String s4 = (new StringBuilder()).append(s3).append(" crc: ").append(crc).toString();
        String s5 = (new StringBuilder()).append(s4).append(" window: ").append(windowSize).toString();
        return (new StringBuilder()).append(s5).append("}").toString();
    }

    public void unpack(byte abyte0[])
        throws FTPMessageException
    {
        byte byte0 = abyte0[0];
        byte byte1 = abyte0[1];
        byte byte2 = abyte0[2];
        String s = new String(ByteUtils.subbytes(abyte0, 4, 204));
        long l = ByteUtils.convertBytestoLong(ByteUtils.subbytes(abyte0, 204, 208));
        long l1 = 255L & ByteUtils.convertBytestoLong(ByteUtils.subbytes(abyte0, 208, 212));
        byte byte3 = abyte0[212];
        if (byte0 != 2)
        {
            throw new FTPMessageException("Bad Opcode Error.FTP Message is not RRP type");
        } else
        {
            opCode = byte0;
            srcTID = byte1 & 0xff;
            desTID = byte2 & 0xff;
            fileName = s.trim();
            fileSize = l;
            crc = l1;
            windowSize = (new Byte(byte3)).intValue();
            return;
        }
    }
}
