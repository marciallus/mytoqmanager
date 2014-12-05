// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.util;

import android.content.Context;
import android.content.Intent;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import java.util.*;

public final class StateListenerFacade
{
    private static final class STATE_EVENT extends Enum
    {

        private static final STATE_EVENT $VALUES[];
        public static final STATE_EVENT BLUETOOTH_DISABLED;
        public static final STATE_EVENT BLUETOOTH_ENABLED;
        public static final STATE_EVENT WATCH_CONNECTED;
        public static final STATE_EVENT WATCH_DISCONNECTED;
        public static final STATE_EVENT WATCH_PAIRED;
        public static final STATE_EVENT WATCH_UNPAIRED;

        public static STATE_EVENT valueOf(String s)
        {
            return (STATE_EVENT)Enum.valueOf(com/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT, s);
        }

        public static STATE_EVENT[] values()
        {
            return (STATE_EVENT[])$VALUES.clone();
        }

        static 
        {
            BLUETOOTH_ENABLED = new STATE_EVENT("BLUETOOTH_ENABLED", 0);
            BLUETOOTH_DISABLED = new STATE_EVENT("BLUETOOTH_DISABLED", 1);
            WATCH_PAIRED = new STATE_EVENT("WATCH_PAIRED", 2);
            WATCH_UNPAIRED = new STATE_EVENT("WATCH_UNPAIRED", 3);
            WATCH_CONNECTED = new STATE_EVENT("WATCH_CONNECTED", 4);
            WATCH_DISCONNECTED = new STATE_EVENT("WATCH_DISCONNECTED", 5);
            STATE_EVENT astate_event[] = new STATE_EVENT[6];
            astate_event[0] = BLUETOOTH_ENABLED;
            astate_event[1] = BLUETOOTH_DISABLED;
            astate_event[2] = WATCH_PAIRED;
            astate_event[3] = WATCH_UNPAIRED;
            astate_event[4] = WATCH_CONNECTED;
            astate_event[5] = WATCH_DISCONNECTED;
            $VALUES = astate_event;
        }

