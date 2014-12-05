// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.packer.tftp;

import com.qualcomm.toq.base.message.Message;
import com.qualcomm.toq.base.packer.IPacker;
import com.qualcomm.toq.base.utils.ByteUtils;
import java.io.PrintStream;

public class TFTPPacker
    implements IPacker
{

    private static TFTPPacker mInstance;

    private TFTPPacker()
    {
    }

    public static TFTPPacker getPacker()
    {
        if (mInstance == null)
            mInstance = new TFTPPacker();
        return mInstance;
    }

    public byte[] createPackedMessage(Message message)
    {
        byte abyte0[];
        if (message != null && message.payload != null)
        {
            System.out.println((new StringBuilder()).append("Payload = ").append(message.payload).toString());
            Object obj = message.payload;
            int i = 0;
            byte abyte1[] = null;
            if (obj != null)
            {
                abyte1 = (byte[])(byte[])message.payload;
                i = abyte1.length;
            }
            byte abyte2[] = ByteUtils.convertUnsignedNumbersToBytes(message.srcAdd, 1);
            byte abyte3[] = ByteUtils.convertUnsignedNumbersToBytes(message.destAdd, 1);
            byte abyte4[] = ByteUtils.convertUnsignedNumbersToBytes(i, 2);
            byte abyte5[] = ByteUtils.convertUnsignedNumbersToBytes(message.transactionId, 2);
            abyte0 = new byte[i + 6];
            abyte0[0] = abyte2[0];
            abyte0[1] = abyte3[0];
            abyte0[2] = abyte4[0];
            abyte0[3] = abyte4[1];
            abyte0[4] = abyte5[0];
            abyte0[5] = abyte5[1];
            int j = 6;
            if (abyte1 != null)
            {
                byte abyte6[] = abyte1;
                int k = abyte6.length;
                for (int l = 0; l < k; l++)
                {
                    abyte0[j] = abyte6[l];
                    j++;
                }

            }
        } else
        {
            abyte0 = null;
        }
        return abyte0;
    }

    public Message parseMessage(byte abyte0[])
    {
        int i;
        int j;
        int k;
        int l;
        i = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 0, 1));
        j = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 1, 2));
        k = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 4, 6));
        l = -6 + abyte0.length;
        if (l <= 0) goto _L2; else goto _L1
_L1:
        if (abyte0.length < l + 6) goto _L4; else goto _L3
_L3:
        byte abyte1[] = ByteUtils.subbytes(abyte0, 6, l + 6);
        Message message1 = new Message(i, j, abyte1, -1, k);
        message1.payloadLength = l;
        return message1;
        Exception exception;
        exception;
        message1 = null;
_L6:
        exception.printStackTrace();
        return message1;
_L4:
        return null;
_L2:
        Message message = new Message(i, j, null, 0, k);
        return message;
        exception;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
