// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import java.io.IOException;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXOperation

interface OBEXOperationDelivery
    extends OBEXOperation
{

    public abstract void deliverPacket(boolean flag, byte abyte0[])
        throws IOException;
}
