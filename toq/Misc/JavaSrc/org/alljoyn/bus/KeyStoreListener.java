// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


// Referenced classes of package org.alljoyn.bus:
//            BusException

public interface KeyStoreListener
{

    public abstract byte[] getKeys()
        throws BusException;

    public abstract char[] getPassword()
        throws BusException;

    public abstract void putKeys(byte abyte0[])
        throws BusException;
}
