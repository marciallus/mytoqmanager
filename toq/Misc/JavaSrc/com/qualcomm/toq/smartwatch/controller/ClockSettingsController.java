// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.Context;
import android.content.SharedPreferences;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            FMSController

public class ClockSettingsController extends DefaultController
{

    private static final String PRISM_CLOCK_JSON_NAME = "com.qualcomm.qce.prismclock/Prism";
    private static final String STOCK_CLOCK_JSON_NAME = "Stock";
    private static final String TAG = "ClockSettingsController";
    private static final String TILE_CLOCK_JSON_NAME = "com.qualcomm.qce.tileclock/Tile";
    public static final String appName = "CLOCKSETTINGS_CONTROLLER";
    private static ClockSettingsController mInstance = null;


    public static ClockSettingsController getClockSettingsController()
    {
        if (mInstance == null)
            mInstance = new ClockSettingsController();
        return mInstance;
    }

    private void pushClockAppsZipToWD(String s, String s1, String s2)
    {
        String s3 = String.format("/packages/%s/app.zip", new Object[] {
            s2
        });
        Log.d("ClockSettingsController", (new StringBuilder()).append(" Clock Asset file: ").append(s).toString());
        if (s == null)
            break MISSING_BLOCK_LABEL_167;
        java.io.InputStream inputstream;
        if (FMSController.getFmsController() == null)
            break MISSING_BLOCK_LABEL_167;
        inputstream = ClockUtils.getClockUtils().getClockAppInputStream(s, s1);
        if (inputstream != null)
        {
            try
            {
                int i = FMSController.getFmsController().fmsSyncFile(1, inputstream, s3, -1);
                Log.d("ClockSettingsController", (new StringBuilder()).append(" Clock app.zip push status for the file name ==>").append(s).append(" is ").append(i).toString());
                ClockUtils.getClockUtils().deleteClockAppZip(s1);
                return;
            }
            catch (Exception exception)
            {
                Log.e("ClockSettingsController", (new StringBuilder()).append("Failed to copy asset file: ").append(s).append(" details: ").append(exception.toString()).toString());
            }
            break MISSING_BLOCK_LABEL_167;
        }
        Log.e("ClockSettingsController", "pushClockAppsZipToWD : InputStream is NULL");
        return;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    private int synchClockSettings(String s)
    {
        int i = -1;
        if (FMSController.getFmsController() != null)
            i = FMSController.getFmsController().fmsSyncFile(1, new ByteArrayInputStream(s.getBytes()), "/settings/clock_list.jsn", -1);
        return i;
    }

    public JSONObject createClockSettingsJson(Context context)
    {
        JSONObject jsonobject;
        SharedPreferences sharedpreferences;
        String as[];
        jsonobject = new JSONObject();
        sharedpreferences = context.getSharedPreferences("clock_settings_pref", 0);
        as = ClockUtils.getClockUtils().getClockNamesArray();
        if (sharedpreferences == null) goto _L2; else goto _L1
_L1:
        if (sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())) == null) goto _L2; else goto _L3
_L3:
        JSONArray jsonarray;
        HashMap hashmap;
        jsonarray = new JSONArray();
        hashmap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())));
        if (!hashmap.isEmpty()) goto _L5; else goto _L4
_L4:
        Log.d("ClockSettingsController", "Clock hashmap is empty");
        int k = 0;
_L21:
        if (k >= as.length) goto _L7; else goto _L6
_L6:
        String s3 = as[k];
        if (!s3.equals("Bold") && !s3.equals("Weather Grid") && !s3.equals("Prism") && !s3.equals("Agenda") && !s3.equals("Typographic")) goto _L9; else goto _L8
_L8:
        if (!s3.equals("Weather Grid")) goto _L11; else goto _L10
_L10:
        boolean flag = context.getSharedPreferences("ambient__pref", 0).getBoolean("WeatherCurrentCityUpdate", true);
        if (!flag)
            break MISSING_BLOCK_LABEL_226;
        JSONObject jsonobject3 = new JSONObject();
        jsonobject3.put("name", s3);
        jsonarray.put(jsonobject3);
        hashmap.put("Weather Grid", Boolean.valueOf(flag));
          goto _L12
_L11:
        JSONObject jsonobject2 = new JSONObject();
        if (!as[k].equalsIgnoreCase("Stocks")) goto _L14; else goto _L13
_L13:
        jsonobject2.put("name", "Stock");
_L15:
        Exception exception;
        jsonarray.put(jsonobject2);
        hashmap.put(s3, Boolean.valueOf(true));
          goto _L12
_L2:
        return jsonobject;
_L14:
label0:
        {
            if (!as[k].equalsIgnoreCase("Prism"))
                break label0;
            jsonobject2.put("name", "com.qualcomm.qce.prismclock/Prism");
        }
          goto _L15
label1:
        {
            if (!as[k].equalsIgnoreCase("Tile"))
                break label1;
            jsonobject2.put("name", "com.qualcomm.qce.tileclock/Tile");
        }
          goto _L15
