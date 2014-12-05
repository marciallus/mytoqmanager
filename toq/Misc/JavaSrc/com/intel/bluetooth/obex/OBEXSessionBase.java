// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import com.intel.bluetooth.*;
import java.io.*;
import java.util.Enumeration;
import java.util.Vector;
import javax.bluetooth.RemoteDevice;
import javax.microedition.io.Connection;
import javax.microedition.io.StreamConnection;
import javax.obex.*;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXConnectionParams, OBEXHeaderSetImpl, OBEXAuthentication, OBEXUtils

abstract class OBEXSessionBase
    implements BluetoothConnectionAccess, Connection
{

    private Vector authChallengesSent;
    protected Authenticator authenticator;
    private StreamConnection conn;
    protected long connectionID;
    private InputStream is;
    protected boolean isConnected;
    protected int mtu;
    protected final OBEXConnectionParams obexConnectionParams;
    private OutputStream os;
    protected int packetsCountRead;
    protected int packetsCountWrite;
    protected boolean requestSent;

    public OBEXSessionBase(StreamConnection streamconnection, OBEXConnectionParams obexconnectionparams)
        throws IOException
    {
        mtu = 1024;
        if (obexconnectionparams == null)
            throw new NullPointerException("obexConnectionParams is null");
        isConnected = false;
        conn = streamconnection;
        obexConnectionParams = obexconnectionparams;
        mtu = obexconnectionparams.mtu;
        connectionID = -1L;
        packetsCountWrite = 0;
        packetsCountRead = 0;
        os = streamconnection.openOutputStream();
        is = streamconnection.openInputStream();
        if (true)
            break MISSING_BLOCK_LABEL_93;
        close();
        return;
        Exception exception;
        exception;
        if (true)
            try
            {
                close();
            }
            catch (IOException ioexception)
            {
                DebugLog.error("close error", ioexception);
            }
        throw exception;
        IOException ioexception1;
        ioexception1;
        DebugLog.error("close error", ioexception1);
        return;
    }

    public static HeaderSet createOBEXHeaderSet()
    {
        return createOBEXHeaderSetImpl();
    }

    static OBEXHeaderSetImpl createOBEXHeaderSetImpl()
    {
        return new OBEXHeaderSetImpl();
    }

    private void validateBluetoothConnection()
    {
        if (conn != null && !(conn instanceof BluetoothConnectionAccess))
            throw new IllegalArgumentException((new StringBuilder("Not a Bluetooth connection ")).append(conn.getClass().getName()).toString());
        else
            return;
    }

    static void validateCreatedHeaderSet(HeaderSet headerset)
    {
        OBEXHeaderSetImpl.validateCreatedHeaderSet(headerset);
    }

    public void close()
        throws IOException
    {
        StreamConnection streamconnection;
        streamconnection = conn;
        conn = null;
        if (is != null)
        {
            is.close();
            is = null;
        }
        if (os != null)
        {
            os.close();
            os = null;
        }
        if (streamconnection != null)
            streamconnection.close();
        return;
        Exception exception;
        exception;
        if (os != null)
        {
            os.close();
            os = null;
        }
        throw exception;
        Exception exception1;
        exception1;
        if (streamconnection != null)
            streamconnection.close();
        throw exception1;
    }

    public boolean encrypt(long l, boolean flag)
        throws IOException
    {
        validateBluetoothConnection();
        if (conn == null)
            throw new IOException("Connection closed");
        else
            return ((BluetoothConnectionAccess)conn).encrypt(l, flag);
    }

    public BluetoothStack getBluetoothStack()
    {
        validateBluetoothConnection();
        if (conn == null)
            return null;
        else
            return ((BluetoothConnectionAccess)conn).getBluetoothStack();
    }

    int getPacketSize()
    {
        if (isConnected)
            return mtu;
        else
            return obexConnectionParams.mtu;
    }

    int getPacketsCountRead()
    {
        return packetsCountRead;
    }

    int getPacketsCountWrite()
    {
        return packetsCountWrite;
    }

    public long getRemoteAddress()
        throws IOException
    {
        validateBluetoothConnection();
        if (conn == null)
            throw new IOException("Connection closed");
        else
            return ((BluetoothConnectionAccess)conn).getRemoteAddress();
    }

    public RemoteDevice getRemoteDevice()
    {
        validateBluetoothConnection();
        if (conn == null)
            return null;
        else
            return ((BluetoothConnectionAccess)conn).getRemoteDevice();
    }

    public int getSecurityOpt()
    {
        validateBluetoothConnection();
        if (conn == null)
            return 0;
        else
            return ((BluetoothConnectionAccess)conn).getSecurityOpt();
    }

    void handleAuthenticationChallenge(OBEXHeaderSetImpl obexheadersetimpl, OBEXHeaderSetImpl obexheadersetimpl1)
        throws IOException
    {
        if (obexheadersetimpl.hasAuthenticationChallenge())
        {
            if (authenticator == null)
                throw new IOException("Authenticator required for authentication");
            OBEXAuthentication.handleAuthenticationChallenge(obexheadersetimpl, obexheadersetimpl1, authenticator);
        }
    }

    boolean handleAuthenticationResponse(OBEXHeaderSetImpl obexheadersetimpl, ServerRequestHandler serverrequesthandler)
        throws IOException
    {
        if (!obexheadersetimpl.hasAuthenticationResponses())
            break MISSING_BLOCK_LABEL_109;
        if (authenticator == null)
            throw new IOException("Authenticator required for authentication");
        if (authChallengesSent == null && authChallengesSent.size() == 0)
            throw new IOException("Authentication challenges had not been sent");
        boolean flag = OBEXAuthentication.handleAuthenticationResponse(obexheadersetimpl, authenticator, serverrequesthandler, authChallengesSent);
        if (flag && authChallengesSent != null)
            authChallengesSent.removeAllElements();
        return flag;
        Exception exception;
        exception;
        if (false && authChallengesSent != null)
            authChallengesSent.removeAllElements();
        throw exception;
        if (authChallengesSent != null && authChallengesSent.size() > 0)
            throw new IOException("Authentication response is missing");
        else
            return true;
    }

    public boolean isClosed()
    {
        if (conn == null)
            return true;
        if (conn instanceof BluetoothConnectionAccess)
            return ((BluetoothConnectionAccess)conn).isClosed();
        else
            return false;
    }

    public void markAuthenticated()
    {
        validateBluetoothConnection();
        if (conn != null)
            ((BluetoothConnectionAccess)conn).markAuthenticated();
    }

    protected byte[] readPacket()
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        if (!requestSent)
            throw new IOException("Read packet out of order");
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        byte abyte0[];
        int i;
        requestSent = false;
        abyte0 = new byte[3];
        OBEXUtils.readFully(is, obexConnectionParams, abyte0);
        packetsCountRead = 1 + packetsCountRead;
        DebugLog.debug0x((new StringBuilder("obex received (")).append(packetsCountRead).append(")").toString(), OBEXUtils.toStringObexResponseCodes(abyte0[0]), 0xff & abyte0[0]);
        i = OBEXUtils.bytesToShort(abyte0[1], abyte0[2]);
        if (i != 3) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return abyte0;
_L2:
        if (i >= 3 && i <= 65535)
            break MISSING_BLOCK_LABEL_150;
        throw new IOException((new StringBuilder("Invalid packet length ")).append(i).toString());
        byte abyte1[];
        abyte1 = new byte[i];
        System.arraycopy(abyte0, 0, abyte1, 0, abyte0.length);
        OBEXUtils.readFully(is, obexConnectionParams, abyte1, abyte0.length, i - abyte0.length);
        if (is.available() > 0)
            DebugLog.debug("has more data after read", is.available());
        abyte0 = abyte1;
        if (true) goto _L1; else goto _L3
_L3:
    }

    void setPacketSize(int i)
        throws IOException
    {
        if (isConnected)
        {
            throw new IOException("Session already connected");
        } else
        {
            obexConnectionParams.mtu = i;
            return;
        }
    }

    public void setRemoteDevice(RemoteDevice remotedevice)
    {
        validateBluetoothConnection();
        if (conn != null)
            ((BluetoothConnectionAccess)conn).setRemoteDevice(remotedevice);
    }

    public void shutdown()
        throws IOException
    {
        if (conn instanceof BluetoothConnectionAccess)
            ((BluetoothConnectionAccess)conn).shutdown();
    }

    void validateAuthenticationResponse(OBEXHeaderSetImpl obexheadersetimpl, OBEXHeaderSetImpl obexheadersetimpl1)
        throws IOException
    {
        if (obexheadersetimpl != null && obexheadersetimpl.hasAuthenticationChallenge() && !obexheadersetimpl1.hasAuthenticationResponses())
        {
            throw new IOException("Authentication response is missing");
        } else
        {
            handleAuthenticationResponse(obexheadersetimpl1, null);
            return;
        }
    }

    protected void writePacket(int i, OBEXHeaderSetImpl obexheadersetimpl)
        throws IOException
    {
        writePacketWithFlags(i, null, obexheadersetimpl);
    }

    protected void writePacketWithFlags(int i, byte abyte0[], OBEXHeaderSetImpl obexheadersetimpl)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        if (requestSent)
            throw new IOException("Write packet out of order");
        break MISSING_BLOCK_LABEL_27;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        requestSent = true;
        int j = 3;
        if (connectionID != -1L)
            j += 5;
        if (abyte0 == null)
            break MISSING_BLOCK_LABEL_60;
        j += abyte0.length;
        byte abyte1[] = (byte[])null;
        if (obexheadersetimpl == null)
            break MISSING_BLOCK_LABEL_84;
        abyte1 = OBEXHeaderSetImpl.toByteArray(obexheadersetimpl);
        j += abyte1.length;
        ByteArrayOutputStream bytearrayoutputstream;
        if (j > mtu)
            throw new IOException((new StringBuilder("Can't sent more data than in MTU, len=")).append(j).append(", mtu=").append(mtu).toString());
        packetsCountWrite = 1 + packetsCountWrite;
        bytearrayoutputstream = new ByteArrayOutputStream();
        OBEXHeaderSetImpl.writeObexLen(bytearrayoutputstream, i, j);
        if (abyte0 == null)
            break MISSING_BLOCK_LABEL_169;
        bytearrayoutputstream.write(abyte0);
        if (connectionID != -1L)
            OBEXHeaderSetImpl.writeObexInt(bytearrayoutputstream, 203, connectionID);
        if (abyte1 == null)
            break MISSING_BLOCK_LABEL_204;
        bytearrayoutputstream.write(abyte1);
        DebugLog.debug0x((new StringBuilder("obex send (")).append(packetsCountWrite).append(")").toString(), OBEXUtils.toStringObexResponseCodes(i), i);
        os.write(bytearrayoutputstream.toByteArray());
        os.flush();
        DebugLog.debug((new StringBuilder("obex sent (")).append(packetsCountWrite).append(") len").toString(), j);
        if (obexheadersetimpl == null) goto _L2; else goto _L1
_L1:
        if (!obexheadersetimpl.hasAuthenticationChallenge()) goto _L2; else goto _L3
_L3:
        Enumeration enumeration;
        if (authChallengesSent == null)
            authChallengesSent = new Vector();
        enumeration = obexheadersetimpl.getAuthenticationChallenges();
_L4:
        boolean flag = enumeration.hasMoreElements();
        if (flag)
            break MISSING_BLOCK_LABEL_341;
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        OBEXAuthentication.Challenge challenge = new OBEXAuthentication.Challenge((byte[])enumeration.nextElement());
        authChallengesSent.addElement(challenge);
          goto _L4
    }
}
