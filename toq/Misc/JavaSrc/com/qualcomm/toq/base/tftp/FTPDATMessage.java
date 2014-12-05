// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.tftp;

import com.qualcomm.toq.base.utils.ByteUtils;
import java.util.Arrays;

// Referenced classes of package com.qualcomm.toq.base.tftp:
//            FTPBaseMessage, FTPMessageException

public class FTPDATMessage extends FTPBaseMessage
{

    FTPDATMessage()
    {
        opCode = 4;
        srcTID = 0;
        desTID = 0;
        blockNumber = 0L;
    }

    public FTPDATMessage(int i, int j, long l, byte abyte0[])
    {
        opCode = 4;
        srcTID = i;
        desTID = j;
        blockNumber = l;
        payload = abyte0;
    }

    public byte[] pack()
        throws FTPMessageException
    {
        if (payload != null && payload.length > FTPBaseMessage.BLOCK_SIZE)
            throw new FTPMessageException("Block length is more than 512 bytes");
        byte abyte0[] = new byte[8 + payload.length];
        abyte0[0] = opCode;
        abyte0[1] = (byte)srcTID;
        abyte0[2] = (byte)desTID;
        abyte0[3] = 0;
        byte abyte1[] = ByteUtils.convertUnsignedNumbersToBytes(blockNumber, 4);
        int i = 4;
        if (abyte1 != null)
        {
            int i1 = abyte1.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                abyte0[i] = abyte1[j1];
                i++;
            }

        }
        byte abyte2[] = payload;
        int j = 8;
        if (abyte2 != null)
        {
            int k = abyte2.length;
            for (int l = 0; l < k; l++)
            {
                abyte0[j] = abyte2[l];
                j++;
            }

        }
        return abyte0;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("[DAT] {").append("src: ").append(srcTID).toString();
        String s1 = (new StringBuilder()).append(s).append(" dst: ").append(desTID).toString();
        String s2 = (new StringBuilder()).append(s1).append(" block_num: ").append(blockNumber).toString();
        String s3 = (new StringBuilder()).append(s2).append(" payload: ").append(Arrays.toString(payload)).toString();
        return (new StringBuilder()).append(s3).append("}").toString();
    }

    public void unpack(byte abyte0[])
        throws FTPMessageException
    {
        byte byte0 = abyte0[0];
        byte byte1 = abyte0[1];
        byte byte2 = abyte0[2];
        long l = ByteUtils.convertBytestoLong(ByteUtils.subbytes(abyte0, 4, 8));
        byte abyte1[] = ByteUtils.subbytes(abyte0, 8, abyte0.length);
        if (byte0 != 4)
        {
            throw new FTPMessageException("Bad Opcode Error.FTP Message is not data type");
        } else
        {
            opCode = byte0;
            srcTID = byte1 & 0xff;
            desTID = byte2 & 0xff;
            blockNumber = l;
            payload = abyte1;
            return;
        }
    }
}
