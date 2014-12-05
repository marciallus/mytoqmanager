// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.android.internal.telephony;

import android.os.*;

public interface ITelephony
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements ITelephony
    {

        private static final String DESCRIPTOR = "com.android.internal.telephony.ITelephony";
        static final int TRANSACTION_answerRingingCall = 6;
        static final int TRANSACTION_call = 2;
        static final int TRANSACTION_cancelMissedCallsNotification = 13;
        static final int TRANSACTION_dial = 1;
        static final int TRANSACTION_disableApnType = 22;
        static final int TRANSACTION_disableDataConnectivity = 24;
        static final int TRANSACTION_disableLocationUpdates = 20;
        static final int TRANSACTION_enableApnType = 21;
        static final int TRANSACTION_enableDataConnectivity = 23;
        static final int TRANSACTION_enableLocationUpdates = 19;
        static final int TRANSACTION_endCall = 5;
        static final int TRANSACTION_getActivePhoneType = 30;
        static final int TRANSACTION_getCallState = 27;
        static final int TRANSACTION_getCdmaEriIconIndex = 31;
        static final int TRANSACTION_getCdmaEriIconMode = 32;
        static final int TRANSACTION_getCdmaEriText = 33;
        static final int TRANSACTION_getCdmaNeedsProvisioning = 34;
        static final int TRANSACTION_getCellLocation = 26;
        static final int TRANSACTION_getDataActivity = 28;
        static final int TRANSACTION_getDataState = 29;
        static final int TRANSACTION_getNetworkType = 36;
        static final int TRANSACTION_getVoiceMessageCount = 35;
        static final int TRANSACTION_handlePinMmi = 15;
        static final int TRANSACTION_hasIccCard = 37;
        static final int TRANSACTION_isDataConnectivityPossible = 25;
        static final int TRANSACTION_isIdle = 10;
        static final int TRANSACTION_isOffhook = 8;
        static final int TRANSACTION_isRadioOn = 11;
        static final int TRANSACTION_isRinging = 9;
        static final int TRANSACTION_isSimPinEnabled = 12;
        static final int TRANSACTION_setRadio = 17;
        static final int TRANSACTION_showCallScreen = 3;
        static final int TRANSACTION_showCallScreenWithDialpad = 4;
        static final int TRANSACTION_silenceRinger = 7;
        static final int TRANSACTION_supplyPin = 14;
        static final int TRANSACTION_toggleRadioOnOff = 16;
        static final int TRANSACTION_updateServiceLocation = 18;

        public static ITelephony asInterface(IBinder ibinder)
        {
            if (ibinder == null)
                return null;
            IInterface iinterface = ibinder.queryLocalInterface("com.android.internal.telephony.ITelephony");
            if (iinterface != null && (iinterface instanceof ITelephony))
                return (ITelephony)iinterface;
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
            case 37: // '%'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag17 = hasIccCard();
                parcel1.writeNoException();
                int l6 = 0;
                if (flag17)
                    l6 = 1;
                parcel1.writeInt(l6);
                return true;

            case 36: // '$'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                int k6 = getNetworkType();
                parcel1.writeNoException();
                parcel1.writeInt(k6);
                return true;

            case 35: // '#'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                int j6 = getVoiceMessageCount();
                parcel1.writeNoException();
                parcel1.writeInt(j6);
                return true;

            case 34: // '"'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag16 = getCdmaNeedsProvisioning();
                parcel1.writeNoException();
                int i6 = 0;
                if (flag16)
                    i6 = 1;
                parcel1.writeInt(i6);
                return true;

            case 33: // '!'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                String s = getCdmaEriText();
                parcel1.writeNoException();
                parcel1.writeString(s);
                return true;

            case 32: // ' '
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                int l5 = getCdmaEriIconMode();
                parcel1.writeNoException();
                parcel1.writeInt(l5);
                return true;

            case 31: // '\037'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                int k5 = getCdmaEriIconIndex();
                parcel1.writeNoException();
                parcel1.writeInt(k5);
                return true;

            case 30: // '\036'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                int j5 = getActivePhoneType();
                parcel1.writeNoException();
                parcel1.writeInt(j5);
                return true;

            case 29: // '\035'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                int i5 = getDataState();
                parcel1.writeNoException();
                parcel1.writeInt(i5);
                return true;

            case 28: // '\034'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                int l4 = getDataActivity();
                parcel1.writeNoException();
                parcel1.writeInt(l4);
                return true;

            case 27: // '\033'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                int k4 = getCallState();
                parcel1.writeNoException();
                parcel1.writeInt(k4);
                return true;

            case 26: // '\032'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                Bundle bundle = getCellLocation();
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

            case 25: // '\031'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag15 = isDataConnectivityPossible();
                parcel1.writeNoException();
                int j4 = 0;
                if (flag15)
                    j4 = 1;
                parcel1.writeInt(j4);
                return true;

            case 24: // '\030'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag14 = disableDataConnectivity();
                parcel1.writeNoException();
                int i4 = 0;
                if (flag14)
                    i4 = 1;
                parcel1.writeInt(i4);
                return true;

            case 23: // '\027'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag13 = enableDataConnectivity();
                parcel1.writeNoException();
                int l3 = 0;
                if (flag13)
                    l3 = 1;
                parcel1.writeInt(l3);
                return true;

            case 22: // '\026'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                int k3 = disableApnType(parcel.readString());
                parcel1.writeNoException();
                parcel1.writeInt(k3);
                return true;

            case 21: // '\025'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                int j3 = enableApnType(parcel.readString());
                parcel1.writeNoException();
                parcel1.writeInt(j3);
                return true;

            case 20: // '\024'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                disableLocationUpdates();
                parcel1.writeNoException();
                return true;

            case 19: // '\023'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                enableLocationUpdates();
                parcel1.writeNoException();
                return true;

            case 18: // '\022'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                updateServiceLocation();
                parcel1.writeNoException();
                return true;

            case 17: // '\021'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag11;
                if (parcel.readInt() != 0)
                    flag11 = true;
                else
                    flag11 = false;
                boolean flag12 = setRadio(flag11);
                parcel1.writeNoException();
                int i3 = 0;
                if (flag12)
                    i3 = 1;
                parcel1.writeInt(i3);
                return true;

            case 16: // '\020'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                toggleRadioOnOff();
                parcel1.writeNoException();
                return true;

            case 15: // '\017'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag10 = handlePinMmi(parcel.readString());
                parcel1.writeNoException();
                int l2 = 0;
                if (flag10)
                    l2 = 1;
                parcel1.writeInt(l2);
                return true;

            case 14: // '\016'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag9 = supplyPin(parcel.readString());
                parcel1.writeNoException();
                int k2 = 0;
                if (flag9)
                    k2 = 1;
                parcel1.writeInt(k2);
                return true;

            case 13: // '\r'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                cancelMissedCallsNotification();
                parcel1.writeNoException();
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag8 = isSimPinEnabled();
                parcel1.writeNoException();
                int j2 = 0;
                if (flag8)
                    j2 = 1;
                parcel1.writeInt(j2);
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag7 = isRadioOn();
                parcel1.writeNoException();
                int i2 = 0;
                if (flag7)
                    i2 = 1;
                parcel1.writeInt(i2);
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag6 = isIdle();
                parcel1.writeNoException();
                int l1 = 0;
                if (flag6)
                    l1 = 1;
                parcel1.writeInt(l1);
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag5 = isRinging();
                parcel1.writeNoException();
                int k1 = 0;
                if (flag5)
                    k1 = 1;
                parcel1.writeInt(k1);
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag4 = isOffhook();
                parcel1.writeNoException();
                int j1 = 0;
                if (flag4)
                    j1 = 1;
                parcel1.writeInt(j1);
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                silenceRinger();
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                answerRingingCall();
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag3 = endCall();
                parcel1.writeNoException();
                int i1 = 0;
                if (flag3)
                    i1 = 1;
                parcel1.writeInt(i1);
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag1;
                if (parcel.readInt() != 0)
                    flag1 = true;
                else
                    flag1 = false;
                boolean flag2 = showCallScreenWithDialpad(flag1);
                parcel1.writeNoException();
                int l = 0;
                if (flag2)
                    l = 1;
                parcel1.writeInt(l);
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                boolean flag = showCallScreen();
                parcel1.writeNoException();
                int k = 0;
                if (flag)
                    k = 1;
                parcel1.writeInt(k);
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                call(parcel.readString());
                parcel1.writeNoException();
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                dial(parcel.readString());
                parcel1.writeNoException();
                return true;

            case 1598968902: 
                parcel1.writeString("com.android.internal.telephony.ITelephony");
                return true;
            }
            return super.onTransact(i, parcel, parcel1, j);
        }

        public Stub()
        {
            attachInterface(this, "com.android.internal.telephony.ITelephony");
        }
    }

    private static class Stub.Proxy
        implements ITelephony
    {

        private IBinder mRemote;

        public void answerRingingCall()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
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

        public IBinder asBinder()
        {
            return mRemote;
        }

        public void call(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            parcel.writeString(s);
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

        public void cancelMissedCallsNotification()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(13, parcel, parcel1, 0);
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

        public void dial(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
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

        public int disableApnType(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            parcel.writeString(s);
            mRemote.transact(22, parcel, parcel1, 0);
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

        public boolean disableDataConnectivity()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(24, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void disableLocationUpdates()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(20, parcel, parcel1, 0);
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

        public int enableApnType(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            parcel.writeString(s);
            mRemote.transact(21, parcel, parcel1, 0);
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

        public boolean enableDataConnectivity()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(23, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void enableLocationUpdates()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(19, parcel, parcel1, 0);
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

        public boolean endCall()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public int getActivePhoneType()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(30, parcel, parcel1, 0);
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

        public int getCallState()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(27, parcel, parcel1, 0);
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

        public int getCdmaEriIconIndex()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(31, parcel, parcel1, 0);
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

        public int getCdmaEriIconMode()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(32, parcel, parcel1, 0);
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

        public String getCdmaEriText()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(33, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean getCdmaNeedsProvisioning()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(34, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public Bundle getCellLocation()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(26, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return bundle;
_L2:
            bundle = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public int getDataActivity()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(28, parcel, parcel1, 0);
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

        public int getDataState()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(29, parcel, parcel1, 0);
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
            return "com.android.internal.telephony.ITelephony";
        }

        public int getNetworkType()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(36, parcel, parcel1, 0);
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

        public int getVoiceMessageCount()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(35, parcel, parcel1, 0);
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

        public boolean handlePinMmi(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            parcel.writeString(s);
            mRemote.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean hasIccCard()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(37, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isDataConnectivityPossible()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(25, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isIdle()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isOffhook()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isRadioOn()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isRinging()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isSimPinEnabled()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean setRadio(boolean flag)
            throws RemoteException
        {
            boolean flag1;
            Parcel parcel;
            Parcel parcel1;
            flag1 = true;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            int i;
            int j;
            if (flag)
                i = ((flag1) ? 1 : 0);
            else
                i = 0;
            parcel.writeInt(i);
            mRemote.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            j = parcel1.readInt();
            if (j == 0)
                flag1 = false;
            parcel1.recycle();
            parcel.recycle();
            return flag1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean showCallScreen()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean showCallScreenWithDialpad(boolean flag)
            throws RemoteException
        {
            boolean flag1;
            Parcel parcel;
            Parcel parcel1;
            flag1 = true;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            int i;
            int j;
            if (flag)
                i = ((flag1) ? 1 : 0);
            else
                i = 0;
            parcel.writeInt(i);
            mRemote.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            j = parcel1.readInt();
            if (j == 0)
                flag1 = false;
            parcel1.recycle();
            parcel.recycle();
            return flag1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void silenceRinger()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
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

        public boolean supplyPin(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            parcel.writeString(s);
            mRemote.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
                flag = true;
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void toggleRadioOnOff()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(16, parcel, parcel1, 0);
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

        public void updateServiceLocation()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.android.internal.telephony.ITelephony");
            mRemote.transact(18, parcel, parcel1, 0);
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


    public abstract void answerRingingCall()
        throws RemoteException;

    public abstract void call(String s)
        throws RemoteException;

    public abstract void cancelMissedCallsNotification()
        throws RemoteException;

    public abstract void dial(String s)
        throws RemoteException;

    public abstract int disableApnType(String s)
        throws RemoteException;

    public abstract boolean disableDataConnectivity()
        throws RemoteException;

    public abstract void disableLocationUpdates()
        throws RemoteException;

    public abstract int enableApnType(String s)
        throws RemoteException;

    public abstract boolean enableDataConnectivity()
        throws RemoteException;

    public abstract void enableLocationUpdates()
        throws RemoteException;

    public abstract boolean endCall()
        throws RemoteException;

    public abstract int getActivePhoneType()
        throws RemoteException;

    public abstract int getCallState()
        throws RemoteException;

    public abstract int getCdmaEriIconIndex()
        throws RemoteException;

    public abstract int getCdmaEriIconMode()
        throws RemoteException;

    public abstract String getCdmaEriText()
        throws RemoteException;

    public abstract boolean getCdmaNeedsProvisioning()
        throws RemoteException;

    public abstract Bundle getCellLocation()
        throws RemoteException;

    public abstract int getDataActivity()
        throws RemoteException;

    public abstract int getDataState()
        throws RemoteException;

    public abstract int getNetworkType()
        throws RemoteException;

    public abstract int getVoiceMessageCount()
        throws RemoteException;

    public abstract boolean handlePinMmi(String s)
        throws RemoteException;

    public abstract boolean hasIccCard()
        throws RemoteException;

    public abstract boolean isDataConnectivityPossible()
        throws RemoteException;

    public abstract boolean isIdle()
        throws RemoteException;

    public abstract boolean isOffhook()
        throws RemoteException;

    public abstract boolean isRadioOn()
        throws RemoteException;

    public abstract boolean isRinging()
        throws RemoteException;

    public abstract boolean isSimPinEnabled()
        throws RemoteException;

    public abstract boolean setRadio(boolean flag)
        throws RemoteException;

    public abstract boolean showCallScreen()
        throws RemoteException;

    public abstract boolean showCallScreenWithDialpad(boolean flag)
        throws RemoteException;

    public abstract void silenceRinger()
        throws RemoteException;

    public abstract boolean supplyPin(String s)
        throws RemoteException;

    public abstract void toggleRadioOnOff()
        throws RemoteException;

    public abstract void updateServiceLocation()
        throws RemoteException;
}
