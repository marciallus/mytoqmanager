// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;

import java.io.IOException;
import javax.microedition.io.Connection;

// Referenced classes of package javax.bluetooth:
//            L2CAPConnection

public interface L2CAPConnectionNotifier
    extends Connection
{

    public abstract L2CAPConnection acceptAndOpen()
        throws IOException;
}
