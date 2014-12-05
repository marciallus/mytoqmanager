// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import com.intel.bluetooth.DebugLog;
import java.io.*;
import java.util.Enumeration;
import java.util.Vector;
import javax.obex.*;

// Referenced classes of package com.intel.bluetooth.obex:
//            MD5DigestWrapper, OBEXHeaderSetImpl, OBEXUtils

class OBEXAuthentication
{
    static class Challenge
    {

        private boolean isFullAccess;
        private boolean isUserIdRequired;
        byte nonce[];
        private String realm;

        public String getRealm()
        {
            return realm;
        }

        public boolean isFullAccess()
        {
            return isFullAccess;
        }

        public boolean isUserIdRequired()
        {
            return isUserIdRequired;
        }

        void read(byte abyte0[])
            throws IOException
        {
            DebugLog.debug("authChallenge", abyte0);
            int i = 0;
            do
            {
                if (i >= abyte0.length)
                    return;
                int j = 0xff & abyte0[i];
                int k = 0xff & abyte0[i + 1];
                int l = i + 2;
                switch (j)
                {
                case 2: // '\002'
                    int j1 = 0xff & abyte0[l];
                    byte abyte1[] = new byte[k - 1];
                    System.arraycopy(abyte0, l + 1, abyte1, 0, abyte1.length);
                    if (j1 == 255)
                        realm = OBEXUtils.newStringUTF16(abyte1);
                    else
                    if (j1 == 0)
                        realm = new String(abyte1, "ASCII");
                    else
                    if (j1 <= 9)
                    {
                        realm = new String(abyte1, (new StringBuilder("ISO-8859-")).append(j1).toString());
                    } else
                    {
                        DebugLog.error((new StringBuilder("Unsupported charset code ")).append(j1).append(" in Challenge").toString());
                        realm = new String(abyte1, 0, k - 1, "ASCII");
                    }
                    break;

                case 1: // '\001'
                    int i1 = abyte0[l];
                    DebugLog.debug("authChallenge options", i1);
                    boolean flag;
                    if ((i1 & 1) != 0)
                        flag = true;
                    else
                        flag = false;
                    isUserIdRequired = flag;
                    boolean flag1;
                    if ((i1 & 2) == 0)
                        flag1 = true;
                    else
                        flag1 = false;
                    isFullAccess = flag1;
                    break;

                case 0: // '\0'
                    if (k != 16)
                        throw new IOException("OBEX Digest Challenge error in tag Nonce");
                    nonce = new byte[16];
                    System.arraycopy(abyte0, l, nonce, 0, 16);
                    break;

                default:
                    DebugLog.error((new StringBuilder("invalid authChallenge tag ")).append(j).toString());
                    break;
                }
                i = l + k;
            } while (true);
        }

        byte[] write()
        {
            byte abyte0[];
            byte byte2;
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            bytearrayoutputstream.write(0);
            bytearrayoutputstream.write(16);
            bytearrayoutputstream.write(nonce, 0, 16);
            boolean flag;
            byte byte0;
            byte byte1;
            byte abyte2[];
            if (isUserIdRequired)
                flag = true;
            else
                flag = false;
            if (!isFullAccess)
                byte0 = 2;
            else
                byte0 = 0;
            byte1 = (byte)(flag | byte0);
            bytearrayoutputstream.write(1);
            bytearrayoutputstream.write(1);
            bytearrayoutputstream.write(byte1);
            if (realm == null) goto _L2; else goto _L1
_L1:
            abyte2 = OBEXUtils.getUTF16Bytes(realm);
            abyte0 = abyte2;
            byte2 = -1;
_L4:
            bytearrayoutputstream.write(2);
            bytearrayoutputstream.write(1 + abyte0.length);
            bytearrayoutputstream.write(byte2);
            bytearrayoutputstream.write(abyte0, 0, abyte0.length);
_L2:
            return bytearrayoutputstream.toByteArray();
            UnsupportedEncodingException unsupportedencodingexception;
            unsupportedencodingexception;
            byte abyte1[] = realm.getBytes("iso-8859-1");
            abyte0 = abyte1;
_L5:
            byte2 = 1;
            if (true) goto _L4; else goto _L3
_L3:
            UnsupportedEncodingException unsupportedencodingexception1;
            unsupportedencodingexception1;
            abyte0 = new byte[0];
              goto _L5
        }

