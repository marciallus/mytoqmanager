// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import java.io.*;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXConnectionParams

abstract class OBEXUtils
{


    static int bytesToShort(byte byte0, byte byte1)
    {
        return (0xff00 & byte0 << 8) + (byte1 & 0xff);
    }

    static byte[] getUTF16Bytes(String s)
        throws UnsupportedEncodingException
    {
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes("UTF-16BE");
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return getUTF16BytesSimple(s);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return getUTF16BytesSimple(s);
        }
        return abyte0;
    }

    static byte[] getUTF16BytesSimple(String s)
        throws UnsupportedEncodingException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        int i = s.length();
        int j = 0;
        do
        {
            if (j >= i)
                return bytearrayoutputstream.toByteArray();
            char c = s.charAt(j);
            bytearrayoutputstream.write(hiByte(c));
            bytearrayoutputstream.write(loByte(c));
            j++;
        } while (true);
    }

    static byte hiByte(int i)
    {
        return (byte)(0xff & i >> 8);
    }

    static byte loByte(int i)
    {
        return (byte)(i & 0xff);
    }

    static String newStringUTF16(byte abyte0[])
        throws UnsupportedEncodingException
    {
        String s;
        try
        {
            s = new String(abyte0, "UTF-16BE");
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return newStringUTF16Simple(abyte0);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return newStringUTF16Simple(abyte0);
        }
        return s;
    }

    static String newStringUTF16Simple(byte abyte0[])
        throws UnsupportedEncodingException
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
                return stringbuffer.toString();
            stringbuffer.append((char)bytesToShort(abyte0[i], abyte0[i + 1]));
            i += 2;
        } while (true);
    }

    static void readFully(InputStream inputstream, OBEXConnectionParams obexconnectionparams, byte abyte0[])
        throws IOException, EOFException
    {
        readFully(inputstream, obexconnectionparams, abyte0, 0, abyte0.length);
    }

    static void readFully(InputStream inputstream, OBEXConnectionParams obexconnectionparams, byte abyte0[], int i, int j)
        throws IOException, EOFException
    {
        if (j < 0)
            throw new IndexOutOfBoundsException();
        int k = 0;
        do
        {
            if (k >= j)
                return;
            int l;
            if (obexconnectionparams.timeouts)
            {
                long l1 = System.currentTimeMillis() + (long)obexconnectionparams.timeout;
                do
                {
                    int i1 = inputstream.available();
                    if (i1 == 0)
                    {
                        if (System.currentTimeMillis() > l1)
                            throw new InterruptedIOException((new StringBuilder("OBEX read timeout; received ")).append(k).append(" form ").append(j).append(" expected").toString());
                        try
                        {
                            Thread.sleep(100L);
                        }
                        catch (InterruptedException interruptedexception)
                        {
                            throw new InterruptedIOException();
                        }
                    }
                } while (i1 == 0);
            }
            l = inputstream.read(abyte0, i + k, j - k);
            if (l < 0)
                throw new EOFException((new StringBuilder("EOF while reading OBEX packet; received ")).append(k).append(" form ").append(j).append(" expected").toString());
            k += l;
        } while (true);
    }

    public static String toStringObexResponseCodes(byte byte0)
    {
        return toStringObexResponseCodes(byte0 & 0xff);
    }

    public static String toStringObexResponseCodes(int i)
    {
        switch (i)
        {
        case 225: 
            return "OBEX_DATABASE_LOCKED";

        case 224: 
            return "OBEX_DATABASE_FULL";

        case 213: 
            return "OBEX_HTTP_VERSION";

        case 212: 
            return "OBEX_HTTP_GATEWAY_TIMEOUT";

        case 211: 
            return "OBEX_HTTP_UNAVAILABLE";

        case 210: 
            return "OBEX_HTTP_BAD_GATEWAY";

        case 209: 
            return "OBEX_HTTP_NOT_IMPLEMENTED";

        case 208: 
            return "OBEX_HTTP_INTERNAL_ERROR";

        case 207: 
            return "OBEX_HTTP_UNSUPPORTED_TYPE";

        case 206: 
            return "OBEX_HTTP_REQ_TOO_LARGE";

        case 205: 
            return "OBEX_HTTP_ENTITY_TOO_LARGE";

        case 204: 
            return "OBEX_HTTP_PRECON_FAILED";

        case 203: 
            return "OBEX_HTTP_LENGTH_REQUIRED";

        case 202: 
            return "OBEX_HTTP_GONE";

        case 201: 
            return "OBEX_HTTP_CONFLICT";

        case 200: 
            return "OBEX_HTTP_TIMEOUT";

        case 199: 
            return "OBEX_HTTP_PROXY_AUTH";

        case 198: 
            return "OBEX_HTTP_NOT_ACCEPTABLE";

        case 197: 
            return "OBEX_HTTP_BAD_METHOD";

        case 196: 
            return "OBEX_HTTP_NOT_FOUND";

        case 195: 
            return "OBEX_HTTP_FORBIDDEN";

        case 194: 
            return "OBEX_HTTP_PAYMENT_REQUIRED";

        case 193: 
            return "OBEX_HTTP_UNAUTHORIZED";

        case 192: 
            return "OBEX_HTTP_BAD_REQUEST";

        case 181: 
            return "OBEX_HTTP_USE_PROXY";

        case 180: 
            return "OBEX_HTTP_NOT_MODIFIED";

        case 179: 
            return "OBEX_HTTP_SEE_OTHER";

        case 178: 
            return "OBEX_HTTP_MOVED_TEMP";

        case 177: 
            return "OBEX_HTTP_MOVED_PERM";

        case 176: 
            return "OBEX_HTTP_MULT_CHOICE";

        case 166: 
            return "OBEX_HTTP_PARTIAL";

        case 165: 
            return "OBEX_HTTP_RESET";

        case 164: 
            return "OBEX_HTTP_NO_CONTENT";

        case 163: 
            return "OBEX_HTTP_NOT_AUTHORITATIVE";

        case 162: 
            return "OBEX_HTTP_ACCEPTED";

        case 161: 
            return "OBEX_HTTP_CREATED";

        case 160: 
            return "OBEX_HTTP_OK";

        case 144: 
            return "OBEX_RESPONSE_CONTINUE";

        case 133: 
            return "SETPATH FINAL";

        case 5: // '\005'
            return "SETPATH";

        case 131: 
            return "GET FINAL";

        case 3: // '\003'
            return "GET";

        case 130: 
            return "PUT FINAL";

        case 2: // '\002'
            return "PUT";

        case 135: 
            return "SESSION FINAL";

        case 7: // '\007'
            return "SESSION";

        case 255: 
            return "ABORT";

        case 129: 
            return "DISCONNECT";

        case 128: 
            return "CONNECT";
        }
        return (new StringBuilder("Unknown 0x")).append(Integer.toHexString(i)).toString();
    }
}
