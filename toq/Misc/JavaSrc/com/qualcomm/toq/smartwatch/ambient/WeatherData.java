// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;


// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            AmbientData

public class WeatherData extends AmbientData
{

    private static WeatherData inst;

    private WeatherData()
    {
    }

    public static WeatherData getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/ambient/WeatherData;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new WeatherData();
        com/qualcomm/toq/smartwatch/ambient/WeatherData;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/ambient/WeatherData;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
