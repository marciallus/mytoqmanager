// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ToqData;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            DefaultAmbientDisplay, WeatherAmbientInfo, CurrentCityWeatherAmbientInfo, CityClockImageRepo, 
//            IAmbientInfo

public class WeatherAmbientDisplay extends DefaultAmbientDisplay
{

    private static final int BLUE_IMAGE = 0;
    private static final int DARK_IMAGE = 1;
    private static final String TAG = "WeatherAmbientDisplay";
    private static final int WHITE_IMAGE = 2;
    public static ArrayList mWeatherBackgroundImages = new ArrayList();
    public static ArrayList mWeatherConditionBlueImages = new ArrayList();
    public static ArrayList mWeatherConditionDarkImages = new ArrayList();
    public static ArrayList mWeatherConditionImages = new ArrayList();
    public static ArrayList mWeatherIcons = new ArrayList();
    public static ArrayList mWeatherLowerRange = new ArrayList();
    private String forecastUrl;
    int mBackGroundImageIds[] = {
        0x7f02005d, 0x7f020058, 0x7f020059, 0x7f02005a, 0x7f02005b, 0x7f02005c, 0x7f020057
    };
    int mClockBackGroundImageIds[] = {
        0x7f020132, 0x7f02012d, 0x7f02012e, 0x7f02012f, 0x7f020130, 0x7f020131, 0x7f02012c
    };
    private double mLatitude;
    private double mLongitude;
    private Bitmap mMainImage;
    private Resources mResources;
    int mTemperatureLowerRange[] = {
        -20, 1, 21, 41, 61, 81, 101
    };
    int mTemperatureUpperRange[] = {
        0, 20, 40, 60, 80, 100, 120
    };

    public WeatherAmbientDisplay()
    {
        mMainImage = null;
        mLatitude = 0.0D;
        mLongitude = 0.0D;
        forecastUrl = null;
    }

    private Resources getResourceObject()
    {
        return getContext().getResources();
    }

