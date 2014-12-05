// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.microedition.io;

import java.io.IOException;

// Referenced classes of package javax.microedition.io:
//            StreamConnectionNotifier

public interface ServerSocketConnection
    extends StreamConnectionNotifier
{

    public abstract String getLocalAddress()
        throws IOException;

    public abstract int getLocalPort()
        throws IOException;
}
