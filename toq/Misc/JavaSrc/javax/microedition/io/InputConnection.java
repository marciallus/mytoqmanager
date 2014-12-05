// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.microedition.io;

import java.io.*;

// Referenced classes of package javax.microedition.io:
//            Connection

public interface InputConnection
    extends Connection
{

    public abstract DataInputStream openDataInputStream()
        throws IOException;

    public abstract InputStream openInputStream()
        throws IOException;
}