        Challenge(String s, boolean flag, boolean flag1, byte abyte0[])
        {
            realm = s;
            isUserIdRequired = flag;
            isFullAccess = flag1;
            nonce = abyte0;
        }

        Challenge(byte abyte0[])
            throws IOException
        {
            read(abyte0);
        }
    }

    static class DigestResponse
    {

        byte nonce[];
        byte requestDigest[];
        byte userName[];

        void read(byte abyte0[])
            throws IOException
        {
            int i = 0;
            do
            {
                if (i >= abyte0.length)
                    return;
                int j = 0xff & abyte0[i];
                int k = 0xff & abyte0[i + 1];
                int l = i + 2;
                switch (j)
                {
                default:
                    break;

                case 2: // '\002'
                    if (k != 16)
                        throw new IOException("OBEX Digest Response error in tag Nonce");
                    nonce = new byte[16];
                    System.arraycopy(abyte0, l, nonce, 0, 16);
                    break;

                case 1: // '\001'
                    userName = new byte[k];
                    System.arraycopy(abyte0, l, userName, 0, userName.length);
                    break;

                case 0: // '\0'
                    if (k != 16)
                        throw new IOException("OBEX Digest Response error in tag request-digest");
                    requestDigest = new byte[16];
                    System.arraycopy(abyte0, l, requestDigest, 0, 16);
                    break;
                }
                i = l + k;
            } while (true);
        }

