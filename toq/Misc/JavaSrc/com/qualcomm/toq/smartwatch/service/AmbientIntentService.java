// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.service;

import android.app.IntentService;
import android.content.*;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.ambient.*;
import com.qualcomm.toq.smartwatch.controller.*;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.*;
import java.net.URLEncoder;
import java.util.*;

public class AmbientIntentService extends IntentService
{

    private static final int DARK_IMAGE = 1;
    private static final String IMAGE_TAG = "images";
    public static final String TASK_CLOCK = "generate_world_clock_file";
    public static final String TASK_IMAGE_SHARE = "share_image_to_wd";
    public static final String TASK_STOCK_IMAGE_CREATE = "stock_image_create_task";
    public static final String TASK_STOCK_POLLING = "stock_polling_task";
    public static final String TASK_STOCK_RESYNC = "stock_resync_images_to_wd";
    public static final String TASK_STOCK_SYNC = "sync_stock_data_to_wd";
    public static final String TASK_WEATHER_CURRENT_CITY_SYNC = "currentcity_weather_polling_task";
    public static final String TASK_WEATHER_POLLING = "weather_polling_task";
    public static final String TASK_WEATHER_RESYNC = "weather_resync_images_to_wd";
    public static final String TASK_WEATHER_SYNC = "sync_weather_data_to_wd";
    private static final int WHITE_IMAGE = 2;

    public AmbientIntentService()
    {
        super("AmbientIntentService");
    }

    private void createClockWorldzipFileAndSyncToWD(String s)
    {
        File file;
        Log.d("Ambient", "AmbientIntentService createClockWorldzipFile ");
        file = AndroidUtils.getAmbientDirectory("WorldClock");
        if (file == null)
            break MISSING_BLOCK_LABEL_211;
        File file1;
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService worldClockParentFile.exists() : ").append(file.exists()).toString());
        file1 = new File((new StringBuilder()).append(file).append(File.separator).append("ClockWorld.zip").toString());
        if (file1.exists())
            break MISSING_BLOCK_LABEL_191;
        file1.createNewFile();
_L2:
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService  ClockWorld ZIp Destination Location : ").append(file1.getAbsolutePath()).toString());
        ArrayList arraylist = new ArrayList();
        AndroidUtils.generateSourceFileList(file, file.getAbsolutePath(), arraylist);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService ClockWorld List of files").append(arraylist.size()).toString());
        AndroidUtils.createWorldClockZipFile(file1.getAbsolutePath(), file.getAbsolutePath(), arraylist);
        syncWorldClockToWD("World Time", s);
        return;
        file1.delete();
        file1.createNewFile();
        if (true) goto _L2; else goto _L1
_L1:
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
    }

    private File createDATFile(ArrayList arraylist, String s, String s1)
    {
        File file;
        if ("World Time".equals(s))
        {
            file = getClocksDatFile("WorldClock", arraylist, s1);
        } else
        {
            boolean flag = "Degrees".equals(s);
            file = null;
            if (flag)
                file = getClocksDatFile("DegreesClock", arraylist, s1);
        }
        if (file == null)
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService clockFile == null  for clock:").append(s).toString());
        return file;
    }

