// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;

import java.io.IOException;
import javax.microedition.io.Connection;

public interface L2CAPConnection
    extends Connection
{

    public static final int DEFAULT_MTU = 672;
    public static final int MINIMUM_MTU = 48;

    public abstract int getReceiveMTU()
        throws IOException;

    public abstract int getTransmitMTU()
        throws IOException;

    public abstract boolean ready()
        throws IOException;

    public abstract int receive(byte abyte0[])
        throws IOException;

    public abstract void send(byte abyte0[])
        throws IOException;
}
