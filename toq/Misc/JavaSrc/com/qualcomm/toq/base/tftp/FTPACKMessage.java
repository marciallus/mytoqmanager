// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.tftp;

import com.qualcomm.toq.base.utils.ByteUtils;

// Referenced classes of package com.qualcomm.toq.base.tftp:
//            FTPBaseMessage, FTPMessageException

public class FTPACKMessage extends FTPBaseMessage
{

    FTPACKMessage()
    {
        opCode = 5;
        srcTID = 0;
        desTID = 0;
        blockNumber = 0L;
    }

    public FTPACKMessage(int i, int j, long l)
    {
        opCode = 5;
        srcTID = i;
        desTID = j;
        blockNumber = l;
    }

    public byte[] pack()
        throws FTPMessageException
    {
        byte abyte0[] = new byte[8];
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
        return abyte0;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("[ACK] {").append("src: ").append(srcTID).toString();
        String s1 = (new StringBuilder()).append(s).append(" dst: ").append(desTID).toString();
        String s2 = (new StringBuilder()).append(s1).append(" block_num: ").append(blockNumber).toString();
        return (new StringBuilder()).append(s2).append("}").toString();
    }

    public void unpack(byte abyte0[])
        throws FTPMessageException
    {
        byte byte0 = abyte0[0];
        byte byte1 = abyte0[1];
        byte byte2 = abyte0[2];
        long l = ByteUtils.convertBytestoLong(ByteUtils.subbytes(abyte0, 4, 8));
        if (byte0 != 5)
        {
            throw new FTPMessageException("Bad Opcode Error. FTP Message is not ack type");
        } else
        {
            opCode = byte0;
            srcTID = byte1 & 0xff;
            desTID = byte2 & 0xff;
            blockNumber = l;
            return;
        }
    }
}