    private void createWorldClockImagesFromAmbientInfo(WorldClockAmbientDisplay worldclockambientdisplay)
        throws IOException
    {
        Log.d("Ambient", "AmbientIntentService createWorldClockImagesFromAmbientInfo");
        WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)worldclockambientdisplay.getAmbientInfo();
        CityClockImageRepo cityclockimagerepo = worldclockambientdisplay.createWorldClockBitmaps(weatherambientinfo);
        if (cityclockimagerepo != null && cityclockimagerepo.getWeatherConditionImage().length == 2 && cityclockimagerepo.getWeatherHourTempImage().length == 2)
        {
            Log.d("Ambient", "AmbientIntentService Repo got created for worldClockImageRepo Ambient Info");
            for (int i = 0; i < 2; i++)
            {
                Bitmap bitmap = cityclockimagerepo.getWeatherHourTempImage()[i];
                Bitmap bitmap1 = cityclockimagerepo.getWeatherConditionImage()[i];
                if (bitmap != null && bitmap1 != null)
                    createWorldClockBitmapSourceLocation(worldclockambientdisplay, bitmap, bitmap1, weatherambientinfo, i);
                cityclockimagerepo.getWeatherHourTempImage()[i] = null;
                cityclockimagerepo.getWeatherConditionImage()[i] = null;
            }

        }
        Log.d("Ambient", "AmbientIntentService world clock img creating END ");
    }

    private void deleteClockEntriesFromWD(String s, String s1)
    {
        String s2 = String.format("/packages/%s/app.zip", new Object[] {
            s1
        });
        if (!s.equals("World Time")) goto _L2; else goto _L1
_L1:
        int k1 = FMSController.getFmsController().fmsRemoveFile(1, "/packages/com.qualcomm.qce.worldclock/ClockWorld.zip");
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService clockworld.zip delete status from WD :").append(k1).toString());
        int l1 = FMSController.getFmsController().fmsRemoveFile(1, s2);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService world clock apps.zip delete status from WD:").append(l1).toString());
_L6:
        return;
_L2:
        if (s.equals("Degrees"))
        {
            int i1 = FMSController.getFmsController().fmsRemoveFile(1, "/packages/com.qualcomm.qce.degreesclock/temperature.dat");
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService degrees temperature.dat delete status from WD :").append(i1).toString());
            int j1 = FMSController.getFmsController().fmsRemoveFile(1, s2);
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService degrees apps.zip delete status from WD:").append(j1).toString());
            return;
        }
        if (s.equals("Weather Grid"))
        {
            int l = FMSController.getFmsController().fmsRemoveFile(1, "/res/apps/ClockThree.zip");
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-deleteClockEntriesFromWD CLOCK_WEATHER_GRID FMS del return code :").append(l).toString());
            return;
        }
        if (!s.equals("Stocks"))
            continue; /* Loop/switch isn't completed */
        ArrayList arraylist;
        int i;
        String s3;
        String s4;
        int j;
        int k;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (Exception exception)
        {
            Log.d("Ambient", "!!!AmbientIntentService-deleteClockEntriesFromWD exception!!!");
            return;
        }
        if (arraylist == null)
            continue; /* Loop/switch isn't completed */
        i = 0;
        if (i >= 1 + arraylist.size())
            continue; /* Loop/switch isn't completed */
        s3 = (new StringBuilder()).append("/ad/stock/").append(i).append("_A").append(".img").toString();
        s4 = (new StringBuilder()).append("/ad/stock/").append(i).append("_B").append(".img").toString();
        j = FMSController.getFmsController().fmsRemoveFile(1, s3);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-deleteClockEntriesFromWD lightImageDestPath: ").append(s3).append(" FMS delete return code:").append(j).toString());
        k = FMSController.getFmsController().fmsRemoveFile(1, s4);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-deleteClockEntriesFromWD darkImageDestPath: ").append(s4).append(" FMS delete return code:").append(k).toString());
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_453;
_L4:
        break MISSING_BLOCK_LABEL_273;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private File getClocksDatFile(String s, ArrayList arraylist, String s1)
    {
        File file;
        BufferedWriter bufferedwriter;
        FileWriter filewriter;
        file = new File(AndroidUtils.getAmbientDirectory(s), s1);
        bufferedwriter = null;
        filewriter = null;
        FileWriter filewriter1 = new FileWriter(file);
        BufferedWriter bufferedwriter1 = new BufferedWriter(filewriter1);
        int i = 0;
_L2:
        if (i >= arraylist.size())
            break; /* Loop/switch isn't completed */
        bufferedwriter1.write((String)arraylist.get(i));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (bufferedwriter1 != null)
            try
            {
                bufferedwriter1.flush();
            }
            catch (IOException ioexception3)
            {
                Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Exception while closing streams : ").append(ioexception3.toString()).toString());
                return file;
            }
        if (filewriter1 == null)
            break MISSING_BLOCK_LABEL_99;
        filewriter1.flush();
        filewriter1.close();
_L4:
        return file;
        IOException ioexception;
        ioexception;
_L7:
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService !!! Exception while  writing dat :").append(s1).append(" Exception:").append(ioexception.toString()).toString());
        if (bufferedwriter == null)
            continue; /* Loop/switch isn't completed */
        try
        {
            bufferedwriter.flush();
        }
        catch (IOException ioexception2)
        {
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Exception while closing streams : ").append(ioexception2.toString()).toString());
            return file;
        }
        if (filewriter == null) goto _L4; else goto _L3
_L3:
        filewriter.flush();
        filewriter.close();
        return file;
        Exception exception;
        exception;
_L6:
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_251;
        bufferedwriter.flush();
        if (filewriter != null)
            try
            {
                filewriter.flush();
                filewriter.close();
            }
            catch (IOException ioexception1)
            {
                Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Exception while closing streams : ").append(ioexception1.toString()).toString());
            }
        throw exception;
        exception;
        filewriter = filewriter1;
        bufferedwriter = null;
        continue; /* Loop/switch isn't completed */
        exception;
        filewriter = filewriter1;
        bufferedwriter = bufferedwriter1;
        if (true) goto _L6; else goto _L5
_L5:
        ioexception;
        filewriter = filewriter1;
        bufferedwriter = null;
          goto _L7
        ioexception;
        filewriter = filewriter1;
        bufferedwriter = bufferedwriter1;
          goto _L7
    }

    private boolean isClockSelected(String s)
        throws ClassNotFoundException, IOException
    {
label0:
        {
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
            boolean flag = false;
            if (sharedpreferences != null)
            {
                HashMap hashmap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())));
                flag = false;
                if (hashmap != null)
                {
                    boolean flag1 = hashmap.isEmpty();
                    flag = false;
                    if (!flag1)
                    {
                        boolean flag2 = hashmap.containsKey(s);
                        flag = false;
                        if (flag2)
                        {
                            if (hashmap.get(s) == null)
                                break label0;
                            flag = ((Boolean)hashmap.get(s)).booleanValue();
                        }
                    }
                }
            }
            return flag;
        }
        Log.e("Ambient", (new StringBuilder()).append("AmbientIntentService ").append(s).append(" is not selected").toString());
        return false;
    }

    private void pushStockImagesToWd()
    {
        StockController stockcontroller = (StockController)AmbientController.getController("stock");
        if (stockcontroller != null) goto _L2; else goto _L1
_L1:
        Log.e("Ambient", "!!!AmbientIntentService-pushStockImagesToWd Invalid controller=NULL!!!");
_L5:
        return;
_L2:
        ArrayList arraylist;
        ArrayList arraylist1;
        arraylist = stockcontroller.getAmbientData().getAmbientInfoList();
        arraylist1 = stockcontroller.getPreferenceAmbientInfoList();
        if (arraylist == null || arraylist.size() <= 0) goto _L4; else goto _L3
_L3:
        SharedPreferences sharedpreferences;
        long l;
        long l1;
        boolean flag;
        boolean flag1;
        if (arraylist1.size() != arraylist.size())
        {
            Log.e("Ambient", (new StringBuilder()).append("AmbientIntentService-pushStockImagesToWd stock count =").append(arraylist.size()).append(" pref stock count=").append(arraylist1.size()).toString());
            Log.e("Ambient", "!!!AmbientIntentService-pushStockImagesToWd Invalid count");
            return;
        }
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        l = sharedpreferences.getLong("stock_last_update_time", 0L);
        l1 = Calendar.getInstance().getTimeInMillis();
        flag = true;
        flag1 = false;
        AmbientImageCreator ambientimagecreator = ((StockController)AmbientController.getController("stock")).getImageCreator();
        int i = 0;
_L6:
        StockAmbientInfo stockambientinfo;
        StockAmbientInfo stockambientinfo1;
        if (i >= arraylist.size())
            break MISSING_BLOCK_LABEL_355;
        stockambientinfo = (StockAmbientInfo)arraylist.get(i);
        stockambientinfo1 = (StockAmbientInfo)arraylist1.get(i);
        if (stockambientinfo == null)
            break MISSING_BLOCK_LABEL_780;
        if (!"push_online_image".equals(stockambientinfo.getPushImageType()))
            break MISSING_BLOCK_LABEL_418;
        ambientimagecreator.createAmbientImageAndUpdateImagePaths(stockambientinfo);
        if (stockambientinfo == null || stockambientinfo1 == null)
            break MISSING_BLOCK_LABEL_268;
        if (!stockcontroller.isAmbientImageCreationSuccessful(stockambientinfo, "stock"))
            break MISSING_BLOCK_LABEL_268;
        stockcontroller.updateSharedPreference(ToqApplication.getAppContext(), stockambientinfo);
        stockcontroller.syncImages(stockambientinfo, "stock");
        flag1 = true;
        break MISSING_BLOCK_LABEL_780;
        if (stockambientinfo == null || stockambientinfo1 == null)
            break MISSING_BLOCK_LABEL_304;
        Log.d("Ambient", (new StringBuilder()).append("!!!StockController-pushStockImagesToWd Either new fetch Ambient Info or  saved Ambient info in preference is null !!!").append(i).toString());
        if (stockcontroller.isAmbientImageCreationSuccessful(stockambientinfo, "stock"))
            Log.d("Ambient", (new StringBuilder()).append("!!!StockController-pushStockImagesToWd  Invalid Ambinet image files !!!").append(stockambientinfo.getCompanySymbol()).toString());
        break MISSING_BLOCK_LABEL_780;
        Exception exception;
        exception;
        exception.printStackTrace();
        if (flag1)
            stockcontroller.pushTimeStampImage("stock");
        if (arraylist.size() > 0)
        {
            if (flag)
            {
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putLong("stock_last_update_time", l1);
                editor.commit();
            }
            Log.d("Ambient", "StockController-pushStockImagesToWd Pushing Timestamp Image to WD for Stock");
            return;
        }
        break MISSING_BLOCK_LABEL_638;
        flag = false;
        if (l == 0L || l1 - l >= 0x36ee80L)
            break MISSING_BLOCK_LABEL_462;
        boolean flag2 = stockcontroller.isTimerPolling();
        flag = false;
        if (flag2)
            break MISSING_BLOCK_LABEL_559;
        if (stockambientinfo1.getAppImageSourceLocation() != null)
            break MISSING_BLOCK_LABEL_559;
        flag = false;
        if (stockambientinfo == null)
            break MISSING_BLOCK_LABEL_780;
        flag = false;
        if (stockambientinfo1 == null)
            break MISSING_BLOCK_LABEL_780;
        ambientimagecreator.createAmbientImageAndUpdateImagePaths(stockambientinfo);
        Log.d("Ambient", (new StringBuilder()).append("StockController-pushStockImagesToWd Sending _-- images for stock: ").append(stockambientinfo1.getCompanyName()).append(" @").append(new Date()).toString());
        stockcontroller.updateSharedPreference(ToqApplication.getAppContext(), stockambientinfo);
        stockcontroller.syncImages(stockambientinfo, "stock");
        flag1 = true;
        flag = false;
        break MISSING_BLOCK_LABEL_780;
        Log.d("Ambient", "!!!StockController-pushStockImagesToWd Either  last fetch and current time diff < 1 hr or lastFetchTime = 0 or manual polling enabled and dest and source location is null");
        StringBuilder stringbuilder = (new StringBuilder()).append("!!!StockController-pushStockImagesToWd Current Time ");
        Date date = new Date(l1);
        Log.d("Ambient", stringbuilder.append(date).append("Last Fetch Stock Time ").append(l).append("TimerPolling").append(stockcontroller.isTimerPolling()).toString());
        flag = false;
        break MISSING_BLOCK_LABEL_780;
        File file = AndroidUtils.getAmbientAppImageDirectory("stock");
        File file1 = new File((new StringBuilder()).append(file).append(File.separator).append("time_Stamp").append(".img").toString());
        if (file1 != null && file1.exists())
        {
            Log.d("Ambient", (new StringBuilder()).append("StockController-pushStockImagesToWd deleting time stamp file").append(file1.getAbsolutePath()).toString());
            file1.delete();
            Log.d("Ambient", (new StringBuilder()).append("StockController-pushStockImagesToWd removing time stamp file").append("/apps/stock/99.img").toString());
            stockcontroller.removeFile("/apps/stock/99.img");
            return;
        }
          goto _L5
_L4:
        Log.d("Ambient", "!!! AmbientIntentService-pushStockImagesToWd empty ambinetInfo object!!!");
        return;
        i++;
          goto _L6
    }

    private void pushWeatherImagesToWd(boolean flag)
    {
        WeatherController weathercontroller;
        Log.d("Ambient", "AmbientIntentService-pushWeatherImagesToWd");
        weathercontroller = (WeatherController)AmbientController.getController("weather");
        if (weathercontroller != null) goto _L2; else goto _L1
_L1:
        Log.e("Ambient", "!!!AmbientIntentService-pushWeatherImagesToWd Invalid controller=NULL!!!");
_L4:
        return;
_L2:
        SharedPreferences sharedpreferences;
        long l;
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        l = Calendar.getInstance().getTimeInMillis();
        if (sharedpreferences == null) goto _L4; else goto _L3
_L3:
        long l1;
        ArrayList arraylist;
        ArrayList arraylist1;
        l1 = sharedpreferences.getLong("weather_last_update_time", 0L);
        arraylist = weathercontroller.getAmbientData().getAmbientInfoList();
        arraylist1 = weathercontroller.getPreferenceAmbientInfoList();
        if (arraylist == null || arraylist.size() > 5) goto _L4; else goto _L5
_L5:
        AmbientImageCreator ambientimagecreator;
        boolean flag1;
        boolean flag2;
        int i;
        WeatherAmbientInfo weatherambientinfo;
        WeatherAmbientInfo weatherambientinfo1;
        if (arraylist1.size() != arraylist.size())
        {
            Log.e("Ambient", (new StringBuilder()).append(" Weather count =").append(arraylist.size()).append(" pref Weather count=").append(arraylist1.size()).toString());
            Log.e("Ambient", "!!!AmbientIntentService-pushWeatherImagesToWd Invalid count");
            return;
        }
        try
        {
            ambientimagecreator = ((WeatherController)AmbientController.getController("weather")).getImageCreator();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("Ambient", "!!! Error in creating weather image");
            return;
        }
        flag1 = true;
        flag2 = false;
        i = 0;
_L10:
        if (i >= arraylist.size())
            break MISSING_BLOCK_LABEL_1393;
        weatherambientinfo = (WeatherAmbientInfo)arraylist.get(i);
        weatherambientinfo1 = (WeatherAmbientInfo)arraylist1.get(i);
        if (weatherambientinfo == null)
            break MISSING_BLOCK_LABEL_1666;
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeather img type=").append(weatherambientinfo.getPushImageType()).append(" city=").append(weatherambientinfo.getCityName()).toString());
        if (!"push_online_image".equals(weatherambientinfo.getPushImageType()))
            break MISSING_BLOCK_LABEL_859;
        ambientimagecreator.createAmbientImageAndUpdateImagePaths(weatherambientinfo);
        if (weatherambientinfo == null || weatherambientinfo1 == null)
            break MISSING_BLOCK_LABEL_734;
        if (!weathercontroller.isAmbientImageCreationSuccessful(weatherambientinfo, "weather"))
            break MISSING_BLOCK_LABEL_734;
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd cityName after fetch ").append(weatherambientinfo.getCityName()).toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd Shared City name ").append(weatherambientinfo1.getCityName()).append(" Retreive City Name").append(weatherambientinfo.getCityName()).append(" END").toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd Shared State name ").append(weatherambientinfo1.getStateName()).append(" Retreive State Name").append(weatherambientinfo.getStateName()).append(" END").toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd Shared Hour temp  ").append(weatherambientinfo1.getHourTemp()).append(" Retreive Hour temp").append(weatherambientinfo.getHourTemp()).append(" END").toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd Shared Max temp  ").append(weatherambientinfo1.getMaxTemp()).append(" Retreive Max temp").append(weatherambientinfo.getMaxTemp()).append(" END").toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd Shared Min temp  ").append(weatherambientinfo1.getMinTemp()).append(" Retreive Min temp").append(weatherambientinfo.getMinTemp()).append(" END").toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd Shared WeatherCondition  ").append(weatherambientinfo1.getWeatherCondition()).append(" Retreive WeatherCondition").append(weatherambientinfo.getWeatherCondition()).append("END").toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd Shared Destination Location ").append(weatherambientinfo1.getDestinationLocation()).append(" Retreive Destination Location").append(weatherambientinfo.getDestinationLocation()).append("END").toString());
        weathercontroller.updateSharedPreference(ToqApplication.getAppContext(), weatherambientinfo);
        weathercontroller.syncImages(weatherambientinfo, "weather");
        flag2 = true;
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeather online ImagesToWd sync city=").append(weatherambientinfo.getCityName()).toString());
        break MISSING_BLOCK_LABEL_1666;
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd !!! Either new fetch Ambient Info or  saved Ambient info in preference is null !!!").append(weatherambientinfo.getCityName()).toString());
        if (weatherambientinfo == null || weatherambientinfo1 == null)
            break MISSING_BLOCK_LABEL_799;
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd!!!WeatherController-pushStockImagesToWd Either new fetch Ambient Info or  saved Ambient info in preference is null !!!").append(i).toString());
        if (weathercontroller.isAmbientImageCreationSuccessful(weatherambientinfo, "weather"))
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd!!!WeatherController-pushStockImagesToWd  Invalid Ambinet image files !!!").append(weatherambientinfo.getCityName()).toString());
        break MISSING_BLOCK_LABEL_1666;
        StringBuilder stringbuilder;
        Log.d("Ambient", (new StringBuilder()).append("lastFetchWeather").append(l1).toString());
        stringbuilder = (new StringBuilder()).append(" threshold=");
        boolean flag3;
        String s;
        if (l - l1 >= 0x1499700L)
            flag3 = true;
        else
            flag3 = false;
        Log.d("Ambient", stringbuilder.append(flag3).toString());
        Log.d("Ambient", (new StringBuilder()).append("controller.isTimerPolling()=").append(weathercontroller.isTimerPolling()).toString());
        Log.d("Ambient", (new StringBuilder()).append("pref app img dest=").append(weatherambientinfo1.getAppImageDestinationLocation()).toString());
        Log.d("Ambient", (new StringBuilder()).append("pref app imng src=").append(weatherambientinfo1.getAppImageSourceLocation()).toString());
        if (l1 == 0L || !flag || l - l1 >= 0x1499700L)
            break MISSING_BLOCK_LABEL_1058;
        if (weathercontroller.isTimerPolling())
            break MISSING_BLOCK_LABEL_1190;
        s = weatherambientinfo1.getAppImageSourceLocation();
        if (s != null)
            break MISSING_BLOCK_LABEL_1190;
        flag1 = false;
        if (weatherambientinfo == null)
            break MISSING_BLOCK_LABEL_1666;
        ambientimagecreator.createAmbientImageAndUpdateImagePaths(weatherambientinfo);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd Sending images for city: ").append(weatherambientinfo.getCityName()).append(" @").append(new Date()).toString());
        weathercontroller.updateSharedPreference(ToqApplication.getAppContext(), weatherambientinfo);
        weathercontroller.syncImages(weatherambientinfo, "weather");
        flag2 = true;
        flag1 = false;
        break MISSING_BLOCK_LABEL_1666;
        Exception exception1;
        exception1;
        Log.e("Ambient", (new StringBuilder()).append("!!! Error in creating weather image city=").append(weatherambientinfo.getCityName()).toString());
        flag1 = false;
        break MISSING_BLOCK_LABEL_1666;
        Log.d("Ambient", "else");
        if (!"push_online_image".equals(weatherambientinfo1.getPushImageType()) || !"push_offline_image".equals(weatherambientinfo.getPushImageType()) && !"push_data_error_image".equals(weatherambientinfo.getPushImageType()) || sharedpreferences == null)
            break MISSING_BLOCK_LABEL_1379;
        boolean flag4 = sharedpreferences.getBoolean("weather_cities_temp_unit_changed", false);
        if (!flag4)
            break MISSING_BLOCK_LABEL_1379;
        ambientimagecreator.createAmbientImageAndUpdateImagePaths(weatherambientinfo1);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd Sending _-- images for city: ").append(weatherambientinfo.getCityName()).append(" @").append(new Date()).toString());
        weathercontroller.updateSharedPreference(ToqApplication.getAppContext(), weatherambientinfo1);
        weathercontroller.syncImages(weatherambientinfo1, "weather");
        flag2 = true;
        flag1 = false;
        break MISSING_BLOCK_LABEL_1666;
        Exception exception2;
        exception2;
        Log.e("Ambient", (new StringBuilder()).append("!!! Error in creating weather image city=").append(weatherambientinfo1.getCityName()).toString());
        flag1 = false;
        break MISSING_BLOCK_LABEL_1666;
        Log.e("Ambient", "AmbientIntentService-pushWeatherImagesToWd Error in pushing the images");
        flag1 = false;
        break MISSING_BLOCK_LABEL_1666;
        if (!flag2 || !flag)
            break MISSING_BLOCK_LABEL_1410;
        weathercontroller.updateWeatherAppTimeStamp(ToqApplication.getAppContext(), sharedpreferences);
        android.content.SharedPreferences.Editor editor;
        if (arraylist1.size() <= 0)
            break MISSING_BLOCK_LABEL_1511;
        editor = sharedpreferences.edit();
        if (!flag1)
            break MISSING_BLOCK_LABEL_1478;
        Log.printUsageLog("AmbientController", "Weather Polling successful. Polling interval set to 2700000");
        weathercontroller.updateLastFetchWeather(sharedpreferences, l);
        editor.putLong("weather_timer_interval", 0x2932e0L);
