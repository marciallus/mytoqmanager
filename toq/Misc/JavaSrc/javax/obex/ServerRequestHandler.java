// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.obex;

import com.intel.bluetooth.obex.OBEXClientSessionImpl;

// Referenced classes of package javax.obex:
//            HeaderSet, Operation

public class ServerRequestHandler
{

    private long connectionID;

    protected ServerRequestHandler()
    {
        connectionID = -1L;
    }

    public final HeaderSet createHeaderSet()
    {
        return OBEXClientSessionImpl.createOBEXHeaderSet();
    }

    public long getConnectionID()
    {
        return connectionID;
    }

    public void onAuthenticationFailure(byte abyte0[])
    {
    }

    public int onConnect(HeaderSet headerset, HeaderSet headerset1)
    {
        return 160;
    }

    public int onDelete(HeaderSet headerset, HeaderSet headerset1)
    {
        return 209;
    }

    public void onDisconnect(HeaderSet headerset, HeaderSet headerset1)
    {
    }

    public int onGet(Operation operation)
    {
        return 209;
    }

    public int onPut(Operation operation)
    {
        return 209;
    }

    public int onSetPath(HeaderSet headerset, HeaderSet headerset1, boolean flag, boolean flag1)
    {
        return 209;
    }

    public void setConnectionID(long l)
    {
        if (l == -1L || l >= 0L && l <= 0xffffffffL)
        {
            connectionID = l;
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid connectionID ")).append(l).toString());
        }
    }
}
