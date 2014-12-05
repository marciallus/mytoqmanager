// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc;

import android.os.*;

public interface IInstallationCallback_v1
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements IInstallationCallback_v1
    {

        private static final String DESCRIPTOR = "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1";
        static final int TRANSACTION_onInstallationDenied = 2;
        static final int TRANSACTION_onInstallationSuccessful = 1;

        public static IInstallationCallback_v1 asInterface(IBinder ibinder)
        {
            if (ibinder == null)
                return null;
            IInterface iinterface = ibinder.queryLocalInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1");
            if (iinterface != null && (iinterface instanceof IInstallationCallback_v1))
                return (IInstallationCallback_v1)iinterface;
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
            case 2: // '\002'
                parcel.enforceInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1");
                onInstallationDenied();
                parcel1.writeNoException();
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1");
                onInstallationSuccessful(parcel.readString());
                parcel1.writeNoException();
                return true;

            case 1598968902: 
                parcel1.writeString("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1");
                return true;
            }
            return super.onTransact(i, parcel, parcel1, j);
        }

        public Stub()
        {
            attachInterface(this, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1");
        }
    }

    private static class Stub.Proxy
        implements IInstallationCallback_v1
    {

        private IBinder mRemote;

        public IBinder asBinder()
        {
            return mRemote;
        }

        public String getInterfaceDescriptor()
        {
            return "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1";
        }

        public void onInstallationDenied()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1");
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

        public void onInstallationSuccessful(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1");
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


    public abstract void onInstallationDenied()
        throws RemoteException;

    public abstract void onInstallationSuccessful(String s)
        throws RemoteException;
}