_L7:
        editor.commit();
        Log.d("Ambient", "AmbientIntentService-pushWeatherImagesToWd Pushing Timestamp Image to WD for Weather");
        return;
        Log.printUsageLog("AmbientController", "Weather Polling unsuccessful. Polling interval set to 900000");
        weathercontroller.updateLastFetchWeather(sharedpreferences, l1);
        editor.putLong("weather_timer_interval", 0xdbba0L);
        if (true) goto _L7; else goto _L6
_L6:
        File file1;
        if (sharedpreferences.getBoolean("WeatherCurrentCityUpdate", false))
            break MISSING_BLOCK_LABEL_1657;
        File file = AndroidUtils.getAmbientAppImageDirectory("weather");
        file1 = new File((new StringBuilder()).append(file).append(File.separator).append("time_Stamp").append(".img").toString());
        if (file1 == null) goto _L4; else goto _L8
_L8:
        if (!file1.exists()) goto _L4; else goto _L9
_L9:
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd delete time stamp file").append(file1.getAbsolutePath()).toString());
        file1.delete();
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-pushWeatherImagesToWd removing time stamp file").append("/apps/weather/99.img").toString());
        weathercontroller.removeFile("/apps/weather/99.img");
        return;
        Log.d("Ambient", "AmbientIntentService-pushWeatherImagesToWd current city enabled time stamp pushd later.");
        return;
        i++;
          goto _L10
    }

    private void syncWorldClockToWD(String s, String s1)
    {
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService sync clock file to WD clockType:").append(s).toString());
        if ("World Time".equals(s))
        {
            boolean flag1 = pushWorldClockAppsZipToWD(s, String.format("/packages/%s/app.zip", new Object[] {
                s1
            }));
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService world clock app.zip push status=").append(flag1).toString());
            File file1 = AndroidUtils.getAmbientDirectory("WorldClock");
            if (file1 != null)
            {
                Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService worldClockParentFile : ").append(file1).toString());
                Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService worldClockParentFile.exists() : ").append(file1.exists()).toString());
                if (file1 != null)
                {
                    String s3 = (new StringBuilder()).append(file1.getAbsolutePath()).append(File.separator).append("ClockWorld.zip").toString();
                    Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService worldClockZipLocation : ").append(s3).toString());
                    int j = FMSController.getFmsController().fmsSyncFile(1, s3, "/packages/com.qualcomm.qce.worldclock/ClockWorld.zip", -1);
                    Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Status for world Clock Zip File Sync ").append(j).toString());
                }
            }
        } else
        if ("Degrees".equals(s))
        {
            boolean flag = pushWorldClockAppsZipToWD(s, String.format("/packages/%s/app.zip", new Object[] {
                s1
            }));
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService DEGREES clock app.zip push status=").append(flag).toString());
            File file = AndroidUtils.getAmbientDirectory("DegreesClock");
            if (file != null)
            {
                Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService degreeClockParentFile : ").append(file).toString());
                Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService degreeClockParentFile.exists() : ").append(file.exists()).toString());
                String s2 = (new StringBuilder()).append(file.getAbsolutePath()).append(File.separator).append("temperature.dat").toString();
                Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService degreedatLocation : ").append(s2).toString());
                int i = FMSController.getFmsController().fmsSyncFile(1, s2, "/packages/com.qualcomm.qce.degreesclock/temperature.dat", -1);
                Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Status for temperature.dat File Sync ").append(i).toString());
                return;
            }
        }
    }

    private int updateWeatherAmbientKey(WeatherAmbientInfo weatherambientinfo, WeatherDataParser weatherdataparser)
    {
        Log.d("Ambient", "AmbientIntentService-updateWeatherAmbientKey");
        if (weatherambientinfo.getKey() != null)
            break MISSING_BLOCK_LABEL_136;
        String s = getBaseContext().getResources().getString(0x7f0a004c);
        String s1 = weatherambientinfo.getCityName();
        if (s1 == null)
            break MISSING_BLOCK_LABEL_127;
        String s3;
        try
        {
            String s2 = String.format(s, new Object[] {
                URLEncoder.encode(s1.split(",")[0].trim(), "UTF-8"), "9fc4b35acecc407e95143c14579a2d84"
            });
            s3 = AmbientDataFetcher.getInstance().processAmbientDataFetchRequest(s2);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.d("Ambient", "!!! AmbientIntentService-updateWeatherAmbientKey Exception in encodeing");
            return -1;
        }
        if (s3 == null)
            break MISSING_BLOCK_LABEL_101;
        return weatherdataparser.parseWeatherKey(s3, weatherambientinfo);
        weatherambientinfo.setPushImageType("push_data_error_image");
        return -1;
        weatherambientinfo.setPushImageType("push_data_error_image");
        return -1;
        return 0;
    }

    public void createWorldClockBitmapSourceLocation(DefaultAmbientDisplay defaultambientdisplay, Bitmap bitmap, Bitmap bitmap1, IAmbientInfo iambientinfo, int i)
        throws IOException
    {
        WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
        String s = AndroidUtils.generateUniqueCityName(weatherambientinfo.getCityName(), weatherambientinfo.getStateName(), weatherambientinfo.getCountryName());
        int j = i + 1;
        String s1 = null;
        String s2 = null;
        switch (j)
        {
        case 2: // '\002'
            s1 = "temp_B.img";
            s2 = "icon_B.img";
            break;

        case 1: // '\001'
            s1 = "temp_A.img";
            s2 = "icon_A.img";
            break;
        }
        byte abyte0[] = defaultambientdisplay.writeBitmapinIMGFormat(bitmap, true);
        byte abyte1[] = defaultambientdisplay.writeBitmapinIMGFormat(bitmap1, true);
        File file = AndroidUtils.getAmbientDirectory("WorldClock");
        if (file != null)
        {
            File file1 = new File(file, (new StringBuilder()).append("images").append(File.separator).append(s).toString());
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService WORLD_CLOCK_TYPE img path=").append(file1).toString());
            if (!file1.exists() && !file1.mkdirs())
                Log.d("Ambient", "AmbientIntentService Error Creating WORLD_CLOCK WeatherPath folder");
            weatherambientinfo.setWorldClockCityFolderPath(file1.getPath());
            File file2 = new File((new StringBuilder()).append(file1).append(File.separator).append(s1).toString());
            if (file2.exists())
                file2.delete();
            file2.createNewFile();
            File file3 = new File((new StringBuilder()).append(file1).append(File.separator).append(s2).toString());
            if (file3.exists())
                file3.delete();
            file3.createNewFile();
            weatherambientinfo.setWorldClockTempImgPath(s1);
            weatherambientinfo.setWorldClockWeatherImgPath(s2);
            defaultambientdisplay.writeBytesToFile(abyte0, file2);
            defaultambientdisplay.writeBytesToFile(abyte1, file3);
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService  WORLD_CLOCK_ File written ").append(file2.getPath()).append("Weath Cond file").append(file3.getPath()).toString());
            return;
        } else
        {
            Log.d("Ambient", "AmbientIntentService  world clock parent directory returned as null");
            return;
        }
    }

    void deleteFiles(File file, ArrayList arraylist)
    {
        String as[] = file.list();
        if (as != null && as.length > 0)
        {
            for (int i = 0; i < as.length; i++)
            {
                Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService file: ").append(as[i]).toString());
                File file1 = new File((new StringBuilder()).append(file).append(File.separator).append(as[i]).toString());
                if (file1.isFile())
                {
                    if (!arraylist.contains(file1.getPath()))
                    {
                        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Deleting File: ").append(file1.getAbsolutePath()).toString());
                        file1.delete();
                    }
                    continue;
                }
                if (file1.isDirectory())
                    deleteFiles(file1, arraylist);
            }

        }
    }

    protected void onHandleIntent(Intent intent)
    {
        Log.d("Ambient", "AmbientIntentService inside onHandleIntent call ");
        if (intent == null) goto _L2; else goto _L1
_L1:
        String s;
        s = intent.getStringExtra("service_task");
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService task= ").append(s).toString());
        Log.printUsageLog("AmbientController", (new StringBuilder()).append("AmbientIntentService task=").append(s).toString());
        if (!"stock_polling_task".equals(s)) goto _L4; else goto _L3
_L3:
        int i3;
        AmbientController ambientcontroller2;
        ArrayList arraylist7;
        Log.d("Ambient", "AmbientIntentService-TASK_STOCK_POLLING");
        i3 = -1;
        ambientcontroller2 = AmbientController.getController("stock");
        arraylist7 = new ArrayList();
        ArrayList arraylist8 = ((StockController)ambientcontroller2).getPreferenceAmbientInfoList();
        if (arraylist8 == null) goto _L6; else goto _L5
_L5:
        if (arraylist8.size() != 0) goto _L7; else goto _L6
_L6:
        Log.d("Ambient", "!!!AmbientIntentService-TASK_STOCK_POLLING ERROR in rading preference ambient info list");
        Log.printUsageLog("AmbientController", "!!!AmbientIntentService-TASK_STOCK_POLLING ERROR in rading preference ambient info list");
        ((StockController)AmbientController.getController("stock")).onAmbientInfoUpdated(-2, arraylist7);
        ((StockController)AmbientController.getController("stock")).onAmbientInfoUpdated(i3, arraylist7);
_L2:
        return;
_L7:
        StockDataParser stockdataparser = new StockDataParser();
        int j3 = 0;
_L10:
        int k3 = arraylist8.size();
        if (j3 >= k3) goto _L9; else goto _L8
_L8:
        StockAmbientInfo stockambientinfo2;
        StockAmbientInfo stockambientinfo3;
        stockambientinfo2 = (StockAmbientInfo)arraylist8.get(j3);
        stockambientinfo3 = new StockAmbientInfo();
        String s29 = stockambientinfo2.getCompanySymbol();
        stockambientinfo3.setCompanyName(stockambientinfo2.getCompanyName());
        stockambientinfo3.setCompanySymbol(s29);
        if (!Utils.isNetworkConnectivityAvailable(getBaseContext()))
            break MISSING_BLOCK_LABEL_374;
        stockambientinfo3.setPushImageType("push_online_image");
_L11:
        String s30 = (new StringBuilder()).append(getBaseContext().getResources().getString(0x7f0a0049)).append(stockambientinfo2.getCompanySymbol()).append(".json").toString();
        if (Utils.isNetworkConnectivityAvailable(getBaseContext()))
        {
            stockambientinfo3.setPushImageType("push_online_image");
            i3 = stockdataparser.parseStockDataStream(AmbientDataFetcher.getInstance().processAmbientDataFetchRequest(s30), stockambientinfo3);
        }
        if (i3 == 0)
            break MISSING_BLOCK_LABEL_360;
        stockambientinfo3.setPushImageType("push_data_error_image");
        arraylist7.add(stockambientinfo3);
        j3++;
          goto _L10
        stockambientinfo3.setPushImageType("push_offline_image");
          goto _L11
        Exception exception15;
        exception15;
        i3 = -2;
        exception15.printStackTrace();
        ((StockController)AmbientController.getController("stock")).onAmbientInfoUpdated(i3, arraylist7);
_L12:
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService task =").append(s).append(" Complted").toString());
        return;
_L9:
        ((StockController)AmbientController.getController("stock")).onAmbientInfoUpdated(i3, arraylist7);
          goto _L12
        Exception exception14;
        exception14;
        ((StockController)AmbientController.getController("stock")).onAmbientInfoUpdated(i3, arraylist7);
        throw exception14;
_L4:
        byte byte1;
        if (!"sync_stock_data_to_wd".equals(s))
            break MISSING_BLOCK_LABEL_571;
        byte1 = 0;
        Log.d("Ambient", "AmbientIntentService-TASK_STOCK_SYNC");
        pushStockImagesToWd();
        ((StockController)AmbientController.getController("stock")).onAmbientImageSyncComplete(0);
          goto _L12
        Exception exception13;
        exception13;
        byte1 = -2;
        exception13.printStackTrace();
        ((StockController)AmbientController.getController("stock")).onAmbientImageSyncComplete(byte1);
          goto _L12
        Exception exception12;
        exception12;
        ((StockController)AmbientController.getController("stock")).onAmbientImageSyncComplete(byte1);
        throw exception12;
        int i2;
        AmbientController ambientcontroller1;
        ArrayList arraylist5;
        if (!"weather_polling_task".equals(s))
            break MISSING_BLOCK_LABEL_1183;
        i2 = -1;
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_POLLING ");
        ambientcontroller1 = AmbientController.getController("weather");
        arraylist5 = new ArrayList();
        ArrayList arraylist6 = ((WeatherController)ambientcontroller1).getPreferenceAmbientInfoList();
        if (arraylist6 == null)
            break MISSING_BLOCK_LABEL_1164;
        WeatherDataParser weatherdataparser1;
        if (arraylist6.size() > 5)
            break MISSING_BLOCK_LABEL_1164;
        weatherdataparser1 = new WeatherDataParser();
        int j2 = 0;
_L15:
        int k2 = arraylist6.size();
        if (j2 >= k2)
            break MISSING_BLOCK_LABEL_1164;
        String s21;
        WeatherAmbientInfo weatherambientinfo7;
        WeatherAmbientInfo weatherambientinfo6 = (WeatherAmbientInfo)arraylist6.get(j2);
        s21 = weatherambientinfo6.getKey();
        String s22 = weatherambientinfo6.getCityName();
        String s23 = weatherambientinfo6.getStateName();
        String s24 = weatherambientinfo6.getCountryName();
        weatherambientinfo7 = new WeatherAmbientInfo();
        weatherambientinfo7.setKey(s21);
        weatherambientinfo7.setCityName(s22);
        weatherambientinfo7.setCountryName(s24);
        weatherambientinfo7.setStateName(s23);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-TASK_WEATHER_POLLING Key from shared preference ").append(s21).toString());
        if (!Utils.isNetworkConnectivityAvailable(getBaseContext()))
            break MISSING_BLOCK_LABEL_1124;
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_POLLING network available");
        i2 = updateWeatherAmbientKey(weatherambientinfo7, weatherdataparser1);
        if (i2 != 0) goto _L14; else goto _L13
_L13:
        String s28;
        String s25 = String.format(getBaseContext().getResources().getString(0x7f0a004a), new Object[] {
            s21, "9fc4b35acecc407e95143c14579a2d84"
        });
        String s26 = String.format(getBaseContext().getResources().getString(0x7f0a004b), new Object[] {
            s21, "9fc4b35acecc407e95143c14579a2d84"
        });
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-TASK_WEATHER_POLLING Weather current condition URL:").append(s25).toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-TASK_WEATHER_POLLING Weather forecast URL:").append(s26).toString());
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_POLLING weather key available");
        weatherambientinfo7.setPushImageType("push_online_image");
        String s27 = AmbientDataFetcher.getInstance().processAmbientDataFetchRequest(s25);
        s28 = AmbientDataFetcher.getInstance().processAmbientDataFetchRequest(s26);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-TASK_WEATHER_POLLING Accuweather Hourly response:").append(s27).toString());
        i2 = weatherdataparser1.parserWeatherHourTemparatureData(s27, weatherambientinfo7);
        if (i2 == 0)
            break MISSING_BLOCK_LABEL_998;
        weatherambientinfo7.setPushImageType("push_data_error_image");
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-TASK_WEATHER_POLLING Accuweather forecast responseL:").append(s28).toString());
        i2 = weatherdataparser1.parserWeatherMinMaxData(s28, weatherambientinfo7);
        if (i2 == 0)
            break MISSING_BLOCK_LABEL_1048;
        weatherambientinfo7.setPushImageType("push_data_error_image");
