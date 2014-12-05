// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import java.io.IOException;
import javax.microedition.io.Connection;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXSessionBase, OBEXUtils

public abstract class BlueCoveOBEX
{

    private BlueCoveOBEX()
    {
    }

    public static int getPacketSize(Connection connection)
    {
        if (connection instanceof OBEXSessionBase)
            return ((OBEXSessionBase)connection).getPacketSize();
        else
            throw new IllegalArgumentException((new StringBuilder("Not a BlueCove OBEX Session ")).append(connection.getClass().getName()).toString());
    }

    public static String obexResponseCodes(int i)
    {
        return OBEXUtils.toStringObexResponseCodes(i);
    }

    public static void setPacketSize(Connection connection, int i)
        throws IOException
    {
        if (connection instanceof OBEXSessionBase)
        {
            ((OBEXSessionBase)connection).setPacketSize(i);
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Not a BlueCove OBEX Session ")).append(connection.getClass().getName()).toString());
        }
    }
}
