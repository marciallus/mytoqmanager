// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.microedition.io;

import java.io.IOException;

// Referenced classes of package javax.microedition.io:
//            StreamConnection

public interface SocketConnection
    extends StreamConnection
{

    public static final byte DELAY = 0;
    public static final byte KEEPALIVE = 2;
    public static final byte LINGER = 1;
    public static final byte RCVBUF = 3;
    public static final byte SNDBUF = 4;

    public abstract String getAddress()
        throws IOException;

    public abstract String getLocalAddress()
        throws IOException;

    public abstract int getLocalPort()
        throws IOException;

    public abstract int getPort()
        throws IOException;

    public abstract int getSocketOption(byte byte0)
        throws IllegalArgumentException, IOException;

    public abstract void setSocketOption(byte byte0, int i)
        throws IllegalArgumentException, IOException;
}