_L16:
        if (i2 == 0)
            break MISSING_BLOCK_LABEL_1061;
        weatherambientinfo7.setPushImageType("push_offline_image");
        arraylist5.add(weatherambientinfo7);
        j2++;
          goto _L15
_L14:
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_POLLING NO weather key");
        weatherambientinfo7.setPushImageType("push_data_error_image");
          goto _L16
        Exception exception11;
        exception11;
        i2 = -2;
        exception11.printStackTrace();
        ((WeatherController)AmbientController.getController("weather")).onAmbientInfoUpdated(i2, arraylist5);
          goto _L12
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_POLLING NO network available");
        weatherambientinfo7.setPushImageType("push_offline_image");
          goto _L16
        Exception exception10;
        exception10;
        ((WeatherController)AmbientController.getController("weather")).onAmbientInfoUpdated(i2, arraylist5);
        throw exception10;
        ((WeatherController)AmbientController.getController("weather")).onAmbientInfoUpdated(i2, arraylist5);
          goto _L12
        byte byte0;
        if (!"sync_weather_data_to_wd".equals(s))
            break MISSING_BLOCK_LABEL_1271;
        byte0 = 0;
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_SYNC ");
        pushWeatherImagesToWd(true);
        ((WeatherController)AmbientController.getController("weather")).onAmbientImageSyncComplete(0);
          goto _L12
        Exception exception9;
        exception9;
        byte0 = -2;
        exception9.printStackTrace();
        ((WeatherController)AmbientController.getController("weather")).onAmbientImageSyncComplete(byte0);
          goto _L12
        Exception exception8;
        exception8;
        ((WeatherController)AmbientController.getController("weather")).onAmbientImageSyncComplete(byte0);
        throw exception8;
        CurrentCityWeatherAmbientInfo currentcityweatherambientinfo;
        SharedPreferences sharedpreferences5;
        WeatherAmbientInfo weatherambientinfo5;
        long l2;
        long l3;
        WeatherController weathercontroller3;
        AmbientImageCreator ambientimagecreator1;
        if (!"currentcity_weather_polling_task".equals(s))
            break MISSING_BLOCK_LABEL_2411;
        String s14 = intent.getStringExtra("city_key");
        String s15 = intent.getStringExtra("city_name");
        String s16 = intent.getStringExtra("city_area");
        if (s15 == null)
            Log.d("Ambient", "!!! AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC Invalid city=NULL");
        String as[] = s16.split(",");
        currentcityweatherambientinfo = new CurrentCityWeatherAmbientInfo();
        currentcityweatherambientinfo.setKey(s14);
        currentcityweatherambientinfo.setCityName(s15);
        currentcityweatherambientinfo.setStateName(as[0]);
        currentcityweatherambientinfo.setCountryName(as[1]);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC Key from shared preference ").append(s14).toString());
        int l1;
        StringBuilder stringbuilder2;
        Date date;
        StringBuilder stringbuilder3;
        Date date1;
        android.content.SharedPreferences.Editor editor1;
        WeatherDataParser weatherdataparser;
        String s17;
        String s18;
        String s19;
        String s20;
        if ("Local City".equals("Local City") && "Default Admin,Default Country".equals(s16))
            currentcityweatherambientinfo.setPushImageType("push_data_error_image");
        else
        if (Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext()))
            currentcityweatherambientinfo.setPushImageType("push_online_image");
        else
            currentcityweatherambientinfo.setPushImageType("push_offline_image");
        l1 = -1;
        sharedpreferences5 = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        weatherambientinfo5 = (WeatherAmbientInfo)ObjectSerializer.deserialize(sharedpreferences5.getString("WeatherCurrentCity", ObjectSerializer.serialize(new CurrentCityWeatherAmbientInfo())));
        l2 = Calendar.getInstance().getTimeInMillis();
        l3 = sharedpreferences5.getLong("current_city_last_update_time", 0L);
        stringbuilder2 = (new StringBuilder()).append("AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC Current time : ");
        date = new Date(l2);
        stringbuilder3 = stringbuilder2.append(date).append("~~~~~~~~~  CC last Fetch: ");
        date1 = new Date(l3);
        Log.d("Ambient", stringbuilder3.append(date1).toString());
        if (!Utils.isNetworkConnectivityAvailable(getBaseContext())) goto _L18; else goto _L17
