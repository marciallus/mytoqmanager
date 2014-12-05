// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import com.intel.bluetooth.*;
import java.io.IOException;
import java.util.Vector;
import javax.bluetooth.RemoteDevice;
import javax.microedition.io.StreamConnection;
import javax.obex.*;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXSessionBase, OBEXConnectionParams, OBEXUtils, OBEXHeaderSetImpl, 
//            OBEXClientOperation, OBEXClientOperationGet, OBEXClientOperationPut

public class OBEXClientSessionImpl extends OBEXSessionBase
    implements ClientSession
{

    private static final String FQCN = com/intel/bluetooth/obex/OBEXClientSessionImpl.getName();
    private static final Vector fqcnSet;
    protected OBEXClientOperation operation;

    public OBEXClientSessionImpl(StreamConnection streamconnection, OBEXConnectionParams obexconnectionparams)
        throws IOException, Error
    {
        super(streamconnection, obexconnectionparams);
        Utils.isLegalAPICall(fqcnSet);
        requestSent = false;
        isConnected = false;
        operation = null;
    }

    private HeaderSet connectImpl(HeaderSet headerset, boolean flag)
        throws IOException
    {
        validateCreatedHeaderSet(headerset);
        if (isConnected)
            throw new IOException("Session already connected");
        byte abyte0[] = new byte[4];
        abyte0[0] = 16;
        abyte0[1] = 0;
        abyte0[2] = OBEXUtils.hiByte(obexConnectionParams.mtu);
        abyte0[3] = OBEXUtils.loByte(obexConnectionParams.mtu);
        writePacketWithFlags(128, abyte0, (OBEXHeaderSetImpl)headerset);
        byte abyte1[] = readPacket();
        if (abyte1.length < 6)
            if (abyte1.length == 3)
                throw new IOException((new StringBuilder("Invalid response from OBEX server ")).append(OBEXUtils.toStringObexResponseCodes(abyte1[0])).toString());
            else
                throw new IOException("Invalid response from OBEX server");
        int i = OBEXUtils.bytesToShort(abyte1[5], abyte1[6]);
        if (i < 255)
            throw new IOException((new StringBuilder("Invalid MTU ")).append(i).toString());
        if (i < mtu)
            mtu = i;
        DebugLog.debug("mtu selected", mtu);
        Object obj = OBEXHeaderSetImpl.readHeaders(abyte1[0], abyte1, 7);
        Object obj1 = ((OBEXHeaderSetImpl) (obj)).getHeader(203);
        if (obj1 != null)
            connectionID = ((Long)obj1).longValue();
        validateAuthenticationResponse((OBEXHeaderSetImpl)headerset, ((OBEXHeaderSetImpl) (obj)));
        if (!flag && ((OBEXHeaderSetImpl) (obj)).getResponseCode() == 193 && ((OBEXHeaderSetImpl) (obj)).hasAuthenticationChallenge())
        {
            OBEXHeaderSetImpl obexheadersetimpl = OBEXHeaderSetImpl.cloneHeaders(headerset);
            handleAuthenticationChallenge(((OBEXHeaderSetImpl) (obj)), (OBEXHeaderSetImpl)obexheadersetimpl);
            obj = connectImpl(((HeaderSet) (obexheadersetimpl)), true);
        } else
        if (((OBEXHeaderSetImpl) (obj)).getResponseCode() == 160)
        {
            isConnected = true;
            return ((HeaderSet) (obj));
        }
        return ((HeaderSet) (obj));
    }

    private HeaderSet setPathImpl(HeaderSet headerset, boolean flag, boolean flag1, boolean flag2)
        throws IOException
    {
        byte byte0 = 2;
        byte abyte0[] = new byte[byte0];
        boolean flag3;
        if (flag)
            flag3 = true;
        else
            flag3 = false;
        if (flag1)
            byte0 = 0;
        abyte0[0] = (byte)(byte0 | flag3);
        abyte0[1] = 0;
        writePacketWithFlags(133, abyte0, (OBEXHeaderSetImpl)headerset);
        byte abyte1[] = readPacket();
        Object obj = OBEXHeaderSetImpl.readHeaders(abyte1[0], abyte1, 3);
        validateAuthenticationResponse((OBEXHeaderSetImpl)headerset, ((OBEXHeaderSetImpl) (obj)));
        if (!flag2 && ((OBEXHeaderSetImpl) (obj)).getResponseCode() == 193 && ((OBEXHeaderSetImpl) (obj)).hasAuthenticationChallenge())
        {
            OBEXHeaderSetImpl obexheadersetimpl = OBEXHeaderSetImpl.cloneHeaders(headerset);
            handleAuthenticationChallenge(((OBEXHeaderSetImpl) (obj)), obexheadersetimpl);
            obj = setPathImpl(((HeaderSet) (obexheadersetimpl)), flag, flag1, true);
        }
        return ((HeaderSet) (obj));
    }

    protected void canStartOperation()
        throws IOException
    {
        if (!isConnected)
            throw new IOException("Session not connected");
        if (operation != null)
        {
            if (!operation.isClosed())
                throw new IOException("Client is already in an operation");
            operation = null;
        }
    }

    public void close()
        throws IOException
    {
        if (operation != null)
        {
            operation.close();
            operation = null;
        }
        super.close();
        return;
        Exception exception;
        exception;
        super.close();
        throw exception;
    }

    public HeaderSet connect(HeaderSet headerset)
        throws IOException
    {
        return connectImpl(headerset, false);
    }

    public HeaderSet createHeaderSet()
    {
        return OBEXSessionBase.createOBEXHeaderSet();
    }

    public HeaderSet delete(HeaderSet headerset)
        throws IOException
    {
        validateCreatedHeaderSet(headerset);
        canStartOperation();
        return deleteImp(headerset, false);
    }

    HeaderSet deleteImp(HeaderSet headerset, boolean flag)
        throws IOException
    {
        writePacket(130, (OBEXHeaderSetImpl)headerset);
        byte abyte0[] = readPacket();
        Object obj = OBEXHeaderSetImpl.readHeaders(abyte0[0], abyte0, 3);
        validateAuthenticationResponse((OBEXHeaderSetImpl)headerset, ((OBEXHeaderSetImpl) (obj)));
        if (!flag && ((OBEXHeaderSetImpl) (obj)).getResponseCode() == 193 && ((OBEXHeaderSetImpl) (obj)).hasAuthenticationChallenge())
        {
            OBEXHeaderSetImpl obexheadersetimpl = OBEXHeaderSetImpl.cloneHeaders(headerset);
            handleAuthenticationChallenge(((OBEXHeaderSetImpl) (obj)), obexheadersetimpl);
            obj = deleteImp(((HeaderSet) (obexheadersetimpl)), true);
        }
        return ((HeaderSet) (obj));
    }

    public HeaderSet disconnect(HeaderSet headerset)
        throws IOException
    {
        validateCreatedHeaderSet(headerset);
        canStartOperation();
        if (!isConnected)
            throw new IOException("Session not connected");
        writePacket(129, (OBEXHeaderSetImpl)headerset);
        byte abyte0[] = readPacket();
        isConnected = false;
        if (operation != null)
        {
            operation.close();
            operation = null;
        }
        return OBEXHeaderSetImpl.readHeaders(abyte0[0], abyte0, 3);
    }

    public volatile boolean encrypt(long l, boolean flag)
        throws IOException
    {
        return super.encrypt(l, flag);
    }

    public Operation get(HeaderSet headerset)
        throws IOException
    {
        validateCreatedHeaderSet(headerset);
        canStartOperation();
        operation = new OBEXClientOperationGet(this, (OBEXHeaderSetImpl)headerset);
        return operation;
    }

    public volatile BluetoothStack getBluetoothStack()
    {
        return super.getBluetoothStack();
    }

    public long getConnectionID()
    {
        return connectionID;
    }

    public volatile long getRemoteAddress()
        throws IOException
    {
        return super.getRemoteAddress();
    }

    public volatile RemoteDevice getRemoteDevice()
    {
        return super.getRemoteDevice();
    }

    public volatile int getSecurityOpt()
    {
        return super.getSecurityOpt();
    }

    public volatile boolean isClosed()
    {
        return super.isClosed();
    }

    public volatile void markAuthenticated()
    {
        super.markAuthenticated();
    }

    public Operation put(HeaderSet headerset)
        throws IOException
    {
        validateCreatedHeaderSet(headerset);
        canStartOperation();
        operation = new OBEXClientOperationPut(this, (OBEXHeaderSetImpl)headerset);
        return operation;
    }

    public void setAuthenticator(Authenticator authenticator)
    {
        if (authenticator == null)
        {
            throw new NullPointerException("auth is null");
        } else
        {
            this.authenticator = authenticator;
            return;
        }
    }

    public void setConnectionID(long l)
    {
        if (l >= 0L && l <= 0xffffffffL)
        {
            connectionID = l;
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid connectionID ")).append(l).toString());
        }
    }

    public HeaderSet setPath(HeaderSet headerset, boolean flag, boolean flag1)
        throws IOException
    {
        validateCreatedHeaderSet(headerset);
        canStartOperation();
        return setPathImpl(headerset, flag, flag1, false);
    }

    public volatile void setRemoteDevice(RemoteDevice remotedevice)
    {
        super.setRemoteDevice(remotedevice);
    }

    public volatile void shutdown()
        throws IOException
    {
        super.shutdown();
    }

    static 
    {
        fqcnSet = new Vector();
        fqcnSet.addElement(FQCN);
    }
}