    private void setWeatherConditions()
    {
        mResources = getResourceObject();
        mWeatherIcons.clear();
        mWeatherIcons.add(Integer.valueOf(1));
        mWeatherIcons.add(Integer.valueOf(2));
        mWeatherIcons.add(Integer.valueOf(3));
        mWeatherIcons.add(Integer.valueOf(4));
        mWeatherIcons.add(Integer.valueOf(5));
        mWeatherIcons.add(Integer.valueOf(6));
        mWeatherIcons.add(Integer.valueOf(7));
        mWeatherIcons.add(Integer.valueOf(8));
        mWeatherIcons.add(Integer.valueOf(11));
        mWeatherIcons.add(Integer.valueOf(12));
        mWeatherIcons.add(Integer.valueOf(13));
        mWeatherIcons.add(Integer.valueOf(14));
        mWeatherIcons.add(Integer.valueOf(15));
        mWeatherIcons.add(Integer.valueOf(16));
        mWeatherIcons.add(Integer.valueOf(17));
        mWeatherIcons.add(Integer.valueOf(18));
        mWeatherIcons.add(Integer.valueOf(19));
        mWeatherIcons.add(Integer.valueOf(20));
        mWeatherIcons.add(Integer.valueOf(21));
        mWeatherIcons.add(Integer.valueOf(22));
        mWeatherIcons.add(Integer.valueOf(23));
        mWeatherIcons.add(Integer.valueOf(24));
        mWeatherIcons.add(Integer.valueOf(25));
        mWeatherIcons.add(Integer.valueOf(26));
        mWeatherIcons.add(Integer.valueOf(29));
        mWeatherIcons.add(Integer.valueOf(30));
        mWeatherIcons.add(Integer.valueOf(31));
        mWeatherIcons.add(Integer.valueOf(32));
        mWeatherIcons.add(Integer.valueOf(33));
        mWeatherIcons.add(Integer.valueOf(34));
        mWeatherIcons.add(Integer.valueOf(35));
        mWeatherIcons.add(Integer.valueOf(36));
        mWeatherIcons.add(Integer.valueOf(37));
        mWeatherIcons.add(Integer.valueOf(38));
        mWeatherIcons.add(Integer.valueOf(39));
        mWeatherIcons.add(Integer.valueOf(40));
        mWeatherIcons.add(Integer.valueOf(41));
        mWeatherIcons.add(Integer.valueOf(42));
        mWeatherIcons.add(Integer.valueOf(43));
        mWeatherIcons.add(Integer.valueOf(44));
        mWeatherConditionImages.clear();
        mWeatherConditionImages.add(Integer.valueOf(0x7f02019e));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201a7));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b2));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b8));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b9));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201ba));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201bb));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201bc));
        mWeatherConditionImages.add(Integer.valueOf(0x7f020195));
        mWeatherConditionImages.add(Integer.valueOf(0x7f020196));
        mWeatherConditionImages.add(Integer.valueOf(0x7f020197));
        mWeatherConditionImages.add(Integer.valueOf(0x7f020198));
        mWeatherConditionImages.add(Integer.valueOf(0x7f020199));
        mWeatherConditionImages.add(Integer.valueOf(0x7f02019a));
        mWeatherConditionImages.add(Integer.valueOf(0x7f02019b));
        mWeatherConditionImages.add(Integer.valueOf(0x7f02019c));
        mWeatherConditionImages.add(Integer.valueOf(0x7f02019d));
        mWeatherConditionImages.add(Integer.valueOf(0x7f02019f));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201a0));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201a1));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201a2));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201a3));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201a4));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201a5));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201a6));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201a8));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201a9));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201aa));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201ab));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201ac));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201ad));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201ae));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201af));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b0));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b1));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b3));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b4));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b5));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b6));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b7));
        mWeatherConditionImages.add(Integer.valueOf(0x7f020195));
        mWeatherConditionImages.add(Integer.valueOf(0x7f0201b2));
        mWeatherConditionImages.add(Integer.valueOf(0x7f020199));
        mWeatherConditionImages.add(Integer.valueOf(0x7f02019c));
        mWeatherConditionImages.add(Integer.valueOf(0x7f020199));
        mWeatherConditionBlueImages.clear();
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020027));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020030));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02003b));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020041));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020042));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020043));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020044));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020045));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02001e));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02001f));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020020));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020021));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020022));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020023));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020024));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020025));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020026));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020028));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020029));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02002a));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02002b));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02002c));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02002d));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02002e));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02002f));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020031));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020032));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020033));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020034));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020035));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020036));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020037));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020038));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020039));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02003a));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02003c));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02003d));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02003e));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02003f));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020040));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02001e));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f02003b));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020022));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020025));
        mWeatherConditionBlueImages.add(Integer.valueOf(0x7f020022));
        mWeatherConditionDarkImages.clear();
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02007e));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020087));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020092));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020098));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020099));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02009a));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02009b));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02009c));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020075));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020076));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020077));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020078));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020079));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02007a));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02007b));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02007c));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02007d));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02007f));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020080));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020081));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020082));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020083));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020084));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020085));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020086));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020088));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020089));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02008a));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02008b));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02008c));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02008d));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02008e));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02008f));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020090));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020091));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020093));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020094));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020095));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020096));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020097));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020075));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020092));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020079));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f02007c));
        mWeatherConditionDarkImages.add(Integer.valueOf(0x7f020079));
    }

    public String getForecastUrl()
    {
        return forecastUrl;
    }

    public double getLatitude()
    {
        return mLatitude;
    }

    public double getLongitude()
    {
        return mLongitude;
    }

    public IAmbientInfo retreiveDataFromStream(String s, IAmbientInfo iambientinfo, String s1)
    {
        WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
        if (weatherambientinfo == null) goto _L2; else goto _L1
_L1:
        mResources = getResourceObject();
        if (mResources == null) goto _L2; else goto _L3
_L3:
        if (iambientinfo == null) goto _L5; else goto _L4
_L4:
        if (!s1.equalsIgnoreCase("WEATHER_MIN_MAX_TEMPARATURE")) goto _L7; else goto _L6
_L6:
        JSONObject jsonobject = new JSONObject(s);
        if (jsonobject == null) goto _L9; else goto _L8
_L8:
        JSONArray jsonarray = jsonobject.getJSONArray("DailyForecasts");
        if (jsonarray.length() <= 0) goto _L9; else goto _L10
_L10:
        JSONObject jsonobject1 = jsonarray.getJSONObject(0);
        if (jsonobject1 == null) goto _L9; else goto _L11
_L11:
        JSONObject jsonobject2;
        JSONObject jsonobject3;
        float f;
        JSONObject jsonobject4;
        float f1;
        JSONArray jsonarray1;
        JSONObject jsonobject5;
        String s2;
        char c;
        String as[];
        String s4;
        JSONObject jsonobject6;
        JSONObject jsonobject7;
        float f2;
        int j;
        int k;
        try
        {
            jsonobject2 = jsonobject1.getJSONObject("Temperature");
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            weatherambientinfo.setPushImageType("push_data_error_image");
            return weatherambientinfo;
        }
        if (jsonobject2 == null) goto _L9; else goto _L12
_L12:
        jsonobject3 = jsonobject2.getJSONObject("Minimum");
        f = 0.0F;
        if (jsonobject3 == null) goto _L14; else goto _L13
_L13:
        if (jsonobject3.getString("Value") == null) goto _L16; else goto _L15
_L15:
        f = Float.parseFloat(jsonobject3.getString("Value"));
_L14:
        jsonobject4 = jsonobject2.getJSONObject("Maximum");
        f1 = 0.0F;
        if (jsonobject4 == null) goto _L18; else goto _L17
_L17:
        if (jsonobject4.getString("Value") == null) goto _L20; else goto _L19
_L19:
        f1 = Float.parseFloat(jsonobject4.getString("Value"));
_L18:
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("Max Temp :  ").append(f1).append("Min Temp:  ").append(f).toString());
        weatherambientinfo.setMaxTemp((int)f1);
        weatherambientinfo.setMinTemp((int)f);
