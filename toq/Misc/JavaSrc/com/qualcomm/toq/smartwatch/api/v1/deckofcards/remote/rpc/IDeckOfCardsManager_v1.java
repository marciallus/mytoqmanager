// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc;

import android.os.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc:
//            Status, ICallback_v1, IInstallationCallback_v1

public interface IDeckOfCardsManager_v1
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements IDeckOfCardsManager_v1
    {

        private static final String DESCRIPTOR = "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1";
        static final int TRANSACTION_addCallback = 7;
        static final int TRANSACTION_installDeckOfCards = 3;
        static final int TRANSACTION_isToqWatchConnected = 1;
        static final int TRANSACTION_isValidInstall = 2;
        static final int TRANSACTION_removeCallback = 8;
        static final int TRANSACTION_sendNotification = 6;
        static final int TRANSACTION_uninstallDeckOfCards = 5;
        static final int TRANSACTION_updateDeckOfCards = 4;

        public static IDeckOfCardsManager_v1 asInterface(IBinder ibinder)
        {
            if (ibinder == null)
                return null;
            IInterface iinterface = ibinder.queryLocalInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
            if (iinterface != null && (iinterface instanceof IDeckOfCardsManager_v1))
                return (IDeckOfCardsManager_v1)iinterface;
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
            case 8: // '\b'
                parcel.enforceInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
                Status status7;
                if (parcel.readInt() != 0)
                    status7 = (Status)Status.CREATOR.createFromParcel(parcel);
                else
                    status7 = null;
                removeCallback(status7, parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                if (status7 != null)
                {
                    parcel1.writeInt(1);
                    status7.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 7: // '\007'
                parcel.enforceInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
                Status status6;
                if (parcel.readInt() != 0)
                    status6 = (Status)Status.CREATOR.createFromParcel(parcel);
                else
                    status6 = null;
                addCallback(status6, parcel.readString(), parcel.readString(), ICallback_v1.Stub.asInterface(parcel.readStrongBinder()));
                parcel1.writeNoException();
                if (status6 != null)
                {
                    parcel1.writeInt(1);
                    status6.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 6: // '\006'
                parcel.enforceInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
                Status status5;
                if (parcel.readInt() != 0)
                    status5 = (Status)Status.CREATOR.createFromParcel(parcel);
                else
                    status5 = null;
                String s3 = parcel.readString();
                String s4 = parcel.readString();
                RemoteToqNotification remotetoqnotification;
                if (parcel.readInt() != 0)
                    remotetoqnotification = (RemoteToqNotification)RemoteToqNotification.CREATOR.createFromParcel(parcel);
                else
                    remotetoqnotification = null;
                sendNotification(status5, s3, s4, remotetoqnotification);
                parcel1.writeNoException();
                if (status5 != null)
                {
                    parcel1.writeInt(1);
                    status5.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 5: // '\005'
                parcel.enforceInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
                Status status4;
                if (parcel.readInt() != 0)
                    status4 = (Status)Status.CREATOR.createFromParcel(parcel);
                else
                    status4 = null;
                uninstallDeckOfCards(status4, parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                if (status4 != null)
                {
                    parcel1.writeInt(1);
                    status4.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 4: // '\004'
                parcel.enforceInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
                Status status3;
                if (parcel.readInt() != 0)
                    status3 = (Status)Status.CREATOR.createFromParcel(parcel);
                else
                    status3 = null;
                String s1 = parcel.readString();
                String s2 = parcel.readString();
                RemoteDeckOfCards remotedeckofcards1;
                if (parcel.readInt() != 0)
                    remotedeckofcards1 = (RemoteDeckOfCards)RemoteDeckOfCards.CREATOR.createFromParcel(parcel);
                else
                    remotedeckofcards1 = null;
                RemoteResourceStore remoteresourcestore1;
                if (parcel.readInt() != 0)
                    remoteresourcestore1 = (RemoteResourceStore)RemoteResourceStore.CREATOR.createFromParcel(parcel);
                else
                    remoteresourcestore1 = null;
                updateDeckOfCards(status3, s1, s2, remotedeckofcards1, remoteresourcestore1);
                parcel1.writeNoException();
                if (status3 != null)
                {
                    parcel1.writeInt(1);
                    status3.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 3: // '\003'
                parcel.enforceInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
                Status status2;
                if (parcel.readInt() != 0)
                    status2 = (Status)Status.CREATOR.createFromParcel(parcel);
                else
                    status2 = null;
                String s = parcel.readString();
                RemoteDeckOfCards remotedeckofcards;
                if (parcel.readInt() != 0)
                    remotedeckofcards = (RemoteDeckOfCards)RemoteDeckOfCards.CREATOR.createFromParcel(parcel);
                else
                    remotedeckofcards = null;
                RemoteResourceStore remoteresourcestore;
                if (parcel.readInt() != 0)
                    remoteresourcestore = (RemoteResourceStore)RemoteResourceStore.CREATOR.createFromParcel(parcel);
                else
                    remoteresourcestore = null;
                installDeckOfCards(status2, s, remotedeckofcards, remoteresourcestore, IInstallationCallback_v1.Stub.asInterface(parcel.readStrongBinder()));
                parcel1.writeNoException();
                if (status2 != null)
                {
                    parcel1.writeInt(1);
                    status2.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 2: // '\002'
                parcel.enforceInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
                Status status1;
                if (parcel.readInt() != 0)
                    status1 = (Status)Status.CREATOR.createFromParcel(parcel);
                else
                    status1 = null;
                boolean flag1 = isValidInstall(status1, parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                int l;
                if (flag1)
                    l = 1;
                else
                    l = 0;
                parcel1.writeInt(l);
                if (status1 != null)
                {
                    parcel1.writeInt(1);
                    status1.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 1: // '\001'
                parcel.enforceInterface("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
                Status status;
                if (parcel.readInt() != 0)
                    status = (Status)Status.CREATOR.createFromParcel(parcel);
                else
                    status = null;
                boolean flag = isToqWatchConnected(status, parcel.readString());
                parcel1.writeNoException();
                int k;
                if (flag)
                    k = 1;
                else
                    k = 0;
                parcel1.writeInt(k);
                if (status != null)
                {
                    parcel1.writeInt(1);
                    status.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 1598968902: 
                parcel1.writeString("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
                return true;
            }
            return super.onTransact(i, parcel, parcel1, j);
        }

        public Stub()
        {
            attachInterface(this, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
        }
    }

    private static class Stub.Proxy
        implements IDeckOfCardsManager_v1
    {

        private IBinder mRemote;

        public void addCallback(Status status, String s, String s1, ICallback_v1 icallback_v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
            if (status == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            status.writeToParcel(parcel, 0);
_L3:
            parcel.writeString(s);
            parcel.writeString(s1);
            if (icallback_v1 == null)
                break MISSING_BLOCK_LABEL_138;
            IBinder ibinder = icallback_v1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            mRemote.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() != 0)
                status.readFromParcel(parcel1);
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public IBinder asBinder()
        {
            return mRemote;
        }

        public String getInterfaceDescriptor()
        {
            return "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1";
        }

        public void installDeckOfCards(Status status, String s, RemoteDeckOfCards remotedeckofcards, RemoteResourceStore remoteresourcestore, IInstallationCallback_v1 iinstallationcallback_v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
            if (status == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            status.writeToParcel(parcel, 0);
_L7:
            parcel.writeString(s);
            if (remotedeckofcards == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            remotedeckofcards.writeToParcel(parcel, 0);
_L8:
            if (remoteresourcestore == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            remoteresourcestore.writeToParcel(parcel, 0);
_L9:
            if (iinstallationcallback_v1 == null)
                break MISSING_BLOCK_LABEL_185;
            IBinder ibinder = iinstallationcallback_v1.asBinder();
_L10:
            parcel.writeStrongBinder(ibinder);
            mRemote.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() != 0)
                status.readFromParcel(parcel1);
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            ibinder = null;
              goto _L10
        }

        public boolean isToqWatchConnected(Status status, String s)
            throws RemoteException
        {
            boolean flag;
            Parcel parcel;
            Parcel parcel1;
            flag = true;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
            if (status == null)
                break MISSING_BLOCK_LABEL_97;
            parcel.writeInt(1);
            status.writeToParcel(parcel, 0);
_L1:
            parcel.writeString(s);
            mRemote.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            Exception exception;
            if (parcel1.readInt() == 0)
                flag = false;
            if (parcel1.readInt() != 0)
                status.readFromParcel(parcel1);
            parcel1.recycle();
            parcel.recycle();
            return flag;
            parcel.writeInt(0);
              goto _L1
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isValidInstall(Status status, String s, String s1)
            throws RemoteException
        {
            boolean flag;
            Parcel parcel;
            Parcel parcel1;
            flag = true;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
            if (status == null)
                break MISSING_BLOCK_LABEL_105;
            parcel.writeInt(1);
            status.writeToParcel(parcel, 0);
_L1:
            parcel.writeString(s);
            parcel.writeString(s1);
            mRemote.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            Exception exception;
            if (parcel1.readInt() == 0)
                flag = false;
            if (parcel1.readInt() != 0)
                status.readFromParcel(parcel1);
            parcel1.recycle();
            parcel.recycle();
            return flag;
            parcel.writeInt(0);
              goto _L1
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void removeCallback(Status status, String s, String s1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
            if (status == null)
                break MISSING_BLOCK_LABEL_93;
            parcel.writeInt(1);
            status.writeToParcel(parcel, 0);
_L1:
            parcel.writeString(s);
            parcel.writeString(s1);
            mRemote.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() != 0)
                status.readFromParcel(parcel1);
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

        public void sendNotification(Status status, String s, String s1, RemoteToqNotification remotetoqnotification)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
            if (status == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            status.writeToParcel(parcel, 0);
_L3:
            parcel.writeString(s);
            parcel.writeString(s1);
            if (remotetoqnotification == null)
                break MISSING_BLOCK_LABEL_136;
            parcel.writeInt(1);
            remotetoqnotification.writeToParcel(parcel, 0);
_L4:
            mRemote.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() != 0)
                status.readFromParcel(parcel1);
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void uninstallDeckOfCards(Status status, String s, String s1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
            if (status == null)
                break MISSING_BLOCK_LABEL_92;
            parcel.writeInt(1);
            status.writeToParcel(parcel, 0);
_L1:
            parcel.writeString(s);
            parcel.writeString(s1);
            mRemote.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() != 0)
                status.readFromParcel(parcel1);
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

        public void updateDeckOfCards(Status status, String s, String s1, RemoteDeckOfCards remotedeckofcards, RemoteResourceStore remoteresourcestore)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
            if (status == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            status.writeToParcel(parcel, 0);
_L5:
            parcel.writeString(s);
            parcel.writeString(s1);
            if (remotedeckofcards == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            remotedeckofcards.writeToParcel(parcel, 0);
_L6:
            if (remoteresourcestore == null)
                break MISSING_BLOCK_LABEL_163;
            parcel.writeInt(1);
            remoteresourcestore.writeToParcel(parcel, 0);
_L7:
            mRemote.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() != 0)
                status.readFromParcel(parcel1);
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L6
            parcel.writeInt(0);
              goto _L7
        }

        Stub.Proxy(IBinder ibinder)
        {
            mRemote = ibinder;
        }
    }


    public abstract void addCallback(Status status, String s, String s1, ICallback_v1 icallback_v1)
        throws RemoteException;

    public abstract void installDeckOfCards(Status status, String s, RemoteDeckOfCards remotedeckofcards, RemoteResourceStore remoteresourcestore, IInstallationCallback_v1 iinstallationcallback_v1)
        throws RemoteException;

    public abstract boolean isToqWatchConnected(Status status, String s)
        throws RemoteException;

    public abstract boolean isValidInstall(Status status, String s, String s1)
        throws RemoteException;

    public abstract void removeCallback(Status status, String s, String s1)
        throws RemoteException;

    public abstract void sendNotification(Status status, String s, String s1, RemoteToqNotification remotetoqnotification)
        throws RemoteException;

    public abstract void uninstallDeckOfCards(Status status, String s, String s1)
        throws RemoteException;

    public abstract void updateDeckOfCards(Status status, String s, String s1, RemoteDeckOfCards remotedeckofcards, RemoteResourceStore remoteresourcestore)
        throws RemoteException;
}
