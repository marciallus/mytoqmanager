// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.utils.Log;
import java.util.Calendar;

public class AmbientState
{

    public static int CURRENT_CITY_POLLING_COMPLETED = -4002;
    public static int CURRENT_CITY_POLLING_INPROGRESS = -4001;
    public static int DATA_FETCH_COMPLETED = -2002;
    public static int DATA_FETCH_INPROGRESS = -2001;
    public static int DATA_SYNC_COMPLETED = -3002;
    public static int DATA_SYNC_IN_PROGRESS = -3001;
    public static int IDLE_SATE = -9999;
    public int state;
    public long stateTime;

    public AmbientState()
    {
        state = IDLE_SATE;
        stateTime = 0L;
    }

    public int getState()
    {
        Log.d("Ambient", (new StringBuilder()).append("getState:").append(state).toString());
        return state;
    }

    public boolean isResetState()
    {
        long l = Calendar.getInstance().getTimeInMillis();
        if (state != IDLE_SATE && l - stateTime > 0x1d4c0L)
        {
            Log.e("Ambient", (new StringBuilder()).append("State taking more time better reset it :").append(l - stateTime).toString());
            return true;
        } else
        {
            return false;
        }
    }

    public void setState(int i, long l)
    {
        Log.d("Ambient", (new StringBuilder()).append("SetState:").append(i).append("  stateTime :").append(l).toString());
        state = i;
        stateTime = l;
    }

}
