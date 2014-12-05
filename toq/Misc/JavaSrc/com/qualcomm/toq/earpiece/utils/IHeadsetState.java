// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.utils;


public interface IHeadsetState
{
    public static final class HeadsetStatesEnum extends Enum
    {

        private static final HeadsetStatesEnum $VALUES[];
        public static final HeadsetStatesEnum STATE_CONNECTION_ATTEMPT;
        public static final HeadsetStatesEnum STATE_DISCONNECTION_ATTEMPT;
        public static final HeadsetStatesEnum STATE_FIRMWARE_UPDATE;
        public static final HeadsetStatesEnum STATE_INIT;
        public static final HeadsetStatesEnum STATE_SWAP_ROLES;
        public static final HeadsetStatesEnum STATE_VERIFICATION;

        public static HeadsetStatesEnum valueOf(String s)
        {
            return (HeadsetStatesEnum)Enum.valueOf(com/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum, s);
        }

        public static HeadsetStatesEnum[] values()
        {
            return (HeadsetStatesEnum[])$VALUES.clone();
        }

        static 
        {
            STATE_INIT = new HeadsetStatesEnum("STATE_INIT", 0, 0);
            STATE_CONNECTION_ATTEMPT = new HeadsetStatesEnum("STATE_CONNECTION_ATTEMPT", 1, 1);
            STATE_FIRMWARE_UPDATE = new HeadsetStatesEnum("STATE_FIRMWARE_UPDATE", 2, 2);
            STATE_SWAP_ROLES = new HeadsetStatesEnum("STATE_SWAP_ROLES", 3, 3);
            STATE_VERIFICATION = new HeadsetStatesEnum("STATE_VERIFICATION", 4, 4);
            STATE_DISCONNECTION_ATTEMPT = new HeadsetStatesEnum("STATE_DISCONNECTION_ATTEMPT", 5, 5);
            HeadsetStatesEnum aheadsetstatesenum[] = new HeadsetStatesEnum[6];
            aheadsetstatesenum[0] = STATE_INIT;
            aheadsetstatesenum[1] = STATE_CONNECTION_ATTEMPT;
            aheadsetstatesenum[2] = STATE_FIRMWARE_UPDATE;
            aheadsetstatesenum[3] = STATE_SWAP_ROLES;
            aheadsetstatesenum[4] = STATE_VERIFICATION;
            aheadsetstatesenum[5] = STATE_DISCONNECTION_ATTEMPT;
            $VALUES = aheadsetstatesenum;
        }

        private HeadsetStatesEnum(String s, int i, int j)
        {
            super(s, i);
        }
    }

    public static final class HeadsetSubStatesEnum extends Enum
    {

        private static final HeadsetSubStatesEnum $VALUES[];
        public static final HeadsetSubStatesEnum SUB_STATE_FAILURE;
        public static final HeadsetSubStatesEnum SUB_STATE_PROGRESS;
        public static final HeadsetSubStatesEnum SUB_STATE_SUCCESS;

        public static HeadsetSubStatesEnum valueOf(String s)
        {
            return (HeadsetSubStatesEnum)Enum.valueOf(com/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum, s);
        }

        public static HeadsetSubStatesEnum[] values()
        {
            return (HeadsetSubStatesEnum[])$VALUES.clone();
        }

        static 
        {
            SUB_STATE_PROGRESS = new HeadsetSubStatesEnum("SUB_STATE_PROGRESS", 0, 100);
            SUB_STATE_SUCCESS = new HeadsetSubStatesEnum("SUB_STATE_SUCCESS", 1, 101);
            SUB_STATE_FAILURE = new HeadsetSubStatesEnum("SUB_STATE_FAILURE", 2, 102);
            HeadsetSubStatesEnum aheadsetsubstatesenum[] = new HeadsetSubStatesEnum[3];
            aheadsetsubstatesenum[0] = SUB_STATE_PROGRESS;
            aheadsetsubstatesenum[1] = SUB_STATE_SUCCESS;
            aheadsetsubstatesenum[2] = SUB_STATE_FAILURE;
            $VALUES = aheadsetsubstatesenum;
        }

        private HeadsetSubStatesEnum(String s, int i, int j)
        {
            super(s, i);
        }
    }


    public static final int RESPONSE_CODE_BT_DISCONNECT = 0;
    public static final int RESPONSE_CODE_CHECK_STATUS_AGAIN = 3;
    public static final int RESPONSE_CODE_EXIT = 2;
    public static final int RESPONSE_CODE_FIRMWARE_CONFIRMATION = 1;
    public static final int RESPONSE_CODE_NONE = -1;
    public static final int STATE_CONNECTION_ATTEMPT = 1;
    public static final int STATE_DISCONNECTION_ATTEMPT = 5;
    public static final int STATE_FIRMWARE_UPDATE = 2;
    public static final int STATE_INIT = 0;
    public static final int STATE_SWAP_ROLES = 3;
    public static final int STATE_VERIFICATION = 4;
    public static final int SUB_STATE_FAILURE = 102;
    public static final int SUB_STATE_PROGRESS = 100;
    public static final int SUB_STATE_SUCCESS = 101;

    public abstract void updateState(int i, int j, int k);
}
