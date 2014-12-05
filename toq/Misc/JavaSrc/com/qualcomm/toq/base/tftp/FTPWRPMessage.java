// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.tftp;

import com.qualcomm.toq.base.utils.ByteUtils;

// Referenced classes of package com.qualcomm.toq.base.tftp:
//            FTPBaseMessage, FTPMessageException

public class FTPWRPMessage extends FTPBaseMessage
{

    protected int windowSize;

    FTPWRPMessage()
    {
        windowSize = 1;
        opCode = 7;
        srcTID = 0;
        desTID = 0;
        blockNumber = 0L;
        windowSize = 1;
    }

    FTPWRPMessage(int i, int j, long l, int k)
    {
        windowSize = 1;
        opCode = 7;
        srcTID = i;
        desTID = j;
        blockNumber = l;
        windowSize = k;
    }

    public byte[] pack()
        throws FTPMessageException
    {
        if (fileName.length() > 200)
            throw new FTPMessageException("File Name is more than 200 bytes");
        byte abyte0[] = new byte[9];
        abyte0[0] = opCode;
        abyte0[1] = (byte)srcTID;
        abyte0[2] = (byte)desTID;
        abyte0[3] = 0;
        byte abyte1[] = ByteUtils.convertUnsignedNumbersToBytes(blockNumber, 4);
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
        abyte0[8] = (byte)windowSize;
        return abyte0;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("[WRP] {").append("src: ").append(srcTID).toString();
        String s1 = (new StringBuilder()).append(s).append(" dst: ").append(desTID).toString();
        String s2 = (new StringBuilder()).append(s1).append(" block_num: ").append(blockNumber).toString();
        String s3 = (new StringBuilder()).append(s2).append(" window: ").append(windowSize).toString();
        return (new StringBuilder()).append(s3).append("}").toString();
    }

    public void unpack(byte abyte0[])
        throws FTPMessageException
    {
        byte byte0 = abyte0[0];
        byte byte1 = abyte0[1];
        byte byte2 = abyte0[2];
        long l = ByteUtils.convertBytestoLong(ByteUtils.subbytes(abyte0, 4, 7));
        byte byte3 = abyte0[8];
        if (byte0 != 7)
        {
            throw new FTPMessageException("Bad Opcode Error.FTP Message is not WRP type");
        } else
        {
            opCode = byte0;
            srcTID = byte1 & 0xff;
            desTID = byte2 & 0xff;
            blockNumber = l;
            windowSize = (new Byte(byte3)).intValue();
            return;
        }
    }
}