        byte[] write()
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            bytearrayoutputstream.write(0);
            bytearrayoutputstream.write(16);
            bytearrayoutputstream.write(requestDigest, 0, 16);
            if (userName != null)
            {
                bytearrayoutputstream.write(1);
                bytearrayoutputstream.write(userName.length);
                bytearrayoutputstream.write(userName, 0, userName.length);
            }
            bytearrayoutputstream.write(2);
            bytearrayoutputstream.write(16);
            bytearrayoutputstream.write(nonce, 0, 16);
            return bytearrayoutputstream.toByteArray();
        }

    }


    private static final byte COLUMN[] = {
        58
    };
    private static byte privateKey[];
    private static long uniqueTimestamp = 0L;


    static byte[] createChallenge(String s, boolean flag, boolean flag1)
    {
        return (new Challenge(s, flag, flag1, createNonce())).write();
    }

    private static byte[] createNonce()
    {
        com/intel/bluetooth/obex/OBEXAuthentication;
        JVM INSTR monitorenter ;
        byte abyte0[];
        MD5DigestWrapper md5digestwrapper = new MD5DigestWrapper();
        md5digestwrapper.update(createTimestamp());
        md5digestwrapper.update(COLUMN);
        md5digestwrapper.update(getPrivateKey());
        abyte0 = md5digestwrapper.digest();
        com/intel/bluetooth/obex/OBEXAuthentication;
        JVM INSTR monitorexit ;
        return abyte0;
        Exception exception;
        exception;
        throw exception;
    }

    private static byte[] createTimestamp()
    {
        com/intel/bluetooth/obex/OBEXAuthentication;
        JVM INSTR monitorenter ;
        long l;
        byte abyte0[];
        l = System.currentTimeMillis();
        if (l <= uniqueTimestamp)
            l = 1L + uniqueTimestamp;
        uniqueTimestamp = l;
        abyte0 = new byte[8];
        int i = 0;
_L2:
        int j = abyte0.length;
        if (i < j)
            break MISSING_BLOCK_LABEL_49;
        com/intel/bluetooth/obex/OBEXAuthentication;
        JVM INSTR monitorexit ;
        return abyte0;
        abyte0[i] = (byte)(int)(l >> (-1 + abyte0.length << 3));
        l <<= 8;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    static boolean equals(byte abyte0[], byte abyte1[])
    {
        int i = 0;
        do
        {
            if (i >= 16)
                return true;
            if (abyte0[i] != abyte1[i])
                return false;
            i++;
        } while (true);
    }

    private static byte[] getPrivateKey()
    {
        com/intel/bluetooth/obex/OBEXAuthentication;
        JVM INSTR monitorenter ;
        if (privateKey == null) goto _L2; else goto _L1
_L1:
        byte abyte0[] = privateKey;
_L4:
        com/intel/bluetooth/obex/OBEXAuthentication;
        JVM INSTR monitorexit ;
        return abyte0;
_L2:
        MD5DigestWrapper md5digestwrapper = new MD5DigestWrapper();
        md5digestwrapper.update(createTimestamp());
        privateKey = md5digestwrapper.digest();
        abyte0 = privateKey;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static void handleAuthenticationChallenge(OBEXHeaderSetImpl obexheadersetimpl, OBEXHeaderSetImpl obexheadersetimpl1, Authenticator authenticator)
        throws IOException
    {
        if (obexheadersetimpl.hasAuthenticationChallenge())
        {
            DigestResponse digestresponse;
            for (Enumeration enumeration = obexheadersetimpl.getAuthenticationChallenges(); enumeration.hasMoreElements(); obexheadersetimpl1.addAuthenticationResponse(digestresponse.write()))
            {
                Challenge challenge = new Challenge((byte[])enumeration.nextElement());
                PasswordAuthentication passwordauthentication = authenticator.onAuthenticationChallenge(challenge.getRealm(), challenge.isUserIdRequired(), challenge.isFullAccess());
                digestresponse = new DigestResponse();
                digestresponse.nonce = challenge.nonce;
                DebugLog.debug("got nonce", digestresponse.nonce);
                if (challenge.isUserIdRequired())
                    digestresponse.userName = passwordauthentication.getUserName();
                MD5DigestWrapper md5digestwrapper = new MD5DigestWrapper();
                md5digestwrapper.update(digestresponse.nonce);
                md5digestwrapper.update(COLUMN);
                md5digestwrapper.update(passwordauthentication.getPassword());
                digestresponse.requestDigest = md5digestwrapper.digest();
                DebugLog.debug("send digest", digestresponse.requestDigest);
            }

        }
    }

    static boolean handleAuthenticationResponse(OBEXHeaderSetImpl obexheadersetimpl, Authenticator authenticator, ServerRequestHandler serverrequesthandler, Vector vector)
        throws IOException
    {
        if (obexheadersetimpl.hasAuthenticationResponses())
        {
            Enumeration enumeration = obexheadersetimpl.getAuthenticationResponses();
            do
            {
                if (!enumeration.hasMoreElements())
                    break;
                byte abyte0[] = (byte[])enumeration.nextElement();
                DigestResponse digestresponse = new DigestResponse();
                digestresponse.read(abyte0);
                DebugLog.debug("got nonce", digestresponse.nonce);
                Enumeration enumeration1 = vector.elements();
                Challenge challenge;
                do
                {
                    boolean flag = enumeration1.hasMoreElements();
                    challenge = null;
                    if (!flag)
                        break;
                    Challenge challenge1 = (Challenge)enumeration1.nextElement();
                    if (!equals(challenge1.nonce, digestresponse.nonce))
                        continue;
                    challenge = challenge1;
                    break;
                } while (true);
                if (challenge == null)
                    throw new IOException("Authentication response for unknown challenge");
                byte abyte1[] = authenticator.onAuthenticationResponse(digestresponse.userName);
                if (abyte1 == null)
                    throw new IOException("Authentication request failed, password is not supplied");
                MD5DigestWrapper md5digestwrapper = new MD5DigestWrapper();
                md5digestwrapper.update(digestresponse.nonce);
                md5digestwrapper.update(COLUMN);
                md5digestwrapper.update(abyte1);
                byte abyte2[] = md5digestwrapper.digest();
                if (!equals(digestresponse.requestDigest, abyte2))
                {
                    DebugLog.debug("got digest", digestresponse.requestDigest);
                    DebugLog.debug("  expected", abyte2);
                    if (serverrequesthandler != null)
                        serverrequesthandler.onAuthenticationFailure(digestresponse.userName);
                    else
                        throw new IOException("Authentication failure");
                } else
                {
                    return true;
                }
            } while (true);
        }
        return false;
    }

}
