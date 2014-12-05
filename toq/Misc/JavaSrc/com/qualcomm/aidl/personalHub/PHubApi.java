// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.aidl.personalHub;

import android.os.*;

// Referenced classes of package com.qualcomm.aidl.personalHub:
//            PHubListener

public interface PHubApi
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements PHubApi
    {

        private static final String DESCRIPTOR = "com.qualcomm.aidl.personalHub.PHubApi";
        static final int TRANSACTION_addListener = 4;
        static final int TRANSACTION_associateWD = 6;
        static final int TRANSACTION_cancelFindWDReq = 11;
        static final int TRANSACTION_disassociateWD = 7;
        static final int TRANSACTION_findWDReq = 10;
        static final int TRANSACTION_foundPhoneReq = 9;
        static final int TRANSACTION_getBluetoothServiceStatus = 3;
        static final int TRANSACTION_getConnectionState = 8;
        static final int TRANSACTION_removeListener = 5;
        static final int TRANSACTION_resetConnectionWD = 12;
        static final int TRANSACTION_sendFile = 2;
        static final int TRANSACTION_sendStringMessage = 1;

        public static PHubApi asInterface(IBinder ibinder)
        {
            if (ibinder == null)
                return null;
            IInterface iinterface = ibinder.queryLocalInterface("com.qualcomm.aidl.personalHub.PHubApi");
            if (iinterface != null && (iinterface instanceof PHubApi))
                return (PHubApi)iinterface;
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
            case 12: // '\f'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                resetConnectionWD();
                parcel1.writeNoException();
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                cancelFindWDReq();
                parcel1.writeNoException();
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                findWDReq();
                parcel1.writeNoException();
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                foundPhoneReq(parcel.readString());
                parcel1.writeNoException();
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                int l = getConnectionState(parcel.readString());
                parcel1.writeNoException();
                parcel1.writeInt(l);
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                disassociateWD();
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                associateWD();
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                removeListener(parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                addListener(parcel.readInt(), PHubListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                int k = getBluetoothServiceStatus();
                parcel1.writeNoException();
                parcel1.writeInt(k);
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                sendFile(parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.qualcomm.aidl.personalHub.PHubApi");
                sendStringMessage(parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 1598968902: 
                parcel1.writeString("com.qualcomm.aidl.personalHub.PHubApi");
                return true;
            }
            return super.onTransact(i, parcel, parcel1, j);
        }

        public Stub()
        {
            attachInterface(this, "com.qualcomm.aidl.personalHub.PHubApi");
        }
    }

    private static class Stub.Proxy
        implements PHubApi
    {

        private IBinder mRemote;

        public void addListener(int i, PHubListener phublistener)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            parcel.writeInt(i);
            if (phublistener == null)
                break MISSING_BLOCK_LABEL_68;
            IBinder ibinder = phublistener.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            mRemote.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            ibinder = null;
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public IBinder asBinder()
        {
            return mRemote;
        }

        public void associateWD()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            mRemote.transact(6, parcel, parcel1, 0);
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

        public void cancelFindWDReq()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            mRemote.transact(11, parcel, parcel1, 0);
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

        public void disassociateWD()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            mRemote.transact(7, parcel, parcel1, 0);
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

        public void findWDReq()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            mRemote.transact(10, parcel, parcel1, 0);
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

        public void foundPhoneReq(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            parcel.writeString(s);
            mRemote.transact(9, parcel, parcel1, 0);
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

        public int getBluetoothServiceStatus()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            mRemote.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return i;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public int getConnectionState(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            parcel.writeString(s);
            mRemote.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return i;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public String getInterfaceDescriptor()
        {
            return "com.qualcomm.aidl.personalHub.PHubApi";
        }

        public void removeListener(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            parcel.writeInt(i);
            mRemote.transact(5, parcel, parcel1, 0);
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

        public void resetConnectionWD()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            mRemote.transact(12, parcel, parcel1, 0);
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

        public void sendFile(String s, String s1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            parcel.writeString(s);
            parcel.writeString(s1);
            mRemote.transact(2, parcel, parcel1, 0);
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

        public void sendStringMessage(int i, int j, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.aidl.personalHub.PHubApi");
            parcel.writeInt(i);
            parcel.writeInt(j);
            parcel.writeString(s);
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

        Stub.Proxy(IBinder ibinder)
        {
            mRemote = ibinder;
        }
    }


    public abstract void addListener(int i, PHubListener phublistener)
        throws RemoteException;

    public abstract void associateWD()
        throws RemoteException;

    public abstract void cancelFindWDReq()
        throws RemoteException;

    public abstract void disassociateWD()
        throws RemoteException;

    public abstract void findWDReq()
        throws RemoteException;

    public abstract void foundPhoneReq(String s)
        throws RemoteException;

    public abstract int getBluetoothServiceStatus()
        throws RemoteException;

    public abstract int getConnectionState(String s)
        throws RemoteException;

    public abstract void removeListener(int i)
        throws RemoteException;

    public abstract void resetConnectionWD()
        throws RemoteException;

    public abstract void sendFile(String s, String s1)
        throws RemoteException;

    public abstract void sendStringMessage(int i, int j, String s)
        throws RemoteException;
}
