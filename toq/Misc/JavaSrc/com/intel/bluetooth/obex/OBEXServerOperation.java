// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import com.intel.bluetooth.DebugLog;
import java.io.*;
import javax.obex.HeaderSet;
import javax.obex.Operation;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXOperation, OBEXHeaderSetImpl, OBEXSessionBase, OBEXServerSessionImpl, 
//            OBEXOperationInputStream, OBEXOperationOutputStream

abstract class OBEXServerOperation
    implements OBEXOperation, Operation
{

    protected boolean errorReceived;
    protected boolean finalPacketReceived;
    protected boolean incommingDataReceived;
    protected OBEXOperationInputStream inputStream;
    protected boolean inputStreamOpened;
    protected boolean isAborted;
    protected boolean isClosed;
    protected OBEXOperationOutputStream outputStream;
    protected boolean outputStreamOpened;
    protected HeaderSet receivedHeaders;
    protected boolean requestEnded;
    protected OBEXHeaderSetImpl sendHeaders;
    protected OBEXServerSessionImpl session;

    protected OBEXServerOperation(OBEXServerSessionImpl obexserversessionimpl, OBEXHeaderSetImpl obexheadersetimpl)
        throws IOException
    {
        isClosed = false;
        isAborted = false;
        finalPacketReceived = false;
        requestEnded = false;
        errorReceived = false;
        incommingDataReceived = false;
        outputStreamOpened = false;
        inputStreamOpened = false;
        session = obexserversessionimpl;
        receivedHeaders = obexheadersetimpl;
        if (obexheadersetimpl.hasAuthenticationChallenge())
        {
            sendHeaders = OBEXSessionBase.createOBEXHeaderSetImpl();
            session.handleAuthenticationChallenge(obexheadersetimpl, sendHeaders);
        }
    }

    public void abort()
        throws IOException
    {
        throw new IOException("Can't abort server operation");
    }

    public void close()
        throws IOException
    {
        isClosed = true;
    }

    boolean exchangeRequestPhasePackets()
        throws IOException
    {
        session.writePacket(144, null);
        return readRequestPacket();
    }

    public String getEncoding()
    {
        return null;
    }

    public long getLength()
    {
        Long long1;
        try
        {
            long1 = (Long)receivedHeaders.getHeader(195);
        }
        catch (IOException ioexception)
        {
            return -1L;
        }
        if (long1 == null)
            return -1L;
        else
            return long1.longValue();
    }

    public HeaderSet getReceivedHeaders()
        throws IOException
    {
        return OBEXHeaderSetImpl.cloneHeaders(receivedHeaders);
    }

    public int getResponseCode()
        throws IOException
    {
        throw new IOException("Operation object was created by an OBEX server");
    }

    public String getType()
    {
        String s;
        try
        {
            s = (String)receivedHeaders.getHeader(66);
        }
        catch (IOException ioexception)
        {
            return null;
        }
        return s;
    }

    public boolean isClosed()
    {
        return isClosed;
    }

    public boolean isErrorReceived()
    {
        return errorReceived;
    }

    public boolean isIncommingDataReceived()
    {
        return incommingDataReceived;
    }

    public DataInputStream openDataInputStream()
        throws IOException
    {
        return new DataInputStream(openInputStream());
    }

    public DataOutputStream openDataOutputStream()
        throws IOException
    {
        return new DataOutputStream(openOutputStream());
    }

    protected void processIncommingData(HeaderSet headerset, boolean flag)
        throws IOException
    {
        if (inputStream != null)
        {
            byte abyte0[] = (byte[])headerset.getHeader(72);
            if (abyte0 == null)
            {
                abyte0 = (byte[])headerset.getHeader(73);
                if (abyte0 != null)
                    flag = true;
            }
            if (abyte0 != null)
            {
                incommingDataReceived = true;
                DebugLog.debug((new StringBuilder("server received Data eof: ")).append(flag).append(" len:").toString(), abyte0.length);
                inputStream.appendData(abyte0, flag);
                return;
            }
            if (flag)
            {
                inputStream.appendData(null, flag);
                return;
            }
        }
    }

    protected abstract boolean readRequestPacket()
        throws IOException;

    public void sendHeaders(HeaderSet headerset)
        throws IOException
    {
        if (headerset == null)
            throw new NullPointerException("headers are null");
        OBEXHeaderSetImpl.validateCreatedHeaderSet(headerset);
        if (isClosed)
            throw new IOException("operation closed");
        if (sendHeaders != null)
        {
            OBEXHeaderSetImpl.appendHeaders(sendHeaders, headerset);
            return;
        } else
        {
            sendHeaders = (OBEXHeaderSetImpl)headerset;
            return;
        }
    }

    void writeResponse(int i)
        throws IOException
    {
        DebugLog.debug0x("server operation reply final", i);
        session.writePacket(i, sendHeaders);
        sendHeaders = null;
        if (i != 160)
        {
            DebugLog.debug("sent final reply");
            return;
        }
        do
        {
            if (finalPacketReceived || session.isClosed())
                break;
            DebugLog.debug("server waits to receive final packet");
            readRequestPacket();
            if (!errorReceived)
                session.writePacket(i, null);
        } while (true);
    }
}
