// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.obex;

import java.io.IOException;
import javax.microedition.io.Connection;

// Referenced classes of package javax.obex:
//            HeaderSet, Operation, Authenticator

public interface ClientSession
    extends Connection
{

    public abstract HeaderSet connect(HeaderSet headerset)
        throws IOException;

    public abstract HeaderSet createHeaderSet();

    public abstract HeaderSet delete(HeaderSet headerset)
        throws IOException;

    public abstract HeaderSet disconnect(HeaderSet headerset)
        throws IOException;

    public abstract Operation get(HeaderSet headerset)
        throws IOException;

    public abstract long getConnectionID();

    public abstract Operation put(HeaderSet headerset)
        throws IOException;

    public abstract void setAuthenticator(Authenticator authenticator);

    public abstract void setConnectionID(long l);

    public abstract HeaderSet setPath(HeaderSet headerset, boolean flag, boolean flag1)
        throws IOException;
}
