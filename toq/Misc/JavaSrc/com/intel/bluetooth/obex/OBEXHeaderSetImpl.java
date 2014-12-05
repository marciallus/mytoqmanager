// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import com.intel.bluetooth.DebugLog;
import java.io.*;
import java.util.*;
import javax.obex.HeaderSet;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXUtils, OBEXAuthentication

class OBEXHeaderSetImpl
    implements HeaderSet
{

    private static final int NO_RESPONSE_CODE = 0x80000000;
    static final int OBEX_BYTE = 128;
    static final int OBEX_BYTE_STREAM = 64;
    static final int OBEX_HDR_APP_PARAM = 76;
    static final int OBEX_HDR_AUTH_CHALLENGE = 77;
    static final int OBEX_HDR_AUTH_RESPONSE = 78;
    static final int OBEX_HDR_BODY = 72;
    static final int OBEX_HDR_BODY_END = 73;
    static final int OBEX_HDR_CONNECTION = 203;
    static final int OBEX_HDR_COUNT = 192;
    static final int OBEX_HDR_CREATOR = 207;
    static final int OBEX_HDR_DESCRIPTION = 5;
    static final int OBEX_HDR_HI_MASK = 192;
    static final int OBEX_HDR_HTTP = 71;
    static final int OBEX_HDR_ID_MASK = 63;
    static final int OBEX_HDR_LENGTH = 195;
    static final int OBEX_HDR_NAME = 1;
    static final int OBEX_HDR_OBJECTCLASS = 79;
    static final int OBEX_HDR_SESSIONPARAM = 82;
    static final int OBEX_HDR_SESSIONSEQ = 147;
    static final int OBEX_HDR_TARGET = 70;
    static final int OBEX_HDR_TIME = 68;
    static final int OBEX_HDR_TIME2 = 196;
    static final int OBEX_HDR_TYPE = 66;
    static final int OBEX_HDR_USER = 48;
    static final int OBEX_HDR_WANUUID = 80;
    static final int OBEX_HDR_WHO = 74;
    static final int OBEX_INT = 192;
    private static final int OBEX_MAX_FIELD_LEN = 255;
    static final int OBEX_STRING;
    private Vector authChallenges;
    private Vector authResponses;
    private Hashtable headerValues;
    private int responseCode;

    OBEXHeaderSetImpl()
    {
        this(0x80000000);
    }

    private OBEXHeaderSetImpl(int i)
    {
        headerValues = new Hashtable();
        responseCode = i;
        authResponses = null;
        authChallenges = null;
    }

    static HeaderSet appendHeaders(HeaderSet headerset, HeaderSet headerset1)
        throws IOException
    {
        int ai[] = headerset1.getHeaderList();
        for (int i = 0; ai != null && i < ai.length; i++)
        {
            int j = ai[i];
            if (j != 72 && j != 73)
                headerset.setHeader(j, headerset1.getHeader(j));
        }

        return headerset;
    }

    static OBEXHeaderSetImpl cloneHeaders(HeaderSet headerset)
        throws IOException
    {
        OBEXHeaderSetImpl obexheadersetimpl;
        if (headerset == null)
        {
            obexheadersetimpl = null;
        } else
        {
            if (!(headerset instanceof OBEXHeaderSetImpl))
                throw new IllegalArgumentException("Illegal HeaderSet type");
            obexheadersetimpl = new OBEXHeaderSetImpl(((OBEXHeaderSetImpl)headerset).responseCode);
            int ai[] = headerset.getHeaderList();
            for (int i = 0; ai != null && i < ai.length; i++)
            {
                int j = ai[i];
                if (j != 72 && j != 73)
                    obexheadersetimpl.setHeader(j, headerset.getHeader(j));
            }

        }
        return obexheadersetimpl;
    }

    private static byte[] d2(int i)
    {
        byte abyte0[] = new byte[2];
        abyte0[0] = (byte)(48 + i / 10);
        abyte0[1] = (byte)(48 + i % 10);
        return abyte0;
    }

    private static byte[] d4(int i)
    {
        byte abyte0[] = new byte[4];
        int j = 1000;
        int k = 0;
        do
        {
            if (k >= 4)
                return abyte0;
            abyte0[k] = (byte)(48 + i / j);
            i %= j;
            j /= 10;
            k++;
        } while (true);
    }

    static OBEXHeaderSetImpl readHeaders(byte byte0, byte abyte0[], int i)
        throws IOException
    {
        return readHeaders(new OBEXHeaderSetImpl(byte0 & 0xff), abyte0, i);
    }

    private static OBEXHeaderSetImpl readHeaders(OBEXHeaderSetImpl obexheadersetimpl, byte abyte0[], int i)
        throws IOException
    {
        int j = 0;
_L7:
        int k;
        if (i >= abyte0.length)
        {
            if (j != 0)
                DebugLog.debug("read headers", j);
            return obexheadersetimpl;
        }
        k = 0xff & abyte0[i];
        k & 0xc0;
        JVM INSTR lookupswitch 4: default 80
    //                   0: 109
    //                   64: 184
    //                   128: 422
    //                   192: 446;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_446;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IOException((new StringBuilder("Unsupported encoding ")).append(k & 0xc0).toString());
_L2:
        int l;
        l = OBEXUtils.bytesToShort(abyte0[i + 1], abyte0[i + 2]);
        if (l == 3)
        {
            obexheadersetimpl.setHeader(k, "");
        } else
        {
            byte abyte2[] = new byte[l - 5];
            System.arraycopy(abyte0, i + 3, abyte2, 0, abyte2.length);
            obexheadersetimpl.setHeader(k, OBEXUtils.newStringUTF16(abyte2));
        }
_L9:
        i += l;
        j++;
        if (true) goto _L7; else goto _L6
_L6:
        byte abyte1[];
        l = OBEXUtils.bytesToShort(abyte0[i + 1], abyte0[i + 2]);
        abyte1 = new byte[l - 3];
        System.arraycopy(abyte0, i + 3, abyte1, 0, abyte1.length);
        if (k == 66)
        {
            if (abyte1[-1 + abyte1.length] != 0)
                obexheadersetimpl.setHeader(k, new String(abyte1, "iso-8859-1"));
            else
                obexheadersetimpl.setHeader(k, new String(abyte1, 0, -1 + abyte1.length, "iso-8859-1"));
        } else
        {
label0:
            {
                if (k != 68)
                    break label0;
                obexheadersetimpl.setHeader(k, readTimeISO8601(abyte1));
            }
        }
        if (true) goto _L9; else goto _L8
_L8:
        if (k != 77)
            break MISSING_BLOCK_LABEL_358;
        obexheadersetimpl;
        JVM INSTR monitorenter ;
        if (obexheadersetimpl.authChallenges == null)
            obexheadersetimpl.authChallenges = new Vector();
        obexheadersetimpl;
        JVM INSTR monitorexit ;
        obexheadersetimpl.authChallenges.addElement(abyte1);
        DebugLog.debug("received AUTH_CHALLENGE");
          goto _L9
        Exception exception1;
        exception1;
        obexheadersetimpl;
        JVM INSTR monitorexit ;
        throw exception1;
        if (k != 78)
            break MISSING_BLOCK_LABEL_411;
        obexheadersetimpl;
        JVM INSTR monitorenter ;
        if (obexheadersetimpl.authResponses == null)
            obexheadersetimpl.authResponses = new Vector();
        obexheadersetimpl;
        JVM INSTR monitorexit ;
        obexheadersetimpl.authResponses.addElement(abyte1);
        DebugLog.debug("received AUTH_RESPONSE");
          goto _L9
        Exception exception;
        exception;
        obexheadersetimpl;
        JVM INSTR monitorexit ;
        throw exception;
        obexheadersetimpl.setHeader(k, abyte1);
          goto _L9
_L4:
        l = 2;
        obexheadersetimpl.setHeader(k, new Byte(abyte0[i + 1]));
          goto _L9
        l = 5;
        long l1 = readObexInt(abyte0, i + 1);
        if (k == 196)
        {
            Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
            calendar.setTime(new Date(1000L * l1));
            obexheadersetimpl.setHeader(k, calendar);
        } else
        {
            obexheadersetimpl.setHeader(k, new Long(l1));
        }
          goto _L9
    }

    static OBEXHeaderSetImpl readHeaders(byte abyte0[], int i)
        throws IOException
    {
        return readHeaders(new OBEXHeaderSetImpl(0x80000000), abyte0, i);
    }

    static long readObexInt(byte abyte0[], int i)
        throws IOException
    {
        long l = 0L;
        int j = 0;
        do
        {
            if (j >= 4)
                return l;
            l = (l << 8) + (long)(0xff & abyte0[i + j]);
            j++;
        } while (true);
    }

    static Calendar readTimeISO8601(byte abyte0[])
        throws IOException
    {
        if (abyte0.length != 16 && abyte0.length != 15)
            throw new IOException((new StringBuilder("Invalid ISO-8601 date length ")).append(new String(abyte0)).append(" length ").append(abyte0.length).toString());
        if (abyte0[8] != 84)
            throw new IOException((new StringBuilder("Invalid ISO-8601 date ")).append(new String(abyte0)).toString());
        int i = abyte0.length;
        boolean flag = false;
        if (i == 16)
        {
            if (abyte0[15] != 90)
                throw new IOException((new StringBuilder("Invalid ISO-8601 date ")).append(new String(abyte0)).toString());
            flag = true;
        }
        Calendar calendar;
        if (flag)
            calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        else
            calendar = Calendar.getInstance();
        calendar.set(1, Integer.valueOf(new String(abyte0, 0, 4)).intValue());
        calendar.set(2, -1 + Integer.valueOf(new String(abyte0, 4, 2)).intValue());
        calendar.set(5, Integer.valueOf(new String(abyte0, 6, 2)).intValue());
        calendar.set(11, Integer.valueOf(new String(abyte0, 9, 2)).intValue());
        calendar.set(12, Integer.valueOf(new String(abyte0, 11, 2)).intValue());
        calendar.set(13, Integer.valueOf(new String(abyte0, 13, 2)).intValue());
        return calendar;
    }

    static byte[] toByteArray(HeaderSet headerset)
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream;
        int ai[];
label0:
        {
            if (headerset == null)
                return new byte[0];
            bytearrayoutputstream = new ByteArrayOutputStream();
            ai = headerset.getHeaderList();
            int i = 0;
            int j;
label1:
            do
            {
                if (ai == null || i >= ai.length)
                    break label0;
                j = ai[i];
                if (j == 68)
                {
                    Calendar calendar = (Calendar)headerset.getHeader(j);
                    writeObexLen(bytearrayoutputstream, j, 19);
                    writeTimeISO8601(bytearrayoutputstream, calendar);
                } else
                if (j == 196)
                    writeObexInt(bytearrayoutputstream, j, ((Calendar)headerset.getHeader(j)).getTime().getTime() / 1000L);
                else
                if (j == 66)
                    writeObexASCII(bytearrayoutputstream, j, (String)headerset.getHeader(j));
                else
                    switch (j & 0xc0)
                    {
                    default:
                        break label1;

                    case 192: 
                        writeObexInt(bytearrayoutputstream, j, ((Long)headerset.getHeader(j)).longValue());
                        break;

                    case 128: 
                        bytearrayoutputstream.write(j);
                        bytearrayoutputstream.write(((Byte)headerset.getHeader(j)).byteValue());
                        break;

                    case 64: // '@'
                        byte abyte2[] = (byte[])headerset.getHeader(j);
                        writeObexLen(bytearrayoutputstream, j, 3 + abyte2.length);
                        bytearrayoutputstream.write(abyte2);
                        break;

                    case 0: // '\0'
                        writeObexUnicode(bytearrayoutputstream, j, (String)headerset.getHeader(j));
                        break;
                    }
                i++;
            } while (true);
            throw new IOException((new StringBuilder("Unsupported encoding ")).append(j & 0xc0).toString());
        }
        if (ai != null && ai.length != 0)
            DebugLog.debug("written headers", ai.length);
        if (((OBEXHeaderSetImpl)headerset).hasAuthenticationChallenge())
        {
            for (Enumeration enumeration1 = ((OBEXHeaderSetImpl)headerset).authChallenges.elements(); enumeration1.hasMoreElements(); DebugLog.debug("written AUTH_CHALLENGE"))
            {
                byte abyte1[] = (byte[])enumeration1.nextElement();
                writeObexLen(bytearrayoutputstream, 77, 3 + abyte1.length);
                bytearrayoutputstream.write(abyte1);
            }

        }
        if (((OBEXHeaderSetImpl)headerset).hasAuthenticationResponses())
        {
            for (Enumeration enumeration = ((OBEXHeaderSetImpl)headerset).authResponses.elements(); enumeration.hasMoreElements(); DebugLog.debug("written AUTH_RESPONSE"))
            {
                byte abyte0[] = (byte[])enumeration.nextElement();
                writeObexLen(bytearrayoutputstream, 78, 3 + abyte0.length);
                bytearrayoutputstream.write(abyte0);
            }

        }
        return bytearrayoutputstream.toByteArray();
    }

    static void validateCreatedHeaderSet(HeaderSet headerset)
    {
        if (headerset != null)
        {
            if (!(headerset instanceof OBEXHeaderSetImpl))
                throw new IllegalArgumentException("Illegal HeaderSet type");
            if (((OBEXHeaderSetImpl)headerset).responseCode != 0x80000000)
                throw new IllegalArgumentException("Illegal HeaderSet");
        }
    }

    private void validateHeaderID(int i)
        throws IllegalArgumentException
    {
        if (i >= 0 && i <= 255)
        {
            int j = i & 0x3f;
            if (j >= 16 && j < 47)
                throw new IllegalArgumentException("Reserved header ID");
            else
                return;
        } else
        {
            throw new IllegalArgumentException("Expected header ID in range 0 to 255");
        }
    }

    static void writeObexASCII(OutputStream outputstream, int i, String s)
        throws IOException
    {
        writeObexLen(outputstream, i, 1 + (3 + s.length()));
        outputstream.write(s.getBytes("iso-8859-1"));
        outputstream.write(0);
    }

    static void writeObexInt(OutputStream outputstream, int i, long l)
        throws IOException
    {
        byte abyte0[] = new byte[5];
        abyte0[0] = (byte)i;
        abyte0[1] = (byte)(int)(255L & l >>> 24);
        abyte0[2] = (byte)(int)(255L & l >>> 16);
        abyte0[3] = (byte)(int)(255L & l >>> 8);
        abyte0[4] = (byte)(int)(255L & l >>> 0);
        outputstream.write(abyte0);
    }

    static void writeObexLen(OutputStream outputstream, int i, int j)
        throws IOException
    {
        byte abyte0[] = new byte[3];
        abyte0[0] = (byte)i;
        if (j >= 0 && j <= 65535)
        {
            abyte0[1] = OBEXUtils.hiByte(j);
            abyte0[2] = OBEXUtils.loByte(j);
            outputstream.write(abyte0);
            return;
        } else
        {
            throw new IOException((new StringBuilder("very large data")).append(j).toString());
        }
    }

    static void writeObexUnicode(OutputStream outputstream, int i, String s)
        throws IOException
    {
        if (s.length() == 0)
        {
            writeObexLen(outputstream, i, 3);
            return;
        } else
        {
            byte abyte0[] = OBEXUtils.getUTF16Bytes(s);
            writeObexLen(outputstream, i, 2 + (3 + abyte0.length));
            outputstream.write(abyte0);
            outputstream.write(new byte[2]);
            return;
        }
    }

    static void writeTimeISO8601(OutputStream outputstream, Calendar calendar)
        throws IOException
    {
        Calendar calendar1 = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar1.setTime(calendar.getTime());
        outputstream.write(d4(calendar1.get(1)));
        outputstream.write(d2(1 + calendar1.get(2)));
        outputstream.write(d2(calendar1.get(5)));
        outputstream.write(84);
        outputstream.write(d2(calendar1.get(11)));
        outputstream.write(d2(calendar1.get(12)));
        outputstream.write(d2(calendar1.get(13)));
        outputstream.write(90);
    }

    void addAuthenticationResponse(byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        if (authResponses == null)
            authResponses = new Vector();
        authResponses.addElement(abyte0);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void createAuthenticationChallenge(String s, boolean flag, boolean flag1)
    {
        this;
        JVM INSTR monitorenter ;
        if (authChallenges == null)
            authChallenges = new Vector();
        authChallenges.addElement(OBEXAuthentication.createChallenge(s, flag, flag1));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    Enumeration getAuthenticationChallenges()
    {
        return authChallenges.elements();
    }

    Enumeration getAuthenticationResponses()
    {
        return authResponses.elements();
    }

    public Object getHeader(int i)
        throws IOException
    {
        validateHeaderID(i);
        return headerValues.get(new Integer(i));
    }

    public int[] getHeaderList()
        throws IOException
    {
        int ai[];
        if (headerValues.size() == 0)
        {
            ai = null;
        } else
        {
            ai = new int[headerValues.size()];
            int i = 0;
            for (Enumeration enumeration = headerValues.keys(); enumeration.hasMoreElements();)
            {
                int j = i + 1;
                ai[i] = ((Integer)enumeration.nextElement()).intValue();
                i = j;
            }

        }
        return ai;
    }

    public int getResponseCode()
        throws IOException
    {
        if (responseCode == 0x80000000)
            throw new IOException();
        else
            return responseCode;
    }

    boolean hasAuthenticationChallenge()
    {
        return authChallenges != null && !authChallenges.isEmpty();
    }

    boolean hasAuthenticationResponses()
    {
        return authResponses != null && !authResponses.isEmpty();
    }

    boolean hasIncommingData()
    {
        return headerValues.contains(new Integer(72)) || headerValues.contains(new Integer(73));
    }

    public void setHeader(int i, Object obj)
    {
        validateHeaderID(i);
        if (obj == null)
        {
            headerValues.remove(new Integer(i));
            return;
        }
        if (i != 68 && i != 196)
        {
            if (i == 66)
            {
                if (!(obj instanceof String))
                    throw new IllegalArgumentException("Expected java.lang.String");
            } else
            {
                switch (i & 0xc0)
                {
                case 192: 
                    if (!(obj instanceof Long))
                        throw new IllegalArgumentException("Expected java.lang.Long");
                    long l = ((Long)obj).longValue();
                    if (l < 0L || l > 0xffffffffL)
                        throw new IllegalArgumentException("Expected long in range 0 to 2^32-1");
                    break;

                case 128: 
                    if (!(obj instanceof Byte))
                        throw new IllegalArgumentException("Expected java.lang.Byte");
                    break;

                case 64: // '@'
                    if (!(obj instanceof byte[]))
                        throw new IllegalArgumentException("Expected byte[]");
                    break;

                case 0: // '\0'
                    if (!(obj instanceof String))
                        throw new IllegalArgumentException("Expected java.lang.String");
                    break;

                default:
                    throw new IllegalArgumentException((new StringBuilder("Unsupported encoding ")).append(i & 0xc0).toString());
                }
            }
        } else
        if (!(obj instanceof Calendar))
            throw new IllegalArgumentException("Expected java.util.Calendar");
        headerValues.put(new Integer(i), obj);
    }
}
