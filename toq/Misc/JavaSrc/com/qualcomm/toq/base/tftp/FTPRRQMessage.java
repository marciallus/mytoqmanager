// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.tftp;

import com.qualcomm.toq.base.utils.ByteUtils;

// Referenced classes of package com.qualcomm.toq.base.tftp:
//            FTPBaseMessage, FTPMessageException

public class FTPRRQMessage extends FTPBaseMessage
{

    protected int windowSize;

    FTPRRQMessage()
    {
        windowSize = 1;
        opCode = 1;
        srcTID = 0;
        desTID = 0;
        fileName = "";
        priority = 0;
        windowSize = 1;
    }

    public FTPRRQMessage(int i, int j, String s, short word0, int k)
    {
        windowSize = 1;
        opCode = 1;
        srcTID = i;
        desTID = j;
        fileName = s;
        priority = word0;
        windowSize = k;
    }

    public byte[] pack()
        throws FTPMessageException
    {
        if (fileName.length() > 200)
            throw new FTPMessageException("File Name is more than 200 bytes");
        byte abyte0[] = new byte[206];
        abyte0[0] = opCode;
        abyte0[1] = (byte)srcTID;
        abyte0[2] = (byte)desTID;
        abyte0[3] = 0;
        byte abyte1[] = fileName.getBytes();
        int i = 4;
        if (abyte1 != null)
        {
            int j = abyte1.length;
            for (int k = 0; k < j; k++)
            {
                abyte0[i] = abyte1[k];
                i++;
            }

        }
        abyte0[204] = (byte)priority;
        abyte0[205] = (byte)windowSize;
        return abyte0;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("[RRQ] {").append("src: ").append(srcTID).toString();
        String s1 = (new StringBuilder()).append(s).append(" dst: ").append(desTID).toString();
        String s2 = (new StringBuilder()).append(s1).append(" file: ").append(fileName).toString();
        String s3 = (new StringBuilder()).append(s2).append(" priority: ").append(priority).toString();
        String s4 = (new StringBuilder()).append(s3).append(" window: ").append(windowSize).toString();
        return (new StringBuilder()).append(s4).append("}").toString();
    }

    public void unpack(byte abyte0[])
        throws FTPMessageException
    {
        byte byte0 = abyte0[0];
        int i = abyte0[1];
        int j = abyte0[2];
        String s = new String(ByteUtils.subbytes(abyte0, 4, 204));
        byte byte1 = abyte0[204];
        byte byte2 = abyte0[205];
        if (byte0 != 1)
        {
            throw new FTPMessageException("Bad Opcode Error.FTP Message is not RRQ type");
        } else
        {
            opCode = byte0;
            srcTID = i;
            desTID = j;
            fileName = s.trim();
            priority = (short)(new Byte(byte1)).intValue();
            windowSize = (new Byte(byte2)).intValue();
            return;
        }
    }
}