_L9:
        if (weatherambientinfo.getMinTemp() != 0 || weatherambientinfo.getMaxTemp() != 0) goto _L2; else goto _L21
_L21:
        weatherambientinfo.setPushImageType("push_data_error_image");
        return weatherambientinfo;
_L7:
        if (!s1.equalsIgnoreCase("WEATHER_HOUR_TEMPARATURE")) goto _L2; else goto _L22
_L22:
        jsonarray1 = new JSONArray(s);
        if (jsonarray1.length() <= 0) goto _L24; else goto _L23
_L23:
        jsonobject5 = jsonarray1.getJSONObject(0);
        if (jsonobject5 == null) goto _L24; else goto _L25
_L25:
        s2 = jsonobject5.getString("LocalObservationDateTime");
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append(" Original Local Time : ").append(s2).toString());
        if (s2 == null) goto _L27; else goto _L26
_L26:
        c = s2.charAt(-6 + s2.length());
        String s3 = s2.substring(-5 + s2.length(), s2.length());
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append(" SubString Local Time : ").append(s3).toString());
        as = s3.split(":");
        if (as == null) goto _L27; else goto _L28
_L28:
        if (as.length != 2) goto _L27; else goto _L29
_L29:
        j = Integer.parseInt(as[0]);
        k = Integer.parseInt(as[1]);
        if (c != '-') goto _L31; else goto _L30
_L30:
        weatherambientinfo.setGmtOffset((new StringBuilder()).append("-").append(j).append(":").append(k).toString());
_L35:
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("GMT OFF SET  for ").append(weatherambientinfo.getCityName()).append("  is : ").append(weatherambientinfo.getGmtOffset()).toString());
_L27:
        int i = Integer.parseInt(jsonobject5.getString("WeatherIcon"));
        weatherambientinfo.setIconNumber(i);
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("WeatherIcon:  ").append(i).toString());
        s4 = jsonobject5.getString("WeatherText");
        if (s4 == null)
            break MISSING_BLOCK_LABEL_628;
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("weatherCondition:  ").append(s4).toString());
        weatherambientinfo.setWeatherCondition(s4);
        jsonobject6 = jsonobject5.getJSONObject("Temperature");
        if (jsonobject6 == null) goto _L24; else goto _L32
_L32:
        jsonobject7 = jsonobject6.getJSONObject("Imperial");
        if (jsonobject7 == null) goto _L24; else goto _L33
_L33:
        if (jsonobject7.getString("Value") == null)
            break MISSING_BLOCK_LABEL_870;
        f2 = Float.parseFloat(jsonobject7.getString("Value"));
_L36:
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("Temp :  ").append(f2).toString());
        weatherambientinfo.setHourTemp((int)f2);
_L24:
        if (weatherambientinfo.getWeatherCondition() != null && (float)weatherambientinfo.getHourTemp() != -10000F) goto _L2; else goto _L34
_L34:
        weatherambientinfo.setPushImageType("push_data_error_image");
        return weatherambientinfo;
_L31:
        if (c != '+')
            break MISSING_BLOCK_LABEL_813;
        weatherambientinfo.setGmtOffset((new StringBuilder()).append("+").append(j).append(":").append(k).toString());
          goto _L35
        weatherambientinfo.setGmtOffset((new StringBuilder()).append(j).append(":").append(k).toString());
          goto _L35
_L5:
        Log.d("WeatherAmbientDisplay", "Ambient Info is null");
_L2:
        return weatherambientinfo;
_L16:
        f = 0.0F;
          goto _L14
