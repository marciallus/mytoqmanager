// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;

import java.io.IOException;

// Referenced classes of package javax.bluetooth:
//            DataElement, RemoteDevice

public interface ServiceRecord
{

    public static final int AUTHENTICATE_ENCRYPT = 2;
    public static final int AUTHENTICATE_NOENCRYPT = 1;
    public static final int NOAUTHENTICATE_NOENCRYPT;

    public abstract int[] getAttributeIDs();

    public abstract DataElement getAttributeValue(int i);

    public abstract String getConnectionURL(int i, boolean flag);

    public abstract RemoteDevice getHostDevice();

    public abstract boolean populateRecord(int ai[])
        throws IOException;

    public abstract boolean setAttributeValue(int i, DataElement dataelement);

    public abstract void setDeviceServiceClasses(int i);
}
