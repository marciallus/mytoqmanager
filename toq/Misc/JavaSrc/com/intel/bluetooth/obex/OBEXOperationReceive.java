// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import java.io.IOException;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXOperation, OBEXOperationInputStream

interface OBEXOperationReceive
    extends OBEXOperation
{

    public abstract void receiveData(OBEXOperationInputStream obexoperationinputstream)
        throws IOException;
}