_L20:
        f1 = 0.0F;
          goto _L18
        f2 = -1000F;
          goto _L36
    }

    public void setForecastUrl(String s)
    {
        forecastUrl = s;
    }

    public void setLatitude(double d)
    {
        mLatitude = d;
    }

    public void setLongitude(double d)
    {
        mLongitude = d;
    }

    public Bitmap writeClockDataOntoBitmap(IAmbientInfo iambientinfo)
        throws Exception
    {
label0:
        {
            String s;
            String s1;
            String s2;
            String s4;
label1:
            {
                WeatherAmbientInfo weatherambientinfo;
                String s3;
label2:
                {
label3:
                    {
                        setWeatherConditions();
                        weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
                        s = (new StringBuilder()).append(AndroidUtils.getWeatherTemperatureBasedOnUnit(weatherambientinfo.getMaxTemp())).append("\260").toString();
                        s1 = (new StringBuilder()).append(AndroidUtils.getWeatherTemperatureBasedOnUnit(weatherambientinfo.getMinTemp())).append("\260").toString();
                        s2 = ((WeatherAmbientInfo)iambientinfo).getWeatherCondition();
                        if (s2 != null)
                            s2 = s2.trim().toLowerCase(Locale.US);
                        mResources = getResourceObject();
                        if (mResources == null)
                            break label0;
                        s3 = ((WeatherAmbientInfo)iambientinfo).getPushImageType();
                        int i = weatherambientinfo.getHourTemp();
                        if ("push_online_image".equals(s3) && s2 != null)
                        {
                            Log.d("WeatherAmbientDisplay", "PUSH_ONLINE_IMAGE_TYPE");
                            int i2;
                            for (i2 = 0; i2 < mClockBackGroundImageIds.length && (i < mTemperatureLowerRange[i2] || i > mTemperatureUpperRange[i2]); i2++);
                            if (i2 >= mClockBackGroundImageIds.length)
                                i2 = 0;
                            s4 = (new StringBuilder()).append(AndroidUtils.getWeatherTemperatureBasedOnUnit(i)).append("\260").toString();
                            mMainImage = BitmapFactory.decodeResource(mResources, mClockBackGroundImageIds[i2]).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
                            break label1;
                        }
                        if (!"push_data_error_image".equals(s3))
                            break label2;
                        if (s2 != null)
                        {
                            int k1 = weatherambientinfo.getMaxTemp();
                            s4 = null;
                            if (k1 != 0)
                                break label3;
                            int l1 = weatherambientinfo.getMinTemp();
                            s4 = null;
                            if (l1 != 0)
                                break label3;
                        }
                        s4 = "--";
                        s1 = "L:--";
                        s = "H:--";
                    }
                    Log.d("WeatherAmbientDisplay", "PUSH_DATA_ERROR_IMAGE_TYPE");
                    mMainImage = BitmapFactory.decodeResource(mResources, mClockBackGroundImageIds[0]).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
                    break label1;
                }
label4:
                {
label5:
                    {
                        if (!"push_offline_image".equals(s3))
                            break label4;
                        if (s2 != null)
                        {
                            int i1 = weatherambientinfo.getMaxTemp();
                            s4 = null;
                            if (i1 != 0)
                                break label5;
                            int j1 = weatherambientinfo.getMinTemp();
                            s4 = null;
                            if (j1 != 0)
                                break label5;
                        }
                        s4 = "--";
                        s1 = "L:--";
                        s = "H:--";
                    }
                    Log.d("WeatherAmbientDisplay", "PUSH_OFFLINE_IMAGE_TYPE");
                    mMainImage = BitmapFactory.decodeResource(mResources, mClockBackGroundImageIds[0]).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
                    break label1;
                }
label6:
                {
                    boolean flag = "push_airplane_image".equals(s3);
                    s4 = null;
                    if (!flag)
                        break label1;
                    if (s2 != null)
                    {
                        int k = weatherambientinfo.getMaxTemp();
                        s4 = null;
                        if (k != 0)
                            break label6;
                        int l = weatherambientinfo.getMinTemp();
                        s4 = null;
                        if (l != 0)
                            break label6;
                    }
                    s4 = "--";
                    s1 = "--";
                    s = "--";
                }
                Log.d("WeatherAmbientDisplay", "PUSH_AIRPLANE_IMAGE_TYPE");
                mMainImage = BitmapFactory.decodeResource(mResources, mClockBackGroundImageIds[0]).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
            }
            Bitmap bitmap = Bitmap.createBitmap(mMainImage.getWidth(), mMainImage.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
            convertImage(mMainImage, bitmap);
            Canvas canvas = new Canvas(bitmap);
            if (canvas != null)
            {
                Log.d("WeatherAmbientDisplay", "We have main  image to the ambient");
                Paint paint2 = new Paint();
                if (paint2 != null)
                {
                    paint2.setStyle(android.graphics.Paint.Style.FILL);
                    if (s2 != null && mWeatherIcons != null)
                    {
                        Integer integer = Integer.valueOf(((WeatherAmbientInfo)iambientinfo).getIconNumber());
                        int j = mWeatherIcons.indexOf(integer);
                        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("Icon Number (Image Index) ").append(j).toString());
                        if (mWeatherConditionImages != null)
                        {
                            Log.d("WeatherAmbientDisplay", "In Weather conditions");
                            if (j != -1 && j < mWeatherConditionImages.size())
                                canvas.drawBitmap(BitmapFactory.decodeResource(mResources, ((Integer)mWeatherConditionImages.get(j)).intValue()).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 85F, 4F, paint2);
                        }
                    }
                }
                if (iambientinfo instanceof CurrentCityWeatherAmbientInfo)
                    canvas.drawBitmap(BitmapFactory.decodeResource(mResources, 0x7f0200e4).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 259F, 45F, paint2);
            }
            Canvas canvas1 = new Canvas(bitmap);
            if (canvas1 != null)
            {
                Paint paint = new Paint();
                if (paint != null)
                {
                    paint.setStyle(android.graphics.Paint.Style.FILL);
                    paint.setColor(-1);
                    paint.setTypeface(ToqData.getInstance().getQcomRegularTypeFace());
                    paint.setTextSize(52F);
                    paint.setTextAlign(android.graphics.Paint.Align.RIGHT);
                    paint.setAntiAlias(true);
                    if (s4 != null && canvas1 != null && paint != null)
                        canvas1.drawText(s4, 165F, 155F, paint);
                }
                Paint paint1 = new Paint();
                if (paint1 != null)
                {
                    paint1.setStyle(android.graphics.Paint.Style.FILL);
                    paint1.setColor(-1);
                    paint1.setTypeface(ToqData.getInstance().getQcomSemiboldTypeFace());
                    paint1.setTextSize(20F);
                    paint1.setTextAlign(android.graphics.Paint.Align.RIGHT);
                    paint1.setAntiAlias(true);
                    paint.setFakeBoldText(true);
                    if (s != null && s1 != null && canvas1 != null && paint1 != null)
                    {
                        canvas1.drawText(s, 220F, 134F, paint1);
                        canvas1.drawText(s1, 220F, 157F, paint1);
                    }
                    paint1.setStyle(android.graphics.Paint.Style.FILL);
                    paint1.setColor(-1);
                    paint1.setTextSize(20F);
                    paint1.setTextAlign(android.graphics.Paint.Align.CENTER);
                    paint1.setTypeface(ToqData.getInstance().getQcomSemiboldTypeFace());
                    paint1.setAntiAlias(true);
                    paint1.setLinearText(true);
                    paint.setFakeBoldText(true);
                    String s5 = ((WeatherAmbientInfo)iambientinfo).getCityName();
                    if (s5 != null && canvas1 != null && paint1 != null)
                    {
                        Log.d("WeatherAmbientDisplay", "Setting Citye to the ambient");
                        if (s5.length() > 25)
                            s5 = (new StringBuilder()).append(s5.substring(0, 25)).append("...").toString();
                        canvas1.drawText(s5, 146F, 179F, paint1);
                    }
                }
            }
            Log.d("WeatherAmbientDisplay", "Returning Bitmap to  ambient");
            mMainImage = null;
            return bitmap;
        }
        Log.e("WeatherAmbientDisplay", "Context is null, not able to write data on bitmap");
        return null;
    }

    public CityClockImageRepo writeCurrentCityDataOntoBitmap(IAmbientInfo iambientinfo)
    {
        WeatherAmbientInfo weatherambientinfo;
        CityClockImageRepo cityclockimagerepo;
        weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
        cityclockimagerepo = null;
        if (weatherambientinfo == null) goto _L2; else goto _L1
_L1:
        String s;
        String s1;
        Paint paint;
        int i;
        setWeatherConditions();
        s = weatherambientinfo.getWeatherCondition();
        s1 = null;
        if (s != null)
        {
            s = s.trim().toLowerCase(Locale.US);
            s1 = (new StringBuilder()).append(AndroidUtils.getWeatherTemperatureBasedOnUnit(weatherambientinfo.getHourTemp())).append("\260").toString();
        }
        cityclockimagerepo = new CityClockImageRepo(3);
        mResources = getResourceObject();
        paint = new Paint();
        if (paint != null)
        {
            paint.setStyle(android.graphics.Paint.Style.FILL);
            paint.setTypeface(ToqData.getInstance().getQcomRegularTypeFace());
            paint.setTextSize(46F);
            paint.setTextAlign(android.graphics.Paint.Align.CENTER);
            paint.setAntiAlias(true);
        }
        i = 0;
_L41:
        if (i >= 3) goto _L2; else goto _L3
_L3:
        if (i != 0) goto _L5; else goto _L4
_L4:
        Log.d("WeatherAmbientDisplay", "Setting Blue Clock Images");
        if (!"push_airplane_image".equals(weatherambientinfo.getPushImageType())) goto _L7; else goto _L6
_L6:
        cityclockimagerepo.getWeatherConditionImage()[i] = BitmapFactory.decodeResource(mResources, 0x7f0200cc).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        cityclockimagerepo.getWeatherHourTempImage()[i] = BitmapFactory.decodeResource(mResources, 0x7f0200cf).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
          goto _L8
_L7:
        if (!"push_online_image".equals(weatherambientinfo.getPushImageType())) goto _L8; else goto _L9
_L9:
        if (mWeatherIcons == null) goto _L11; else goto _L10
_L10:
        int l;
        Integer integer2 = Integer.valueOf(((WeatherAmbientInfo)iambientinfo).getIconNumber());
        l = mWeatherIcons.indexOf(integer2);
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("Icon Number (Image Index) ").append(l).toString());
        if (mWeatherConditionBlueImages == null) goto _L11; else goto _L12
