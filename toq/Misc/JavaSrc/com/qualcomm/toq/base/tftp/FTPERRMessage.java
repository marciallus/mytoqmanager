// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.tftp;

import com.qualcomm.toq.base.utils.ByteUtils;

// Referenced classes of package com.qualcomm.toq.base.tftp:
//            FTPBaseMessage, FTPMessageException

public class FTPERRMessage extends FTPBaseMessage
{

    FTPERRMessage()
    {
        opCode = 6;
        srcTID = 0;
        desTID = 0;
        errCode = 0L;
        errMessage = "";
    }

    FTPERRMessage(int i, int j, short word0, String s)
    {
        opCode = 6;
        srcTID = i;
        desTID = j;
        errCode = word0;
        errMessage = s;
    }

    public byte[] pack()
        throws FTPMessageException
    {
        if (errMessage.length() > 200)
            throw new FTPMessageException("Error message length is more than 200");
        byte abyte0[] = new byte[6 + errMessage.length()];
        abyte0[0] = opCode;
        abyte0[1] = (byte)srcTID;
        abyte0[2] = (byte)desTID;
        abyte0[3] = 0;
        byte abyte1[] = ByteUtils.convertUnsignedNumbersToBytes(errCode, 2);
        abyte0[4] = abyte1[0];
        abyte0[5] = abyte1[1];
        byte abyte2[] = errMessage.getBytes();
        int i = 6;
        if (abyte2 != null)
        {
            int j = abyte2.length;
            for (int k = 0; k < j; k++)
            {
                abyte0[i] = abyte2[k];
                i++;
            }

        }
        return abyte0;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("[ERR] {").append("src: ").append(srcTID).toString();
        String s1 = (new StringBuilder()).append(s).append(" dst: ").append(desTID).toString();
        String s2 = (new StringBuilder()).append(s1).append(" code: ").append(errCode).toString();
        String s3 = (new StringBuilder()).append(s2).append(" msg: ").append(errMessage).toString();
        return (new StringBuilder()).append(s3).append("}").toString();
    }

    public void unpack(byte abyte0[])
        throws FTPMessageException
    {
        byte byte0 = abyte0[0];
        int i = abyte0[1];
        int j = abyte0[2];
        long l = ByteUtils.convertBytestoLong(ByteUtils.subbytes(abyte0, 4, 6));
        String s = new String(ByteUtils.subbytes(abyte0, 6, abyte0.length));
        if (byte0 != 6)
        {
            throw new FTPMessageException("Bad Opcode Error.FTP Message is not error type");
        } else
        {
            opCode = byte0;
            srcTID = i;
            desTID = j;
            errCode = l;
            errMessage = s;
            return;
        }
    }
}
