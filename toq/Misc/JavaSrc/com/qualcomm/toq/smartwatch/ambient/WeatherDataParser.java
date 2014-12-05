// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.Context;
import android.content.res.Resources;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            WeatherAmbientInfo, IAmbientInfo

public class WeatherDataParser
{


    private Resources getResourceObject()
    {
        return ToqApplication.getAppContext().getResources();
    }

    public void parseAutocompleteResponse(String s, ArrayList arraylist, HashMap hashmap)
    {
        JSONArray jsonarray = new JSONArray(s);
        if (jsonarray == null) goto _L2; else goto _L1
_L1:
        hashmap.clear();
        int i = 0;
_L11:
        if (i >= jsonarray.length()) goto _L2; else goto _L3
_L3:
        JSONObject jsonobject;
        String s1;
        String s2;
        jsonobject = jsonarray.getJSONObject(i);
        s1 = jsonobject.getString("Key");
        s2 = jsonobject.getString("LocalizedName");
        if (jsonobject.getJSONObject("AdministrativeArea") != null) goto _L5; else goto _L4
_L4:
        String s3 = "";
_L8:
        if (jsonobject.getJSONObject("Country") != null) goto _L7; else goto _L6
_L6:
        String s4 = "";
_L9:
        if (s2 == null)
            break MISSING_BLOCK_LABEL_106;
        s2 = s2.trim().replaceAll(",", " ");
        if (s3 == null)
            break MISSING_BLOCK_LABEL_125;
        s3 = s3.trim().replaceAll(",", " ");
        if (s4 == null)
            break MISSING_BLOCK_LABEL_144;
        s4 = s4.trim().replaceAll(",", " ");
        hashmap.put((new StringBuilder()).append(s2).append(",").append(s3).append(", ").append(s4).toString(), s1);
        arraylist.add((new StringBuilder()).append(s2).append(",").append(s3).append(", ").append(s4).toString());
        Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity Key  : ").append(s1).append(" city:  ").append(s2).append("  Admin Area : ").append(s3).append("  Country name : ").append(s4).toString());
        i++;
        continue; /* Loop/switch isn't completed */
_L5:
        s3 = jsonobject.getJSONObject("AdministrativeArea").getString("LocalizedName");
          goto _L8
_L7:
        String s5 = jsonobject.getJSONObject("Country").getString("LocalizedName");
        s4 = s5;
          goto _L9
        JSONException jsonexception;
        jsonexception;
        Log.e("Ambient", "WeatherListActivity Cannot process JSON results", jsonexception);
_L2:
        return;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public int parseWeatherKey(String s, WeatherAmbientInfo weatherambientinfo)
    {
        int i;
        byte byte0 = -1;
        if (s != null && s.length() > 1)
        {
            JSONArray jsonarray;
            JSONObject jsonobject;
            JSONObject jsonobject1;
            JSONObject jsonobject2;
            String s1;
            String s2;
            String s3;
            String s4;
            String s5;
            String s6;
            try
            {
                jsonarray = new JSONArray(s);
                if (jsonarray.length() == 0)
                    weatherambientinfo.setPushImageType("push_data_error_image");
            }
            catch (Exception exception)
            {
                Log.d("Ambient", (new StringBuilder()).append("!!! WeaterDataParser-parseWeatherKey Exception in parsing Key for  :  ").append(weatherambientinfo.getCityName()).toString());
                exception.printStackTrace();
                return byte0;
            }
            i = 0;
            continue; /* Loop/switch isn't completed */
        }
          goto _L1
_L10:
        if (i >= jsonarray.length()) goto _L1; else goto _L2
_L2:
        jsonobject = jsonarray.getJSONObject(i);
        if (jsonobject == null) goto _L4; else goto _L3
_L3:
        jsonobject1 = (JSONObject)jsonobject.get("AdministrativeArea");
        jsonobject2 = (JSONObject)jsonobject.get("Country");
        s1 = null;
        s2 = null;
        if (jsonobject1 == null)
            break MISSING_BLOCK_LABEL_118;
        s1 = jsonobject1.getString("ID");
        s2 = jsonobject1.getString("LocalizedName");
        s3 = null;
        s4 = null;
        if (jsonobject2 == null)
            break MISSING_BLOCK_LABEL_147;
        s3 = jsonobject2.getString("ID");
        s4 = jsonobject2.getString("LocalizedName");
        s5 = weatherambientinfo.getStateName();
        if (!s5.equalsIgnoreCase(s1) && !s5.equalsIgnoreCase(s2) && !s5.equalsIgnoreCase(s3) && !s5.equalsIgnoreCase(s4)) goto _L6; else goto _L5
_L5:
        s6 = jsonobject.getString("Key");
        Log.d("Ambient", (new StringBuilder()).append("WeaterDataParser-parseWeatherKey Setting Key for  :  ").append(weatherambientinfo.getCityName()).append(":  ").append(s6).toString());
        weatherambientinfo.setKey(s6);
        if (s6 != null) goto _L8; else goto _L7
_L7:
        weatherambientinfo.setPushImageType("push_data_error_image");
          goto _L6
_L8:
        byte0 = 0;
        weatherambientinfo.setPushImageType("push_online_image");
        byte0 = 0;
          goto _L6
_L4:
        weatherambientinfo.setPushImageType("push_data_error_image");
          goto _L6
_L1:
        return byte0;
_L6:
        i++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public int parserWeatherHourTemparatureData(String s, IAmbientInfo iambientinfo)
    {
        byte byte0;
        WeatherAmbientInfo weatherambientinfo;
        Resources resources;
        byte0 = -1;
        weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
        resources = getResourceObject();
        if (weatherambientinfo == null || resources == null) goto _L2; else goto _L1
_L1:
        if (iambientinfo == null) goto _L4; else goto _L3
_L3:
        JSONArray jsonarray = new JSONArray(s);
        if (jsonarray.length() <= 0) goto _L6; else goto _L5
_L5:
        JSONObject jsonobject = jsonarray.getJSONObject(0);
        if (jsonobject == null) goto _L6; else goto _L7
_L7:
        float f;
        int j;
        int k;
        byte0 = 0;
        String s1;
        char c;
        String as[];
        String s2;
        String s3;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        int i;
        try
        {
            s1 = jsonobject.getString("LocalObservationDateTime");
            Log.d("Ambient", (new StringBuilder()).append("WeatherDataParser-parserWeatherHourTemparatureData OriginaL Local Time : ").append(s1).toString());
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return byte0;
        }
        byte0 = 0;
        if (s1 == null) goto _L9; else goto _L8
_L8:
        c = s1.charAt(-6 + s1.length());
        as = s1.substring(-5 + s1.length(), s1.length()).split(":");
        if (as == null) goto _L9; else goto _L10
_L10:
        if (as.length != 2) goto _L9; else goto _L11
_L11:
        j = Integer.parseInt(as[0]);
        k = Integer.parseInt(as[1]);
        byte0 = 0;
        if (c != '-') goto _L13; else goto _L12
_L12:
        weatherambientinfo.setGmtOffset((new StringBuilder()).append("-").append(j).append(":").append(k).toString());
_L16:
        Log.d("Ambient", (new StringBuilder()).append("WeatherDataParser-parserWeatherHourTemparatureData GMT OFF SET  for ").append(weatherambientinfo.getCityName()).append("  is : ").append(weatherambientinfo.getGmtOffset()).toString());
_L9:
        s2 = jsonobject.getString("WeatherIcon");
        i = Integer.parseInt(s2);
        weatherambientinfo.setIconNumber(i);
        Log.d("Ambient", (new StringBuilder()).append("WeatherDataParser-parserWeatherHourTemparatureData weatherIcon:  ").append(i).toString());
_L17:
        s3 = jsonobject.getString("WeatherText");
        if (s3 == null)
            break MISSING_BLOCK_LABEL_351;
        Log.d("Ambient", (new StringBuilder()).append("WeatherDataParser-parserWeatherHourTemparatureData weatherCondition:  ").append(s3).toString());
        weatherambientinfo.setWeatherCondition(s3);
        jsonobject1 = jsonobject.getJSONObject("Temperature");
        byte0 = 0;
        if (jsonobject1 == null) goto _L6; else goto _L14
_L14:
        jsonobject2 = jsonobject1.getJSONObject("Imperial");
        byte0 = 0;
        if (jsonobject2 == null) goto _L6; else goto _L15
_L15:
        if (jsonobject2.getString("Value") == null)
            break MISSING_BLOCK_LABEL_603;
        f = Float.parseFloat(jsonobject2.getString("Value"));
_L18:
        Log.d("Ambient", (new StringBuilder()).append("WeatherDataParser-parserWeatherHourTemparatureData Temp :  ").append(f).toString());
        weatherambientinfo.setHourTemp((int)f);
_L6:
        if (weatherambientinfo.getWeatherCondition() == null || (float)weatherambientinfo.getHourTemp() == -10000F)
            weatherambientinfo.setPushImageType("push_data_error_image");
          goto _L2
_L13:
        byte0 = 0;
        if (c != '+')
            break MISSING_BLOCK_LABEL_524;
        weatherambientinfo.setGmtOffset((new StringBuilder()).append("+").append(j).append(":").append(k).toString());
          goto _L16
        weatherambientinfo.setGmtOffset((new StringBuilder()).append(j).append(":").append(k).toString());
          goto _L16
        NumberFormatException numberformatexception;
        numberformatexception;
        Log.d("Ambient", (new StringBuilder()).append("Exception ocured while parsing weatherIcon ").append(numberformatexception).toString());
        weatherambientinfo.setIconNumber(-1);
          goto _L17
_L4:
        Log.d("Ambient", "WeatherDataParser-parserWeatherHourTemparatureData Ambient Info is null");
_L2:
        return byte0;
        f = -1000F;
          goto _L18
    }

    public int parserWeatherMinMaxData(String s, IAmbientInfo iambientinfo)
    {
        byte byte0;
        WeatherAmbientInfo weatherambientinfo;
        Resources resources;
        byte0 = -1;
        weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
        resources = getResourceObject();
        if (weatherambientinfo == null || resources == null) goto _L2; else goto _L1
_L1:
        if (iambientinfo == null) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject;
        JSONArray jsonarray;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        JSONObject jsonobject3;
        float f;
        JSONObject jsonobject4;
        float f1;
        try
        {
            jsonobject = new JSONObject(s);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return byte0;
        }
        if (jsonobject == null) goto _L6; else goto _L5
_L5:
        jsonarray = jsonobject.getJSONArray("DailyForecasts");
        if (jsonarray.length() <= 0) goto _L6; else goto _L7
_L7:
        jsonobject1 = jsonarray.getJSONObject(0);
        if (jsonobject1 == null) goto _L6; else goto _L8
_L8:
        jsonobject2 = jsonobject1.getJSONObject("Temperature");
        if (jsonobject2 == null) goto _L6; else goto _L9
_L9:
        byte0 = 0;
        jsonobject3 = jsonobject2.getJSONObject("Minimum");
        f = 0.0F;
        if (jsonobject3 == null) goto _L11; else goto _L10
_L10:
        if (jsonobject3.getString("Value") == null) goto _L13; else goto _L12
_L12:
        f = Float.parseFloat(jsonobject3.getString("Value"));
_L11:
        jsonobject4 = jsonobject2.getJSONObject("Maximum");
        f1 = 0.0F;
        if (jsonobject4 == null)
            break MISSING_BLOCK_LABEL_170;
        if (jsonobject4.getString("Value") == null)
            break MISSING_BLOCK_LABEL_272;
        f1 = Float.parseFloat(jsonobject4.getString("Value"));
_L14:
        Log.d("Ambient", (new StringBuilder()).append("WeatherDataParser-parserWeatherMinMaxData Max Temp :  ").append(f1).append("Min Temp:  ").append(f).toString());
        weatherambientinfo.setMaxTemp((int)f1);
        weatherambientinfo.setMinTemp((int)f);
_L6:
        if (weatherambientinfo.getMinTemp() == 0 && weatherambientinfo.getMaxTemp() == 0)
            byte0 = -1;
          goto _L2
_L4:
        Log.d("Ambient", "WeatherDataParser-parserWeatherMinMaxData Ambient Info is null");
_L2:
        return byte0;
_L13:
        f = 0.0F;
          goto _L11
        f1 = 0.0F;
          goto _L14
    }
}