_L12:
        Log.d("WeatherAmbientDisplay", "In Weather conditions");
        if (l == -1) goto _L14; else goto _L13
_L13:
        if (l < mWeatherConditionBlueImages.size()) goto _L15; else goto _L14
_L14:
        Bitmap bitmap5 = BitmapFactory.decodeResource(mResources, 0x7f0200d2).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
_L16:
        cityclockimagerepo.getWeatherConditionImage()[i] = bitmap5;
_L11:
        Bitmap bitmap4;
        Canvas canvas2;
        bitmap4 = Bitmap.createBitmap(110, 80, android.graphics.Bitmap.Config.ARGB_8888);
        canvas2 = new Canvas(bitmap4);
        paint.setColor(mResources.getColor(0x7f070004));
        if (s1 == null || s == null || canvas2 == null || paint == null)
            break MISSING_BLOCK_LABEL_428;
        canvas2.drawText(s1, 55F, 56F, paint);
        Exception exception;
        cityclockimagerepo.getWeatherHourTempImage()[i] = bitmap4;
          goto _L8
_L15:
        try
        {
            bitmap5 = BitmapFactory.decodeResource(mResources, ((Integer)mWeatherConditionBlueImages.get(l)).intValue()).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
          goto _L16
_L5:
        if (i != 1) goto _L18; else goto _L17
_L17:
        Log.d("WeatherAmbientDisplay", "Setting Dark Clock Images");
        if (!"push_airplane_image".equals(weatherambientinfo.getPushImageType())) goto _L20; else goto _L19
_L19:
        cityclockimagerepo.getWeatherConditionImage()[i] = BitmapFactory.decodeResource(mResources, 0x7f0200cd).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        cityclockimagerepo.getWeatherHourTempImage()[i] = BitmapFactory.decodeResource(mResources, 0x7f0200d0).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
          goto _L8
_L20:
        if (!"push_online_image".equals(weatherambientinfo.getPushImageType())) goto _L8; else goto _L21
_L21:
        if (mWeatherIcons == null) goto _L23; else goto _L22
_L22:
        int j;
        Integer integer = Integer.valueOf(((WeatherAmbientInfo)iambientinfo).getIconNumber());
        j = mWeatherIcons.indexOf(integer);
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("Icon Number (Image Index) ").append(j).toString());
        if (mWeatherConditionDarkImages == null) goto _L23; else goto _L24
