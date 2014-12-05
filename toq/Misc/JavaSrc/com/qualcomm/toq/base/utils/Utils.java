// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.widget.Toast;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.*;
import java.text.*;
import java.util.*;
import java.util.zip.*;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.base.utils:
//            Log, FileTransferStatusLogger

public class Utils
{

    public static final byte EP_GENERAL_LOGS = 1;
    public static final byte EP_OUT = 7;
    public static final byte EP_UI_STATUS_LOGS = 4;
    public static final byte EP_USAGE_LOGS = 2;
    private static final String KEY_EULA_VERSION = "EULA_VERSION";
    private static final String TAG = "Utils";
    private static Resources mResources = ToqApplication.getAppContext().getResources();


    public static ArrayList cleanReminderTimes(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList();
        if (arraylist != null && !arraylist.isEmpty())
        {
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
            {
                Calendar calendar = (Calendar)iterator.next();
                if (!calendar.getTimeZone().equals(TimeZone.getTimeZone("GMT+00:00")))
                {
                    Calendar calendar1 = Calendar.getInstance(TimeZone.getTimeZone("GMT+00:00"));
                    Log.d("Utils", "Activity Reminder Timezone mismatch");
                    calendar1.clear();
                    calendar1.set(0, 0, 0, calendar.get(11), calendar.get(12), 0);
                    arraylist1.add(calendar1);
                } else
                {
                    arraylist1.add(calendar);
                }
            }

        }
        android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0).edit();
        try
        {
            editor.putString("activity_goal_reminder_times_set_key", ObjectSerializer.serialize(arraylist1));
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        editor.commit();
        return arraylist1;
    }

    public static void deleteFiles(File file)
    {
        String as[] = file.list();
        if (as != null && as.length > 0)
        {
            for (int i = 0; i < as.length; i++)
            {
                Log.d("Utils", (new StringBuilder()).append("file: ").append(as[i]).toString());
                File file1 = new File((new StringBuilder()).append(file).append(File.separator).append(as[i]).toString());
                if (file1.isFile())
                {
                    Log.d("Utils", (new StringBuilder()).append("Deleting File: ").append(file1.getAbsolutePath()).toString());
                    file1.delete();
                    continue;
                }
                if (file1.isDirectory())
                {
                    deleteFiles(file1);
                    file1.delete();
                }
            }

        }
    }

    public static void deleteOldStoreFile(String s)
    {
        File file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        File file1 = new File(s);
        if (!file.exists() || !file1.exists())
            break MISSING_BLOCK_LABEL_122;
        file1.setWritable(true);
        if (file1.delete())
        {
            Log.d("Utils", "File Deleted Success");
            return;
        }
        try
        {
            Log.d("Utils", "File Deleted Failed");
            return;
        }
        catch (Exception exception)
        {
            Log.d("Utils", (new StringBuilder()).append("deleteOldStoreFile ").append(exception.toString()).toString());
            exception.printStackTrace();
        }
    }

