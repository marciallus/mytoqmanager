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

class OBEXServerOperationGet extends OBEXServerOperation
    implements OBEXOperationDelivery, OBEXOperationReceive
{

    protected OBEXServerOperationGet(OBEXServerSessionImpl obexserversessionimpl, OBEXHeaderSetImpl obexheadersetimpl, boolean flag)
        throws IOException
    {
        super(obexserversessionimpl, obexheadersetimpl);
        if (flag)
        {
            requestEnded = true;
            finalPacketReceived = true;
        }
        inputStream = new OBEXOperationInputStream(this);
        processIncommingData(obexheadersetimpl, flag);
    }

    private void processAbort()
        throws IOException
    {
        finalPacketReceived = true;
        requestEnded = true;
        isAborted = true;
        session.writePacket(160, null);
        throw new IOException("Operation aborted");
    }

    public void close()
        throws IOException
    {
        if (outputStream != null)
        {
            outputStream.close();
            outputStream = null;
        }
        inputStream.close();
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
            requestEnded = true;
            outputStream = new OBEXOperationOutputStream(session.mtu, this);
            session.writePacket(144, sendHeaders);
            sendHeaders = null;
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

        case 3: // '\003'
        case 131: 
            if (flag)
                requestEnded = true;
            OBEXHeaderSetImpl obexheadersetimpl = OBEXHeaderSetImpl.readHeaders(abyte0[0], abyte0, 3);
            OBEXHeaderSetImpl.appendHeaders(receivedHeaders, obexheadersetimpl);
            processIncommingData(obexheadersetimpl, flag);
            return flag;
        }
        errorReceived = true;
        DebugLog.debug0x("server operation invalid request", OBEXUtils.toStringObexResponseCodes(i), i);
        session.writePacket(192, null);
        return flag;
    }

    public void receiveData(OBEXOperationInputStream obexoperationinputstream)
        throws IOException
    {
        if (!requestEnded && !errorReceived)
        {
            DebugLog.debug("server operation reply continue");
            session.writePacket(144, sendHeaders);
            sendHeaders = null;
            readRequestPacket();
            return;
        } else
        {
            inputStream.appendData(null, true);
            return;
        }
    }
}