_L24:
        Log.d("WeatherAmbientDisplay", "In Weather conditions");
        if (j == -1) goto _L26; else goto _L25
_L25:
        if (j < mWeatherConditionDarkImages.size()) goto _L27; else goto _L26
_L26:
        Bitmap bitmap1 = BitmapFactory.decodeResource(mResources, 0x7f0200d3).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
_L28:
        cityclockimagerepo.getWeatherConditionImage()[i] = bitmap1;
_L23:
        Bitmap bitmap;
        Canvas canvas;
        bitmap = Bitmap.createBitmap(110, 80, android.graphics.Bitmap.Config.ARGB_8888);
        canvas = new Canvas(bitmap);
        paint.setColor(0xff000000);
        if (s1 == null || s == null || canvas == null || paint == null)
            break MISSING_BLOCK_LABEL_752;
        canvas.drawText(s1, 55F, 56F, paint);
        cityclockimagerepo.getWeatherHourTempImage()[i] = bitmap;
          goto _L8
_L27:
        bitmap1 = BitmapFactory.decodeResource(mResources, ((Integer)mWeatherConditionDarkImages.get(j)).intValue()).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
          goto _L28
_L18:
        if (i != 2) goto _L8; else goto _L29
_L29:
        Log.d("WeatherAmbientDisplay", "Setting White Clock Images");
        if (!"push_airplane_image".equals(weatherambientinfo.getPushImageType())) goto _L31; else goto _L30
_L30:
        cityclockimagerepo.getWeatherConditionImage()[i] = BitmapFactory.decodeResource(mResources, 0x7f0200ce).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        cityclockimagerepo.getWeatherHourTempImage()[i] = BitmapFactory.decodeResource(mResources, 0x7f0200d1).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
          goto _L8
_L31:
        if (!"push_online_image".equals(weatherambientinfo.getPushImageType())) goto _L8; else goto _L32
_L32:
        if (mWeatherIcons == null) goto _L34; else goto _L33
_L33:
        int k;
        Integer integer1 = Integer.valueOf(((WeatherAmbientInfo)iambientinfo).getIconNumber());
        k = mWeatherIcons.indexOf(integer1);
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("Icon Number (Image Index) ").append(k).toString());
        if (mWeatherConditionImages == null) goto _L34; else goto _L35
_L35:
        Log.d("WeatherAmbientDisplay", "In Weather conditions");
        if (k == -1) goto _L37; else goto _L36
_L36:
        if (k < mWeatherConditionImages.size()) goto _L38; else goto _L37
_L37:
        Bitmap bitmap3;
        bitmap3 = BitmapFactory.decodeResource(mResources, 0x7f0200d4).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("Setting Default White Clock Image with index +").append(k).toString());
_L39:
        cityclockimagerepo.getWeatherConditionImage()[i] = bitmap3;
