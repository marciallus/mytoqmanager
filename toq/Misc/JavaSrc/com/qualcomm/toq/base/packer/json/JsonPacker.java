// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.packer.json;

import com.qualcomm.toq.base.message.Message;
import com.qualcomm.toq.base.packer.IPacker;
import com.qualcomm.toq.base.utils.ByteUtils;
import com.qualcomm.toq.base.utils.Log;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonPacker
    implements IPacker
{

    private static final String TAG = "JsonPacker";
    private static JsonPacker mInstance;

    private JsonPacker()
    {
    }

    public static JsonPacker getPacker()
    {
        if (mInstance == null)
            mInstance = new JsonPacker();
        return mInstance;
    }

    public byte[] createPackedMessage(Message message)
    {
        byte abyte0[];
        if (message != null)
        {
            Log.d("JsonPacker", (new StringBuilder()).append("Payload = ").append(message.payload).toString());
            byte abyte1[];
            if (message.payload == null)
                abyte1 = null;
            else
                abyte1 = message.payload.toString().getBytes();
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
        int i;
        int j;
        int k;
        int l;
        i = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 0, 1));
        Log.d("JsonPacker", (new StringBuilder()).append("source_address:").append(i).toString());
        j = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 1, 2));
        Log.d("JsonPacker", (new StringBuilder()).append("dest_address_bytes:").append(j).toString());
        k = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 2, 4));
        Log.d("JsonPacker", (new StringBuilder()).append("msgLen:").append(k).toString());
        l = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 4, 6));
        Log.d("JsonPacker", (new StringBuilder()).append("transId:").append(l).toString());
        if (k <= 0) goto _L2; else goto _L1
_L1:
        if (abyte0.length < k + 6) goto _L4; else goto _L3
_L3:
        int i1;
        String s;
        i1 = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 6, 10));
        Log.d("JsonPacker", (new StringBuilder()).append("messageType:").append(i1).toString());
        byte abyte1[] = ByteUtils.subbytes(abyte0, 10, k + 6);
        s = new String(abyte1);
        Log.d("JsonPacker", (new StringBuilder()).append("readMessage:").append(s).toString());
        JSONObject jsonobject = new JSONObject(s);
        JSONException jsonexception;
        Message message;
        Message message1;
        int j1;
        try
        {
            Log.d("JsonPacker", (new StringBuilder()).append("payload:").append(jsonobject).toString());
            message1 = new Message(i, j, jsonobject, i1, l);
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception)
        {
            message1 = null;
            continue; /* Loop/switch isn't completed */
        }
        j1 = k - 4;
        message1.payloadLength = j1;
        return message1;
        jsonexception;
        message1 = null;
_L6:
        Log.d("JsonPacker", (new StringBuilder()).append("Exception in JSON payload: ").append(jsonexception.toString()).toString());
        jsonexception.printStackTrace();
        return message1;
_L4:
        return null;
_L2:
        message = new Message(i, j, null, 0, l);
        return message;
        jsonexception;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