_L17:
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC network available");
        weatherdataparser = new WeatherDataParser();
        l1 = updateWeatherAmbientKey(currentcityweatherambientinfo, weatherdataparser);
        if (l1 != 0) goto _L20; else goto _L19
_L19:
        s17 = String.format(getBaseContext().getResources().getString(0x7f0a004a), new Object[] {
            s14, "9fc4b35acecc407e95143c14579a2d84"
        });
        s18 = String.format(getBaseContext().getResources().getString(0x7f0a004b), new Object[] {
            s14, "9fc4b35acecc407e95143c14579a2d84"
        });
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC Weather current condition URL:").append(s17).toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC Weather forecast URL:").append(s17).toString());
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC weather key available");
        currentcityweatherambientinfo.setPushImageType("push_online_image");
        s19 = AmbientDataFetcher.getInstance().processAmbientDataFetchRequest(s17);
        s20 = AmbientDataFetcher.getInstance().processAmbientDataFetchRequest(s18);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-currentcity_weather_polling_task Accuweather Hourly response:").append(s19).toString());
        if (weatherdataparser.parserWeatherHourTemparatureData(s19, currentcityweatherambientinfo) != 0)
            currentcityweatherambientinfo.setPushImageType("push_data_error_image");
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-currentcity_weather_polling_task Accuweather forecast responseL:").append(s20).toString());
        l1 = weatherdataparser.parserWeatherMinMaxData(s20, currentcityweatherambientinfo);
        if (l1 == 0)
            break MISSING_BLOCK_LABEL_1850;
        currentcityweatherambientinfo.setPushImageType("push_data_error_image");
