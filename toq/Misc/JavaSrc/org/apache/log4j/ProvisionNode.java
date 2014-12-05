// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.util.Vector;

// Referenced classes of package org.apache.log4j:
//            Logger

class ProvisionNode extends Vector
{

    private static final long serialVersionUID = 0xc1d6f6cb4ee417bbL;

    ProvisionNode(Logger logger)
    {
        addElement(logger);
    }
}
