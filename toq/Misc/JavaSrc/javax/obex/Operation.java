// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.obex;

import java.io.IOException;
import javax.microedition.io.ContentConnection;

// Referenced classes of package javax.obex:
//            HeaderSet

public interface Operation
    extends ContentConnection
{

    public abstract void abort()
        throws IOException;

    public abstract HeaderSet getReceivedHeaders()
        throws IOException;

    public abstract int getResponseCode()
        throws IOException;

    public abstract void sendHeaders(HeaderSet headerset)
        throws IOException;
}