_L23:
        if (l1 == 0)
            break MISSING_BLOCK_LABEL_1863;
        currentcityweatherambientinfo.setPushImageType("push_offline_image");
        weathercontroller3 = (WeatherController)AmbientController.getController("weather");
        ambientimagecreator1 = weathercontroller3.getImageCreator();
        if (currentcityweatherambientinfo == null)
            break MISSING_BLOCK_LABEL_2373;
        if (!(currentcityweatherambientinfo instanceof CurrentCityWeatherAmbientInfo))
            break MISSING_BLOCK_LABEL_2373;
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-currentcity_weather_polling_task ").append(s15).append(" Ambient Info is Fetched").toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-currentcity_weather_polling_task ").append(s15).append(" push img type=").append(currentcityweatherambientinfo.getPushImageType()).toString());
        if (!"push_online_image".equals(currentcityweatherambientinfo.getPushImageType())) goto _L22; else goto _L21
_L21:
        editor1 = sharedpreferences5.edit();
        editor1.putLong("current_city_last_update_time", l2);
        editor1.putLong("cc_weather_timer_interval", 0x2932e0L);
        editor1.commit();
        if (ambientimagecreator1.createAmbientImageAndUpdateImagePaths(currentcityweatherambientinfo) != 0)
            currentcityweatherambientinfo.setPushImageType("push_offline_image");
        weathercontroller3.sendCurrentCityWeatherImage(currentcityweatherambientinfo, true);
_L24:
        ((WeatherController)AmbientController.getController("weather")).onAmbientCurrentCitySyncCompleted(0);
          goto _L12
_L20:
        Log.d("Ambient", "AmbientIntentService-currentcity_weather_polling_task NO weather key");
        currentcityweatherambientinfo.setPushImageType("push_data_error_image");
          goto _L23
        Exception exception7;
        exception7;
        exception7.printStackTrace();
        Log.d("Ambient", "!!! AmbientIntentService-currentcity_weather_polling_task Exception in current city polling");
        ((WeatherController)AmbientController.getController("weather")).onAmbientCurrentCitySyncCompleted(0);
          goto _L12
_L18:
        Log.d("Ambient", "AmbientIntentService-currentcity_weather_polling_task NO network available");
        currentcityweatherambientinfo.setPushImageType("push_offline_image");
          goto _L23
        Exception exception6;
        exception6;
        ((WeatherController)AmbientController.getController("weather")).onAmbientCurrentCitySyncCompleted(0);
        throw exception6;
_L22:
        android.content.SharedPreferences.Editor editor = sharedpreferences5.edit();
        editor.putLong("cc_weather_timer_interval", 0xdbba0L);
        editor.commit();
        if (l3 == 0L || l2 - l3 >= 0x1499700L)
            break MISSING_BLOCK_LABEL_2250;
        if (weatherambientinfo5.getAppImageDestinationLocation() != null || weatherambientinfo5.getAppImageSourceLocation() != null)
            break MISSING_BLOCK_LABEL_2277;
        ambientimagecreator1.createAmbientImageAndUpdateImagePaths(currentcityweatherambientinfo);
        Log.d("Ambient", "AmbientIntentService-currentcity_weather_polling_task  pushing prefambientInfo");
        weathercontroller3.sendCurrentCityWeatherImage(currentcityweatherambientinfo, true);
          goto _L24
        Log.d("Ambient", "AmbientIntentService-currentcity_weather_polling_task  else part");
        if (!"push_online_image".equals(weatherambientinfo5.getPushImageType()) || !"push_offline_image".equals(currentcityweatherambientinfo.getPushImageType()) && !"push_data_error_image".equals(currentcityweatherambientinfo.getPushImageType()) || sharedpreferences5 == null) goto _L24; else goto _L25
_L25:
        if (!sharedpreferences5.getBoolean("current_city_temp_unit_changed", false)) goto _L24; else goto _L26
_L26:
        ambientimagecreator1.createAmbientImageAndUpdateImagePaths(weatherambientinfo5);
        Log.d("Ambient", "AmbientIntentService-currentcity_weather_polling_task  else after check ");
        weathercontroller3.sendCurrentCityWeatherImage(weatherambientinfo5, false);
          goto _L24
        Log.d("Ambient", (new StringBuilder()).append("!!! AmbientIntentService-currentcity_weather_polling_task Default Ambient Display fetch for default city !!!").append(weatherambientinfo5.getCityName()).append(" is null").toString());
          goto _L24
        SharedPreferences sharedpreferences4;
        if (!"weather_resync_images_to_wd".equals(s))
            break MISSING_BLOCK_LABEL_2663;
        sharedpreferences4 = getSharedPreferences("ambient__pref", 0);
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() != 3)
            break MISSING_BLOCK_LABEL_2652;
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_RESYNC req_code:");
        pushWeatherImagesToWd(false);
        if (!sharedpreferences4.getBoolean("WeatherCurrentCityUpdate", false) || !sharedpreferences4.getBoolean("current_city_temp_unit_changed", false)) goto _L28; else goto _L27
_L27:
        WeatherAmbientInfo weatherambientinfo4;
        WeatherController weathercontroller2;
        AmbientImageCreator ambientimagecreator;
        weatherambientinfo4 = (WeatherAmbientInfo)ObjectSerializer.deserialize(sharedpreferences4.getString("WeatherCurrentCity", ObjectSerializer.serialize(new CurrentCityWeatherAmbientInfo())));
        weathercontroller2 = (WeatherController)AmbientController.getController("weather");
        ambientimagecreator = weathercontroller2.getImageCreator();
        if (weatherambientinfo4 == null) goto _L30; else goto _L29
_L29:
        if (!(weatherambientinfo4 instanceof CurrentCityWeatherAmbientInfo)) goto _L30; else goto _L31
_L31:
        if (ambientimagecreator.createAmbientImageAndUpdateImagePaths(weatherambientinfo4) != 0)
            weatherambientinfo4.setPushImageType("push_offline_image");
        weathercontroller2.sendCurrentCityWeatherImage(weatherambientinfo4, false);
_L32:
        ((WeatherController)AmbientController.getController("weather")).onAmbientImageReSyncComplete(0);
          goto _L12
_L30:
        Log.d("Ambient", "!!! AmbientIntentService-TASK_WEATHER_RESYNC invlaid current city object");
          goto _L32
        Exception exception5;
        exception5;
        Log.e("Ambient", "!!! AmbientIntentService-TASK_WEATHER_RESYNC Exception in Ambient  Sync !!!");
        exception5.printStackTrace();
        ((WeatherController)AmbientController.getController("weather")).onAmbientImageReSyncComplete(0);
          goto _L12
_L28:
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_RESYNC no change in currenct city UNITS");
          goto _L32
        Exception exception4;
        exception4;
        ((WeatherController)AmbientController.getController("weather")).onAmbientImageReSyncComplete(0);
        throw exception4;
        Log.d("Ambient", "AmbientIntentService-TASK_WEATHER_RESYNC WD and Phone not connected");
          goto _L32
        if (!"stock_resync_images_to_wd".equals(s)) goto _L34; else goto _L33
_L33:
        SharedPreferences sharedpreferences3 = getSharedPreferences("ambient__pref", 0);
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() != 3) goto _L36; else goto _L35
_L35:
        ArrayList arraylist4 = (ArrayList)ObjectSerializer.deserialize(sharedpreferences3.getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist4 == null) goto _L38; else goto _L37
_L37:
        if (arraylist4.size() > 5) goto _L38; else goto _L39
_L39:
        AmbientController ambientcontroller = AmbientController.getController("stock");
        int j1 = 0;
_L79:
        int k1 = arraylist4.size();
        if (j1 >= k1) goto _L38; else goto _L40
_L40:
        StockAmbientInfo stockambientinfo1;
        String s11;
        String s12;
        String s13;
        stockambientinfo1 = (StockAmbientInfo)arraylist4.get(j1);
        s11 = stockambientinfo1.getDestinationLocation();
        s12 = stockambientinfo1.getDarkImageDestinationLocation();
        s13 = stockambientinfo1.getAppImageDestinationLocation();
        if (s11 == null) goto _L42; else goto _L41
_L41:
        if (stockambientinfo1.getSourceLocation() == null || s13 == null) goto _L42; else goto _L43
_L43:
        if (stockambientinfo1.getAppImageSourceLocation() == null || s12 == null) goto _L42; else goto _L44