_L34:
        Bitmap bitmap2;
        Canvas canvas1;
        bitmap2 = Bitmap.createBitmap(110, 80, android.graphics.Bitmap.Config.ARGB_8888);
        canvas1 = new Canvas(bitmap2);
        paint.setColor(-1);
        if (s1 == null || s == null || canvas1 == null || paint == null)
            break MISSING_BLOCK_LABEL_1091;
        canvas1.drawText(s1, 55F, 56F, paint);
        cityclockimagerepo.getWeatherHourTempImage()[i] = bitmap2;
          goto _L8
_L38:
        bitmap3 = BitmapFactory.decodeResource(mResources, ((Integer)mWeatherConditionImages.get(k)).intValue()).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("Setting Proper White Clock Image with index +").append(k).toString());
          goto _L39
_L2:
        return cityclockimagerepo;
_L8:
        i++;
        if (true) goto _L41; else goto _L40
_L40:
    }

    public Bitmap writeDataOntoBitmap(IAmbientInfo iambientinfo)
    {
label0:
        {
            WeatherAmbientInfo weatherambientinfo;
            String s;
            String s1;
            String s2;
            String s4;
label1:
            {
                String s3;
label2:
                {
label3:
                    {
                        setWeatherConditions();
                        weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
                        s = (new StringBuilder()).append(AndroidUtils.getWeatherTemperatureBasedOnUnit(weatherambientinfo.getMaxTemp())).append("\260").toString();
                        s1 = (new StringBuilder()).append(AndroidUtils.getWeatherTemperatureBasedOnUnit(weatherambientinfo.getMinTemp())).append("\260").toString();
                        s2 = weatherambientinfo.getWeatherCondition();
                        if (s2 != null)
                            s2 = s2.trim().toLowerCase(Locale.US);
                        mResources = getResourceObject();
                        if (mResources == null)
                            break label0;
                        s3 = weatherambientinfo.getPushImageType();
                        int i = weatherambientinfo.getHourTemp();
                        if ("push_online_image".equals(s3) && s2 != null)
                        {
                            Log.d("WeatherAmbientDisplay", "PUSH_ONLINE_IMAGE_TYPE");
                            int i2;
                            for (i2 = 0; i2 < mBackGroundImageIds.length && (i < mTemperatureLowerRange[i2] || i > mTemperatureUpperRange[i2]); i2++);
                            if (i2 >= mBackGroundImageIds.length)
                                i2 = 0;
                            s4 = (new StringBuilder()).append(AndroidUtils.getWeatherTemperatureBasedOnUnit(i)).append("\260").toString();
                            mMainImage = BitmapFactory.decodeResource(mResources, mBackGroundImageIds[i2]).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
                            break label1;
                        }
                        if (!"push_data_error_image".equals(s3))
                            break label2;
                        if (s2 != null)
                        {
                            int k1 = weatherambientinfo.getMaxTemp();
                            s4 = null;
                            if (k1 != 0)
                                break label3;
                            int l1 = weatherambientinfo.getMinTemp();
                            s4 = null;
                            if (l1 != 0)
                                break label3;
                        }
                        s4 = "--";
                        s1 = "--";
                        s = "--";
                    }
                    Log.d("WeatherAmbientDisplay", "PUSH_DATA_ERROR_IMAGE_TYPE");
                    mMainImage = BitmapFactory.decodeResource(mResources, 0x7f02005d).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
                    break label1;
                }
label4:
                {
label5:
                    {
                        if (!"push_offline_image".equals(s3))
                            break label4;
                        if (s2 != null)
                        {
                            int i1 = weatherambientinfo.getMaxTemp();
                            s4 = null;
                            if (i1 != 0)
                                break label5;
                            int j1 = weatherambientinfo.getMinTemp();
                            s4 = null;
                            if (j1 != 0)
                                break label5;
                        }
                        s4 = "--";
                        s1 = "--";
                        s = "--";
                    }
                    Log.d("WeatherAmbientDisplay", "PUSH_OFFLINE_IMAGE_TYPE");
                    mMainImage = BitmapFactory.decodeResource(mResources, 0x7f02005d).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
                    break label1;
                }
label6:
                {
                    boolean flag = "push_airplane_image".equals(s3);
                    s4 = null;
                    if (!flag)
                        break label1;
                    if (s2 != null)
                    {
                        int k = weatherambientinfo.getMaxTemp();
                        s4 = null;
                        if (k != 0)
                            break label6;
                        int l = weatherambientinfo.getMinTemp();
                        s4 = null;
                        if (l != 0)
                            break label6;
                    }
                    s4 = "--";
                    s1 = "--";
                    s = "--";
                }
                Log.d("WeatherAmbientDisplay", "PUSH_AIRPLANE_IMAGE_TYPE");
                mMainImage = BitmapFactory.decodeResource(mResources, 0x7f02005d).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
            }
            Bitmap bitmap = Bitmap.createBitmap(276, 152, android.graphics.Bitmap.Config.ARGB_8888);
            Bitmap bitmap1 = Bitmap.createBitmap(mMainImage.getWidth(), mMainImage.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
            convertImage(mMainImage, bitmap1);
            Canvas canvas = new Canvas(bitmap);
            Paint paint = new Paint();
            paint.setStyle(android.graphics.Paint.Style.FILL);
            canvas.drawBitmap(bitmap1, 0.0F, 0.0F, paint);
            if (canvas != null)
            {
                Log.d("WeatherAmbientDisplay", "We have main image  to the ambient");
                Paint paint3 = new Paint();
                if (paint3 != null)
                {
                    paint3.setStyle(android.graphics.Paint.Style.FILL);
                    if (s2 != null && mWeatherIcons != null)
                    {
                        Integer integer = Integer.valueOf(((WeatherAmbientInfo)iambientinfo).getIconNumber());
                        int j = mWeatherIcons.indexOf(integer);
                        Log.d("WeatherAmbientDisplay", (new StringBuilder()).append("Icon Number (Image Index) ").append(j).toString());
                        if (mWeatherConditionImages != null)
                        {
                            Log.d("WeatherAmbientDisplay", "In Weather conditions");
                            if (j != -1 && j < mWeatherIcons.size())
                                canvas.drawBitmap(BitmapFactory.decodeResource(mResources, ((Integer)mWeatherConditionImages.get(j)).intValue()).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 158F, 40F, paint3);
                        }
                    }
                    if (iambientinfo instanceof CurrentCityWeatherAmbientInfo)
                        canvas.drawBitmap(BitmapFactory.decodeResource(mResources, 0x7f0200e4).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 254F, 20F, paint3);
                }
                Paint paint4 = new Paint();
                if (paint4 != null)
                {
                    paint4.setStyle(android.graphics.Paint.Style.FILL);
                    paint4.setAntiAlias(true);
                    paint4.setColor(mResources.getColor(0x7f070006));
                    canvas.drawRect(0.0F, mMainImage.getHeight(), 276F, 3 + mMainImage.getHeight(), paint4);
                }
            }
            Canvas canvas1 = new Canvas(bitmap);
            if (canvas1 != null)
            {
                Paint paint1 = new Paint();
                if (paint1 != null)
                {
                    paint1.setStyle(android.graphics.Paint.Style.FILL);
                    paint1.setColor(-1);
                    paint1.setTypeface(ToqData.getInstance().getQcomRegularTypeFace());
                    paint1.setTextSize(70F);
                    paint1.setTextAlign(android.graphics.Paint.Align.LEFT);
                    paint1.setAntiAlias(true);
                    if (s4 != null && canvas1 != null && paint1 != null)
                        canvas1.drawText(s4, 16F, 105F, paint1);
                }
                Paint paint2 = new Paint();
                if (paint2 != null)
                {
                    paint2.setStyle(android.graphics.Paint.Style.FILL);
                    paint2.setColor(-1);
                    paint2.setTypeface(ToqData.getInstance().getQcomSemiboldTypeFace());
                    paint2.setTextSize(26F);
                    paint2.setTextAlign(android.graphics.Paint.Align.LEFT);
                    paint2.setAntiAlias(true);
                    canvas1.drawText("H:", 16F, 138F, paint2);
                    canvas1.drawText("L:", 90F, 138F, paint2);
                    paint2.setTypeface(ToqData.getInstance().getQcomRegularTypeFace());
                    if (s != null && s1 != null && canvas1 != null && paint2 != null)
                    {
                        canvas1.drawText(s, 45F, 138F, paint2);
                        canvas1.drawText(s1, 119F, 138F, paint2);
                    }
                    paint2.setStyle(android.graphics.Paint.Style.FILL);
                    paint2.setColor(-1);
                    paint2.setTextSize(29F);
                    paint2.setTextAlign(android.graphics.Paint.Align.LEFT);
                    paint2.setTypeface(ToqData.getInstance().getQcomRegularTypeFace());
                    paint2.setAntiAlias(true);
                    paint2.setLinearText(true);
                    String s5 = weatherambientinfo.getCityName();
                    if (s5 != null && canvas1 != null && paint2 != null)
                    {
                        if (s5.length() > 15)
                            s5 = (new StringBuilder()).append(s5.substring(0, 15)).append("...").toString();
                        Log.d("WeatherAmbientDisplay", "Setting City to the ambient");
                        canvas1.drawText(s5, 10F, 37F, paint2);
                    }
                }
            }
            if (mMainImage != null)
            {
                Log.d("MainActivity New", (new StringBuilder()).append(" Has Alpha ").append(mMainImage.hasAlpha()).toString());
                Log.d("WeatherAmbientDisplay", "Bitmap is not null");
            }
            mMainImage = null;
            Log.d("WeatherAmbientDisplay", "Returning Bitmap to  ambient");
            return bitmap;
        }
        Log.e("WeatherAmbientDisplay", "Context is null, not able to write data on bitmap");
        return null;
    }

}
