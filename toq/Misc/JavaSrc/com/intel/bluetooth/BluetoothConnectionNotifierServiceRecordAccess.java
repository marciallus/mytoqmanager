// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import javax.bluetooth.ServiceRecord;
import javax.bluetooth.ServiceRegistrationException;

public interface BluetoothConnectionNotifierServiceRecordAccess
{

    public abstract ServiceRecord getServiceRecord();

    public abstract void updateServiceRecord(boolean flag)
        throws ServiceRegistrationException;
}