_L44:
        if (stockambientinfo1.getDarkImageSourceLocation() != null)
        {
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService-TASK_STOCK_RESYNC Synching ").append(stockambientinfo1.getCompanySymbol()).append(" DestPath ").append(stockambientinfo1.getDestinationLocation()).append("\n").append(stockambientinfo1.getDarkImageDestinationLocation()).toString());
            if (ClockSettingsController.getClockSettingsController().isClockSelected("Stocks"))
            {
                ambientcontroller.syncFileToWd(stockambientinfo1.getDarkImageSourceLocation(), stockambientinfo1.getDarkImageDestinationLocation());
                ambientcontroller.syncFileToWd(stockambientinfo1.getSourceLocation(), stockambientinfo1.getDestinationLocation());
            }
            ambientcontroller.syncFileToWd(stockambientinfo1.getAppImageSourceLocation(), stockambientinfo1.getAppImageDestinationLocation());
        }
          goto _L42
_L36:
        Log.d("Ambient", "AmbientIntentService-TASK_STOCK_RESYNC WD and Phone not connected");
_L38:
        ((StockController)AmbientController.getController("stock")).onAmbientImageReSyncComplete(0);
          goto _L12
        Exception exception3;
        exception3;
        Log.e("Ambient", "!!!AmbientIntentService-TASK_STOCK_RESYNC Exception in Ambient Sync!!!");
        exception3.printStackTrace();
        ((StockController)AmbientController.getController("stock")).onAmbientImageReSyncComplete(0);
          goto _L12
        Exception exception2;
        exception2;
        ((StockController)AmbientController.getController("stock")).onAmbientImageReSyncComplete(0);
        throw exception2;
_L34:
        if (!"share_image_to_wd".equals(s)) goto _L46; else goto _L45
_L45:
        boolean flag2;
        String s8;
        Bitmap bitmap;
        Context context;
        Log.d("Ambient", "AmbientIntentService-share_image_to_wd");
        flag2 = intent.getBooleanExtra("dithering", true);
        String s7 = intent.getStringExtra("file_path");
        s8 = s7.substring(1 + s7.lastIndexOf("/"), s7.lastIndexOf("."));
        String s9 = s7.substring(s7.lastIndexOf("."), s7.length());
        if (s8 == null)
        {
            s8 = "SharedPic1234";
            s9 = ".img";
        }
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService dest filename=").append(s8).append(" fileExtension=").append(s9).toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService share_image_to_wd : dithering=").append(flag2).append(" Path=").append(s7).toString());
        byte abyte0[] = intent.getByteArrayExtra("image_data");
        bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        context = ConnectionFactory.getConnectionFactory().getContext();
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService share_image_to_wd : bmp=").append(bitmap).toString());
        if (context == null || bitmap == null) goto _L12; else goto _L47
_L47:
        AmbientNotificationDisplay ambientnotificationdisplay = new AmbientNotificationDisplay(context);
        String s10 = (new StringBuilder()).append("/album/shared_pics/").append(s8).append(".img").toString();
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        byte abyte1[];
        File file7;
        File file8;
        IOException ioexception2;
        if (flag2)
        {
            ambientnotificationdisplay.convertImage(bitmap, bitmap1);
            abyte1 = ambientnotificationdisplay.writeBitmapinIMGFormat(bitmap1, true);
        } else
        {
            Log.d("Ambient", "AmbientIntentService isDithering = false using orginal image");
            abyte1 = ambientnotificationdisplay.writeBitmapinIMGFormat(bitmap, true);
        }
        file7 = AndroidUtils.getAmbientDirectory("weather");
        if (file7 == null) goto _L12; else goto _L48
