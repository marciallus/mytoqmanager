// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;


// Referenced classes of package javax.bluetooth:
//            RemoteDevice, DeviceClass, ServiceRecord

public interface DiscoveryListener
{

    public static final int INQUIRY_COMPLETED = 0;
    public static final int INQUIRY_ERROR = 7;
    public static final int INQUIRY_TERMINATED = 5;
    public static final int SERVICE_SEARCH_COMPLETED = 1;
    public static final int SERVICE_SEARCH_DEVICE_NOT_REACHABLE = 6;
    public static final int SERVICE_SEARCH_ERROR = 3;
    public static final int SERVICE_SEARCH_NO_RECORDS = 4;
    public static final int SERVICE_SEARCH_TERMINATED = 2;

    public abstract void deviceDiscovered(RemoteDevice remotedevice, DeviceClass deviceclass);

    public abstract void inquiryCompleted(int i);

    public abstract void serviceSearchCompleted(int i, int j);

    public abstract void servicesDiscovered(int i, ServiceRecord aservicerecord[]);
}
