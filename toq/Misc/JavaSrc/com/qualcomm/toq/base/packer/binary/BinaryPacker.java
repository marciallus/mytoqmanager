// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.packer.binary;

import com.qualcomm.toq.base.message.Message;
import com.qualcomm.toq.base.packer.IPacker;
import com.qualcomm.toq.base.utils.ByteUtils;

public class BinaryPacker
    implements IPacker
{

    private static final String TAG = "BinaryPacker";
    private static BinaryPacker mInstance;

    private BinaryPacker()
    {
    }

    public static BinaryPacker getPacker()
    {
        if (mInstance == null)
            mInstance = new BinaryPacker();
        return mInstance;
    }

    public byte[] createPackedMessage(Message message)
    {
        byte abyte0[];
        if (message != null)
        {
            byte abyte1[];
            if (message.payload == null)
                abyte1 = null;
            else
                abyte1 = (byte[])(byte[])message.payload;
            int i;
            if (abyte1 == null)
                i = 4;
            else
                i = 4 + abyte1.length;
            byte abyte2[] = ByteUtils.convertUnsignedNumbersToBytes(message.srcAdd, 1);
            byte abyte3[] = ByteUtils.convertUnsignedNumbersToBytes(message.destAdd, 1);
            byte abyte4[] = ByteUtils.convertUnsignedNumbersToBytes(i, 2);
            byte abyte5[] = ByteUtils.convertUnsignedNumbersToBytes(message.transactionId, 2);
            byte abyte6[] = ByteUtils.convertUnsignedNumbersToBytes(message.messageType, 4);
            abyte0 = new byte[i + 6];
            abyte0[0] = abyte2[0];
            abyte0[1] = abyte3[0];
            abyte0[2] = abyte4[0];
            abyte0[3] = abyte4[1];
            abyte0[4] = abyte5[0];
            abyte0[5] = abyte5[1];
            abyte0[6] = abyte6[0];
            abyte0[7] = abyte6[1];
            abyte0[8] = abyte6[2];
            abyte0[9] = abyte6[3];
            int j = 10;
            if (abyte1 != null)
            {
                byte abyte7[] = abyte1;
                int k = abyte7.length;
                for (int l = 0; l < k; l++)
                {
                    abyte0[j] = abyte7[l];
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
        int i = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 0, 1));
        int j = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 1, 2));
        int k = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 2, 4));
        int l = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 4, 6));
        if (k > 0)
        {
            if (abyte0.length >= k + 6)
            {
                int i1 = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 6, 10));
                Message message1 = new Message(i, j, ByteUtils.subbytes(abyte0, 10, k + 6), i1, l);
                message1.payloadLength = k - 4;
                return message1;
            } else
            {
                return null;
            }
        } else
        {
            Message message = new Message(i, j, null, 0, l);
            return message;
        }
    }
}