label2:
        {
            if (!as[k].equalsIgnoreCase("Degrees"))
                break label2;
            jsonobject2.put("name", "com.qualcomm.qce.degreesclock/Degrees");
        }
          goto _L15
        jsonobject2.put("name", as[k]);
          goto _L15
_L9:
        hashmap.put(s3, Boolean.valueOf(false));
          goto _L12
_L7:
        android.content.SharedPreferences.Editor editor1 = sharedpreferences.edit();
        if (editor1 == null)
            break MISSING_BLOCK_LABEL_476;
        editor1.putString("clock_settings_types", ObjectSerializer.serialize(hashmap));
        editor1.commit();
_L17:
        jsonobject.put("Clocks", jsonarray);
        return jsonobject;
_L5:
        android.content.SharedPreferences.Editor editor;
        if (hashmap.containsKey("Sweater"))
            hashmap.remove("Sweater");
        if (hashmap.containsKey("2014"))
            hashmap.remove("2014");
        if (AndroidUtils.isAtleastOneClockSeleted(hashmap))
            break MISSING_BLOCK_LABEL_579;
        hashmap.put("Bold", Boolean.valueOf(true));
        editor = sharedpreferences.edit();
        if (editor == null)
            break MISSING_BLOCK_LABEL_579;
        editor.putString("clock_settings_types", ObjectSerializer.serialize(hashmap));
        editor.commit();
        ClockUtils clockutils;
        int i;
        clockutils = ClockUtils.getClockUtils();
        i = as.length;
        int j = 0;
_L22:
        if (j >= i) goto _L17; else goto _L16
_L16:
        String s;
        JSONObject jsonobject1;
        String s1;
        s = as[j];
        if (!hashmap.containsKey(s) || !((Boolean)hashmap.get(s)).booleanValue())
            break MISSING_BLOCK_LABEL_757;
        jsonobject1 = new JSONObject();
        s1 = clockutils.getClockInfo(s, "clockType");
        if (!s.equalsIgnoreCase("Stocks")) goto _L19; else goto _L18
_L18:
        jsonobject1.put("name", "Stock");
_L20:
        jsonarray.put(jsonobject1);
        break MISSING_BLOCK_LABEL_757;
_L19:
        if (s1 == null)
            break MISSING_BLOCK_LABEL_738;
        String s2;
        if (!s1.equals("dynamic"))
            break MISSING_BLOCK_LABEL_738;
        s2 = clockutils.getClockInfo(s, "jsonName");
        if (s2 == null)
            continue; /* Loop/switch isn't completed */
        try
        {
            if (!s2.isEmpty())
                jsonobject1.put("name", s2);
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.d("ClockSettingsController", (new StringBuilder()).append("Exception ").append(exception).toString());
        }
          goto _L2
        jsonobject1.put("name", s);
        if (true) goto _L20; else goto _L12
_L12:
        k++;
          goto _L21
        j++;
          goto _L22
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
    }

    public boolean isClockSelected(String s)
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

    public void sendClockAppsZipToWD(Context context)
    {
        SharedPreferences sharedpreferences;
        String as[];
        sharedpreferences = context.getSharedPreferences("clock_settings_pref", 0);
        as = ClockUtils.getClockUtils().getClockNamesArray();
        if (sharedpreferences == null) goto _L2; else goto _L1
_L1:
        if (sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())) == null) goto _L2; else goto _L3
_L3:
        HashMap hashmap;
        int i;
        hashmap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())));
        i = as.length;
        int j = 0;
_L4:
        if (j >= i)
            break; /* Loop/switch isn't completed */
        String s1;
        String s2;
        String s3;
        String s4;
        String s = as[j];
        if (!hashmap.containsKey(s) || !((Boolean)hashmap.get(s)).booleanValue())
            break MISSING_BLOCK_LABEL_203;
        s1 = ClockUtils.getClockUtils().getClockInfo(s, "packageName");
        s2 = ClockUtils.getClockUtils().getClockInfo(s, "appZipName");
        s3 = ClockUtils.getClockUtils().getClockInfo(s, "assetFileName");
        s4 = ClockUtils.getClockUtils().getClockInfo(s, "clockType");
        if (s1 == null)
            break MISSING_BLOCK_LABEL_203;
        if (s1.isEmpty() || s4 == null)
            break MISSING_BLOCK_LABEL_203;
        if (s4.equals("dynamic"))
            pushClockAppsZipToWD(s3, s2, s1);
        j++;
        if (true) goto _L4; else goto _L2
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
_L2:
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
    }

    public void sendClockSettingsToWD(Context context)
    {
        try
        {
            JSONObject jsonobject = createClockSettingsJson(context);
            Log.d("ClockSettingsController", (new StringBuilder()).append("sendClockSettingsToWD() called: \n").append(jsonobject.toString()).toString());
            synchClockSettings(jsonobject.toString());
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(i) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

}
