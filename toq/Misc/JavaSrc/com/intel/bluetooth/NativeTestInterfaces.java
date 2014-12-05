// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;


// Referenced classes of package com.intel.bluetooth:
//            NativeLibLoader

class NativeTestInterfaces
{


    static boolean loadDllMS()
    {
        return NativeLibLoader.isAvailable("intelbth");
    }

    static boolean loadDllWIDCOMM()
    {
        return NativeLibLoader.isAvailable("bluecove");
    }

    static native void testDebug(int i, String s);

    static native byte[] testOsXDataElementConversion(int i, int j, long l, byte abyte0[]);

    static native void testOsXRunnableLoop(int i, int j);

    static native int testReceiveBufferAvailable(long l);

    static native void testReceiveBufferClose(long l);

    static native long testReceiveBufferCreate(int i);

    static native boolean testReceiveBufferIsCorrupted(long l);

    static native boolean testReceiveBufferIsOverflown(long l);

    static native int testReceiveBufferRead(long l);

    static native int testReceiveBufferRead(long l, byte abyte0[]);

    static native int testReceiveBufferSkip(long l, int i);

    static native int testReceiveBufferWrite(long l, byte abyte0[]);

    static native void testThrowException(int i)
        throws Exception;

    static native byte[] testUUIDConversion(byte abyte0[]);

    static native boolean testWIDCOMMConstants();
}
