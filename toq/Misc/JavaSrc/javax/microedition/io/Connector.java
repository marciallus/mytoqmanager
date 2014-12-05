// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.microedition.io;

import com.intel.bluetooth.DebugLog;
import com.intel.bluetooth.MicroeditionConnector;
import java.io.*;

// Referenced classes of package javax.microedition.io:
//            Connection

public class Connector
{

    public static final int READ = 1;
    public static final int READ_WRITE = 3;
    public static final int WRITE = 2;

    private Connector()
    {
    }

    public static Connection open(String s)
        throws IOException
    {
        DebugLog.debug("open using BlueCove javax.microedition.io.Connector");
        return MicroeditionConnector.open(s);
    }

    public static Connection open(String s, int i)
        throws IOException
    {
        return MicroeditionConnector.open(s, i);
    }

    public static Connection open(String s, int i, boolean flag)
        throws IOException
    {
        return MicroeditionConnector.open(s, i, flag);
    }

    public static DataInputStream openDataInputStream(String s)
        throws IOException
    {
        return MicroeditionConnector.openDataInputStream(s);
    }

    public static DataOutputStream openDataOutputStream(String s)
        throws IOException
    {
        return MicroeditionConnector.openDataOutputStream(s);
    }

    public static InputStream openInputStream(String s)
        throws IOException
    {
        return MicroeditionConnector.openInputStream(s);
    }

    public static OutputStream openOutputStream(String s)
        throws IOException
    {
        return MicroeditionConnector.openOutputStream(s);
    }
}
