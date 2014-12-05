// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.Context;
import android.content.SharedPreferences;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.PhubBluetoothDeviceBondInfo;
import com.qualcomm.toq.smartwatch.controller.ClockSettingsController;
import com.qualcomm.toq.smartwatch.controller.FMSController;
import java.io.File;
import java.util.Date;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            StockAmbientInfo, WeatherAmbientInfo, CurrentCityWeatherAmbientInfo, IAmbientInfo

public class AmbientSyncer
{

    private static AmbientSyncer inst;


    public static AmbientSyncer getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/ambient/AmbientSyncer;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new AmbientSyncer();
        com/qualcomm/toq/smartwatch/ambient/AmbientSyncer;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/ambient/AmbientSyncer;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int pushAmbientImage(String s, IAmbientInfo iambientinfo)
    {
        int i;
        Context context;
        StockAmbientInfo stockambientinfo;
        i = -1;
        String s4;
        String s5;
        String s6;
        FMSController fmscontroller1;
        Exception exception2;
        int k;
        try
        {
            context = ConnectionFactory.getConnectionFactory().getContext();
        }
        catch (Exception exception)
        {
            Log.e("Ambient", (new StringBuilder()).append("AmbientSyncer- !!! Image creation is not successful").append(exception).toString());
            return -1;
        }
        if (context == null) goto _L2; else goto _L1
_L1:
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() != 3) goto _L2; else goto _L3
_L3:
        if (iambientinfo == null) goto _L5; else goto _L4
_L4:
        if (!s.equals("stock")) goto _L7; else goto _L6
_L6:
        if (!(iambientinfo instanceof StockAmbientInfo)) goto _L9; else goto _L8
_L8:
        stockambientinfo = (StockAmbientInfo)iambientinfo;
        s4 = stockambientinfo.getSourceLocation();
        s5 = stockambientinfo.getAppImageSourceLocation();
        s6 = stockambientinfo.getDarkImageSourceLocation();
        if (s4 == null) goto _L11; else goto _L10
_L10:
        if (!s4.contains(".img") || s5 == null) goto _L11; else goto _L12
_L12:
        if (!s5.contains(".img") || s6 == null) goto _L11; else goto _L13
_L13:
        if (!s6.contains(".img")) goto _L11; else goto _L14
_L14:
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- Stock file name getting pushed = ").append(stockambientinfo.getCompanySymbol()).append(".img").append(" SrcPath ").append(s4).append(" DestPath  ").append(stockambientinfo.getDestinationLocation()).toString());
        fmscontroller1 = FMSController.getFmsController();
        if (fmscontroller1 == null) goto _L16; else goto _L15
_L15:
        if (stockambientinfo.getAppImageDestinationLocation() == null || stockambientinfo.getDestinationLocation() == null)
            break MISSING_BLOCK_LABEL_299;
        if (ClockSettingsController.getClockSettingsController().isClockSelected("Stocks"))
        {
            i = FMSController.getFmsController().fmsSyncFile(1, s6, stockambientinfo.getDarkImageDestinationLocation(), -1);
            i = FMSController.getFmsController().fmsSyncFile(1, s4, stockambientinfo.getDestinationLocation(), -1);
        }
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer-Status of Clock ").append(stockambientinfo.getCompanySymbol()).append(".img").append(i).toString());
        k = FMSController.getFmsController().fmsSyncFile(1, s5, stockambientinfo.getAppImageDestinationLocation(), -1);
        i = k;
_L17:
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- Status of App Image ").append(stockambientinfo.getCompanySymbol()).append(".img").append(i).toString());
          goto _L9
        exception2;
        Log.e("Ambient", (new StringBuilder()).append("AmbientSyncer- !!! Exception occured during fileSynchFile ").append(exception2).toString());
          goto _L17
_L16:
        Log.e("Ambient", "AmbientSyncer- !!! FMSController is null");
          goto _L9
_L11:
        if (stockambientinfo.getAppImageDestinationLocation() != null)
        {
            Log.e("Ambient", "AmbientSyncer- Sorce is null so it is better to remove dest file");
            FMSController.getFmsController().fmsRemoveFile(1, stockambientinfo.getAppImageDestinationLocation());
        }
        Log.e("Ambient", "AmbientSyncer- !!! Path is null");
          goto _L9
_L7:
        if (!s.equals("weather") || !(iambientinfo instanceof WeatherAmbientInfo)) goto _L9; else goto _L18
_L18:
        WeatherAmbientInfo weatherambientinfo;
        String s1;
        String s2;
        weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
        s1 = weatherambientinfo.getSourceLocation();
        s2 = weatherambientinfo.getAppImageSourceLocation();
        if (s1 == null) goto _L20; else goto _L19
_L19:
        if (!s1.contains(".img") || s2 == null) goto _L20; else goto _L21
_L21:
        if (!s2.contains(".img")) goto _L20; else goto _L22
_L22:
        FMSController fmscontroller;
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- Weather file name getting pushed = ").append(weatherambientinfo.getCityName()).append(".img").append(" SrcPath ").append(s1).append(" DestPath ").append(weatherambientinfo.getDestinationLocation()).toString());
        fmscontroller = FMSController.getFmsController();
        if (fmscontroller == null) goto _L24; else goto _L23
_L23:
        if (!(weatherambientinfo instanceof CurrentCityWeatherAmbientInfo)) goto _L26; else goto _L25
_L25:
        if (context == null) goto _L28; else goto _L27
_L27:
        if (!context.getSharedPreferences("ambient__pref", 0).getBoolean("WeatherCurrentCityUpdate", false)) goto _L28; else goto _L29
_L29:
        String s3;
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- Time before  Clock Image pushed ").append(new Date()).toString());
        s3 = ((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipSourceLocation();
        if (s3 == null) goto _L31; else goto _L30
_L30:
        if (!s3.contains(".zip")) goto _L31; else goto _L32
_L32:
        if (!"push_online_image".equals(weatherambientinfo.getPushImageType())) goto _L34; else goto _L33
_L33:
        if (ClockSettingsController.getClockSettingsController().isClockSelected("Weather Grid"))
        {
            int j = FMSController.getFmsController().fmsSyncFile(1, ((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipSourceLocation(), ((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipDestinationLocation(), -1);
            Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- Status for Zip File Sync ").append(j).toString());
        }
_L31:
        if (weatherambientinfo.getDestinationLocation() != null && weatherambientinfo.getAppImageDestinationLocation() != null)
            i = FMSController.getFmsController().fmsSyncFile(1, s2, weatherambientinfo.getAppImageDestinationLocation(), -1);
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- Time after App Image pushed").append(new Date()).toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- Status for App  Image sync ").append(i).toString());
_L28:
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- Status of ").append(weatherambientinfo.getCityName()).append(".img = ").append(i).toString());
          goto _L9
_L34:
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- deleting zip file for Clock Three.zipin condition ").append(weatherambientinfo.getPushImageType()).toString());
        File file = new File(s3);
        if (file.exists())
        {
            Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- deleting zip file for Clock Three.zip").append(file.getPath()).append("in condition ").append(weatherambientinfo.getPushImageType()).toString());
            file.delete();
            removeFile(1, ((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipDestinationLocation());
        }
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Log.e("Ambient", (new StringBuilder()).append("AmbientSyncer- Exception occured during fileSynchFile ").append(exception1).toString());
          goto _L28
_L26:
        if (weatherambientinfo.getDestinationLocation() == null || weatherambientinfo.getAppImageDestinationLocation() == null) goto _L28; else goto _L35
_L35:
        Log.d("Ambient", "AmbientSyncer- Pushing Weather Image files");
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- Status for Clock Image sync ").append(i).toString());
        i = FMSController.getFmsController().fmsSyncFile(1, s2, weatherambientinfo.getAppImageDestinationLocation(), -1);
        Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- Status for App  Image sync ").append(i).toString());
          goto _L28
_L24:
        Log.e("Ambient", "AmbientSyncer- !!! FMSController is null");
          goto _L9
_L20:
        if (weatherambientinfo.getAppImageDestinationLocation() != null)
        {
            Log.e("Ambient", "AmbientSyncer- Sorce is null so it is better to remove dest file");
            FMSController.getFmsController().fmsRemoveFile(1, weatherambientinfo.getAppImageDestinationLocation());
        }
        Log.e("Ambient", "AmbientSyncer- !!! Path is null");
          goto _L9
_L5:
        Log.e("Ambient", "AmbientSyncer- !!! Returning ambientInfo is null");
        return -1;
_L2:
        Log.d("Ambient", "AmbientSyncer- !!! WD is disconnected");
_L9:
        return i;
        if (true) goto _L31; else goto _L36
_L36:
    }

    public void removeFile(int i, String s)
    {
        if (FMSController.getFmsController() != null)
            FMSController.getFmsController().fmsRemoveFile(1, s);
    }

    public void syncFile(String s, String s1, int i)
    {
        FMSController.getFmsController().fmsSyncFile(1, s, s1, -1);
    }
}
