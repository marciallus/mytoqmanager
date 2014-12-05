// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import java.io.*;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.utils:
//            ClockInfo, ObjectSerializer

public class ClockUtils
{

    private static final String TAG = "ClockUtils";
    static ClockUtils mInstance = null;


    public static ClockUtils getClockUtils()
    {
        if (mInstance == null)
            mInstance = new ClockUtils();
        return mInstance;
    }

    private ClockInfo retrieveClockInfo(String s, AssetManager assetmanager)
    {
        ClockInfo clockinfo = new ClockInfo();
        ZipInputStream zipinputstream1;
        InputStream inputstream = assetmanager.open(s);
        zipinputstream1 = new ZipInputStream(inputstream);
        BufferedOutputStream bufferedoutputstream1 = null;
_L6:
        ZipEntry zipentry = zipinputstream1.getNextEntry();
        if (zipentry == null) goto _L2; else goto _L1
_L1:
        if (!zipentry.getName().equalsIgnoreCase("clock.json")) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject;
        Log.d("ClockUtils", "clock.json found");
        jsonobject = retrieveJSONFromStream(zipinputstream1);
        if (jsonobject == null) goto _L6; else goto _L5
_L5:
        JSONArray jsonarray = jsonobject.getJSONArray("Clock");
        if (jsonarray == null) goto _L6; else goto _L7
_L7:
        JSONObject jsonobject1 = jsonarray.getJSONObject(0);
        if (jsonobject1 == null) goto _L6; else goto _L8
_L8:
        clockinfo.setAssetFileName(s);
        clockinfo.setDisplayName(jsonobject1.getString("displayName"));
        clockinfo.setPackageName(jsonobject1.getString("packageName"));
        clockinfo.setAppZipName(jsonobject1.getString("asset"));
        clockinfo.setJsonName(jsonobject1.getString("jsonName"));
          goto _L6
        Exception exception;
        exception;
        BufferedOutputStream bufferedoutputstream;
        ZipInputStream zipinputstream;
        zipinputstream = zipinputstream1;
        bufferedoutputstream = bufferedoutputstream1;
_L11:
        Log.e("ClockUtils", "Exception retrieving clock info from bundle");
        if (bufferedoutputstream == null)
            break MISSING_BLOCK_LABEL_180;
        bufferedoutputstream.close();
        String s1;
        File file;
        File file1;
        FileOutputStream fileoutputstream;
        byte abyte0[];
        int i;
        if (zipinputstream != null)
            try
            {
                zipinputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        exception.printStackTrace();
        return clockinfo;
_L4:
        s1 = zipentry.getName();
        if (!s1.contains(".png")) goto _L6; else goto _L9
_L9:
        Log.d("ClockUtils", "Image found");
        file = new File(ToqApplication.getAppContext().getFilesDir(), "/Clocks");
        if (!file.exists())
        {
            if (!file.mkdirs())
                break MISSING_BLOCK_LABEL_340;
            Log.d("ClockUtils", "Directory created");
        }
_L12:
        file1 = new File(file, s1);
        fileoutputstream = new FileOutputStream(file1);
        bufferedoutputstream = new BufferedOutputStream(fileoutputstream);
        abyte0 = new byte[1024];
_L10:
        i = zipinputstream1.read(abyte0);
        if (i == -1)
            break MISSING_BLOCK_LABEL_350;
        bufferedoutputstream.write(abyte0, 0, i);
          goto _L10
        exception;
        zipinputstream = zipinputstream1;
          goto _L11
        Log.e("ClockUtils", "Unable to create directory");
          goto _L12
        clockinfo.setIconName(s1);
        bufferedoutputstream1 = bufferedoutputstream;
          goto _L6
_L2:
        if (bufferedoutputstream1 == null)
            break MISSING_BLOCK_LABEL_373;
        bufferedoutputstream1.close();
        if (zipinputstream1 == null)
            break MISSING_BLOCK_LABEL_383;
        zipinputstream1.close();
        bufferedoutputstream1;
        return clockinfo;
        exception;
        bufferedoutputstream = null;
        zipinputstream = null;
          goto _L11
    }

    private JSONObject retrieveJSONFromStream(InputStream inputstream)
        throws JSONException
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (inputstream == null) goto _L2; else goto _L1
_L1:
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        String s = bufferedreader.readLine();
_L3:
        if (s == null)
            break; /* Loop/switch isn't completed */
        String s1;
        stringbuilder.append(s);
        s1 = bufferedreader.readLine();
        s = s1;
        if (true) goto _L3; else goto _L2
        IOException ioexception1;
        ioexception1;
_L5:
        Log.e("ClockUtils", "Exception retrieving json from stream");
_L2:
        JSONObject jsonobject = new JSONObject(stringbuilder.toString());
        Log.i("ClockUtils", (new StringBuilder()).append("Json Object retrieved : ").append(jsonobject.toString()).toString());
        return jsonobject;
        IOException ioexception;
        ioexception;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void deleteClockAppZip(String s)
    {
        Log.d("ClockUtils", (new StringBuilder()).append("Request to delete Zip file : ").append(s).toString());
        File file = new File((new StringBuilder()).append(ToqApplication.getAppContext().getFilesDir()).append("/Clocks").toString());
        if (file.isDirectory())
        {
            (new File(file, s)).delete();
            Log.d("ClockUtils", (new StringBuilder()).append("Deleted ").append(s).toString());
            return;
        }
        try
        {
            Log.e("ClockUtils", "No clock directory found.Unable to delete");
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return;
    }

    public void deleteOldClockImageFiles()
    {
        File file = new File((new StringBuilder()).append(ToqApplication.getAppContext().getFilesDir()).append("/Clocks").toString());
        if (file.isDirectory())
        {
            String as[] = file.list();
            for (int i = 0; i < as.length; i++)
            {
                Log.d("ClockUtils", (new StringBuilder()).append("Deleting old clock image : ").append(as[i]).toString());
                (new File(file, as[i])).delete();
            }

            file.delete();
            return;
        } else
        {
            Log.e("ClockUtils", "No clock directory found.Unable to delete");
            return;
        }
    }

    public InputStream getClockAppInputStream(String s, String s1)
    {
        AssetManager assetmanager;
        ZipInputStream zipinputstream;
        FileInputStream fileinputstream;
        Log.d("ClockUtils", "Inside getClockAppinputStream()");
        assetmanager = ToqApplication.getAppContext().getAssets();
        zipinputstream = null;
        fileinputstream = null;
        ZipInputStream zipinputstream1;
        InputStream inputstream = assetmanager.open(s);
        zipinputstream1 = new ZipInputStream(inputstream);
_L2:
        ZipEntry zipentry = zipinputstream1.getNextEntry();
        boolean flag;
        flag = false;
        if (zipentry == null)
            break; /* Loop/switch isn't completed */
        boolean flag1 = zipentry.getName().equalsIgnoreCase(s1);
        if (!flag1)
            continue; /* Loop/switch isn't completed */
        flag = true;
        break; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L1:
        zipinputstream = zipinputstream1;
_L12:
        if (!flag) goto _L4; else goto _L3
_L3:
        File file = new File(ToqApplication.getAppContext().getFilesDir(), "/Clocks");
        if (file.exists()) goto _L6; else goto _L5
_L5:
        if (!file.mkdirs()) goto _L8; else goto _L7
_L7:
        Log.d("ClockUtils", "Directory created");
_L6:
        File file1;
        BufferedOutputStream bufferedoutputstream1;
        file1 = new File(file, s1);
        FileOutputStream fileoutputstream = new FileOutputStream(file1);
        bufferedoutputstream1 = new BufferedOutputStream(fileoutputstream);
        byte abyte0[] = new byte[1024];
_L11:
        int i = zipinputstream.read(abyte0);
        if (i == -1) goto _L10; else goto _L9
_L9:
        bufferedoutputstream1.write(abyte0, 0, i);
          goto _L11
        Exception exception;
        exception;
        BufferedOutputStream bufferedoutputstream = bufferedoutputstream1;
_L13:
        if (bufferedoutputstream == null)
            break MISSING_BLOCK_LABEL_206;
        bufferedoutputstream.close();
        IOException ioexception;
        FileInputStream fileinputstream1;
        if (zipinputstream != null)
            try
            {
                zipinputstream.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        exception.printStackTrace();
        return fileinputstream;
        ioexception;
_L14:
        ioexception.printStackTrace();
        flag = false;
          goto _L12
_L8:
        Log.e("ClockUtils", "Unable to create directory");
          goto _L6
        exception;
        bufferedoutputstream = null;
          goto _L13
_L10:
        bufferedoutputstream1.close();
        zipinputstream.close();
        zipinputstream = null;
        fileinputstream1 = new FileInputStream(file1);
        fileinputstream = fileinputstream1;
        break MISSING_BLOCK_LABEL_221;
_L4:
        return null;
        ioexception;
        zipinputstream = zipinputstream1;
          goto _L14
    }

    public String getClockInfo(String s, String s1)
    {
        String s2 = "";
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
        ArrayList arraylist = new ArrayList();
        Iterator iterator;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("clock_data", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            ClockInfo clockinfo = (ClockInfo)iterator.next();
            if (!clockinfo.getDisplayName().equals(s))
                continue;
            if (s1.equals("packageName"))
            {
                s2 = clockinfo.getPackageName();
            } else
            {
                if (s1.equals("assetFileName"))
                    return clockinfo.getAssetFileName();
                if (s1.equals("appZipName"))
                    return clockinfo.getAppZipName();
                if (s1.equals("clockType"))
                    return clockinfo.getClockType();
                if (s1.equals("displayName"))
                    return clockinfo.getDisplayName();
                if (s1.equals("jsonName"))
                    return clockinfo.getJsonName();
            }
            break;
        } while (true);
        return s2;
    }

    public String[] getClockNamesArray()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
        ArrayList arraylist = new ArrayList();
        String as[];
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("clock_data", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        as = new String[arraylist.size()];
        for (int i = 0; i < as.length; i++)
            as[i] = ((ClockInfo)arraylist.get(i)).getDisplayName();

        return as;
    }

    public void parseClockInfoFromAssests()
    {
        InputStream inputstream = null;
        ArrayList arraylist;
        AssetManager assetmanager;
        Log.d("ClockUtils", "Inside parseClockInfoFromAssests()");
        arraylist = new ArrayList();
        assetmanager = ToqApplication.getAppContext().getAssets();
        inputstream = assetmanager.open("allclocks.json");
        if (inputstream == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = retrieveJSONFromStream(inputstream);
        if (jsonobject == null) goto _L4; else goto _L3
_L3:
        JSONArray jsonarray = jsonobject.getJSONArray("Clocks");
        if (jsonarray == null) goto _L4; else goto _L5
_L5:
        int i = 0;
_L17:
        if (i >= jsonarray.length()) goto _L4; else goto _L6
_L6:
        ClockInfo clockinfo1;
        JSONObject jsonobject1;
        clockinfo1 = new ClockInfo();
        jsonobject1 = jsonarray.getJSONObject(i);
        if (jsonobject1 == null) goto _L8; else goto _L7
_L7:
        if (!jsonobject1.getString("type").equals("builtin")) goto _L8; else goto _L9
_L9:
        clockinfo1.setDisplayName(jsonobject1.getString("displayName"));
        clockinfo1.setIconName(jsonobject1.getString("icon"));
        clockinfo1.setClockType("builtin");
        arraylist.add(clockinfo1);
          goto _L10
_L8:
        if (jsonobject1 == null) goto _L10; else goto _L11
_L11:
        if (jsonobject1.getString("type").equals("dynamic"))
        {
            String s = jsonobject1.getString("bundle");
            Log.d("ClockUtils", (new StringBuilder()).append("Lua Clock Name retrieved : ").append(s).toString());
            ClockInfo clockinfo2 = retrieveClockInfo(s, assetmanager);
            clockinfo2.setClockType("dynamic");
            if (clockinfo2.getDisplayName() != null && !clockinfo2.getDisplayName().isEmpty() && clockinfo2.getIconName() != null && !clockinfo2.getIconName().isEmpty())
                arraylist.add(clockinfo2);
        }
          goto _L10
        Exception exception1;
        exception1;
        Log.e("ClockUtils", "Error parsing clock data from assets");
        exception1.printStackTrace();
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_312;
        inputstream.close();
_L15:
        return;
_L4:
        ClockInfo clockinfo;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); Log.i("ClockUtils", (new StringBuilder()).append("List Contents : ").append(clockinfo.toString()).toString()))
            clockinfo = (ClockInfo)iterator.next();

        break MISSING_BLOCK_LABEL_385;
        Exception exception;
        exception;
        IOException ioexception1;
        android.content.SharedPreferences.Editor editor;
        IOException ioexception2;
        if (inputstream != null)
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        throw exception;
        editor = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0).edit();
        editor.putString("clock_data", ObjectSerializer.serialize(arraylist));
        editor.commit();
        inputstream.close();
        inputstream = null;
_L14:
        if (inputstream == null) goto _L13; else goto _L12
_L2:
        Log.e("ClockUtils", "InputStream is null.allclocks.json not found in assets");
          goto _L14
_L13:
        if (true) goto _L15; else goto _L12
_L12:
        try
        {
            inputstream.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        return;
        ioexception1;
        ioexception1.printStackTrace();
        return;
_L10:
        i++;
        if (true) goto _L17; else goto _L16
_L16:
    }

    public void updateClockStylesPreferenceOnAppUpgrade()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
        ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("clock_data", ObjectSerializer.serialize(new ArrayList())));
        HashMap hashmap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())));
        Iterator iterator = arraylist.iterator();
        ClassNotFoundException classnotfoundexception;
        do
        {
            if (!iterator.hasNext())
                break;
            ClockInfo clockinfo = (ClockInfo)iterator.next();
            if (!hashmap.containsKey(clockinfo.getDisplayName()))
            {
                hashmap.put(clockinfo.getDisplayName(), Boolean.valueOf(false));
                Log.d("ClockUtils", (new StringBuilder()).append("Adding ").append(clockinfo.getDisplayName()).append(" to preference with no selection").toString());
            }
        } while (true);
        try
        {
            if (!hashmap.isEmpty())
            {
                if (hashmap.containsKey("Sweater"))
                    hashmap.remove("Sweater");
                if (hashmap.containsKey("2014"))
                    hashmap.remove("2014");
            }
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putString("clock_settings_types", ObjectSerializer.serialize(hashmap));
            editor.commit();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

}
