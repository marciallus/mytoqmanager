// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import com.intel.bluetooth.DebugLog;
import java.io.*;
import javax.obex.HeaderSet;
import javax.obex.Operation;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXOperation, OBEXOperationDelivery, OBEXOperationReceive, OBEXOperationInputStream, 
//            OBEXOperationOutputStream, OBEXClientSessionImpl, OBEXHeaderSetImpl, OBEXUtils, 
//            OBEXSessionBase

abstract class OBEXClientOperation
    implements OBEXOperation, OBEXOperationDelivery, OBEXOperationReceive, Operation
{

    static final boolean SHORT_REQUEST_PHASE = true;
    private boolean authenticationResponseCreated;
    protected boolean errorReceived;
    protected boolean finalBodyReceived;
    protected OBEXOperationInputStream inputStream;
    protected boolean inputStreamOpened;
    protected boolean isClosed;
    protected Object lock;
    protected char operationId;
    protected boolean operationInContinue;
    protected boolean operationInProgress;
    protected OBEXOperationOutputStream outputStream;
    protected boolean outputStreamOpened;
    protected HeaderSet replyHeaders;
    protected boolean requestEnded;
    protected OBEXClientSessionImpl session;
    protected OBEXHeaderSetImpl startOperationHeaders;

    OBEXClientOperation(OBEXClientSessionImpl obexclientsessionimpl, char c, OBEXHeaderSetImpl obexheadersetimpl)
        throws IOException
    {
        outputStreamOpened = false;
        inputStreamOpened = false;
        errorReceived = false;
        requestEnded = false;
        finalBodyReceived = false;
        startOperationHeaders = null;
        authenticationResponseCreated = false;
        session = obexclientsessionimpl;
        operationId = c;
        isClosed = false;
        operationInProgress = false;
        lock = new Object();
        inputStream = new OBEXOperationInputStream(this);
        startOperation(obexheadersetimpl);
    }

    private void closeOutputStream()
        throws IOException
    {
        if (outputStream != null)
        {
            synchronized (lock)
            {
                if (outputStream != null)
                    outputStream.close();
                outputStream = null;
            }
            return;
        } else
        {
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void closeStream()
        throws IOException
    {
        receiveOperationEnd();
        operationInProgress = false;
        inputStream.close();
        closeOutputStream();
        return;
        Exception exception;
        exception;
        operationInProgress = false;
        inputStream.close();
        closeOutputStream();
        throw exception;
    }

    private void exchangePacket(OBEXHeaderSetImpl obexheadersetimpl)
        throws IOException
    {
        OBEXHeaderSetImpl obexheadersetimpl1;
        int i;
        session.writePacket(operationId, obexheadersetimpl);
        byte abyte0[] = session.readPacket();
        obexheadersetimpl1 = OBEXHeaderSetImpl.readHeaders(abyte0[0], abyte0, 3);
        session.handleAuthenticationResponse(obexheadersetimpl1, null);
        i = obexheadersetimpl1.getResponseCode();
        DebugLog.debug0x("client operation got reply", OBEXUtils.toStringObexResponseCodes(i), i);
        i;
        JVM INSTR lookupswitch 3: default 96
    //                   144: 244
    //                   160: 218
    //                   193: 129;
           goto _L1 _L2 _L3 _L4
_L2:
        break MISSING_BLOCK_LABEL_244;
_L1:
        errorReceived = true;
        operationInContinue = false;
        processIncommingHeaders(obexheadersetimpl1);
        processIncommingData(obexheadersetimpl1, true);
_L5:
        if (false)
            errorReceived = true;
        return;
_L4:
        if (authenticationResponseCreated || !obexheadersetimpl1.hasAuthenticationChallenge())
            break MISSING_BLOCK_LABEL_192;
        DebugLog.debug("client resend request with auth response");
        OBEXHeaderSetImpl obexheadersetimpl2 = OBEXHeaderSetImpl.cloneHeaders(obexheadersetimpl);
        session.handleAuthenticationChallenge(obexheadersetimpl1, obexheadersetimpl2);
        authenticationResponseCreated = true;
        exchangePacket(obexheadersetimpl2);
          goto _L5
        Exception exception;
        exception;
        if (true)
            errorReceived = true;
        throw exception;
        errorReceived = true;
        operationInContinue = false;
        processIncommingHeaders(obexheadersetimpl1);
        throw new IOException("Authentication Failure");
_L3:
        processIncommingHeaders(obexheadersetimpl1);
        processIncommingData(obexheadersetimpl1, true);
        operationInProgress = false;
        operationInContinue = false;
          goto _L5
        processIncommingHeaders(obexheadersetimpl1);
        processIncommingData(obexheadersetimpl1, false);
        operationInContinue = true;
          goto _L5
    }

    static boolean isShortRequestPhase()
    {
        return true;
    }

    private void receiveOperationEnd()
        throws IOException
    {
        for (; !isClosed() && operationInContinue; receiveData(inputStream))
            DebugLog.debug("operation expects operation end");

    }

    private void writeAbort()
        throws IOException
    {
        session.writePacket(255, null);
        requestEnded = true;
        byte abyte0[] = session.readPacket();
        OBEXHeaderSetImpl obexheadersetimpl = OBEXHeaderSetImpl.readHeaders(abyte0[0], abyte0, 3);
        if (obexheadersetimpl.getResponseCode() != 160)
            throw new IOException((new StringBuilder("Fails to abort operation, received ")).append(OBEXUtils.toStringObexResponseCodes(obexheadersetimpl.getResponseCode())).toString());
        break MISSING_BLOCK_LABEL_89;
        Exception exception;
        exception;
        isClosed = true;
        closeStream();
        throw exception;
        isClosed = true;
        closeStream();
        return;
    }

    public void abort()
        throws IOException
    {
        validateOperationIsOpen();
        if (!operationInProgress && !operationInContinue)
            throw new IOException("the transaction has already ended");
        synchronized (lock)
        {
            if (outputStream != null)
                outputStream.abort();
            inputStream.close();
        }
        writeAbort();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void close()
        throws IOException
    {
        endRequestPhase();
        closeStream();
        if (!isClosed)
        {
            isClosed = true;
            DebugLog.debug("client operation closed");
        }
        return;
        Exception exception;
        exception;
        closeStream();
        if (!isClosed)
        {
            isClosed = true;
            DebugLog.debug("client operation closed");
        }
        throw exception;
    }

    public void deliverPacket(boolean flag, byte abyte0[])
        throws IOException
    {
        if (requestEnded)
            return;
        if (startOperationHeaders != null)
        {
            exchangePacket(startOperationHeaders);
            startOperationHeaders = null;
        }
        byte byte0 = 72;
        if (flag)
        {
            operationId = (char)(0x80 | operationId);
            byte0 = 73;
            DebugLog.debug("client Request Phase ended");
            requestEnded = true;
        }
        OBEXHeaderSetImpl obexheadersetimpl = OBEXSessionBase.createOBEXHeaderSetImpl();
        obexheadersetimpl.setHeader(byte0, abyte0);
        exchangePacket(obexheadersetimpl);
    }

    protected void endRequestPhase()
        throws IOException
    {
        if (requestEnded)
        {
            return;
        } else
        {
            DebugLog.debug("client ends Request Phase");
            operationInProgress = false;
            requestEnded = true;
            operationId = (char)(0x80 | operationId);
            exchangePacket(startOperationHeaders);
            startOperationHeaders = null;
            return;
        }
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
            long1 = (Long)replyHeaders.getHeader(195);
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
        validateOperationIsOpen();
        endRequestPhase();
        return OBEXHeaderSetImpl.cloneHeaders(replyHeaders);
    }

    public int getResponseCode()
        throws IOException
    {
        validateOperationIsOpen();
        endRequestPhase();
        closeOutputStream();
        receiveOperationEnd();
        return replyHeaders.getResponseCode();
    }

    public String getType()
    {
        String s;
        try
        {
            s = (String)replyHeaders.getHeader(66);
        }
        catch (IOException ioexception)
        {
            return null;
        }
        return s;
    }

    public boolean isClosed()
    {
        return isClosed || errorReceived;
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
        byte abyte0[] = (byte[])headerset.getHeader(72);
        if (abyte0 == null)
        {
            abyte0 = (byte[])headerset.getHeader(73);
            if (abyte0 != null)
            {
                finalBodyReceived = true;
                flag = true;
            }
        }
        if (abyte0 != null)
        {
            DebugLog.debug((new StringBuilder("client received Data eof: ")).append(flag).append(" len: ").toString(), abyte0.length);
            inputStream.appendData(abyte0, flag);
        } else
        if (flag)
        {
            inputStream.appendData(null, flag);
            return;
        }
    }

    protected void processIncommingHeaders(HeaderSet headerset)
        throws IOException
    {
        if (replyHeaders != null)
            OBEXHeaderSetImpl.appendHeaders(headerset, replyHeaders);
        replyHeaders = headerset;
    }

    public void receiveData(OBEXOperationInputStream obexoperationinputstream)
        throws IOException
    {
        exchangePacket(startOperationHeaders);
        startOperationHeaders = null;
    }

    public void sendHeaders(HeaderSet headerset)
        throws IOException
    {
        if (headerset == null)
            throw new NullPointerException("headers are null");
        OBEXHeaderSetImpl.validateCreatedHeaderSet(headerset);
        validateOperationIsOpen();
        if (requestEnded)
            throw new IOException("the request phase has already ended");
        if (startOperationHeaders != null)
        {
            exchangePacket(startOperationHeaders);
            startOperationHeaders = null;
        }
        exchangePacket((OBEXHeaderSetImpl)headerset);
    }

    protected void startOperation(OBEXHeaderSetImpl obexheadersetimpl)
        throws IOException
    {
        startOperationHeaders = obexheadersetimpl;
    }

    protected void validateOperationIsOpen()
        throws IOException
    {
        if (isClosed)
            throw new IOException("operation closed");
        else
            return;
    }
}
