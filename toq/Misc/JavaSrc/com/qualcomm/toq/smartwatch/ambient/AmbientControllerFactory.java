// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.AmbientController;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            WeatherController, StockController

public class AmbientControllerFactory
{

    private static AmbientControllerFactory inst;

    private AmbientControllerFactory()
    {
    }

    public static AmbientControllerFactory getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new AmbientControllerFactory();
        com/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public AmbientController getAmbientController(String s)
    {
        if ("weather".equals(s))
            return WeatherController.getInstance();
        if ("stock".equals(s))
        {
            return StockController.getInstance();
        } else
        {
            Log.e("Ambient", "!!! Invalid ambient controller.!!!");
            return null;
        }
    }
}
