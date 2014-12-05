// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;


// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            AmbientData

public class StockData extends AmbientData
{

    private static StockData inst;


    public static StockData getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/ambient/StockData;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new StockData();
        com/qualcomm/toq/smartwatch/ambient/StockData;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/ambient/StockData;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