_L48:
        file8 = new File((new StringBuilder()).append(file7).append(File.separator).append("sample_push_image").append(".img").toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Source File Location for Time Stamp").append(file8.getAbsolutePath()).toString());
        if (file8.exists())
            file8.delete();
        file8.createNewFile();
        ambientnotificationdisplay.writeBytesToFile(abyte1, file8);
        if (s10 == null) goto _L12; else goto _L49
_L49:
        if (FMSController.getFmsController() == null) goto _L12; else goto _L50
_L50:
        FMSController.getFmsController().fmsSyncFile(1, file8.getAbsolutePath(), s10, -1);
          goto _L12
        ioexception2;
        ioexception2.printStackTrace();
          goto _L12
_L46:
        if (!"generate_world_clock_file".equals(s)) goto _L12; else goto _L51
_L51:
        String s1;
        String s2;
        Log.d("Ambient", "AmbientIntentService intent service task for GENERATE_CLOCK_FILE called");
        s1 = intent.getStringExtra("clock_type");
        s2 = intent.getStringExtra("clock_package_name");
        if (!s1.equals("World Time")) goto _L53; else goto _L52
_L52:
        SharedPreferences sharedpreferences2;
        StringBuilder stringbuilder;
        StringBuilder stringbuilder1;
        boolean flag1;
        WorldClockAmbientDisplay worldclockambientdisplay;
        ArrayList arraylist2;
        WeatherAmbientInfo weatherambientinfo2;
        int k;
        int l;
        WeatherAmbientInfo weatherambientinfo3;
        int i1;
        try
        {
            if (!isClockSelected("World Time"))
            {
                Log.d("Ambient", "AmbientIntentService World time clock not selected. Delete World clock related files from WD");
                deleteClockEntriesFromWD("World Time", s2);
                return;
            }
            break MISSING_BLOCK_LABEL_3588;
        }
        catch (ClassNotFoundException classnotfoundexception1)
        {
            classnotfoundexception1.printStackTrace();
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
        }
          goto _L12
        sharedpreferences2 = getSharedPreferences("ambient__pref", 0);
        stringbuilder = new StringBuilder("");
        stringbuilder1 = new StringBuilder("worldCities { \n");
        flag1 = sharedpreferences2.getBoolean("WeatherCurrentCityUpdate", false);
        worldclockambientdisplay = new WorldClockAmbientDisplay();
        worldclockambientdisplay.setContext(getBaseContext());
        arraylist2 = (ArrayList)ObjectSerializer.deserialize(sharedpreferences2.getString("WeatherCitiesBackGround", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist2.size() <= 0) goto _L55; else goto _L54
_L54:
        if (!flag1) goto _L57; else goto _L56
_L56:
        weatherambientinfo2 = (WeatherAmbientInfo)ObjectSerializer.deserialize(sharedpreferences2.getString("WeatherCurrentCity", ObjectSerializer.serialize(new CurrentCityWeatherAmbientInfo())));
        if (weatherambientinfo2 == null) goto _L59; else goto _L58
_L58:
        if (weatherambientinfo2.getCityName() == null) goto _L59; else goto _L60
_L60:
        stringbuilder.append((new StringBuilder()).append("currentCity { \"").append(weatherambientinfo2.getCityName()).append("\" } \n").toString());
        stringbuilder1.append((new StringBuilder()).append("{ name = \"").append(weatherambientinfo2.getCityName()).append("\", ").toString());
        stringbuilder1.append((new StringBuilder()).append("folderName=\"").append(AndroidUtils.generateUniqueCityName(weatherambientinfo2.getCityName(), weatherambientinfo2.getStateName(), weatherambientinfo2.getCountryName())).append("\", ").toString());
        stringbuilder1.append((new StringBuilder()).append("gmtOffset = \"").append(weatherambientinfo2.getGmtOffset()).append("\" }, \n").toString());
_L67:
        worldclockambientdisplay.setAmbientInfo(weatherambientinfo2);
        createWorldClockImagesFromAmbientInfo(worldclockambientdisplay);
          goto _L57
_L80:
        l = arraylist2.size();
        if (k >= l) goto _L62; else goto _L61
_L61:
        weatherambientinfo3 = (WeatherAmbientInfo)arraylist2.get(k);
        if (weatherambientinfo3 == null) goto _L64; else goto _L63
_L63:
        stringbuilder1.append((new StringBuilder()).append("{ name = \"").append(weatherambientinfo3.getCityName()).append("\", ").toString());
        stringbuilder1.append((new StringBuilder()).append("folderName=\"").append(AndroidUtils.generateUniqueCityName(weatherambientinfo3.getCityName(), weatherambientinfo3.getStateName(), weatherambientinfo3.getCountryName())).append("\", ").toString());
        i1 = -1 + arraylist2.size();
        if (k != i1) goto _L66; else goto _L65
_L65:
        stringbuilder1.append((new StringBuilder()).append("gmtOffset = \"").append(weatherambientinfo3.getGmtOffset()).append("\" }\n").toString());
_L68:
        worldclockambientdisplay.setAmbientInfo(weatherambientinfo3);
        createWorldClockImagesFromAmbientInfo(worldclockambientdisplay);
          goto _L64
_L59:
        Log.d("Ambient", "AmbientIntentService  current city name = NULL");
          goto _L67
_L66:
        stringbuilder1.append((new StringBuilder()).append("gmtOffset = \"").append(weatherambientinfo3.getGmtOffset()).append("\" }, \n").toString());
          goto _L68
_L62:
        File file2;
        File file3;
        stringbuilder1.append("}");
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Lua   Content :  ").append(stringbuilder.toString()).append("\n ").append(stringbuilder1.toString()).toString());
        ArrayList arraylist3 = new ArrayList();
        arraylist3.add(stringbuilder.toString());
        arraylist3.add(stringbuilder1.toString());
        file2 = createDATFile(arraylist3, "World Time", "cities.dat");
        Log.d("Ambient", "AmbientIntentService before call createClockWorldzipFileAndSyncToWD");
        createClockWorldzipFileAndSyncToWD(s2);
        file3 = AndroidUtils.getAmbientDirectory("WorldClock");
        if (file2 == null)
            break MISSING_BLOCK_LABEL_4278;
        Utils.deleteFiles(file3);
        Log.d("Ambient", "AmbientIntentService after call createClockWorldzipFileAndSyncToWD");
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Dat  file  path : ").append(file2.getAbsolutePath()).toString());
          goto _L12
_L55:
        File file5;
        File file4 = new File(AndroidUtils.getAmbientDirectory("WorldClock"), "cities.dat");
        if (file4.exists())
            file4.delete();
        file5 = AndroidUtils.getAmbientDirectory("WorldClock");
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService worldClockParentFile : ").append(file5).toString());
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService worldClockParentFile.exists() : ").append(file5.exists()).toString());
        if (file5 == null)
            break MISSING_BLOCK_LABEL_4464;
        File file6 = new File((new StringBuilder()).append(file5).append(File.separator).append("ClockWorld.zip").toString());
        if (file6.exists())
            file6.delete();
        deleteClockEntriesFromWD("World Time", s2);
          goto _L12
_L53:
        if (!s1.equals("Degrees"))
            break MISSING_BLOCK_LABEL_4833;
        ClassNotFoundException classnotfoundexception;
        if (!isClockSelected("Degrees"))
        {
            Log.d("Ambient", "AmbientIntentService Degree clock not selected. Delete degree related files from WD");
            deleteClockEntriesFromWD("Degrees", s2);
            return;
        }
        WeatherAmbientInfo weatherambientinfo1;
        SharedPreferences sharedpreferences1 = getSharedPreferences("ambient__pref", 0);
        if (!sharedpreferences1.getBoolean("WeatherCurrentCityUpdate", false))
            break MISSING_BLOCK_LABEL_4791;
        weatherambientinfo1 = (WeatherAmbientInfo)ObjectSerializer.deserialize(sharedpreferences1.getString("WeatherCurrentCity", ObjectSerializer.serialize(new CurrentCityWeatherAmbientInfo())));
        if (weatherambientinfo1 == null) goto _L12; else goto _L69
_L69:
        if (weatherambientinfo1.getHourTemp() == -1000)
            break MISSING_BLOCK_LABEL_4764;
        if (!"push_online_image".equals(weatherambientinfo1.getPushImageType())) goto _L71; else goto _L70
_L70:
        String s6 = (new StringBuilder()).append("currentTemp=").append(Integer.toString(AndroidUtils.getWeatherTemperatureBasedOnUnit(weatherambientinfo1.getHourTemp()))).toString();
_L72:
        IOException ioexception;
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService  degree clock currentTemp=").append(s6).toString());
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(s6);
        if (createDATFile(arraylist1, "Degrees", "temperature.dat") != null)
            syncWorldClockToWD("Degrees", s2);
          goto _L12
_L71:
        s6 = (new StringBuilder()).append("currentTemp=").append("nil").toString();
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService degree clock data error currentTemp=").append(s6).toString());
          goto _L72
        s6 = (new StringBuilder()).append("currentTemp=").append("nil").toString();
          goto _L72
        try
        {
            File file1 = new File(AndroidUtils.getAmbientDirectory("DegreesClock"), "temperature.dat");
            if (file1.exists())
                file1.delete();
            deleteClockEntriesFromWD("Degrees", s2);
        }
        // Misplaced declaration of an exception variable
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
          goto _L12
        if (!s1.equals("Weather Grid")) goto _L74; else goto _L73
_L73:
        WeatherController weathercontroller1;
        WeatherAmbientInfo weatherambientinfo;
        boolean flag;
        weathercontroller1 = (WeatherController)AmbientController.getController("weather");
        SharedPreferences sharedpreferences = getSharedPreferences("ambient__pref", 0);
        weatherambientinfo = (WeatherAmbientInfo)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCurrentCity", ObjectSerializer.serialize(new CurrentCityWeatherAmbientInfo())));
        flag = sharedpreferences.getBoolean("WeatherCurrentCityUpdate", false);
label0:
        {
            if (isClockSelected("Weather Grid") && flag && weatherambientinfo != null)
                break label0;
            try
            {
                Log.d("Ambient", "AmbientIntentService CLOCK_WEATHER_GRID  not not selected.");
                return;
            }
            catch (Exception exception1)
            {
                Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Exception in task =").append(s).toString());
            }
        }
          goto _L12
        String s5 = ((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipSourceLocation();
        if (s5 == null) goto _L12; else goto _L75
_L75:
        if (!s5.contains(".zip")) goto _L12; else goto _L76
_L76:
        if (!"push_online_image".equals(weatherambientinfo.getPushImageType()))
            break MISSING_BLOCK_LABEL_5066;
        if (((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipSourceLocation() == null || ((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipDestinationLocation() == null)
            break MISSING_BLOCK_LABEL_5055;
        weathercontroller1.syncFileToWd(((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipSourceLocation(), ((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipDestinationLocation());
        Log.d("Ambient", "AmbientIntentService CLOCK_WEATHER_GRID ClockThree FMS sync completed");
          goto _L12
        Log.d("Ambient", "AmbientIntentService CLOCK_WEATHER_GRID src and dest path is NULL not pusing the ClockThree.zip");
          goto _L12
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService CLOCK_WEATHER_GRID file for Clock Three.zipin condition ").append(weatherambientinfo.getPushImageType()).toString());
        File file = new File(s5);
        if (file.exists())
        {
            Log.d("Ambient", (new StringBuilder()).append("AmbientSyncer- deleting zip file for Clock Three.zip").append(file.getPath()).append("in condition ").append(weatherambientinfo.getPushImageType()).toString());
            file.delete();
            weathercontroller1.removeFile(((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipDestinationLocation());
        }
          goto _L12
_L74:
        if (!s1.equals("Stocks")) goto _L12; else goto _L77
_L77:
        WeatherController weathercontroller;
        ArrayList arraylist;
        weathercontroller = (WeatherController)AmbientController.getController("weather");
        arraylist = (ArrayList)ObjectSerializer.deserialize(ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
label1:
        {
            if (isClockSelected("Stocks") || arraylist == null)
                break label1;
            try
            {
                Log.d("Ambient", "AmbientIntentService CLOCK_STOCK  not not selected.");
                return;
            }
            catch (Exception exception)
            {
                Log.e("Ambient", "!!!AmbientIntentService CLOCK_STOCK exception while pushing the images");
            }
        }
          goto _L12
        int i = 0;
_L81:
        int j = arraylist.size();
        if (i >= j) goto _L12; else goto _L78
_L78:
        StockAmbientInfo stockambientinfo = (StockAmbientInfo)arraylist.get(i);
        if (stockambientinfo == null)
            break MISSING_BLOCK_LABEL_5455;
        String s3;
        String s4;
        s3 = stockambientinfo.getSourceLocation();
        s4 = stockambientinfo.getDarkImageSourceLocation();
        if (s3 == null)
            break MISSING_BLOCK_LABEL_5444;
        if (!s3.contains(".img") || s4 == null)
            break MISSING_BLOCK_LABEL_5444;
        if (s4.contains(".img"))
        {
            Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService CLOCK_STOCK Stock file name getting pushed = ").append(stockambientinfo.getCompanySymbol()).append(".img").append(" SrcPath ").append(s3).append(" DestPath  ").append(stockambientinfo.getDestinationLocation()).toString());
            weathercontroller.syncFileToWd(s4, stockambientinfo.getDarkImageDestinationLocation());
            weathercontroller.syncFileToWd(s3, stockambientinfo.getDestinationLocation());
            Log.d("Ambient", "AmbientIntentService CLOCK_STOCK sync completed ");
            break MISSING_BLOCK_LABEL_5484;
        }
        Log.d("Ambient", "AmbientIntentService CLOCK_STOCK sync error invalid image path ");
        break MISSING_BLOCK_LABEL_5484;
        Log.e("Ambient", "AmbientIntentService CLOCK_STOCK invalid stockAmbientInfo");
        break MISSING_BLOCK_LABEL_5484;
_L42:
        j1++;
          goto _L79
_L57:
        k = 0;
          goto _L80
_L64:
        k++;
          goto _L80
        i++;
          goto _L81
    }

    public boolean pushWorldClockAppsZipToWD(String s, String s1)
    {
        String s2;
        String s3;
        java.io.InputStream inputstream;
        ClockUtils clockutils = ClockUtils.getClockUtils();
        s2 = clockutils.getClockInfo(s, "assetFileName");
        s3 = clockutils.getClockInfo(s, "appZipName");
        inputstream = clockutils.getClockAppInputStream(s2, s3);
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_135;
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService Asset file: ").append(s3).toString());
        if (s2 == null)
            break MISSING_BLOCK_LABEL_143;
        if (FMSController.getFmsController() == null)
            break MISSING_BLOCK_LABEL_143;
        int i = FMSController.getFmsController().fmsSyncFile(1, inputstream, s1, -1);
        Log.d("Ambient", (new StringBuilder()).append("AmbientIntentService clock app.zip push status of ").append(s1).append(" = ").append(i).toString());
        ClockUtils.getClockUtils().deleteClockAppZip(s3);
        return true;
        try
        {
            Log.e("Ambient", "AmbientIntentService pushWorldClockAppsZipToWD : InputStream is NULL");
        }
        catch (Exception exception)
        {
            Log.e("Ambient", (new StringBuilder()).append("AmbientIntentService Failed to copy asset file: ").append(s2).append(" details: ").append(exception.toString()).toString());
        }
        return false;
    }
}
