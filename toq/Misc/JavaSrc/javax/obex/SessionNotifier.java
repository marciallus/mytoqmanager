// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.obex;

import java.io.IOException;
import javax.microedition.io.Connection;

// Referenced classes of package javax.obex:
//            ServerRequestHandler, Authenticator

public interface SessionNotifier
    extends Connection
{

    public abstract Connection acceptAndOpen(ServerRequestHandler serverrequesthandler)
        throws IOException;

    public abstract Connection acceptAndOpen(ServerRequestHandler serverrequesthandler, Authenticator authenticator)
        throws IOException;
}
