// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.aidl.personalHub;

import android.os.*;

public interface PHubListener
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements PHubListener
    {

        private static final String DESCRIPTOR = "com.qualcomm.aidl.personalHub.PHubListener";
        static final int TRANSACTION_handleBluetoothServiceStateChange = 2;
        static final int TRANSACTION_handleError = 1;
        static final int TRANSACTION_updateDeviceStateChange = 3;

        public static PHubListener asInterface(IBinder ibinder)
        {
            if (ibinder == null)
                return null;
            IInterface iinterface = ibinder.queryLocalInterface("com.qualcomm.aidl.personalHub.PHubListener");
            if (iinterface != null && (iinterface instanceof PHubListener))
                return (PHubListener)iinterface;
            else
                return new Proxy(ibinder);
        }

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            switch (i)
            {
            case 3: // '\003'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubListener");
                int l = parcel.readInt();
                Bundle bundle1;
                if (parcel.readInt() != 0)
                    bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                else
                    bundle1 = null;
                updateDeviceStateChange(l, bundle1);
                parcel1.writeNoException();
                if (bundle1 != null)
                {
                    parcel1.writeInt(1);
                    bundle1.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 2: // '\002'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubListener");
                int k = parcel.readInt();
                Bundle bundle;
                if (parcel.readInt() != 0)
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                else
                    bundle = null;
                handleBluetoothServiceStateChange(k, bundle);
                parcel1.writeNoException();
                if (bundle != null)
                {
                    parcel1.writeInt(1);
                    bundle.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 1: // '\001'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubListener");
                handleError(parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 1598968902: 
                parcel1.writeString("com.qualcomm.aidl.personalHub.PHubListener");
                return true;
            }
            return super.onTransact(i, parcel, parcel1, j);
        }

        public Stub()
        {
            attachInterface(this, "com.qualcomm.aidl.personalHub.PHubListener");
        }
    }

    private static class Stub.Proxy
        implements PHubListener
    {

        private IBinder mRemote;

        public IBinder asBinder()
        {
            return mRemote;
        }

        public String getInterfaceDescriptor()
        {
            return "com.qualcomm.aidl.personalHub.PHubListener";
        }

        public void handleBluetoothServiceStateChange(int i, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubListener");
            parcel.writeInt(i);
            if (bundle == null)
                break MISSING_BLOCK_LABEL_79;
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            mRemote.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() != 0)
                bundle.readFromParcel(parcel1);
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void handleError(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubListener");
            parcel.writeInt(i);
            mRemote.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void updateDeviceStateChange(int i, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubListener");
            parcel.writeInt(i);
            if (bundle == null)
                break MISSING_BLOCK_LABEL_79;
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            mRemote.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() != 0)
                bundle.readFromParcel(parcel1);
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        Stub.Proxy(IBinder ibinder)
        {
            mRemote = ibinder;
        }
    }


    public abstract void handleBluetoothServiceStateChange(int i, Bundle bundle)
        throws RemoteException;

    public abstract void handleError(int i)
        throws RemoteException;

    public abstract void updateDeviceStateChange(int i, Bundle bundle)
        throws RemoteException;
}
