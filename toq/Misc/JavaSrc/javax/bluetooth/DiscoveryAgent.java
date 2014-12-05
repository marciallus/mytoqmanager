// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;

import com.intel.bluetooth.*;

// Referenced classes of package javax.bluetooth:
//            BluetoothStateException, UUID, DiscoveryListener, RemoteDevice

public class DiscoveryAgent
{

    public static final int CACHED = 0;
    public static final int GIAC = 0x9e8b33;
    public static final int LIAC = 0x9e8b00;
    public static final int NOT_DISCOVERABLE = 0;
    public static final int PREKNOWN = 1;
    private BluetoothStack bluetoothStack;

    private DiscoveryAgent()
    {
    }

    DiscoveryAgent(BluetoothStack bluetoothstack)
    {
        this();
        bluetoothStack = bluetoothstack;
    }

    public boolean cancelInquiry(DiscoveryListener discoverylistener)
    {
        if (discoverylistener == null)
        {
            throw new NullPointerException("DiscoveryListener is null");
        } else
        {
            DebugLog.debug("cancelInquiry");
            return bluetoothStack.cancelInquiry(discoverylistener);
        }
    }

    public boolean cancelServiceSearch(int i)
    {
        DebugLog.debug("cancelServiceSearch", i);
        return bluetoothStack.cancelServiceSearch(i);
    }

    public RemoteDevice[] retrieveDevices(int i)
    {
        return RemoteDeviceHelper.implRetrieveDevices(bluetoothStack, i);
    }

    public int searchServices(int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        int i;
        if (auuid == null)
            throw new NullPointerException("uuidSet is null");
        if (auuid.length == 0)
            throw new IllegalArgumentException("uuidSet is empty");
        i = 0;
_L2:
        if (i >= auuid.length)
        {
            if (remotedevice == null)
                throw new NullPointerException("RemoteDevice is null");
            if (discoverylistener == null)
                throw new NullPointerException("DiscoveryListener is null");
            for (int k = 0; ai != null && k < ai.length;)
                if (ai[k] >= 0 && ai[k] <= 65535)
                    k++;
                else
                    throw new IllegalArgumentException((new StringBuilder("attrSet[")).append(k).append("] not in range").toString());

            return bluetoothStack.searchServices(ai, auuid, remotedevice, discoverylistener);
        }
        if (auuid[i] == null)
            throw new NullPointerException((new StringBuilder("uuidSet[")).append(i).append("] is null").toString());
        int j = i + 1;
        do
        {
label0:
            {
                if (j < auuid.length)
                    break label0;
                i++;
            }
            if (true)
                continue;
            if (auuid[i].equals(auuid[j]))
                throw new IllegalArgumentException((new StringBuilder("uuidSet has duplicate values ")).append(auuid[i].toString()).toString());
            j++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String selectService(UUID uuid, int i, boolean flag)
        throws BluetoothStateException
    {
        return (new SelectServiceHandler(this)).selectService(uuid, i, flag);
    }

    public boolean startInquiry(int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        if (discoverylistener == null)
            throw new NullPointerException("DiscoveryListener is null");
        if (i == 0x9e8b00 || i == 0x9e8b33 || i >= 0x9e8b00 && i <= 0x9e8b3f)
            return bluetoothStack.startInquiry(i, discoverylistener);
        else
            throw new IllegalArgumentException((new StringBuilder("Invalid accessCode ")).append(i).toString());
    }
}
