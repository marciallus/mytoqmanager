// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.utils.Log;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            WeatherData, StockData, AmbientData

public class AmbientDataFactory
{

    private static AmbientDataFactory inst;

    private AmbientDataFactory()
    {
    }

    public static AmbientDataFactory getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;
        JVM INSTR monitorenter ;
        inst = new AmbientDataFactory();
        com/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public AmbientData getAmbientData(String s)
    {
        if ("weather".equals(s))
            return WeatherData.getInstance();
        if ("stock".equals(s))
        {
            return StockData.getInstance();
        } else
        {
            Log.e("Ambient", "!!! AmbientDataFactory-Invalid ambient type.!!!");
            return null;
        }
    }
}
