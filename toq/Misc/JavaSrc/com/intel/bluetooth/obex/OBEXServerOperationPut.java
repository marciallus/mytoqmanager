// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import com.intel.bluetooth.DebugLog;
import java.io.*;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXServerOperation, OBEXOperationDelivery, OBEXOperationReceive, OBEXOperationInputStream, 
//            OBEXServerSessionImpl, OBEXOperationOutputStream, OBEXSessionBase, OBEXHeaderSetImpl, 
//            OBEXUtils

class OBEXServerOperationPut extends OBEXServerOperation
    implements OBEXOperationDelivery, OBEXOperationReceive
{

    protected OBEXServerOperationPut(OBEXServerSessionImpl obexserversessionimpl, OBEXHeaderSetImpl obexheadersetimpl, boolean flag)
        throws IOException
    {
        super(obexserversessionimpl, obexheadersetimpl);
        inputStream = new OBEXOperationInputStream(this);
        processIncommingData(obexheadersetimpl, flag);
    }

    private void processAbort()
        throws IOException
    {
        isAborted = true;
        session.writePacket(160, null);
        close();
        throw new IOException("Operation aborted by client");
    }

    public void close()
        throws IOException
    {
        DebugLog.debug("server close put operation");
        if (inputStream != null)
        {
            inputStream.close();
            inputStream = null;
        }
        if (outputStream != null)
        {
            outputStream.close();
            outputStream = null;
        }
        super.close();
    }

    public void deliverPacket(boolean flag, byte abyte0[])
        throws IOException
    {
        if (session.requestSent)
        {
            readRequestPacket();
            if (session.requestSent)
                throw new IOException("Client not requesting data");
        }
        OBEXHeaderSetImpl obexheadersetimpl = OBEXSessionBase.createOBEXHeaderSetImpl();
        byte byte0 = 72;
        if (flag)
            byte0 = 73;
        obexheadersetimpl.setHeader(byte0, abyte0);
        if (sendHeaders != null)
        {
            OBEXHeaderSetImpl.appendHeaders(obexheadersetimpl, sendHeaders);
            sendHeaders = null;
        }
        session.writePacket(144, obexheadersetimpl);
        readRequestPacket();
    }

    public InputStream openInputStream()
        throws IOException
    {
        if (isClosed)
            throw new IOException("operation closed");
        if (inputStreamOpened)
        {
            throw new IOException("input stream already open");
        } else
        {
            DebugLog.debug("openInputStream");
            inputStreamOpened = true;
            return inputStream;
        }
    }

    public OutputStream openOutputStream()
        throws IOException
    {
        if (isClosed)
            throw new IOException("operation closed");
        if (outputStream != null)
        {
            throw new IOException("output stream already open");
        } else
        {
            outputStream = new OBEXOperationOutputStream(session.mtu, this);
            return outputStream;
        }
    }

    protected boolean readRequestPacket()
        throws IOException
    {
        byte abyte0[] = session.readPacket();
        int i = 0xff & abyte0[0];
        boolean flag;
        if ((i & 0x80) != 0)
            flag = true;
        else
            flag = false;
        if (flag)
        {
            DebugLog.debug("server operation got final packet");
            finalPacketReceived = true;
        }
        switch (i)
        {
        case 255: 
            processAbort();
            return flag;

        case 2: // '\002'
        case 130: 
            OBEXHeaderSetImpl obexheadersetimpl = OBEXHeaderSetImpl.readHeaders(abyte0[0], abyte0, 3);
            if (!session.handleAuthenticationResponse(obexheadersetimpl))
            {
                errorReceived = true;
                session.writePacket(193, null);
                return flag;
            } else
            {
                OBEXHeaderSetImpl.appendHeaders(receivedHeaders, obexheadersetimpl);
                processIncommingData(obexheadersetimpl, flag);
                return flag;
            }
        }
        errorReceived = true;
        DebugLog.debug0x("server operation invalid request", OBEXUtils.toStringObexResponseCodes(i), i);
        session.writePacket(192, null);
        return flag;
    }

    public void receiveData(OBEXOperationInputStream obexoperationinputstream)
        throws IOException
    {
        if (!finalPacketReceived && !errorReceived)
        {
            DebugLog.debug("server operation reply continue");
            session.writePacket(144, sendHeaders);
            sendHeaders = null;
            readRequestPacket();
            return;
        } else
        {
            obexoperationinputstream.appendData(null, true);
            return;
        }
    }
}