    public static void deleteOldStoreFile(String s, Context context)
    {
        File file = new File((new StringBuilder()).append(context.getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        File file1 = new File(s);
        if (!file.exists() || !file1.exists())
            break MISSING_BLOCK_LABEL_120;
        file1.setWritable(true);
        if (file1.delete())
        {
            Log.d("Utils", "File Deleted Success");
            return;
        }
        try
        {
            Log.d("Utils", "File Deleted Failed");
            return;
        }
        catch (Exception exception)
        {
            Log.d("Utils", (new StringBuilder()).append("deleteOldStoreFile ").append(exception.toString()).toString());
            exception.printStackTrace();
        }
    }

    public static void deleteStoreFiles()
    {
        File file;
        Log.d("Utils", "Folder Deleted");
        file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        if (!file.isDirectory()) goto _L2; else goto _L1
_L1:
        File afile[] = file.listFiles();
        if (afile == null) goto _L2; else goto _L3
_L3:
        int i = afile.length;
        int j = 0;
_L4:
        if (j >= i)
            break; /* Loop/switch isn't completed */
        afile[j].delete();
        j++;
        if (true) goto _L4; else goto _L2
        Exception exception;
        exception;
        Log.d("Utils", (new StringBuilder()).append("deleteStoreFolder").append(exception.toString()).toString());
        exception.printStackTrace();
_L2:
    }

    public static void deleteStoreFiles(Context context)
    {
        File file;
        Log.d("Utils", "Folder Deleted");
        file = new File((new StringBuilder()).append(context.getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        if (!file.isDirectory()) goto _L2; else goto _L1
_L1:
        File afile[] = file.listFiles();
        if (afile == null) goto _L2; else goto _L3
_L3:
        int i = afile.length;
        int j = 0;
_L4:
        if (j >= i)
            break; /* Loop/switch isn't completed */
        afile[j].delete();
        j++;
        if (true) goto _L4; else goto _L2
        Exception exception;
        exception;
        Log.d("Utils", (new StringBuilder()).append("deleteStoreFolder").append(exception.toString()).toString());
        exception.printStackTrace();
_L2:
    }

    public static String geIconStyleLocalName(String s)
    {
        String s1 = new String();
        if (s.equals("Optima"))
        {
            s1 = mResources.getString(0x7f0a0098);
        } else
        {
            if (s.equals("Luminous"))
                return mResources.getString(0x7f0a0099);
            if (s.equals("Vibrant"))
                return mResources.getString(0x7f0a009a);
            if (s.equals("Solar"))
                return mResources.getString(0x7f0a009b);
            if (s.equals("Aurora"))
                return mResources.getString(0x7f0a009c);
            if (s.equals("Innova"))
                return mResources.getString(0x7f0a009d);
        }
        return s1;
    }

    public static long getCRCChecksum(byte abyte0[])
    {
        long l;
        CheckedInputStream checkedinputstream;
        l = 0L;
        checkedinputstream = null;
        CheckedInputStream checkedinputstream1 = new CheckedInputStream(new ByteArrayInputStream(abyte0), new CRC32());
        for (byte abyte1[] = new byte[1024]; checkedinputstream1.read(abyte1) >= 0;);
        l = checkedinputstream1.getChecksum().getValue();
        checkedinputstream1.close();
        if (false)
            try
            {
                null.close();
            }
            catch (IOException ioexception2)
            {
                Log.e("Utils", (new StringBuilder()).append("Unable to close CheckedInputStream..").append(ioexception2).toString());
                ioexception2.printStackTrace();
                return l;
            }
_L2:
        return l;
        Exception exception;
        exception;
_L5:
        Log.e("Utils", (new StringBuilder()).append("Exception occured in getting CRC checksum ..").append(exception).toString());
        if (checkedinputstream == null) goto _L2; else goto _L1
_L1:
        try
        {
            checkedinputstream.close();
        }
        catch (IOException ioexception1)
        {
            Log.e("Utils", (new StringBuilder()).append("Unable to close CheckedInputStream..").append(ioexception1).toString());
            ioexception1.printStackTrace();
            return l;
        }
        return l;
        Exception exception1;
        exception1;
_L4:
        if (checkedinputstream != null)
            try
            {
                checkedinputstream.close();
            }
            catch (IOException ioexception)
            {
                Log.e("Utils", (new StringBuilder()).append("Unable to close CheckedInputStream..").append(ioexception).toString());
                ioexception.printStackTrace();
            }
        throw exception1;
        exception1;
        checkedinputstream = checkedinputstream1;
        if (true) goto _L4; else goto _L3
_L3:
        exception;
        checkedinputstream = checkedinputstream1;
          goto _L5
    }

    public static long getCheckSum(String s)
    {
        com/qualcomm/toq/base/utils/Utils;
        JVM INSTR monitorenter ;
        File file;
        File file1;
        file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        file1 = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").append("/").append(s).toString());
        if (file.exists()) goto _L2; else goto _L1
_L1:
        Log.d("Utils", (new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").append(" folder doesnot exist").toString());
        long l = -1L;
_L4:
        com/qualcomm/toq/base/utils/Utils;
        JVM INSTR monitorexit ;
        return l;
_L2:
        if (file1.exists())
            break MISSING_BLOCK_LABEL_188;
        Log.d("Utils", (new StringBuilder()).append(s).append(" doesnot exist").toString());
        l = -1L;
        continue; /* Loop/switch isn't completed */
        CheckedInputStream checkedinputstream = new CheckedInputStream(new FileInputStream(file1), new CRC32());
        int i = (int)file1.length();
        checkedinputstream.read(new byte[i], 0, i);
        l = checkedinputstream.getChecksum().getValue();
        checkedinputstream.close();
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Log.d("Utils", exception1.toString());
        exception1.printStackTrace();
        l = -1L;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static int getClockTimeoutIndex(int i)
    {
        switch (i)
        {
        case 30: // '\036'
            return 2;

        case 10: // '\n'
            return 0;

        case 20: // '\024'
        default:
            return 1;
        }
    }

    public static String getClockTimeoutSecondaryText(int i)
    {
        switch (i)
        {
        case 30: // '\036'
            String s3 = mResources.getString(0x7f0a00ba);
            Object aobj3[] = new Object[1];
            aobj3[0] = Integer.valueOf(30);
            return String.format(s3, aobj3);

        case 20: // '\024'
            String s2 = mResources.getString(0x7f0a00ba);
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(20);
            return String.format(s2, aobj2);

        case 10: // '\n'
            String s1 = mResources.getString(0x7f0a00ba);
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(10);
            return String.format(s1, aobj1);
        }
        String s = mResources.getString(0x7f0a00ba);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(10);
        return String.format(s, aobj);
    }

    public static int getClockTimeoutValue(int i)
    {
        switch (i)
        {
        case 2: // '\002'
            return 30;

        case 0: // '\0'
            return 10;

        case 1: // '\001'
        default:
            return 20;
        }
    }

    public static String getCommaSeparatedText(String s)
    {
        double d = Double.valueOf(s).doubleValue();
        if (d <= Double.valueOf(1.0D).doubleValue()) goto _L2; else goto _L1
_L1:
        DecimalFormat decimalformat = new DecimalFormat(",##0.00");
_L5:
        if (decimalformat != null)
            break MISSING_BLOCK_LABEL_49;
        decimalformat = new DecimalFormat(",##0.00");
        return decimalformat.format(d);
_L2:
        if (d > Double.valueOf(1.0D).doubleValue() || d < Double.valueOf(0.10000000000000001D).doubleValue()) goto _L4; else goto _L3
_L3:
        decimalformat = new DecimalFormat(",##0.000");
          goto _L5
_L4:
        int i;
        try
        {
            i = d != Double.valueOf(0.10000000000000001D).doubleValue();
        }
        catch (Exception exception)
        {
            Log.d("Utils", "Exception in formating");
            return s;
        }
        decimalformat = null;
        if (i >= 0) goto _L5; else goto _L6
_L6:
        decimalformat = new DecimalFormat(",##0.0000");
          goto _L5
    }

    public static String getCommunicationList(int i)
    {
        switch (i)
        {
        case 3: // '\003'
            String s4 = mResources.getString(0x7f0a00b6);
            Object aobj4[] = new Object[1];
            aobj4[0] = Integer.valueOf(40);
            return String.format(s4, aobj4);

        case 2: // '\002'
            String s3 = mResources.getString(0x7f0a00b6);
            Object aobj3[] = new Object[1];
            aobj3[0] = Integer.valueOf(30);
            return String.format(s3, aobj3);

        case 1: // '\001'
            String s2 = mResources.getString(0x7f0a00b6);
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(20);
            return String.format(s2, aobj2);

        case 0: // '\0'
            String s1 = mResources.getString(0x7f0a00b6);
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(10);
            return String.format(s1, aobj1);
        }
        String s = mResources.getString(0x7f0a00b6);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(10);
        return String.format(s, aobj);
    }

    public static String getDate(long l, String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat(s, Locale.US);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l);
        return simpledateformat.format(calendar.getTime());
    }

    public static String getDisplayValue(int i)
    {
        switch (i)
        {
        case 3: // '\003'
            return "40";

        case 2: // '\002'
            return "30";

        case 1: // '\001'
            return "20";

        case 0: // '\0'
            return "10";
        }
        return "10";
    }

    private static String getEulaVersion()
    {
        String s;
        AssetManager assetmanager;
        boolean flag;
        s = null;
        assetmanager = ToqApplication.getAppContext().getAssets();
        flag = false;
        String as[];
        int i;
        as = assetmanager.list("");
        i = as.length;
        int j = 0;
_L2:
        flag = false;
        s = null;
        if (j >= i)
            break MISSING_BLOCK_LABEL_101;
        String s1;
        s1 = as[j];
        if (!s1.equalsIgnoreCase("eula.properties"))
            break MISSING_BLOCK_LABEL_115;
        flag = true;
        try
        {
            InputStream inputstream = assetmanager.open(s1);
            Properties properties = new Properties();
            properties.load(inputstream);
            s = properties.getProperty("EULA_VERSION");
            inputstream.close();
            properties.clear();
        }
        catch (Exception exception)
        {
            Log.e("Utils", (new StringBuilder()).append("Failed to retreive eula version ").append(exception).toString());
        }
        if (!flag)
            Log.e("Utils", "Eula Properties file does not exists");
        return s;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getFavouriteAppLocalName(String s)
    {
        String s1 = new String();
        if (s.equals("Comm Hub"))
        {
            s1 = mResources.getString(0x7f0a00ff);
        } else
        {
            if (s.equals("Weather"))
                return mResources.getString(0x7f0a0100);
            if (s.equals("Calendar"))
                return mResources.getString(0x7f0a0101);
            if (s.equals("Activity"))
                return mResources.getString(0x7f0a0102);
            if (s.equals("Stocks"))
                return mResources.getString(0x7f0a0103);
            if (s.equals("Music"))
                return mResources.getString(0x7f0a0104);
            if (s.equals("Status"))
                return mResources.getString(0x7f0a0105);
            if (s.equals("Notifications"))
                return mResources.getString(0x7f0a0106);
            if (s.equals("Alarm"))
                return mResources.getString(0x7f0a0107);
        }
        return s1;
    }

    public static String getFirstTimeQRDispPrefsKeyForLocale(String s)
    {
label0:
        {
            String s1 = "first_time_quick_reply_shown";
            if (!TextUtils.isEmpty(s) && AndroidUtils.getAndroidUtils().getWDSupportedLanguages().contains(s))
            {
                if (s.equals(Locale.US.toString()))
                    break label0;
                s1 = (new StringBuilder()).append(s1).append("_").append(s).toString();
            }
            return s1;
        }
        return "first_time_quick_reply_shown";
    }

    public static String getFormattedNumber(String s)
    {
        if (s == null)
        {
            Log.d("Utils", "Got invalid Phonenumber");
            return "NA";
        } else
        {
            return PhoneNumberUtils.formatNumber(s);
        }
    }

    public static String getIconStyleValue(String s)
    {
        if (s.equals("Optima"))
            return "optima";
        if (s.equals("Luminous"))
            return "luminous";
        if (s.equals("Vibrant"))
            return "vibrant";
        if (s.equals("Solar"))
            return "solar";
        if (s.equals("Aurora"))
            return "aurora";
        if (s.equals("Innova"))
            return "innova";
        else
            return "optima";
    }

    public static int getLightDoubleTapSpeedIndex(int i)
    {
        int j = 1;
        if (i == 750)
            j = 0;
        else
        if (i != 500 && i == 350)
            return 2;
        return j;
    }

    public static String getLightDoubleTapSpeedSecondaryText(int i)
    {
        if (i == 750)
            return mResources.getString(0x7f0a00b7);
        if (i == 500)
            return mResources.getString(0x7f0a00b8);
        if (i == 350)
            return mResources.getString(0x7f0a00b9);
        else
            return mResources.getString(0x7f0a00b8);
    }

    public static int getLightDoubleTapSpeedValue(int i)
    {
        switch (i)
        {
        case 2: // '\002'
            return 350;

        case 0: // '\0'
            return 750;

        case 1: // '\001'
        default:
            return 500;
        }
    }

    public static int getLightDurationIndex(int i)
    {
        switch (i)
        {
        case 30: // '\036'
            return 2;

        case 20: // '\024'
            return 1;

        case 10: // '\n'
        default:
            return 0;
        }
    }

    public static String getLightDurationSecondaryText(int i)
    {
        switch (i)
        {
        case 30: // '\036'
            String s3 = mResources.getString(0x7f0a00ba);
            Object aobj3[] = new Object[1];
            aobj3[0] = Integer.valueOf(30);
            return String.format(s3, aobj3);

        case 20: // '\024'
            String s2 = mResources.getString(0x7f0a00ba);
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(20);
            return String.format(s2, aobj2);

        case 10: // '\n'
            String s1 = mResources.getString(0x7f0a00ba);
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(10);
            return String.format(s1, aobj1);
        }
        String s = mResources.getString(0x7f0a00ba);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(10);
        return String.format(s, aobj);
    }

    public static int getLightDurationValue(int i)
    {
        switch (i)
        {
        case 2: // '\002'
            return 30;

        case 1: // '\001'
            return 20;

        case 0: // '\0'
        default:
            return 10;
        }
    }

    public static String getLocalizedAMPMText(Calendar calendar)
    {
        if (calendar.get(9) == 0)
            return mResources.getString(0x7f0a01fe);
        if (calendar.get(9) == 1)
            return mResources.getString(0x7f0a01ff);
        else
            return "";
    }

    public static long getLuaCheckSum(String s)
    {
        com/qualcomm/toq/base/utils/Utils;
        JVM INSTR monitorenter ;
        File file;
        File file1;
        File file2;
        file = Environment.getExternalStorageDirectory();
        file1 = new File((new StringBuilder()).append(file.getAbsolutePath()).append("/PHUB_NOTIFICATIONS").toString());
        file2 = new File((new StringBuilder()).append(file.getAbsolutePath()).append("/PHUB_NOTIFICATIONS").append("/").append(s).toString());
        if (file1.exists()) goto _L2; else goto _L1
_L1:
        Log.d("Utils", (new StringBuilder()).append(file.getAbsolutePath()).append("/PHUB_NOTIFICATIONS").append(" folder doesnot exist").toString());
        long l = -1L;
_L4:
        com/qualcomm/toq/base/utils/Utils;
        JVM INSTR monitorexit ;
        return l;
_L2:
        if (file2.exists())
            break MISSING_BLOCK_LABEL_173;
        Log.d("Utils", (new StringBuilder()).append(s).append(" doesnot exist").toString());
        l = -1L;
        continue; /* Loop/switch isn't completed */
        CheckedInputStream checkedinputstream = new CheckedInputStream(new FileInputStream(file2), new CRC32());
        int i = (int)file2.length();
        checkedinputstream.read(new byte[i], 0, i);
        l = checkedinputstream.getChecksum().getValue();
        checkedinputstream.close();
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Log.d("Utils", exception1.toString());
        exception1.printStackTrace();
        l = -1L;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static String getPhoneDisplayList(int i)
    {
        switch (i)
        {
        case 3: // '\003'
            return "Display 40";

        case 2: // '\002'
            return "Display 30";

        case 1: // '\001'
            return "Display 20";

        case 0: // '\0'
            return "Display 10";
        }
        return "Display 10";
    }

    public static String getQuickReplyPrefsKeyForLocale(String s)
    {
label0:
        {
            String s1 = "qr";
            if (!TextUtils.isEmpty(s) && AndroidUtils.getAndroidUtils().getWDSupportedLanguages().contains(s))
            {
                if (s.equals(Locale.US.toString()))
                    break label0;
                s1 = (new StringBuilder()).append(s1).append("_").append(s).toString();
            }
            return s1;
        }
        return "qr";
    }

    public static ArrayList getStringArrayPref(Context context, String s, String s1)
    {
        String s2;
        ArrayList arraylist;
        s2 = context.getSharedPreferences(s, 0).getString(s1, null);
        arraylist = new ArrayList();
        if (s2 == null) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray = new JSONArray(s2);
        int i = 0;
_L3:
        if (i >= jsonarray.length())
            break; /* Loop/switch isn't completed */
        arraylist.add(jsonarray.optString(i));
        i++;
        if (true) goto _L3; else goto _L2
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
_L2:
        return arraylist;
    }

    public static String getTemperatureUnitFromIndex(int i)
    {
        switch (i)
        {
        case 1: // '\001'
            return "Celsius";

        case 0: // '\0'
            return "Fahrenheit";
        }
        return "Fahrenheit";
    }

    public static int getTemperatureUnitsListViewIndex(String s)
    {
        return s.equalsIgnoreCase("Fahrenheit") || !s.equalsIgnoreCase("Celsius") ? 0 : 1;
    }

    public static String getTextMessageDisplayList(int i)
    {
        switch (i)
        {
        case 3: // '\003'
            return "40 Messages listed";

        case 2: // '\002'
            return "30 Messages listed";

        case 1: // '\001'
            return "20 Messages listed";

        case 0: // '\0'
            return "10 Messages listed";
        }
        return "10 Messages listed";
    }

    public static String getVibeRepeat(int i)
    {
        switch (i)
        {
        case 4: // '\004'
            return "Vibe repeat 4 times";

        case 3: // '\003'
            return "Vibe repeat 3 times";

        case 2: // '\002'
            return "Vibe repeat 2 times";

        case 1: // '\001'
            return "Vibe repeat 1 time";

        case 0: // '\0'
            return "Vibe repeat none";
        }
        return "Vibe repeat none";
    }

    public static String getVibeRepeatValue(int i)
    {
        switch (i)
        {
        case 4: // '\004'
            return "4";

        case 3: // '\003'
            return "3";

        case 2: // '\002'
            return "2";

        case 1: // '\001'
            return "1";

        case 0: // '\0'
            return "0";
        }
        return "Vibe repeat none";
    }

    public static String getVibeStyle(int i)
    {
        switch (i)
        {
        case 3: // '\003'
            return "Vibe Style D";

        case 2: // '\002'
            return "Vibe Style C";

        case 1: // '\001'
            return "Vibe Style B";

        case 0: // '\0'
            return "Vibe Style A";
        }
        return "Vibe Style A";
    }

    public static String getVibeStyleValue(int i)
    {
        switch (i)
        {
        case 3: // '\003'
            return "D";

        case 2: // '\002'
            return "C";

        case 1: // '\001'
            return "B";

        case 0: // '\0'
            return "A";
        }
        return "A";
    }

    public static boolean isETradeDown()
    {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
        Calendar calendar1 = Calendar.getInstance();
        TimeZone timezone = TimeZone.getTimeZone("America/New_York");
        Log.d("Utils", (new StringBuilder()).append("TimeZone :  ").append(timezone.getDisplayName()).append("ID: + ").append(timezone.getID()).append("Offset: ").append(timezone.getRawOffset()).toString());
        boolean flag = timezone.inDaylightTime(calendar1.getTime());
        Log.d("Utils", (new StringBuilder()).append("Is DayLight Saving On: ").append(flag).toString());
        char c;
        char c1;
        if (flag)
        {
            c = '\u030C';
            c1 = '\u04CE';
        } else
        {
            c = '\u0348';
            c1 = '\u050A';
        }
        Log.d("Utils", (new StringBuilder()).append("Device Calendar : GMT Time Zone Offset: ").append(calendar1.get(15)).append("\nMonth: ").append(calendar1.get(2)).append(" \nYear: ").append(calendar1.get(1)).append("\nDate of Month: ").append(calendar1.get(5)).append("\nHour: ").append(calendar1.get(11)).append("\nMin: ").append(calendar1.get(12)).append("\nDay  of Week: ").append(calendar1.get(7)).toString());
        Log.d("Utils", (new StringBuilder()).append("GMT Calendar: GMT Time Zone Offset: ").append(calendar.get(15)).append(" \nMonth: ").append(calendar.get(2)).append(" \nYear: ").append(calendar.get(1)).append("\nDate: ").append(calendar.get(5)).append("\nHour: ").append(calendar.get(11)).append("\nMin: ").append(calendar.get(12)).append("\n Day  of Week: ").append(calendar.get(7)).toString());
        int i = calendar.get(7);
        int j = calendar.get(11);
        int k = calendar.get(12) + j * 60;
        return i == 1 || i == 7 || k < c || k > c1;
    }

    public static boolean isEulaAgreementAccepted()
    {
label0:
        {
label1:
            {
                SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("eula_dialog_check_prefs", 0);
                boolean flag = false;
                if (sharedpreferences != null)
                {
                    boolean flag1 = sharedpreferences.contains("eula_accepted");
                    flag = false;
                    if (flag1)
                    {
                        boolean flag2 = sharedpreferences.getBoolean("eula_accepted", false);
                        flag = false;
                        if (flag2)
                        {
                            if (!sharedpreferences.contains("eula_version"))
                                break label0;
                            String s = getEulaVersion();
                            String s1 = sharedpreferences.getString("eula_version", null);
                            if (s1 == null || s == null || !s1.equals(s))
                                break label1;
                            Log.d("Utils", "Eula Version match");
                            flag = true;
                        }
                    }
                }
                return flag;
            }
            Log.d("Utils", "Eula Version does not match");
            return false;
        }
        Log.d("Utils", "Eula Version do not present in Shared Preference");
        return false;
    }

    public static boolean isNetworkConnectivityAvailable(Context context)
    {
        if (context != null)
        {
            NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (networkinfo != null && networkinfo.isConnected())
                return true;
        }
        return false;
    }

    public static boolean isWIFIConnectivityAvailable(Context context)
    {
        if (context != null)
        {
            NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(1);
            if (networkinfo != null && networkinfo.isConnected())
                return true;
        }
        return false;
    }

    public static void printAlohaVersionIndicationPayload(Object obj)
    {
        try
        {
            JSONObject jsonobject = new JSONObject(obj.toString());
            String s = jsonobject.getString("CCA_Id").split("_")[0];
            jsonobject.put("CCA_Id", (new StringBuilder()).append(s).append("_").append("xyz").toString());
            Log.printUsageLog("VersionController", (new StringBuilder()).append("Received VersionInd: ").append(jsonobject).toString());
            return;
        }
        catch (JSONException jsonexception)
        {
            return;
        }
    }

    public static void printEarpieceLog(String s, String s1, String s2, int i)
    {
        Log.d(s, (new StringBuilder()).append(s2).append("():").append(i).append(" msg = ").append(s1).toString());
    }

    public static String readFileAsString(String s, long l)
    {
        BufferedInputStream bufferedinputstream;
        byte abyte0[];
        Log.i("Utils", (new StringBuilder()).append("Reading file:  ").append(s).toString());
        bufferedinputstream = null;
        abyte0 = new byte[(int)l];
        BufferedInputStream bufferedinputstream1 = new BufferedInputStream(new FileInputStream(s));
        bufferedinputstream1.read(abyte0);
        Exception exception;
        String s1;
        IOException ioexception;
        IOException ioexception2;
        IOException ioexception5;
        FileNotFoundException filenotfoundexception1;
        if (bufferedinputstream1 != null)
            try
            {
                bufferedinputstream1.close();
            }
            catch (IOException ioexception4) { }
        s1 = new String(abyte0);
        return s1;
        filenotfoundexception1;
_L6:
        s1 = null;
        if (bufferedinputstream != null)
        {
            try
            {
                bufferedinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                return null;
            }
            return null;
        } else
        {
            break MISSING_BLOCK_LABEL_79;
        }
        ioexception5;
_L4:
        s1 = null;
        if (bufferedinputstream != null)
        {
            try
            {
                bufferedinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception2)
            {
                return null;
            }
            return null;
        } else
        {
            break MISSING_BLOCK_LABEL_79;
        }
        exception;
_L2:
        if (bufferedinputstream != null)
            try
            {
                bufferedinputstream.close();
            }
            catch (IOException ioexception3) { }
        throw exception;
        exception;
        bufferedinputstream = bufferedinputstream1;
        if (true) goto _L2; else goto _L1
_L1:
        IOException ioexception1;
        ioexception1;
        bufferedinputstream = bufferedinputstream1;
        if (true) goto _L4; else goto _L3
_L3:
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        bufferedinputstream = bufferedinputstream1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String removeNegativePrefix(String s)
    {
        return s.substring(1 + s.indexOf('-'), s.length());
    }

    public static String removePositivePrefix(String s)
    {
        return s.substring(1 + s.indexOf('+'), s.length());
    }

    public static void setStringArrayPref(Context context, String s, String s1, ArrayList arraylist)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences(s, 0).edit();
        JSONArray jsonarray = new JSONArray();
        for (int i = 0; i < arraylist.size(); i++)
            jsonarray.put(arraylist.get(i));

        if (!arraylist.isEmpty())
            editor.putString(s1, jsonarray.toString());
        else
            editor.putString(s1, null);
        editor.commit();
        Log.v("Utils", (new StringBuilder()).append("Array Pref").append(jsonarray).toString());
    }

    public static void showBrowserNotInstalledToast()
    {
        Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getString(0x7f0a0024), 0).show();
    }

    public static void showErrorMessage(Context context, String s)
    {
        Toast.makeText(context, s, 0).show();
    }

    public static void updateStatus(String s, String s1, int i, int j, byte byte0)
    {
        com/qualcomm/toq/base/utils/Utils;
        JVM INSTR monitorenter ;
        if (i != 0) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/base/utils/Utils;
        JVM INSTR monitorexit ;
        return;
_L2:
        if ((byte0 & 1) != 1)
            break MISSING_BLOCK_LABEL_51;
        Log.d(s, (new StringBuilder()).append(Constants.EndPointEnum.values()[i]).append("-> ").append(s1).toString());
        if ((byte0 & 2) != 2) goto _L4; else goto _L3
_L3:
        Log.printUsageLog(s, (new StringBuilder()).append(Constants.EndPointEnum.values()[i]).append("-> ").append(s1).toString());
_L4:
        if ((byte0 & 4) != 4) goto _L1; else goto _L5
_L5:
        FileTransferStatusLogger filetransferstatuslogger = FileTransferStatusLogger.getInstance(i);
        j;
        JVM INSTR tableswitch -2 1: default 136
    //                   -2 139
    //                   -1 202
    //                   0 248
    //                   1 330;
           goto _L6 _L7 _L8 _L9 _L10
_L6:
        if (true) goto _L1; else goto _L11
_L11:
_L7:
        filetransferstatuslogger.clearHeaderList();
        updateStatus(s, s1, i, 1, byte0);
          goto _L1
        Exception exception1;
        exception1;
        Log.e(s, (new StringBuilder()).append("Exception in updateStatus(: ").append(exception1.toString()).toString());
        exception1.printStackTrace();
          goto _L1
        Exception exception;
        exception;
        throw exception;
_L8:
        filetransferstatuslogger.getHeading().remove(-1 + filetransferstatuslogger.getHeading().size());
        filetransferstatuslogger.getHeadingDetails().remove(-1 + filetransferstatuslogger.getHeadingDetails().size());
        filetransferstatuslogger.updateUI();
          goto _L1
_L9:
        filetransferstatuslogger.getHeading().set(-1 + filetransferstatuslogger.getHeading().size(), s1);
        String s2 = DateFormat.getDateTimeInstance().format(Calendar.getInstance().getTime());
        filetransferstatuslogger.getHeadingDetails().set(-1 + filetransferstatuslogger.getHeadingDetails().size(), (new StringBuilder()).append("TimeStamp: started on ").append(s2).toString());
        filetransferstatuslogger.updateUI();
          goto _L1
_L10:
        if (filetransferstatuslogger.getHeading().size() > 100)
        {
            filetransferstatuslogger.getHeading().remove(0);
            filetransferstatuslogger.getHeadingDetails().remove(0);
        }
        filetransferstatuslogger.addHeading(s1);
          goto _L1
    }

}
