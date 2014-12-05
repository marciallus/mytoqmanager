// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.utils;


// Referenced classes of package com.qualcomm.toq.earpiece.utils:
//            HeadsetState

public interface IHeadsetAction
{

    public static final int ACTION_BASS_BOOST = 3;
    public static final int ACTION_BASS_BOOST__STATES[] = {
        0, 1, 4, 5
    };
    public static final int ACTION_CHECK_STATUS = 2;
    public static final int ACTION_CHECK_STATUS_STATES[] = {
        0, 1, 4, 5
    };
    public static final int ACTION_INSTALL_UPDATE = 0;
    public static final int ACTION_INSTALL_UPDATE_STATES[] = {
        0, 1, 2, 4, 5
    };
    public static final int ACTION_SWAP_ROLES = 1;
    public static final int ACTION_SWAP_ROLES__STATES[] = {
        0, 1, 4, 5
    };

    public abstract void broadcastResponsetoHeadset(int i, int j);

    public abstract int getCurrentAction();

    public abstract int getCurrentState();

    public abstract void processAction(int i);

    public abstract void processState(HeadsetState headsetstate, int i);

    public abstract void processSubState(HeadsetState headsetstate, int ai[], int i);

    public abstract void setCurrentAction(int i);

}
