// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import com.intel.bluetooth.*;
import java.io.EOFException;
import java.io.IOException;
import javax.microedition.io.StreamConnection;
import javax.obex.Authenticator;
import javax.obex.ServerRequestHandler;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXSessionBase, OBEXServerOperation, OBEXUtils, OBEXHeaderSetImpl, 
//            OBEXConnectionParams, OBEXServerOperationGet, OBEXServerOperationPut

class OBEXServerSessionImpl extends OBEXSessionBase
    implements BluetoothServerConnection, Runnable
{

    static int errorCount = 0;
    private static int threadNumber;
    private Object canCloseEvent;
    private boolean closeRequested;
    private volatile boolean delayClose;
    private ServerRequestHandler handler;
    private Thread handlerThread;
    private OBEXServerOperation operation;
    private Object stackID;

    OBEXServerSessionImpl(StreamConnection streamconnection, ServerRequestHandler serverrequesthandler, Authenticator authenticator, OBEXConnectionParams obexconnectionparams)
        throws IOException
    {
        super(streamconnection, obexconnectionparams);
        closeRequested = false;
        delayClose = false;
        canCloseEvent = new Object();
        requestSent = true;
        handler = serverrequesthandler;
        this.authenticator = authenticator;
        stackID = BlueCoveImpl.getCurrentThreadBluetoothStackID();
        handlerThread = new Thread(this, (new StringBuilder("OBEXServerSessionThread-")).append(nextThreadNum()).toString());
        UtilsJavaSE.threadSetDaemon(handlerThread);
    }

    private boolean handleRequest()
        throws IOException
    {
        byte abyte0[];
        int i;
        boolean flag;
        DebugLog.debug("OBEXServerSession handleRequest");
        delayClose = false;
        try
        {
            abyte0 = readPacket();
        }
        catch (EOFException eofexception)
        {
            if (isConnected)
            {
                throw eofexception;
            } else
            {
                DebugLog.debug("OBEXServerSession got EOF");
                close();
                return false;
            }
        }
        delayClose = true;
        i = 0xff & abyte0[0];
        if ((i & 0x80) != 0)
            flag = true;
        else
            flag = false;
        if (!flag) goto _L2; else goto _L1
_L1:
        DebugLog.debug("OBEXServerSession got operation finalPacket");
          goto _L2
_L4:
        writePacket(209, null);
_L3:
        delayClose = false;
        synchronized (canCloseEvent)
        {
            canCloseEvent.notifyAll();
        }
        return true;
_L8:
        processConnect(abyte0);
          goto _L3
        Exception exception;
        exception;
        delayClose = false;
        throw exception;
_L9:
        processDisconnect(abyte0);
          goto _L3
_L5:
        processPut(abyte0, flag);
          goto _L3
_L7:
        processSetPath(abyte0, flag);
          goto _L3
_L10:
        processAbort();
          goto _L3
_L6:
        processGet(abyte0, flag);
          goto _L3
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
_L2:
        i;
        JVM INSTR lookupswitch 9: default 54
    //                   2: 139
    //                   3: 166
    //                   5: 149
    //                   128: 115
    //                   129: 131
    //                   130: 139
    //                   131: 166
    //                   133: 149
    //                   255: 159;
           goto _L4 _L5 _L6 _L7 _L8 _L9 _L5 _L6 _L7 _L10
    }

    private static int nextThreadNum()
    {
        com/intel/bluetooth/obex/OBEXServerSessionImpl;
        JVM INSTR monitorenter ;
        int i;
        i = threadNumber;
        threadNumber = i + 1;
        com/intel/bluetooth/obex/OBEXServerSessionImpl;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    private void processAbort()
        throws IOException
    {
        DebugLog.debug("Abort operation");
        if (!validateConnection())
            return;
        if (operation != null)
        {
            operation.isAborted = true;
            operation.close();
            operation = null;
            writePacket(160, null);
            return;
        } else
        {
            writePacket(192, null);
            return;
        }
    }

    private void processConnect(byte abyte0[])
        throws IOException
    {
        OBEXHeaderSetImpl obexheadersetimpl;
        OBEXHeaderSetImpl obexheadersetimpl1;
        DebugLog.debug("Connect operation");
        if (abyte0[3] != 16)
            throw new IOException((new StringBuilder("Unsupported client OBEX version ")).append(abyte0[3]).toString());
        if (abyte0.length < 7)
            throw new IOException("Corrupted OBEX data");
        int i = OBEXUtils.bytesToShort(abyte0[5], abyte0[6]);
        if (i < 255)
            throw new IOException((new StringBuilder("Invalid MTU ")).append(i).toString());
        mtu = i;
        DebugLog.debug("mtu selected", mtu);
        obexheadersetimpl = createOBEXHeaderSetImpl();
        obexheadersetimpl1 = OBEXHeaderSetImpl.readHeaders(abyte0, 7);
        if (handleAuthenticationResponse(obexheadersetimpl1)) goto _L2; else goto _L1
_L1:
        int j = 193;
_L4:
        byte abyte1[] = new byte[4];
        abyte1[0] = 16;
        abyte1[1] = 0;
        abyte1[2] = OBEXUtils.hiByte(obexConnectionParams.mtu);
        abyte1[3] = OBEXUtils.loByte(obexConnectionParams.mtu);
        writePacketWithFlags(j, abyte1, obexheadersetimpl);
        if (j == '\240')
            isConnected = true;
        return;
_L2:
        handleAuthenticationChallenge(obexheadersetimpl1, obexheadersetimpl);
        j = 208;
        int k = handler.onConnect(obexheadersetimpl1, obexheadersetimpl);
        j = k;
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        DebugLog.error("onConnect", throwable);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void processDelete(OBEXHeaderSetImpl obexheadersetimpl)
        throws IOException
    {
        OBEXHeaderSetImpl obexheadersetimpl1;
        DebugLog.debug("Delete operation");
        obexheadersetimpl1 = createOBEXHeaderSetImpl();
        handleAuthenticationChallenge(obexheadersetimpl, obexheadersetimpl1);
        int j = handler.onDelete(obexheadersetimpl, obexheadersetimpl1);
        int i = j;
_L2:
        writePacket(i, obexheadersetimpl1);
        return;
        Throwable throwable;
        throwable;
        i = 211;
        DebugLog.error("onDelete", throwable);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void processDisconnect(byte abyte0[])
        throws IOException
    {
        DebugLog.debug("Disconnect operation");
        if (!validateConnection())
            return;
        OBEXHeaderSetImpl obexheadersetimpl = OBEXHeaderSetImpl.readHeaders(abyte0, 3);
        OBEXHeaderSetImpl obexheadersetimpl1 = createOBEXHeaderSetImpl();
        char c = '\240';
        try
        {
            handler.onDisconnect(obexheadersetimpl, obexheadersetimpl1);
        }
        catch (Throwable throwable)
        {
            c = '\323';
            DebugLog.error("onDisconnect", throwable);
        }
        isConnected = false;
        writePacket(c, obexheadersetimpl1);
    }

    private void processGet(byte abyte0[], boolean flag)
        throws IOException
    {
        DebugLog.debug("Get operation");
        if (!validateConnection())
            return;
        OBEXHeaderSetImpl obexheadersetimpl = OBEXHeaderSetImpl.readHeaders(abyte0, 3);
        if (!handleAuthenticationResponse(obexheadersetimpl, handler))
        {
            writePacket(193, null);
            return;
        }
        operation = new OBEXServerOperationGet(this, obexheadersetimpl, flag);
        int j = handler.onGet(operation);
        int i = j;
_L1:
        if (!operation.isAborted)
            operation.writeResponse(i);
        operation.close();
        operation = null;
        return;
        Throwable throwable;
        throwable;
        i = 211;
        DebugLog.error("onGet", throwable);
          goto _L1
        Exception exception;
        exception;
        operation.close();
        operation = null;
        throw exception;
    }

    private void processPut(byte abyte0[], boolean flag)
        throws IOException
    {
        DebugLog.debug("Put/Delete operation");
        if (!validateConnection())
            return;
        OBEXHeaderSetImpl obexheadersetimpl = OBEXHeaderSetImpl.readHeaders(abyte0, 3);
        if (!handleAuthenticationResponse(obexheadersetimpl, handler))
        {
            writePacket(193, null);
            return;
        }
        if (flag && !obexheadersetimpl.hasIncommingData())
        {
            processDelete(obexheadersetimpl);
            return;
        }
        DebugLog.debug("Put operation");
        operation = new OBEXServerOperationPut(this, obexheadersetimpl, flag);
        int j = handler.onPut(operation);
        int i = j;
_L1:
        if (!operation.isAborted)
            operation.writeResponse(i);
        operation.close();
        operation = null;
        return;
        Throwable throwable;
        throwable;
        i = 211;
        DebugLog.error("onPut", throwable);
          goto _L1
        Exception exception;
        exception;
        operation.close();
        operation = null;
        throw exception;
    }

    private void processSetPath(byte abyte0[], boolean flag)
        throws IOException
    {
        OBEXHeaderSetImpl obexheadersetimpl;
        boolean flag1;
        boolean flag2;
        OBEXHeaderSetImpl obexheadersetimpl1;
        DebugLog.debug("SetPath operation");
        if (!validateConnection())
            return;
        if (abyte0.length < 5)
            throw new IOException("Corrupted OBEX data");
        obexheadersetimpl = OBEXHeaderSetImpl.readHeaders(abyte0, 5);
        if ((1 & abyte0[3]) != 0)
            flag1 = true;
        else
            flag1 = false;
        if ((2 & abyte0[3]) == 0)
            flag2 = true;
        else
            flag2 = false;
        DebugLog.debug("setPath backup", flag1);
        DebugLog.debug("setPath create", flag2);
        if (!handleAuthenticationResponse(obexheadersetimpl, handler))
        {
            writePacket(193, null);
            return;
        }
        obexheadersetimpl1 = createOBEXHeaderSetImpl();
        handleAuthenticationChallenge(obexheadersetimpl, obexheadersetimpl1);
        int j = handler.onSetPath(obexheadersetimpl, obexheadersetimpl1, flag1, flag2);
        int i = j;
_L2:
        writePacket(i, obexheadersetimpl1);
        return;
        Throwable throwable;
        throwable;
        i = 211;
        DebugLog.error("onSetPath", throwable);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean validateConnection()
        throws IOException
    {
        if (isConnected)
        {
            return true;
        } else
        {
            writePacket(192, null);
            return false;
        }
    }

    public void close()
        throws IOException
    {
        closeRequested = true;
_L2:
        if (!delayClose)
        {
            if (!isClosed())
            {
                DebugLog.debug("OBEXServerSession close");
                if (operation != null)
                {
                    operation.close();
                    operation = null;
                }
            }
            super.close();
            return;
        }
        Object obj = canCloseEvent;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        try
        {
            if (delayClose)
                canCloseEvent.wait(700L);
        }
        catch (InterruptedException interruptedexception) { }
        delayClose = false;
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    boolean handleAuthenticationResponse(OBEXHeaderSetImpl obexheadersetimpl)
        throws IOException
    {
        return handleAuthenticationResponse(obexheadersetimpl, handler);
    }

    public void run()
    {
        Thread.yield();
        if (stackID != null)
            BlueCoveImpl.setThreadBluetoothStackID(stackID);
_L5:
        if (isClosed()) goto _L2; else goto _L1
_L1:
        boolean flag = closeRequested;
        if (!flag) goto _L3; else goto _L2
_L2:
        DebugLog.debug("OBEXServerSession ends");
        Exception exception;
        IOException ioexception;
        Throwable throwable;
        Exception exception1;
        IOException ioexception1;
        boolean flag1;
        IOException ioexception3;
        try
        {
            super.close();
            return;
        }
        catch (IOException ioexception2)
        {
            DebugLog.debug("OBEXServerSession close error", ioexception2);
        }
          goto _L4
_L3:
        flag1 = handleRequest();
        if (!flag1)
        {
            DebugLog.debug("OBEXServerSession ends");
            try
            {
                super.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception3)
            {
                DebugLog.debug("OBEXServerSession close error", ioexception3);
            }
            return;
        }
          goto _L5
        throwable;
        com/intel/bluetooth/obex/OBEXServerSessionImpl;
        JVM INSTR monitorenter ;
        errorCount = 1 + errorCount;
        com/intel/bluetooth/obex/OBEXServerSessionImpl;
        JVM INSTR monitorexit ;
        if (!isConnected) goto _L7; else goto _L6
_L6:
        DebugLog.error("OBEXServerSession error", throwable);
_L8:
        DebugLog.debug("OBEXServerSession ends");
        try
        {
            super.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception1)
        {
            DebugLog.debug("OBEXServerSession close error", ioexception1);
        }
        return;
        exception1;
        com/intel/bluetooth/obex/OBEXServerSessionImpl;
        JVM INSTR monitorexit ;
        throw exception1;
        exception;
        DebugLog.debug("OBEXServerSession ends");
        try
        {
            super.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            DebugLog.debug("OBEXServerSession close error", ioexception);
        }
        throw exception;
_L7:
        DebugLog.debug("OBEXServerSession error", throwable);
        if (true) goto _L8; else goto _L4
_L4:
    }

    void startSessionHandlerThread()
    {
        handlerThread.start();
    }

}
