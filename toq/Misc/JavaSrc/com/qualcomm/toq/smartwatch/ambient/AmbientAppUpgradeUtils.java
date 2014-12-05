// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Environment;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.Utils;
import com.qualcomm.toq.smartwatch.controller.AmbientController;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.*;
import java.net.*;
import java.util.*;
import java.util.concurrent.ExecutionException;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            WeatherAmbientInfo

public class AmbientAppUpgradeUtils
{

    public static final String DEFAULT_NAME = "--";
    public static final String TIMER_RETRY = "ambient_app_upgrade_utils_timer_retry";
    public static final String UPDATE_SUCCESS = "ambient_app_upgrade_utils_update_success";
    public static final int UPDATE_TRY_THRESHOLD = 10;
    public static boolean isWeatherScreenActive = false;
    private static AmbientAppUpgradeUtils mInstance = null;
    private final String TAG = "AmbientAppUpgradeUtils";
    public final int TIMER_INTERVAL = 0x1d4c0;
    private Timer mCityNameUpdaterTimer;
    private TimerTask mCityUpdater;

    private AmbientAppUpgradeUtils()
    {
        mCityNameUpdaterTimer = null;
        mCityUpdater = new TimerTask() {

            final AmbientAppUpgradeUtils this$0;

            public void run()
            {
                SharedPreferences sharedpreferences = AmbientAppUpgradeUtils.getAmbientAppUpgradeUtilsPref();
                if (sharedpreferences != null)
                {
                    boolean flag = sharedpreferences.getBoolean("ambient_app_upgrade_utils_update_success", false);
                    int i = sharedpreferences.getInt("ambient_app_upgrade_utils_timer_retry", 0);
                    Log.d("AmbientAppUpgradeUtils", (new StringBuilder()).append("isUpdateSuccessfull state is : ").append(flag).append("and number of retries: ").append(i).toString());
                    if (i != 10 && !flag)
                    {
                        if (ToqApplication.getAppContext() != null && !AmbientAppUpgradeUtils.isWeatherScreenActive)
                        {
                            updateOldVersionCity(ToqApplication.getAppContext());
                            return;
                        }
                    } else
                    {
                        if (mCityNameUpdaterTimer != null)
                        {
                            mCityNameUpdaterTimer.cancel();
                            mCityNameUpdaterTimer.purge();
                            mCityNameUpdaterTimer = null;
                        }
                        Log.d("AmbientAppUpgradeUtils", "Killing mCityNameUpdaterTimer");
                    }
                }
            }

            
            {
                this$0 = AmbientAppUpgradeUtils.this;
                super();
            }
        }
;
        initUpgradeTimer();
    }

    public static SharedPreferences getAmbientAppUpgradeUtilsPref()
    {
        if (ToqApplication.getAppContext() != null)
            return ToqApplication.getAppContext().getSharedPreferences("qualcommtoq_ambient_upgrade_file", 0);
        else
            return null;
    }

