// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.content.Context;
import android.content.res.Resources;
import android.location.*;
import android.os.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.Utils;
import com.qualcomm.toq.smartwatch.ambient.WeatherController;
import com.qualcomm.toq.smartwatch.controller.AmbientController;
import java.text.DecimalFormat;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.*;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.utils:
//            DataServer

public class CurrentCityProvider
    implements LocationListener
{

    private static CurrentCityProvider sInstance;
    private final String TAG;
    private Context mContext;
    private Timer mLocParseTimer;
    private boolean mLocalUpdateFlag;
    private Handler mLocationHandler;
    private Looper mLocationLooper;
    private LocationManager mLocationManager;
    private Timer mTimer;

    private CurrentCityProvider()
    {
        TAG = "CurrentCityProvider";
        mLocalUpdateFlag = false;
    }

    private CurrentCityProvider(Context context)
    {
        TAG = "CurrentCityProvider";
        mLocalUpdateFlag = false;
        mContext = context;
        HandlerThread handlerthread = new HandlerThread("CurrentCityProvider");
        handlerthread.start();
        mLocationLooper = handlerthread.getLooper();
        mLocationHandler = new Handler(mLocationLooper);
    }

    private String[] getCityNameFromLocation(Location location)
    {
        ExecutorService executorservice;
        Log.d("CurrentCityProvider", "getCityNameFromLocation() called");
        executorservice = Executors.newSingleThreadExecutor();
        String s2;
        DecimalFormat decimalformat = new DecimalFormat("##.##");
        double d = Double.parseDouble(decimalformat.format(location.getLatitude()));
        double d1 = Double.parseDouble(decimalformat.format(location.getLongitude()));
        String s = mContext.getResources().getString(0x7f0a004f);
        Object aobj[] = new Object[3];
        aobj[0] = Double.valueOf(d);
        aobj[1] = Double.valueOf(d1);
        aobj[2] = "9fc4b35acecc407e95143c14579a2d84";
        String s1 = String.format(s, aobj);
        Log.d("CurrentCityProvider", (new StringBuilder()).append("Query Url :  ").append(s1).toString());
        DataServer dataserver = new DataServer(s1);
        s2 = (String)executorservice.submit(dataserver).get(5L, TimeUnit.SECONDS);
        if (s2 == null)
            break MISSING_BLOCK_LABEL_369;
        JSONObject jsonobject;
        jsonobject = new JSONObject(s2);
        Log.d("CurrentCityProvider", (new StringBuilder()).append("Local city, JSON data: ").append(jsonobject.toString()).toString());
        if (jsonobject == null)
            break MISSING_BLOCK_LABEL_377;
        String s3;
        String s4;
        JSONObject jsonobject1;
        s3 = jsonobject.getString("Key");
        s4 = jsonobject.getString("EnglishName");
        jsonobject1 = jsonobject.getJSONObject("Country");
        String s5;
        s5 = null;
        if (jsonobject1 == null)
            break MISSING_BLOCK_LABEL_253;
        s5 = jsonobject1.getString("LocalizedName");
        JSONObject jsonobject2 = jsonobject.getJSONObject("AdministrativeArea");
        String s6;
        s6 = null;
        if (jsonobject2 == null)
            break MISSING_BLOCK_LABEL_279;
        s6 = jsonobject2.getString("EnglishName");
        String as[];
        as = (new String[] {
            s3, s4, s6, s5
        });
        Log.d("CurrentCityProvider", (new StringBuilder()).append(" Current City Data :  Key: ").append(s3).append("  city: ").append(s4).append("  Country:   ").append(s5).append("Admin Area: ").append(s6).toString());
        executorservice.shutdown();
        return as;
        executorservice.shutdown();
        return null;
        executorservice.shutdown();
_L2:
        return null;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        executorservice.shutdown();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        executorservice.shutdown();
        throw exception;
    }

    public static CurrentCityProvider getInstance(Context context)
    {
        sInstance = new CurrentCityProvider(context);
        return sInstance;
    }

    public void getCurrentCityName()
    {
        if (mLocationLooper != null)
            mLocationHandler = new Handler(mLocationLooper);
        mLocationHandler.post(new Runnable() {

            final CurrentCityProvider this$0;

            public void run()
            {
                if (getLocationManger() == null)
                    break MISSING_BLOCK_LABEL_246;
                Criteria criteria = new Criteria();
                criteria.setAccuracy(1);
                criteria.setAltitudeRequired(true);
                criteria.setBearingRequired(false);
                criteria.setCostAllowed(true);
                criteria.setPowerRequirement(1);
                String s = getLocationManger().getBestProvider(criteria, true);
                Log.d("CurrentCityProvider", (new StringBuilder()).append("Criteria queried locationProvider = ").append(s).toString());
                Log.d("CurrentCityProvider", (new StringBuilder()).append("getLocationManger().isProviderEnabled(LocationManager.NETWORK_PROVIDER) = ").append(getLocationManger().isProviderEnabled("network")).toString());
                Log.d("CurrentCityProvider", (new StringBuilder()).append("Utils.isNetworkConnectivityAvailable(mContext) = ").append(Utils.isNetworkConnectivityAvailable(mContext)).toString());
                if (!Utils.isNetworkConnectivityAvailable(mContext) || !getLocationManger().isProviderEnabled("network"))
                    break MISSING_BLOCK_LABEL_330;
                Log.d("CurrentCityProvider", "Trying to fetch Location from Network Provider");
                mLocalUpdateFlag = true;
                getLocationManger().requestLocationUpdates("network", 0L, 0.0F, CurrentCityProvider.this);
                mTimer = new Timer();
                mTimer.schedule(new TimerTask() {

                    final _cls1 this$1;

                    public void run()
                    {
                        Log.d("CurrentCityProvider", "Timer called for removing the Location Updates");
                        Location location = getLocationManger().getLastKnownLocation("network");
                        if (location != null)
                        {
                            Log.d("CurrentCityProvider", "getLastKnownLocation() used and onLocationChanged() is called");
                            mLocParseTimer = new Timer();
                            if (mLocParseTimer != null)
                                mLocParseTimer.schedule(new TimerTask() {

                                    final _cls1 this$2;

                                    public void run()
                                    {
                                        mLocalUpdateFlag = false;
                                        getLocationManger().removeUpdates(_fld0);
                                        ((WeatherController)AmbientController.getController("weather")).onCurrencityNameReceived(null, "Local City", "Default Admin,Default Country");
                                    }

            
            {
                this$2 = _cls1.this;
                super();
            }
                                }
, 10000L);
                            onLocationChanged(location);
                            return;
                        } else
                        {
                            Log.d("CurrentCityProvider", "Failed to retrieve the location values");
                            mLocalUpdateFlag = false;
                            getLocationManger().removeUpdates(_fld0);
                            ((WeatherController)AmbientController.getController("weather")).onCurrencityNameReceived(null, "Local City", "Default Admin,Default Country");
                            return;
                        }
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                }
, 0x15f90L);
                return;
                Exception exception4;
                exception4;
                exception4.printStackTrace();
                mTimer = new Timer();
                mTimer.schedule(new _cls1(), 0x15f90L);
                return;
                Exception exception3;
                exception3;
                mTimer = new Timer();
                mTimer.schedule(new _cls1(), 0x15f90L);
                throw exception3;
                Log.d("CurrentCityProvider", "No providers available sending default image");
                ((WeatherController)AmbientController.getController("weather")).onCurrencityNameReceived(null, "Local City", "Default Admin,Default Country");
                return;
            }

            
            {
                this$0 = CurrentCityProvider.this;
                super();
            }
        }
);
        return;
        Exception exception2;
        exception2;
        exception2.printStackTrace();
        return;
        Exception exception1;
        exception1;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return;
    }

    public LocationManager getLocationManger()
    {
        if (mLocationManager == null && mContext != null)
            mLocationManager = (LocationManager)mContext.getSystemService("location");
        return mLocationManager;
    }

    public void onLocationChanged(Location location)
    {
        if (location != null)
        {
            Log.d("CurrentCityProvider", "onLocationChanged called");
            if (mLocalUpdateFlag)
            {
                String as[] = getCityNameFromLocation(location);
                if (as != null && as.length == 4)
                {
                    if (as[0] != null && as[1] != null && as[2] != null && as[3] != null)
                    {
                        mLocalUpdateFlag = false;
                        getLocationManger().removeUpdates(this);
                        ((WeatherController)AmbientController.getController("weather")).onCurrencityNameReceived(as[0].trim(), as[1].trim(), (new StringBuilder()).append(as[2].trim()).append(",").append(as[3].trim()).toString());
                        Log.d("CurrentCityProvider", " Before Canceling Timer");
                        if (mTimer != null)
                        {
                            mTimer.cancel();
                            mTimer = null;
                        }
                        if (mLocParseTimer != null)
                        {
                            mLocParseTimer.cancel();
                            mLocParseTimer = null;
                        }
                        return;
                    } else
                    {
                        Log.d("CurrentCityProvider", "onLocationChanged cityParams elements == null");
                        return;
                    }
                } else
                {
                    Log.d("CurrentCityProvider", "onLocationChanged cityParams == null");
                    return;
                }
            } else
            {
                Log.d("CurrentCityProvider", "onLocationChanged mLocalUpdateFlag == false");
                return;
            }
        } else
        {
            Log.d("CurrentCityProvider", "onLocationChanged location == null");
            return;
        }
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
        Log.d("CurrentCityProvider", (new StringBuilder()).append("Provider enabled :  ").append(s).toString());
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }



/*
    static boolean access$102(CurrentCityProvider currentcityprovider, boolean flag)
    {
        currentcityprovider.mLocalUpdateFlag = flag;
        return flag;
    }

*/



/*
    static Timer access$202(CurrentCityProvider currentcityprovider, Timer timer)
    {
        currentcityprovider.mTimer = timer;
        return timer;
    }

*/



/*
    static Timer access$302(CurrentCityProvider currentcityprovider, Timer timer)
    {
        currentcityprovider.mLocParseTimer = timer;
        return timer;
    }

*/
}
