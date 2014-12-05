// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.nativeplatform;

import org.alljoyn.ns.commons.NativePlatformAbstrImpl;

// Referenced classes of package org.alljoyn.ns.nativeplatform:
//            AndroidLogger

public class NativePlatformAndroid extends NativePlatformAbstrImpl
{


    protected void createLogger()
    {
        logger = new AndroidLogger();
    }
}