    private String getCityResponse(String s)
        throws Exception
    {
        InputStreamReader inputstreamreader;
        HttpURLConnection httpurlconnection;
        URL url = new URL(s);
        inputstreamreader = null;
        httpurlconnection = (HttpURLConnection)url.openConnection();
        InputStreamReader inputstreamreader1;
        httpurlconnection.setConnectTimeout(0x13880);
        inputstreamreader1 = new InputStreamReader(httpurlconnection.getInputStream());
        StringBuilder stringbuilder;
        char ac[];
        stringbuilder = new StringBuilder();
        ac = new char[1024];
_L3:
        int i = inputstreamreader1.read(ac);
        if (i == -1) goto _L2; else goto _L1
_L1:
        stringbuilder.append(ac, 0, i);
          goto _L3
        MalformedURLException malformedurlexception;
        malformedurlexception;
        inputstreamreader = inputstreamreader1;
_L12:
        Log.e("AmbientAppUpgradeUtils", "Error processing Stock API URL", malformedurlexception);
        String s1;
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        s1 = null;
        if (inputstreamreader != null)
            inputstreamreader.close();
_L4:
        return s1;
_L2:
        Log.d("AmbientAppUpgradeUtils", (new StringBuilder()).append("responseData:  ").append(stringbuilder.toString()).toString());
        inputstreamreader1.close();
        inputstreamreader = null;
        String s2 = stringbuilder.toString();
        s1 = s2;
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        if (false)
        {
            null.close();
            return s1;
        }
          goto _L4
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
_L10:
        Log.e("AmbientAppUpgradeUtils", "Not able to retreive file through Stock API", filenotfoundexception);
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        s1 = null;
        if (inputstreamreader != null)
        {
            inputstreamreader.close();
            return null;
        }
          goto _L4
        IOException ioexception;
        ioexception;
_L9:
        Log.e("AmbientAppUpgradeUtils", "Error connecting to Stock API", ioexception);
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        s1 = null;
        if (inputstreamreader != null)
        {
            inputstreamreader.close();
            return null;
        }
          goto _L4
        Exception exception1;
        exception1;
_L8:
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        s1 = null;
        if (inputstreamreader == null) goto _L4; else goto _L5
_L5:
        inputstreamreader.close();
        return null;
        Exception exception;
        exception;
_L7:
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        if (inputstreamreader != null)
            inputstreamreader.close();
        throw exception;
        exception;
        inputstreamreader = inputstreamreader1;
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception2;
        exception2;
        inputstreamreader = inputstreamreader1;
          goto _L8
        ioexception;
        inputstreamreader = inputstreamreader1;
          goto _L9
        filenotfoundexception;
        inputstreamreader = inputstreamreader1;
          goto _L10
        malformedurlexception;
        inputstreamreader = null;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public static AmbientAppUpgradeUtils getInstance()
    {
        if (mInstance == null)
            mInstance = new AmbientAppUpgradeUtils();
        return mInstance;
    }

    private void initUpgradeTimer()
    {
        Log.d("AmbientAppUpgradeUtils", "Initializing timer");
        if (mCityNameUpdaterTimer != null)
        {
            mCityNameUpdaterTimer.cancel();
            mCityNameUpdaterTimer = null;
        }
        mCityNameUpdaterTimer = new Timer();
        mCityNameUpdaterTimer.schedule(mCityUpdater, 0x1d4c0L, 0x1d4c0L);
    }

    public static boolean isAlive()
    {
        return mInstance != null;
    }

    private void putDefaultState(WeatherAmbientInfo weatherambientinfo)
    {
        weatherambientinfo.setCountryName("--");
        weatherambientinfo.setStateName("--");
        Log.d("AmbientAppUpgradeUtils", (new StringBuilder()).append("Setting Default names  for city: ").append(weatherambientinfo.getCityName()).toString());
    }

    private void updateWeatherInfo(WeatherAmbientInfo weatherambientinfo, Context context, String s)
    {
        String s1 = weatherambientinfo.getCityName();
        if (s1 == null) goto _L2; else goto _L1
_L1:
        String as[];
        as = s1.split(",");
        Log.d("AmbientAppUpgradeUtils", (new StringBuilder()).append("Updating data for : ").append(s1).toString());
        if (as[0] == null) goto _L2; else goto _L3
_L3:
        String s2;
        s2 = as[0].trim();
        weatherambientinfo.setCityName(s2);
        if (!Utils.isNetworkConnectivityAvailable(context)) goto _L5; else goto _L4
_L4:
        String s3 = getCityResponse(String.format(context.getResources().getString(0x7f0a004c), new Object[] {
            URLEncoder.encode(s2, "UTF-8"), "9fc4b35acecc407e95143c14579a2d84"
        }));
        if (s3 == null) goto _L7; else goto _L6
_L6:
        JSONArray jsonarray;
        jsonarray = new JSONArray(s3);
        if (jsonarray.length() == 0)
            weatherambientinfo.setPushImageType("push_data_error_image");
          goto _L8
_L20:
        int i;
        if (i >= jsonarray.length()) goto _L2; else goto _L9
_L9:
        JSONObject jsonobject = jsonarray.getJSONObject(i);
        if (jsonobject == null) goto _L11; else goto _L10
_L10:
        String s4;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        s4 = jsonobject.getString("Key");
        jsonobject1 = (JSONObject)jsonobject.get("AdministrativeArea");
        jsonobject2 = (JSONObject)jsonobject.get("Country");
        String s5;
        s5 = null;
        if (jsonobject1 == null)
            break MISSING_BLOCK_LABEL_248;
        s5 = jsonobject1.getString("LocalizedName");
        Log.d("AmbientAppUpgradeUtils", (new StringBuilder()).append("State Name: ").append(s5).toString());
        String s6;
        s6 = null;
        if (jsonobject2 == null)
            break MISSING_BLOCK_LABEL_292;
        s6 = jsonobject2.getString("LocalizedName");
        Log.d("AmbientAppUpgradeUtils", (new StringBuilder()).append("CountryName: ").append(s6).toString());
        if (s4 == null) goto _L13; else goto _L12
_L12:
        if (!s4.equals(weatherambientinfo.getKey())) goto _L13; else goto _L14
_L14:
        if (s5 == null) goto _L16; else goto _L15
_L15:
        weatherambientinfo.setStateName(s5);
_L18:
        if (s6 == null)
            break; /* Loop/switch isn't completed */
        weatherambientinfo.setCountryName((new StringBuilder()).append(" ").append(s6).toString());
          goto _L13
_L16:
        weatherambientinfo.setStateName("--");
        if (true) goto _L18; else goto _L17
        InterruptedException interruptedexception;
        interruptedexception;
        Log.e("AmbientAppUpgradeUtils", (new StringBuilder()).append("InterruptedException in default sync ").append(interruptedexception.toString()).toString());
        putDefaultState(weatherambientinfo);
_L2:
        return;
_L17:
        weatherambientinfo.setCountryName("--");
          goto _L13
        ExecutionException executionexception;
        executionexception;
        Log.e("AmbientAppUpgradeUtils", (new StringBuilder()).append("ExecutionException in default Sync ").append(executionexception.toString()).toString());
        putDefaultState(weatherambientinfo);
        return;
        Exception exception1;
        exception1;
        throw exception1;
_L11:
        putDefaultState(weatherambientinfo);
          goto _L13
        Exception exception;
        exception;
        Log.e("AmbientAppUpgradeUtils", (new StringBuilder()).append("ExecutionException in default Sync ").append(exception.toString()).toString());
        putDefaultState(weatherambientinfo);
        return;
_L7:
        putDefaultState(weatherambientinfo);
        return;
_L5:
        putDefaultState(weatherambientinfo);
        return;
_L8:
        i = 0;
        continue; /* Loop/switch isn't completed */
_L13:
        i++;
        if (true) goto _L20; else goto _L19
_L19:
    }

    public void deletAmbientFolders(Context context)
    {
        if (Environment.getExternalStorageState().equals("mounted"))
        {
            File file = new File(Environment.getExternalStorageDirectory(), "AMBIENT_IMAGES");
            if (file != null && file.exists())
                Utils.deleteFiles(file);
        }
        AmbientController.getController("stock").resetAmbientLastFetchTimeStamp();
        AmbientController.getController("weather").resetAmbientLastFetchTimeStamp();
    }

    public void updateOldVersionCity(Context context)
    {
        int j;
        boolean flag;
        SharedPreferences sharedpreferences = context.getSharedPreferences("ambient__pref", 0);
        ArrayList arraylist;
        SharedPreferences sharedpreferences1;
        int i;
        android.content.SharedPreferences.Editor editor;
        android.content.SharedPreferences.Editor editor1;
        WeatherAmbientInfo weatherambientinfo;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCities", ObjectSerializer.serialize(new ArrayList())));
            Log.d("AmbientAppUpgradeUtils", "Updating Old Version City");
            sharedpreferences1 = getAmbientAppUpgradeUtilsPref();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return;
        }
        i = 0;
        if (sharedpreferences1 == null) goto _L2; else goto _L1
_L1:
        i = sharedpreferences1.getInt("ambient_app_upgrade_utils_timer_retry", 0);
        if (Utils.isNetworkConnectivityAvailable(context))
            i++;
          goto _L2
_L9:
        if (j >= arraylist.size()) goto _L4; else goto _L3
_L3:
        weatherambientinfo = (WeatherAmbientInfo)arraylist.get(j);
        flag = true;
        if (weatherambientinfo == null) goto _L6; else goto _L5
_L5:
        if (weatherambientinfo.getStateName() != null && !"--".equals(weatherambientinfo.getStateName()) && weatherambientinfo.getCountryName() != null && !"--".equals(weatherambientinfo.getCountryName()) || weatherambientinfo.getKey() == null) goto _L6; else goto _L7
_L7:
        updateWeatherInfo(weatherambientinfo, ToqApplication.getAppContext(), weatherambientinfo.getCityName());
        if (weatherambientinfo.getStateName() == null || "--".equals(weatherambientinfo.getStateName()) || weatherambientinfo.getCountryName() == null || "--".equals(weatherambientinfo.getCountryName()))
            flag = false;
          goto _L6
_L4:
        if (sharedpreferences1 == null)
            break MISSING_BLOCK_LABEL_293;
        Log.d("AmbientAppUpgradeUtils", (new StringBuilder()).append("Retry   value: ").append(i).toString());
        editor = sharedpreferences1.edit();
        editor.putInt("ambient_app_upgrade_utils_timer_retry", i);
        editor.putBoolean("ambient_app_upgrade_utils_update_success", flag);
        editor.commit();
        editor1 = sharedpreferences.edit();
        editor1.putString("WeatherCities", ObjectSerializer.serialize(arraylist));
        editor1.commit();
        return;
_L2:
        j = 0;
        flag = false;
        continue; /* Loop/switch isn't completed */
_L6:
        j++;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public void updateSharedPreferenceForIconNumber()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCities", ObjectSerializer.serialize(new ArrayList())));
        int i = 0;
_L2:
        if (i >= arraylist.size())
            break; /* Loop/switch isn't completed */
        ((WeatherAmbientInfo)arraylist.get(i)).setIconNumber(-1);
        i++;
        if (true) goto _L2; else goto _L1
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
_L1:
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
    }




/*
    static Timer access$002(AmbientAppUpgradeUtils ambientappupgradeutils, Timer timer)
    {
        ambientappupgradeutils.mCityNameUpdaterTimer = timer;
        return timer;
    }

*/
}
