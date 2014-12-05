// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import com.intel.bluetooth.DebugLog;
import java.io.*;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXClientOperation, OBEXOperationOutputStream, OBEXClientSessionImpl, OBEXHeaderSetImpl

class OBEXClientOperationPut extends OBEXClientOperation
{

    OBEXClientOperationPut(OBEXClientSessionImpl obexclientsessionimpl, OBEXHeaderSetImpl obexheadersetimpl)
        throws IOException
    {
        super(obexclientsessionimpl, '\002', obexheadersetimpl);
    }

    public InputStream openInputStream()
        throws IOException
    {
        validateOperationIsOpen();
        if (inputStreamOpened)
        {
            throw new IOException("input stream already open");
        } else
        {
            DebugLog.debug("openInputStream");
            inputStreamOpened = true;
            operationInProgress = true;
            return inputStream;
        }
    }

    public OutputStream openOutputStream()
        throws IOException
    {
        validateOperationIsOpen();
        if (outputStreamOpened)
        {
            throw new IOException("output already open");
        } else
        {
            outputStreamOpened = true;
            outputStream = new OBEXOperationOutputStream(session.mtu, this);
            operationInProgress = true;
            return outputStream;
        }
    }
}
