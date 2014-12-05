// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.packer.fts;

import com.qualcomm.toq.base.message.Message;
import com.qualcomm.toq.base.packer.IPacker;
import com.qualcomm.toq.base.utils.ByteUtils;
import com.qualcomm.toq.base.utils.Log;

public class FtsPacker
    implements IPacker
{

    private static final String TAG = "BinaryPacker";
    private static FtsPacker mInstance;

    private FtsPacker()
    {
    }

    public static FtsPacker getPacker()
    {
        if (mInstance == null)
            mInstance = new FtsPacker();
        return mInstance;
    }

    public byte[] createPackedMessage(Message message)
    {
        return null;
    }

    public Message parseMessage(byte abyte0[])
    {
        int i;
        int j;
        int k;
        int l;
        i = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 0, 1));
        Log.d("BinaryPacker", (new StringBuilder()).append("source_address:").append(i).toString());
        j = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 1, 2));
        Log.d("BinaryPacker", (new StringBuilder()).append("dest_address_bytes:").append(j).toString());
        k = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 2, 4));
        Log.d("BinaryPacker", (new StringBuilder()).append("msgLen:").append(k).toString());
        l = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 4, 6));
        Log.d("BinaryPacker", (new StringBuilder()).append("transId:").append(l).toString());
        if (k <= 0) goto _L2; else goto _L1
_L1:
        if (abyte0.length < k + 6) goto _L4; else goto _L3
_L3:
        int i1;
        byte abyte1[];
        i1 = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 6, 10));
        Log.d("BinaryPacker", (new StringBuilder()).append("messageType:").append(i1).toString());
        abyte1 = ByteUtils.subbytes(abyte0, 10, k + 6);
        Message message1 = new Message(i, j, abyte1, i1, l);
        int j1 = k - 4;
        message1.payloadLength = j1;
        return message1;
        Exception exception;
        exception;
        message1 = null;
_L6:
        Log.d("BinaryPacker", (new StringBuilder()).append("Exception in FTS payload: ").append(exception.toString()).toString());
        exception.printStackTrace();
        return message1;
_L4:
        return null;
_L2:
        Message message = new Message(i, j, null, 0, l);
        return message;
        exception;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
