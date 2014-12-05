// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.utils.Log;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            WeatherAmbientDisplay, StockAmbientDisplay, DefaultAmbientDisplay

public class ImageCreatorFactory
{

    private static ImageCreatorFactory inst;

    private ImageCreatorFactory()
    {
    }

    public static ImageCreatorFactory getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;
        JVM INSTR monitorenter ;
        inst = new ImageCreatorFactory();
        com/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public DefaultAmbientDisplay getImageCreator(String s)
    {
        if (s.equalsIgnoreCase("weather"))
            return new WeatherAmbientDisplay();
        if (s.equalsIgnoreCase("stock"))
        {
            return new StockAmbientDisplay();
        } else
        {
            Log.e("Ambient", "!!! ImageCreatorFactory-Invalid ambient type.");
            return null;
        }
    }
}