        private STATE_EVENT(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface StateListener
    {

        public abstract void onBluetoothDisabled();

        public abstract void onBluetoothEnabled();

        public abstract void onWatchConnected();

        public abstract void onWatchDisconnected();

        public abstract void onWatchPaired();

        public abstract void onWatchUnpaired();
    }

    private class StateListenerImpl
        implements StateListener
    {

        final StateListenerFacade this$0;

        public void onBluetoothDisabled()
        {
            Log.d("DeckOfCards", "StateListenerFacade.StateListenerImpl.onBluetoothDisabled");
            Intent intent = new Intent();
            intent.setAction("com.qualcomm.toq.smartwatch.bluetooth.disabled");
            context.sendBroadcast(intent);
        }

        public void onBluetoothEnabled()
        {
            Log.d("DeckOfCards", "StateListenerFacade.StateListenerImpl.onBluetoothEnabled");
            Intent intent = new Intent();
            intent.setAction("com.qualcomm.toq.smartwatch.bluetooth.enabled");
            context.sendBroadcast(intent);
        }

        public void onWatchConnected()
        {
            Log.d("DeckOfCards", "StateListenerFacade.StateListenerImpl.onWatchConnected");
            Intent intent = new Intent();
            intent.setAction("com.qualcomm.toq.smartwatch.connected");
            context.sendBroadcast(intent);
        }

        public void onWatchDisconnected()
        {
            Log.d("DeckOfCards", "StateListenerFacade.StateListenerImpl.onWatchDisconnected");
            Intent intent = new Intent();
            intent.setAction("com.qualcomm.toq.smartwatch.disconnected");
            context.sendBroadcast(intent);
        }

        public void onWatchPaired()
        {
            Log.d("DeckOfCards", "StateListenerFacade.StateListenerImpl.onWatchPaired");
            Intent intent = new Intent();
            intent.setAction("com.qualcomm.toq.smartwatch.paired");
            context.sendBroadcast(intent);
        }

        public void onWatchUnpaired()
        {
            Log.d("DeckOfCards", "StateListenerFacade.StateListenerImpl.onWatchUnpaired");
            Intent intent = new Intent();
            intent.setAction("com.qualcomm.toq.smartwatch.unpaired");
            context.sendBroadcast(intent);
        }

        private StateListenerImpl()
        {
            this$0 = StateListenerFacade.this;
            super();
        }

    }


    private static StateListenerFacade inst;
    private Context context;
    private STATE_EVENT lastEvent;
    private Set stateListeners;

    private StateListenerFacade()
    {
        context = ToqApplication.getAppContext();
        stateListeners = new LinkedHashSet();
        addStateListener(new StateListenerImpl());
    }

    private transient void dispatchEvent(STATE_EVENT state_event, Object aobj[])
    {
        if (stateListeners.size() != 0)
        {
            Iterator iterator = stateListeners.iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                StateListener statelistener = (StateListener)iterator.next();
                static class _cls1
                {

                    static final int $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$util$StateListenerFacade$STATE_EVENT[];

                    static 
                    {
                        $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$util$StateListenerFacade$STATE_EVENT = new int[STATE_EVENT.values().length];
                        try
                        {
                            $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$util$StateListenerFacade$STATE_EVENT[STATE_EVENT.BLUETOOTH_ENABLED.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror) { }
                        try
                        {
                            $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$util$StateListenerFacade$STATE_EVENT[STATE_EVENT.BLUETOOTH_DISABLED.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$util$StateListenerFacade$STATE_EVENT[STATE_EVENT.WATCH_PAIRED.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror2) { }
                        try
                        {
                            $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$util$StateListenerFacade$STATE_EVENT[STATE_EVENT.WATCH_UNPAIRED.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror3) { }
                        try
                        {
                            $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$util$StateListenerFacade$STATE_EVENT[STATE_EVENT.WATCH_CONNECTED.ordinal()] = 5;
                        }
                        catch (NoSuchFieldError nosuchfielderror4) { }
                        try
                        {
                            $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$util$StateListenerFacade$STATE_EVENT[STATE_EVENT.WATCH_DISCONNECTED.ordinal()] = 6;
                        }
                        catch (NoSuchFieldError nosuchfielderror5)
                        {
                            return;
                        }
                    }
                }

                switch (_cls1..SwitchMap.com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.StateListenerFacade.STATE_EVENT[state_event.ordinal()])
                {
                case 6: // '\006'
                    statelistener.onWatchDisconnected();
                    break;

                case 5: // '\005'
                    statelistener.onWatchConnected();
                    break;

                case 4: // '\004'
                    statelistener.onWatchUnpaired();
                    break;

                case 3: // '\003'
                    statelistener.onWatchPaired();
                    break;

                case 2: // '\002'
                    statelistener.onBluetoothDisabled();
                    break;

                case 1: // '\001'
                    statelistener.onBluetoothEnabled();
                    break;
                }
            } while (true);
        }
    }

    public static StateListenerFacade getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new StateListenerFacade();
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void addStateListener(StateListener statelistener)
    {
        this;
        JVM INSTR monitorenter ;
        stateListeners.add(statelistener);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onBluetoothDisabled()
    {
        this;
        JVM INSTR monitorenter ;
        if (lastEvent == null || lastEvent != STATE_EVENT.BLUETOOTH_DISABLED)
        {
            dispatchEvent(STATE_EVENT.BLUETOOTH_DISABLED, new Object[0]);
            lastEvent = STATE_EVENT.BLUETOOTH_DISABLED;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onBluetoothEnabled()
    {
        this;
        JVM INSTR monitorenter ;
        if (lastEvent == null || lastEvent != STATE_EVENT.BLUETOOTH_ENABLED)
        {
            dispatchEvent(STATE_EVENT.BLUETOOTH_ENABLED, new Object[0]);
            lastEvent = STATE_EVENT.BLUETOOTH_ENABLED;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onWatchConnected()
    {
        this;
        JVM INSTR monitorenter ;
        if (lastEvent == null || lastEvent != STATE_EVENT.WATCH_CONNECTED)
        {
            dispatchEvent(STATE_EVENT.WATCH_CONNECTED, new Object[0]);
            lastEvent = STATE_EVENT.WATCH_CONNECTED;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onWatchDisconnected()
    {
        this;
        JVM INSTR monitorenter ;
        if (lastEvent == null || lastEvent != STATE_EVENT.WATCH_DISCONNECTED)
        {
            dispatchEvent(STATE_EVENT.WATCH_DISCONNECTED, new Object[0]);
            lastEvent = STATE_EVENT.WATCH_DISCONNECTED;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onWatchPaired()
    {
        this;
        JVM INSTR monitorenter ;
        if (lastEvent == null || lastEvent != STATE_EVENT.WATCH_PAIRED)
        {
            dispatchEvent(STATE_EVENT.WATCH_PAIRED, new Object[0]);
            lastEvent = STATE_EVENT.WATCH_PAIRED;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onWatchUnpaired()
    {
        this;
        JVM INSTR monitorenter ;
        if (lastEvent == null || lastEvent != STATE_EVENT.WATCH_UNPAIRED)
        {
            dispatchEvent(STATE_EVENT.WATCH_UNPAIRED, new Object[0]);
            lastEvent = STATE_EVENT.WATCH_UNPAIRED;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void removeStateListener(StateListener statelistener)
    {
        this;
        JVM INSTR monitorenter ;
        stateListeners.remove(statelistener);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
