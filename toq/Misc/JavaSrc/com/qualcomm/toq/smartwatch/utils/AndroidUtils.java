// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.bluetooth.BluetoothAdapter;
import android.content.*;
import android.content.pm.PackageManager;
import android.content.res.*;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.media.*;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.*;
import android.text.*;
import android.text.style.TypefaceSpan;
import android.widget.TextView;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.tftp.filetransfer.TFTPFiletransferClient;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.activitytracker.*;
import com.qualcomm.toq.smartwatch.controller.SystemController;
import com.qualcomm.toq.smartwatch.filetransfer.PhubFileTransferClient;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.service.receiver.HeadsetBroadCastReciever;
import com.qualcomm.toq.smartwatch.ui.activity.FTPFileBrowserActivity;
import java.io.*;
import java.nio.ByteBuffer;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.zip.*;
import javax.microedition.io.Connector;
import javax.obex.*;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.utils:
//            ObjectSerializer, PhubPreference

public class AndroidUtils
{
    private class PushPullFileAsyncTask extends AsyncTask
    {

        final AndroidUtils this$0;

        protected transient Boolean doInBackground(String as[])
        {
            String as1[] = as[0].split("###");
            if (as1[0].equalsIgnoreCase("PUSH"))
                return Boolean.valueOf(pushFileToWatchInBackground(as1[1], as1[2]));
            if (as1[0].equalsIgnoreCase("PULL"))
                return Boolean.valueOf(receiveFileFromWatchInBackground(as1[1], as1[2]));
            else
                return Boolean.valueOf(false);
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected void onPostExecute(Boolean boolean1)
        {
            super.onPostExecute(boolean1);
            if (!boolean1.booleanValue())
                Log.e("AndroidUtils", "PUSH/PULL error");
            endTime = Calendar.getInstance().getTimeInMillis();
            timeDiff = (endTime - startTime) / 1000L;
            timeUnit = "sec";
            if (timeDiff == 0L)
            {
                timeDiff = endTime - startTime;
                timeUnit = "milli-sec";
            }
            Log.i("AndroidUtils", (new StringBuilder()).append("PUSH/PULL Time taken for Transfer is ").append(timeDiff).append(" ").append(timeUnit).toString());
            timeDiff = 0L;
            timeUnit = "";
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Boolean)obj);
        }

        protected void onPreExecute()
        {
            Log.i("AndroidUtils", "PUSH/PULL from ADB started");
            startTime = Calendar.getInstance().getTimeInMillis();
            super.onPreExecute();
        }

        private PushPullFileAsyncTask()
        {
            this$0 = AndroidUtils.this;
            super();
        }

    }

    class QcomTypeFace extends TypefaceSpan
    {

        final AndroidUtils this$0;
        private Typeface typeface;

        public void updateDrawState(TextPaint textpaint)
        {
            super.updateDrawState(textpaint);
            textpaint.setTypeface(typeface);
        }

        public QcomTypeFace(String s, Typeface typeface1)
        {
            this$0 = AndroidUtils.this;
            super(s);
            typeface = typeface1;
        }
    }


    private static final int EQUIVALENT_VALUE_FOR_ZERO_CELSIUS_IN_FAHRENHEIT = 32;
    private static final float FAHRENHEIT_TO_CELSIUS_CONVERSION_FRACTION = 0.5555556F;
    private static final int INITIAL_THRESHOLD_FOR_DAY = 10;
    private static final int INITIAL_THRESHOLD_FOR_WEEK = 10;
    private static final String TAG = "AndroidUtils";
    private static final Set chineseUnicodeBlocks = new HashSet() {

            
            {
                add(Character.UnicodeBlock.CJK_COMPATIBILITY);
                add(Character.UnicodeBlock.CJK_COMPATIBILITY_FORMS);
                add(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS);
                add(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT);
                add(Character.UnicodeBlock.CJK_RADICALS_SUPPLEMENT);
                add(Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION);
                add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS);
                add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A);
                add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B);
                add(Character.UnicodeBlock.KANGXI_RADICALS);
                add(Character.UnicodeBlock.IDEOGRAPHIC_DESCRIPTION_CHARACTERS);
            }
    }
;
    private static boolean isAirplaneModeOn;
    public static int mDeviceAlarmVolume = 0;
    static AndroidUtils mInstance = null;
    private final String DECK_OF_CARDS = "DeckOfCards";
    private long endTime;
    private HeaderSet header;
    private HeadsetBroadCastReciever headsetBroadcastReciever;
    private Timer mBatteryMonitorTimer;
    public MediaPlayer mMediaPlayer;
    public int previousRingerModeState;
    private long startTime;
    private long timeDiff;
    private String timeUnit;

    public AndroidUtils()
    {
        mMediaPlayer = null;
        previousRingerModeState = 2;
        headsetBroadcastReciever = new HeadsetBroadCastReciever();
        mBatteryMonitorTimer = null;
        header = null;
        startTime = 0L;
        endTime = 0L;
        timeDiff = 0L;
        timeUnit = "";
    }

    public static void createWorldClockZipFile(String s, String s1, List list)
    {
        byte abyte0[];
        ZipOutputStream zipoutputstream;
        FileInputStream fileinputstream;
        abyte0 = new byte[1024];
        zipoutputstream = null;
        fileinputstream = null;
        FileOutputStream fileoutputstream = new FileOutputStream(s);
        ZipOutputStream zipoutputstream1 = new ZipOutputStream(fileoutputstream);
        Iterator iterator = list.iterator();
_L6:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        String s2 = (String)iterator.next();
        Log.d("AndroidUtils", (new StringBuilder()).append("File Added : ").append(s2).toString());
        zipoutputstream1.putNextEntry(new ZipEntry(s2));
        fileinputstream = new FileInputStream((new StringBuilder()).append(s1).append(File.separator).append(s2).toString());
_L5:
        int i = fileinputstream.read(abyte0);
        if (i <= 0) goto _L4; else goto _L3
_L3:
        zipoutputstream1.write(abyte0, 0, i);
          goto _L5
        IOException ioexception1;
        ioexception1;
        zipoutputstream = zipoutputstream1;
_L9:
        ioexception1.printStackTrace();
        IOException ioexception3;
        if (zipoutputstream != null)
            try
            {
                zipoutputstream.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
                return;
            }
        if (fileinputstream == null)
            break MISSING_BLOCK_LABEL_192;
        fileinputstream.close();
        return;
_L4:
        fileinputstream.close();
        fileinputstream = null;
        zipoutputstream1.flush();
        zipoutputstream1.closeEntry();
          goto _L6
_L2:
        Log.d("AndroidUtils", "Zipping Done");
        if (zipoutputstream1 == null)
            break MISSING_BLOCK_LABEL_231;
        zipoutputstream1.close();
        if (true)
            break MISSING_BLOCK_LABEL_239;
        null.close();
        return;
        ioexception3;
_L10:
        ioexception3.printStackTrace();
        return;
        Exception exception;
        exception;
_L8:
        if (zipoutputstream == null)
            break MISSING_BLOCK_LABEL_268;
        zipoutputstream.close();
        if (fileinputstream != null)
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        throw exception;
        exception;
        fileinputstream = null;
        zipoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        zipoutputstream = zipoutputstream1;
        continue; /* Loop/switch isn't completed */
        exception;
        zipoutputstream = zipoutputstream1;
        fileinputstream = null;
        if (true) goto _L8; else goto _L7
_L7:
        ioexception1;
        fileinputstream = null;
        zipoutputstream = null;
          goto _L9
        ioexception1;
        fileinputstream = null;
        zipoutputstream = null;
          goto _L9
        ioexception1;
        zipoutputstream = zipoutputstream1;
        fileinputstream = null;
          goto _L9
        ioexception3;
          goto _L10
    }

    public static void generateSourceFileList(File file, String s, List list)
    {
        Log.d("AndroidUtils", (new StringBuilder()).append(" node.isFile() = ").append(file.isFile()).toString());
        Log.d("AndroidUtils", (new StringBuilder()).append("node.isDirectory = ").append(file.isDirectory()).toString());
        if (file.isFile())
        {
            String s2 = generateZipEntry(file.getAbsoluteFile().toString(), s);
            if (!s2.contains("ClockWorld"))
                list.add(s2);
        }
        if (file.isDirectory())
        {
            String as[] = file.list();
            int i = as.length;
            for (int j = 0; j < i; j++)
            {
                String s1 = as[j];
                Log.d("AndroidUtils", (new StringBuilder()).append("Insise a directory filename=").append(s1).toString());
                generateSourceFileList(new File(file, s1), s, list);
            }

        }
        Log.d("AndroidUtils", "generateSourceFileList end");
    }

    public static String generateUniqueCityName(String s, String s1, String s2)
    {
        Log.d("AndroidUtils", (new StringBuilder()).append("genareUniqueCityName : cityName=").append(s).append(" adminArea=").append(s1).append(" country=").append(s2).toString());
        if (s == null)
            return "";
        String s3;
        if (s1 != null && s2 != null)
            s3 = (new StringBuilder()).append(s.replaceAll("[^\\w\\s]", "")).append("_").append(s1.replaceAll("[^\\w\\s]", "")).append("_").append(s2.replaceAll("[^\\w\\s]", "")).toString();
        else
        if (s1 != null)
            s3 = (new StringBuilder()).append(s.replaceAll("[^\\w\\s]", "")).append("_").append(s1.replaceAll("[^\\w\\s]", "")).toString();
        else
        if (s2 != null)
            s3 = (new StringBuilder()).append(s.replaceAll("[^\\w\\s]", "")).append("_").append(s2.replaceAll("[^\\w\\s]", "")).toString();
        else
            s3 = s.replaceAll("[^\\w\\s]", "");
        String s4 = s3.toLowerCase(Locale.US).trim().replaceAll(" ", "");
        Log.d("AndroidUtils", (new StringBuilder()).append("genareUniqueCityName :").append(s4).toString());
        return s4;
    }

    public static String generateZipEntry(String s, String s1)
    {
        Log.d("AndroidUtils", (new StringBuilder()).append("file=").append(s).append(" sourcePath=").append(s1).toString());
        Log.d("AndroidUtils", (new StringBuilder()).append("sourcePath.length() + 1=").append(s1.length()).append(1).append(" file.length()=").append(s.length()).toString());
        return s.substring(1 + s1.length(), s.length());
    }

    public static File getAmbientAppImageDirectory(String s)
    {
        File file = getAmbientDirectory(s);
        File file1 = null;
        if (file != null)
        {
            file1 = new File(file, "AppImage");
            Log.d("AndroidUtils", (new StringBuilder()).append(s).append(" Ambient app image path : ").append(file1.getAbsolutePath()).toString());
            if (!file1.exists() && !file1.mkdirs())
                return null;
        }
        return file1;
    }

    public static File getAmbientDirectory(String s)
    {
        Context context = ToqApplication.getAppContext();
        File file = null;
        if (context != null)
        {
            String s1;
            if ("stock".equals(s))
                s1 = "AMBIENT_IMAGES/stock";
            else
            if ("weather".equals(s))
                s1 = "AMBIENT_IMAGES/weather";
            else
            if ("WorldClock".equals(s))
            {
                s1 = "AMBIENT_IMAGES/WorldClock";
            } else
            {
                boolean flag = "DegreesClock".equals(s);
                s1 = null;
                if (flag)
                    s1 = "AMBIENT_IMAGES/DegreesClock";
            }
            file = null;
            if (s1 != null)
            {
                file = new File(ToqApplication.getAppContext().getFilesDir(), s1);
                Log.d("AndroidUtils", (new StringBuilder()).append(s).append(" Ambient path : ").append(file.getAbsolutePath()).toString());
                Log.d("AndroidUtils", (new StringBuilder()).append(s).append(" file.exists()=").append(file.exists()).toString());
                if (!file.exists() && !file.mkdirs())
                    return null;
            }
        }
        return file;
    }

    public static AndroidUtils getAndroidUtils()
    {
        if (mInstance == null)
            mInstance = new AndroidUtils();
        return mInstance;
    }

    private byte[] getBytesFromFile(File file)
        throws IOException
    {
        FileInputStream fileinputstream = new FileInputStream(file);
        long l = file.length();
        byte abyte1[];
        if (l > 0x7fffffffL)
        {
            Log.d("AndroidUtils", "File is too large to process ");
            fileinputstream.close();
            abyte1 = null;
        } else
        {
            ByteBuffer bytebuffer = ByteBuffer.allocate((int)l);
            byte abyte0[] = new byte[1024];
            do
            {
                int i = fileinputstream.read(abyte0, 0, 1024);
                if (i == -1)
                    break;
                bytebuffer.put(abyte0, 0, i);
            } while (true);
            abyte1 = bytebuffer.array();
            if (abyte1.length < (int)l)
            {
                fileinputstream.close();
                throw new IOException((new StringBuilder()).append("Could not completely read file ").append(file.getName()).toString());
            }
            if (fileinputstream != null)
            {
                fileinputstream.close();
                return abyte1;
            }
        }
        return abyte1;
    }

    public static boolean getCurrentCityEnabledStatus()
    {
        boolean flag;
        try
        {
            flag = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).getBoolean("WeatherCurrentCityUpdate", false);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        return flag;
    }

    public static Locale getNormalizedLocale(String s)
    {
        String as[] = s.split("_");
        switch (as.length)
        {
        case 2: // '\002'
            return new Locale(as[0], as[1]);

        case 1: // '\001'
            return new Locale(as[0]);

        case 0: // '\0'
            return new Locale("");
        }
        return new Locale(as[0], as[1], as[2]);
    }

    public static int getNumStocks()
    {
        ArrayList arraylist;
        int i;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).getString("StockSymbols", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return -1;
        }
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_46;
        i = arraylist.size();
        return i;
        return 0;
    }

    public static int getNumWeatherCities()
    {
        ArrayList arraylist;
        int i;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).getString("WeatherCities", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return -1;
        }
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_46;
        i = arraylist.size();
        return i;
        return 0;
    }

    public static int getWeatherTemperatureBasedOnUnit(int i)
    {
        if (getWeatherTemperatureUnit().equalsIgnoreCase("Fahrenheit"))
        {
            return i;
        } else
        {
            int j = Math.round(0.5555556F * (float)(i - 32));
            Log.d("AndroidUtils", (new StringBuilder()).append("Celsius temperature ==> ").append(j).toString());
            return j;
        }
    }

    private static String getWeatherTemperatureUnit()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        String s = "Fahrenheit";
        if (sharedpreferences != null)
            s = sharedpreferences.getString("weather_temperature_unit", "Fahrenheit");
        return s;
    }

    private boolean isA2DPConnected()
    {
        BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
        boolean flag = false;
        if (bluetoothadapter != null)
        {
            int i = bluetoothadapter.getProfileConnectionState(2);
            flag = false;
            if (2 == i)
                flag = true;
        }
        return flag;
    }

    public static boolean isAirplaneMode(Context context)
    {
        boolean flag = true;
        boolean flag1;
        if (android.provider.Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != flag)
            flag = false;
        isAirplaneModeOn = flag;
        Log.d("TAG", (new StringBuilder()).append("isAirplaneModeOn: ").append(isAirplaneModeOn).toString());
        flag1 = isAirplaneModeOn;
        return flag1;
        Exception exception;
        exception;
        return false;
    }

    public static boolean isAtleastOneClockSeleted(HashMap hashmap)
    {
        Iterator iterator = hashmap.entrySet().iterator();
        boolean flag1;
        do
        {
            boolean flag = iterator.hasNext();
            flag1 = false;
            if (!flag)
                break;
            if (!((Boolean)((java.util.Map.Entry)iterator.next()).getValue()).booleanValue())
                continue;
            flag1 = true;
            break;
        } while (true);
        Log.d("AndroidUtils", (new StringBuilder()).append("Is at least one clock selected =").append(flag1).toString());
        return flag1;
    }

    public static boolean isNetworkAvailable(Context context)
    {
        boolean flag = false;
        NetworkInfo anetworkinfo[] = ((ConnectivityManager)context.getSystemService("connectivity")).getAllNetworkInfo();
        for (int i = 0; i < anetworkinfo.length; i++)
            if (anetworkinfo[i].getType() == 0 && anetworkinfo[i].isAvailable())
            {
                Log.d("TAG", "Network is availabel: ");
                flag = true;
            }

        return flag;
    }

    public static boolean isNetworkConnected()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)ToqApplication.getAppContext().getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnected();
    }

    public static boolean isStringContainsChineseCharacters(String s)
    {
        boolean flag;
        Log.d("Ambient", (new StringBuilder()).append("isChinese=").append(s).toString());
        flag = false;
        if (s == null) goto _L2; else goto _L1
_L1:
        Set set = chineseUnicodeBlocks;
        flag = false;
        if (set == null) goto _L2; else goto _L3
_L3:
        char ac[];
        int i;
        ac = s.toCharArray();
        i = ac.length;
        int j = 0;
_L7:
        flag = false;
        if (j >= i) goto _L2; else goto _L4
_L4:
        char c = ac[j];
        if (!chineseUnicodeBlocks.contains(Character.UnicodeBlock.of(c))) goto _L6; else goto _L5
_L5:
        Log.d("Ambient", (new StringBuilder()).append(c).append(" is a chinese character ").toString());
        flag = true;
_L2:
        Log.d("Ambient", (new StringBuilder()).append("Final is chinse = ").append(flag).toString());
        return flag;
_L6:
        Log.d("Ambient", (new StringBuilder()).append(c).append(" is not chinese character ").toString());
        j++;
          goto _L7
        Exception exception;
        exception;
        Log.d("Ambient", "!!! Exception in find the character type");
        flag = false;
          goto _L2
    }

    public static void printMemoryStatus(String s)
    {
        Log.i("MemoryStatus", s);
        Log.i("MemoryStatus", (new StringBuilder()).append("nativeUsage: ").append(Debug.getNativeHeapAllocatedSize()).toString());
        Log.i("MemoryStatus", (new StringBuilder()).append("heapSize: ").append(Runtime.getRuntime().totalMemory()).toString());
        Log.i("MemoryStatus", (new StringBuilder()).append("heapRemaining: ").append(Runtime.getRuntime().freeMemory()).toString());
        double d = Runtime.getRuntime().maxMemory() - (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()) - Debug.getNativeHeapAllocatedSize();
        Log.i("MemoryStatus", (new StringBuilder()).append("memoryAvailable: ").append(d).toString());
    }

    public static void sendStoreFile(String s, String s1)
    {
        ToqConnectionHandlerImpl toqconnectionhandlerimpl;
        File file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        File file1 = new File((new StringBuilder()).append(s).append(s1).toString());
        if (!file.exists() || !file1.exists())
            break MISSING_BLOCK_LABEL_250;
        toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
        boolean flag;
        flag = false;
        if (toqconnectionhandlerimpl == null)
            break MISSING_BLOCK_LABEL_101;
        flag = ToqConnectionHandlerImpl.getConnectionHandler().getEndPointEnableTFTPMode(0);
        Log.d("TFTPFiletransferClient", (new StringBuilder()).append("In AndroidUtils.java enableTFTP = ").append(flag).append(", fileName = ").append(s1).toString());
        PhubFileTransferClient phubfiletransferclient;
        if (flag)
            try
            {
                TFTPFiletransferClient.getTFTPFiletransferClient(ToqApplication.getAppContext()).sendFile(s, s1);
                return;
            }
            catch (Exception exception)
            {
                Log.e("AndroidUtils", (new StringBuilder()).append("Send Store Fle").append(exception.toString()).toString());
                exception.printStackTrace();
                return;
            }
        phubfiletransferclient = null;
        if (false)
            break MISSING_BLOCK_LABEL_173;
        phubfiletransferclient = PhubFileTransferClient.getPhubFileTransferClient(ConnectionFactory.getConnectionFactory().getContext());
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("In AndroidUtils.java : File Name = ").append(s1).append(" File Transfer").toString());
        phubfiletransferclient.sendFile(s, s1);
        return;
        Log.d("StorageServiceController", (new StringBuilder()).append(s1).append(" file or folder doesnot exist").toString());
        return;
    }

    public void cancelBatteryMonitorTimer()
    {
        if (mBatteryMonitorTimer != null)
        {
            mBatteryMonitorTimer.cancel();
            mBatteryMonitorTimer.purge();
            mBatteryMonitorTimer = null;
        }
    }

    public void changeTypeFace(String s, Typeface typeface, TextView textview)
    {
        String s1 = textview.getText().toString();
        if (s1 != null)
        {
            int i = s1.indexOf(s);
            int j = i + s.length();
            QcomTypeFace qcomtypeface = new QcomTypeFace("roboto", typeface);
            SpannableString spannablestring = new SpannableString(s1);
            spannablestring.setSpan(qcomtypeface, i, j, 33);
            textview.setText(spannablestring);
        }
    }

    public void createMediaPlayer()
    {
        android.net.Uri uri;
        if (mMediaPlayer != null)
        {
            ((AudioManager)ToqApplication.getAppContext().getSystemService("audio")).abandonAudioFocus(null);
            mMediaPlayer.stop();
            mMediaPlayer = null;
        }
        if (mMediaPlayer != null)
            break MISSING_BLOCK_LABEL_88;
        mMediaPlayer = new MediaPlayer();
        uri = RingtoneManager.getDefaultUri(4);
        if (uri != null)
            mMediaPlayer.setAudioStreamType(4);
        if (ToqApplication.getAppContext() != null)
            mMediaPlayer.setDataSource(ToqApplication.getAppContext(), uri);
        return;
        Exception exception;
        exception;
        Log.d("FindPhoneActivity", exception.toString());
        exception.printStackTrace();
        return;
    }

    public void deleteOldLogFiles()
    {
        File afile[] = ToqApplication.getAppContext().getExternalFilesDir(null).listFiles(new FilenameFilter() {

            final AndroidUtils this$0;

            public boolean accept(File file1, String s)
            {
                return s.contains("Log");
            }

            
            {
                this$0 = AndroidUtils.this;
                super();
            }
        }
);
        int i = afile.length;
        int j = 0;
        do
        {
            if (j >= i)
                break;
            File file = afile[j];
            try
            {
                if (!file.isDirectory())
                    file.delete();
            }
            catch (Exception exception)
            {
                Log.e("AndroidUtils", "Exception while deleting old usage log files");
                exception.printStackTrace();
            }
            j++;
        } while (true);
    }

    public Drawable getAndroidAppIcon(String s)
    {
        Drawable drawable;
        try
        {
            PackageManager packagemanager = ToqApplication.getAppContext().getPackageManager();
            drawable = packagemanager.getApplicationIcon(packagemanager.getApplicationInfo(s, 0));
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Log.e("DeckOfCards", (new StringBuilder()).append("MoreAppletsActivity.getAndroidAppName - could not get app name for packageName: ").append(s).toString(), namenotfoundexception);
            return null;
        }
        return drawable;
    }

    public String getAndroidAppName(String s)
    {
        String s1;
        try
        {
            PackageManager packagemanager = ToqApplication.getAppContext().getPackageManager();
            s1 = packagemanager.getApplicationLabel(packagemanager.getApplicationInfo(s, 0)).toString();
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Log.e("DeckOfCards", (new StringBuilder()).append("MoreAppletsActivity.getAndroidAppName - could not get app name for packageName: ").append(s).toString(), namenotfoundexception);
            return null;
        }
        return s1;
    }

    public Calendar getCalendar(long l)
    {
        Calendar calendar = Calendar.getInstance();
        try
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("EEEE MMMM dd, yyyy", Locale.US);
            simpledateformat.setTimeZone(TimeZone.getTimeZone(TimeZone.getDefault().getID()));
            calendar.setTime(simpledateformat.parse(simpledateformat.format(new Date(l))));
            Log.d("AndroidUtils", (new StringBuilder()).append("Date = ").append(calendar.get(5)).toString());
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return calendar;
        }
        return calendar;
    }

    public long getCurrentDayEndTimeInSec()
    {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 24);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Log.e("AndroidUtils", (new StringBuilder()).append("Current Day End Time=").append(calendar.getTimeInMillis()).toString());
        return calendar.getTimeInMillis() / 1000L;
    }

    public long getCurrentDayStartTimeInSec()
    {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Log.e("AndroidUtils", (new StringBuilder()).append("Current Day Start Time=").append(calendar.getTimeInMillis()).toString());
        return calendar.getTimeInMillis() / 1000L;
    }

    public ArrayList getDefaultReminderTimes()
    {
        ArrayList arraylist = new ArrayList();
        int ai[] = {
            10, 14, 18
        };
        int i = ai.length;
        for (int j = 0; j < i; j++)
        {
            int k = ai[j];
            Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+00:00"));
            calendar.clear();
            calendar.set(0, 0, 0, k, 0, 0);
            arraylist.add(calendar);
        }

        return arraylist;
    }

    public BroadcastReceiver getHeadsetBroadCastReceiver()
    {
        return headsetBroadcastReciever;
    }

    public double getMaxActivityPointForDay(Day day)
    {
        double d = 10D;
        if (day != null)
        {
            Iterator iterator = day.getHourDataList().iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                Hour hour = (Hour)iterator.next();
                if (hour != null && d <= (double)hour.getPoints())
                    d = hour.getPoints();
            } while (true);
        }
        return d;
    }

    public double getMaxActivityPointForWeek(Month month)
    {
        double d = 10D;
label0:
        for (int i = -1 + month.getWeekDataList().size(); i >= 0; i--)
        {
            Week week = (Week)month.getWeekDataList().get(i);
            if (week == null)
                continue;
            Iterator iterator = week.getDayDataList().iterator();
            do
            {
                double d1;
                do
                {
                    if (!iterator.hasNext())
                        continue label0;
                    Day day = (Day)iterator.next();
                    d1 = 0.0D;
                    for (Iterator iterator1 = day.getHourDataList().iterator(); iterator1.hasNext();)
                        d1 += ((Hour)iterator1.next()).getPoints();

                } while (d > d1);
                d = d1;
            } while (true);
        }

        return d;
    }

    public String getOppConnectionUrl(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("btgoep://");
        stringbuilder.append((new StringBuilder()).append(s).append(":").toString());
        stringbuilder.append(Constants.OPP_UUID_BASE);
        stringbuilder.append(";authenticate=false;encrypt=false;master=false;android=true");
        Log.d("AndroidUtils", stringbuilder.toString());
        return stringbuilder.toString();
    }

    public int getPrevRingerMode()
    {
        return previousRingerModeState;
    }

    public ArrayList getWDSupportedLanguages()
    {
        PhubPreference phubpreference = PhubPreference.getPhubPreference(ToqApplication.getAppContext());
        ArrayList arraylist;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(phubpreference.getString("locale_list_key", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            arraylist = null;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            arraylist = null;
        }
        if (arraylist == null)
            arraylist = new ArrayList();
        if (arraylist.size() == 0)
            arraylist.add("en_US");
        return arraylist;
    }

    public void initBatteryMonitorTimer()
    {
        cancelBatteryMonitorTimer();
        mBatteryMonitorTimer = new Timer();
        mBatteryMonitorTimer.schedule(new TimerTask() {

            final AndroidUtils this$0;

            public void run()
            {
                if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() != 3)
                    break MISSING_BLOCK_LABEL_51;
                if (ConnectionFactory.getConnectionFactory() != null)
                {
                    SystemController.getSystemController().sendWDBatteryLevelRequest();
                    Log.d("AndroidUtils", "Requesting for WD battery Level");
                    Log.printUsageLog("SystemController", "Requesting for WD battery Level");
                    return;
                }
                try
                {
                    Log.d("AndroidUtils", "GET WD BATTERY LEVEL REQ: Connection Factory is Null");
                    return;
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
                return;
                Log.d("AndroidUtils", "GET WD BATTERY LEVEL REQ: Phone and WD Disconnected");
                return;
            }

            
            {
                this$0 = AndroidUtils.this;
                super();
            }
        }
, 0L, 0x1499700L);
    }

    public void initPhubTCPData()
    {
        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("phub_tcp_address"))
            Constants.PHUB_TCP_INTERFACE = ToqData.getInstance().getAssociatedDevicePrefs().getString("phub_tcp_address", Constants.PHUB_TCP_INTERFACE);
        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("phub_tcp_port"))
            Constants.PHUB_TCP_PORT = ToqData.getInstance().getAssociatedDevicePrefs().getInt("phub_tcp_port", Constants.PHUB_TCP_PORT);
    }

    public boolean isMediaPlayerPlaying()
    {
        if (mMediaPlayer != null)
            return mMediaPlayer.isPlaying();
        else
            return false;
    }

    public boolean isThirdPartySMSAppsInstalled(Context context)
    {
        boolean flag;
        String as[];
        PackageManager packagemanager;
        int i;
        flag = false;
        as = (new String[] {
            "com.jb.gosms"
        });
        packagemanager = context.getPackageManager();
        i = 0;
_L4:
        if (i >= as.length) goto _L2; else goto _L1
_L1:
        if (packagemanager.getPackageInfo(as[i], 1) != null)
            flag = true;
        else
            flag = false;
          goto _L3
_L2:
        try
        {
            Log.e("SMSController", (new StringBuilder()).append("Third party Package= ").append(flag).toString());
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return flag;
        }
        return flag;
_L5:
        i++;
          goto _L4
_L3:
        if (!flag) goto _L5; else goto _L2
    }

    public void loadWDSupportedLanguages(String s)
    {
        AssetManager assetmanager;
        ArrayList arraylist;
        String s1;
        Log.d("AndroidUtils", (new StringBuilder()).append("Reading Firmware File : ").append(s).toString());
        assetmanager = ToqApplication.getAppContext().getAssets();
        arraylist = new ArrayList();
        s1 = "en_US";
        String as[];
        int i;
        as = assetmanager.list("");
        i = as.length;
        int j = 0;
_L9:
        InputStream inputstream;
        inputstream = null;
        if (j >= i)
            break MISSING_BLOCK_LABEL_95;
        String s2 = as[j];
        if (!s2.equalsIgnoreCase(s))
            break MISSING_BLOCK_LABEL_492;
        inputstream = assetmanager.open(s2);
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_371;
        ZipInputStream zipinputstream = new ZipInputStream(inputstream);
_L4:
        ZipEntry zipentry = zipinputstream.getNextEntry();
        if (zipentry == null) goto _L2; else goto _L1
_L1:
        if (!zipentry.getName().contains("locale_list.jsn")) goto _L4; else goto _L3
_L3:
        StringBuilder stringbuilder;
        BufferedReader bufferedreader;
        String s3;
        Log.d("AndroidUtils", "Reading locale_list.jsn");
        stringbuilder = new StringBuilder();
        InputStreamReader inputstreamreader = new InputStreamReader(zipinputstream);
        bufferedreader = new BufferedReader(inputstreamreader);
        s3 = bufferedreader.readLine();
_L5:
        if (s3 == null)
            break MISSING_BLOCK_LABEL_206;
        stringbuilder.append(s3);
        s3 = bufferedreader.readLine();
          goto _L5
        JSONArray jsonarray;
        bufferedreader.close();
        JSONObject jsonobject = new JSONObject(stringbuilder.toString());
        s1 = jsonobject.getString("Default");
        Log.d("AndroidUtils", (new StringBuilder()).append("Default language read from 1234.zip : ").append(s1).toString());
        jsonarray = jsonobject.getJSONArray("Languages");
        if (jsonarray == null) goto _L2; else goto _L6
_L6:
        int k = 0;
_L7:
        if (k >= jsonarray.length())
            break; /* Loop/switch isn't completed */
        arraylist.add(jsonarray.getString(k));
        Log.d("AndroidUtils", (new StringBuilder()).append("WD Supported Language ").append(k + 1).append(" : ").append(jsonarray.getString(k)).toString());
        k++;
        if (true) goto _L7; else goto _L2
_L2:
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_361;
        inputstream.close();
        PhubPreference phubpreference;
        if (zipinputstream != null)
            try
            {
                zipinputstream.close();
            }
            catch (IOException ioexception1)
            {
                Log.d("AndroidUtils", "IO Exception while reading WD Supported Languages");
                ioexception1.printStackTrace();
            }
            catch (JSONException jsonexception)
            {
                Log.d("AndroidUtils", "JSON Exception in while reading WD Supported Languages");
                jsonexception.printStackTrace();
            }
            catch (Exception exception)
            {
                Log.d("AndroidUtils", "Exception in while reading WD Supported Languages");
                exception.printStackTrace();
            }
        phubpreference = PhubPreference.getPhubPreference(ToqApplication.getAppContext());
        try
        {
            phubpreference.putString("locale_list_key", ObjectSerializer.serialize(arraylist));
        }
        catch (IOException ioexception)
        {
            Log.d("AndroidUtils", "IO Exception while storing WD Supported Languages into preference");
            ioexception.printStackTrace();
        }
        catch (Exception exception1)
        {
            Log.d("AndroidUtils", "Exception in while storing WD Supported Languages");
            exception1.printStackTrace();
        }
        phubpreference.putString("default_locale_key", s1);
        return;
        j++;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public void pauseMediaPlayer()
    {
        try
        {
            if (mMediaPlayer != null && mMediaPlayer.isPlaying())
            {
                ((AudioManager)ToqApplication.getAppContext().getSystemService("audio")).abandonAudioFocus(null);
                mMediaPlayer.pause();
            }
            return;
        }
        catch (Exception exception)
        {
            Log.d("AndroidUtils", exception.toString());
        }
    }

    public void pushFileToWatch(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        PushPullFileAsyncTask pushpullfileasynctask = new PushPullFileAsyncTask();
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("PUSH###").append(s).append("###").append(s1).toString();
        pushpullfileasynctask.execute(as);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean pushFileToWatchInBackground(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        Log.i("AndroidUtils", "pushFileToWatch called");
        Log.i("AndroidUtils", (new StringBuilder()).append("Source Path= ").append(s).toString());
        Log.i("AndroidUtils", (new StringBuilder()).append("Destination  Path= ").append(s1).toString());
        ClientSession clientsession;
        DataOutputStream dataoutputstream;
        clientsession = null;
        dataoutputstream = null;
        header = null;
        String s2 = "";
        if (!FTPFileBrowserActivity.connectionInProgress) goto _L2; else goto _L1
_L1:
        Log.e("AndroidUtils", "Already an FTP Session is in Progress. Close it first and try again");
        boolean flag = false;
_L21:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        Log.i("AndroidUtils", (new StringBuilder()).append("**************************").append(s).toString());
        SharedPreferences sharedpreferences = ToqData.getInstance().getAssociatedDevicePrefs();
        clientsession = null;
        dataoutputstream = null;
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_175;
        s2 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", null);
        if (s2 == null)
            break MISSING_BLOCK_LABEL_175;
        s2 = s2.replaceAll(":", "");
        String s3;
        String s4;
        s3 = (new StringBuilder()).append("btgoep://").append(s2).append(":").append(Constants.FTP_UUID).append(";authenticate=false;encrypt=false;master=false;android=true").toString();
        Log.i("AndroidUtils", (new StringBuilder()).append("FTP URL = ").append(s3).toString());
        s4 = Environment.getExternalStorageDirectory().toString();
        Log.i("AndroidUtils", (new StringBuilder()).append("Root=").append(s4).toString());
        if (Environment.getExternalStorageDirectory() == null) goto _L4; else goto _L3
_L3:
        if (!s.contains("/mnt/sdcard")) goto _L6; else goto _L5
_L5:
        s = s.replace("/mnt/sdcard", "");
        Log.d("AndroidUtils", (new StringBuilder()).append("Src Path1 = ").append(s).toString());
_L12:
        File file;
        boolean flag1;
        Log.i("AndroidUtils", (new StringBuilder()).append("Src Path final = ").append(s).toString());
        file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append(s).toString());
        flag1 = file.exists();
        clientsession = null;
        dataoutputstream = null;
        if (flag1) goto _L8; else goto _L7
_L7:
        if (file.isFile()) goto _L8; else goto _L9
_L9:
        Log.e("AndroidUtils", "Source File does not exists or is not a file");
        flag = false;
        continue; /* Loop/switch isn't completed */
_L6:
        if (!s.contains("mnt/sdcard")) goto _L11; else goto _L10
_L10:
        s = s.replace("mnt/sdcard", "");
        Log.d("AndroidUtils", (new StringBuilder()).append("Src Path2 = ").append(s).toString());
          goto _L12
        Exception exception1;
        exception1;
        Log.e("AndroidUtils", "Exception during pushfile()");
        if (dataoutputstream == null)
            break MISSING_BLOCK_LABEL_492;
        dataoutputstream.close();
        if (clientsession == null) goto _L14; else goto _L13
_L13:
        if (clientsession.disconnect(null).getResponseCode() != 160) goto _L16; else goto _L15
_L15:
        Log.d("AndroidUtils", "conn.disconnect() successful");
_L14:
        exception1.printStackTrace();
        flag = false;
        continue; /* Loop/switch isn't completed */
_L11:
        if (!s.contains(s4))
            break MISSING_BLOCK_LABEL_586;
        s = s.replace(s4, "");
        Log.d("AndroidUtils", (new StringBuilder()).append("Src Path Root 1 = ").append(s).toString());
          goto _L12
        Exception exception;
        exception;
        throw exception;
        String s5 = s4.substring(1);
        if (s.contains(s5))
        {
            s = s.replace(s5, "");
            Log.d("AndroidUtils", (new StringBuilder()).append("Src Path Root 2 = ").append(s).toString());
        }
          goto _L12
_L8:
        String as[];
        String s6;
        Log.i("AndroidUtils", "Source File exists");
        as = s1.split("/");
        String as1[] = s.split("/");
        s6 = as1[-1 + as1.length];
        Log.d("AndroidUtils", (new StringBuilder()).append("FileName=").append(s6).toString());
        clientsession = null;
        if (false)
            break MISSING_BLOCK_LABEL_877;
        clientsession = (ClientSession)Connector.open(s3, 3, true);
        byte abyte0[] = {
            -7, -20, 123, -60, -107, 60, 17, -46, -104, 78, 
            82, 84, 0, -36, -98, 9
        };
        header = clientsession.createHeaderSet();
        header.setHeader(70, abyte0);
        clientsession.connect(header);
        Log.i("AndroidUtils", "Connection Success ");
        header = clientsession.createHeaderSet();
        header.setHeader(1, "");
        clientsession.setPath(header, false, false);
        int i = 0;
_L19:
        boolean flag2;
        if (i >= as.length)
            break MISSING_BLOCK_LABEL_1058;
        Log.d("AndroidUtils", (new StringBuilder()).append("strTemp= ").append(as[i]).toString());
        flag2 = as[i].isEmpty();
        dataoutputstream = null;
        if (flag2)
            break MISSING_BLOCK_LABEL_1018;
        if (!as[i].equals(" "))
        {
            header.setHeader(1, as[i]);
            clientsession.setPath(header, false, false);
            break MISSING_BLOCK_LABEL_1389;
        }
        if (i == 0)
            break MISSING_BLOCK_LABEL_1389;
        if (i == -1 + as.length)
            break MISSING_BLOCK_LABEL_1389;
        Log.e("AndroidUtils", "Invalid Destination Path ");
        if (clientsession == null)
            break MISSING_BLOCK_LABEL_1395;
        clientsession.disconnect(null);
        break MISSING_BLOCK_LABEL_1395;
        byte abyte1[];
        header = clientsession.createHeaderSet();
        header.setHeader(1, s6);
        abyte1 = getBytesFromFile(file);
        header.setHeader(195, Long.valueOf(abyte1.length));
        dataoutputstream = clientsession.put(header).openDataOutputStream();
        int j = 0;
        int k;
        k = abyte1.length;
        Log.d("AndroidUtils", (new StringBuilder()).append("Length= ").append(k).toString());
_L18:
        if (k == 0)
            break; /* Loop/switch isn't completed */
        if (k >= 15872)
            break MISSING_BLOCK_LABEL_1202;
        dataoutputstream.write(abyte1, j, k);
        dataoutputstream.flush();
        j += k;
        k = 0;
        continue; /* Loop/switch isn't completed */
        dataoutputstream.write(abyte1, j, 15872);
        dataoutputstream.flush();
        j += 15872;
        k -= 15872;
        if (true) goto _L18; else goto _L17
_L17:
        if (dataoutputstream == null)
            break MISSING_BLOCK_LABEL_1247;
        dataoutputstream.close();
        dataoutputstream = null;
        Log.e("TAG", (new StringBuilder()).append("File transfer completed  ").append(s6).toString());
        if (clientsession.disconnect(null).getResponseCode() == 160)
        {
            Log.d("AndroidUtils", "conn.disconnect() successful");
            break MISSING_BLOCK_LABEL_1401;
        }
        Log.e("AndroidUtils", "conn.disconnect() unsuccessful");
        break MISSING_BLOCK_LABEL_1401;
        Exception exception4;
        exception4;
        Log.e("AndroidUtils", (new StringBuilder()).append("con.disconnect() Exception = ").append(exception4.toString()).toString());
        break MISSING_BLOCK_LABEL_1401;
_L4:
        Log.e("AndroidUtils", "Memory Card Not Detected");
        flag = true;
        continue; /* Loop/switch isn't completed */
_L16:
        try
        {
            Log.e("AndroidUtils", "conn.disconnect() unsuccessful");
        }
        catch (Exception exception3) { }
          goto _L14
        Exception exception2;
        exception2;
        exception2.printStackTrace();
          goto _L14
        i++;
          goto _L19
        flag = false;
        continue; /* Loop/switch isn't completed */
        flag = true;
        if (true) goto _L21; else goto _L20
_L20:
    }

    public void receiveFileFromWatch(String s, String s1)
    {
        PushPullFileAsyncTask pushpullfileasynctask = new PushPullFileAsyncTask();
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("PULL###").append(s).append("###").append(s1).toString();
        pushpullfileasynctask.execute(as);
    }

    public boolean receiveFileFromWatchInBackground(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ClientSession clientsession;
        Operation operation;
        InputStream inputstream;
        FileOutputStream fileoutputstream;
        clientsession = null;
        operation = null;
        inputstream = null;
        fileoutputstream = null;
        header = null;
        String s2 = "";
        if (!FTPFileBrowserActivity.connectionInProgress) goto _L2; else goto _L1
_L1:
        Log.e("AndroidUtils", "Already an FTP Session is in Progress. Close it first and try again");
        boolean flag = false;
_L12:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        String s3;
        Log.i("AndroidUtils", "getFileFromWD called");
        Log.i("AndroidUtils", (new StringBuilder()).append("Source Path= ").append(s).toString());
        Log.i("AndroidUtils", (new StringBuilder()).append("Destination  Path= ").append(s1).toString());
        if (ToqData.getInstance().getAssociatedDevicePrefs() != null)
            s2 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", null).replaceAll(":", "");
        s3 = (new StringBuilder()).append("btgoep://").append(s2).append(":").append(Constants.FTP_UUID).append(";authenticate=false;encrypt=false;master=false;android=true").toString();
        Log.i("AndroidUtils", (new StringBuilder()).append("FTP URL = ").append(s3).toString());
        String s4 = Environment.getExternalStorageDirectory().toString();
        if (Environment.getExternalStorageDirectory() == null) goto _L4; else goto _L3
_L3:
        if (!s1.contains("/mnt/sdcard")) goto _L6; else goto _L5
_L5:
        s1 = s1.replace("/mnt/sdcard", "");
        Log.e("AndroidUtils", (new StringBuilder()).append("Dest Path1 = ").append(s1).toString());
_L15:
        File file;
        int i = -1 + s1.length();
        if (s1.charAt(i) != '/')
        {
            s1 = s1.concat("/");
            Log.e("AndroidUtils", (new StringBuilder()).append("Dest Path3 = ").append(s1).toString());
        }
        Log.e("AndroidUtils", (new StringBuilder()).append("Dest Path final = ").append(s1).toString());
        file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(s1).toString());
        if (file.exists()) goto _L8; else goto _L7
_L7:
        Log.i("AndroidUtils", "Directory does not exists...creating");
        if (file.mkdir()) goto _L10; else goto _L9
_L9:
        Log.e("AndroidUtils", "Cannot create the directory. Invalid destination path");
        if (true)
            break MISSING_BLOCK_LABEL_408;
        null.close();
        if (true)
            break MISSING_BLOCK_LABEL_416;
        null.close();
        if (true)
            break MISSING_BLOCK_LABEL_426;
        null.close();
        flag = false;
        if (true) goto _L12; else goto _L11
_L11:
        null.disconnect(null);
        null.close();
        flag = false;
          goto _L12
_L6:
        if (!s1.contains("mnt/sdcard")) goto _L14; else goto _L13
_L13:
        s1 = s1.replace("mnt/sdcard", "");
        Log.e("AndroidUtils", (new StringBuilder()).append("Dest Path2 = ").append(s1).toString());
          goto _L15
        Exception exception3;
        exception3;
_L34:
        Log.e("AndroidUtils", (new StringBuilder()).append("Exception:").append(exception3).append("--").append(exception3.getMessage()).toString());
        exception3.printStackTrace();
        if (fileoutputstream == null)
            break MISSING_BLOCK_LABEL_558;
        fileoutputstream.close();
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_568;
        inputstream.close();
        if (operation == null)
            break MISSING_BLOCK_LABEL_580;
        operation.close();
        flag = false;
        if (clientsession == null) goto _L12; else goto _L16
_L16:
        clientsession.disconnect(null);
        clientsession.close();
        flag = false;
          goto _L12
_L14:
        if (!s1.contains(s4)) goto _L18; else goto _L17
_L17:
        s1 = s1.replace(s4, "");
        Log.e("AndroidUtils", (new StringBuilder()).append("Dest Path Root 1 = ").append(s1).toString());
          goto _L15
        Exception exception1;
        exception1;
_L32:
        if (fileoutputstream == null)
            break MISSING_BLOCK_LABEL_665;
        fileoutputstream.close();
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_675;
        inputstream.close();
        if (operation == null)
            break MISSING_BLOCK_LABEL_687;
        operation.close();
        if (clientsession == null)
            break MISSING_BLOCK_LABEL_705;
        clientsession.disconnect(null);
        clientsession.close();
_L31:
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L18:
        String s5 = s4.substring(1);
        if (s1.contains(s5))
        {
            s1 = s1.replace(s5, "");
            Log.e("AndroidUtils", (new StringBuilder()).append("Dest Path Root 2 = ").append(s1).toString());
        }
          goto _L15
        IOException ioexception3;
        ioexception3;
        ioexception3.printStackTrace();
        flag = false;
          goto _L12
_L10:
        Log.i("AndroidUtils", "Directory successfully created");
_L8:
        String as[] = s.split("/");
        if (!as[-1 + as.length].contains(".")) goto _L20; else goto _L19
_L19:
        boolean flag1 = as[-1 + as.length].isEmpty();
        clientsession = null;
        fileoutputstream = null;
        inputstream = null;
        operation = null;
        if (flag1) goto _L20; else goto _L21
_L21:
        long l;
        String s6;
        File file1;
        l = Calendar.getInstance().getTimeInMillis();
        s6 = as[-1 + as.length];
        Log.e("AndroidUtils", (new StringBuilder()).append("File Name =").append(s6).toString());
        file1 = new File((new StringBuilder()).append(file).append(File.separator).append(s6).toString());
        Log.i("AndroidUtils", (new StringBuilder()).append("File= ").append(file1.toString()).toString());
        clientsession = null;
        if (false)
            break MISSING_BLOCK_LABEL_1124;
        clientsession = (ClientSession)Connector.open(s3, 3, true);
        byte abyte0[] = {
            -7, -20, 123, -60, -107, 60, 17, -46, -104, 78, 
            82, 84, 0, -36, -98, 9
        };
        header = clientsession.createHeaderSet();
        header.setHeader(70, abyte0);
        clientsession.connect(header);
        Log.i("AndroidUtils", "Connection Success ");
        header = clientsession.createHeaderSet();
        header.setHeader(1, "");
        clientsession.setPath(header, false, false);
        int j = 0;
_L33:
        if (j >= as.length) goto _L23; else goto _L22
_L22:
        Log.d("AndroidUtils", (new StringBuilder()).append("strTemp= ").append(as[j]).toString());
        if (as[j].isEmpty()) goto _L25; else goto _L24
_L24:
        header.setHeader(1, as[j]);
        clientsession.setPath(header, false, false);
          goto _L26
_L25:
        if (j == 0) goto _L26; else goto _L27
_L27:
        Log.e("AndroidUtils", "Invalid Source Path ");
_L23:
        FileOutputStream fileoutputstream2;
        header = clientsession.createHeaderSet();
        header.setHeader(1, s6);
        operation = clientsession.get(header);
        inputstream = operation.openInputStream();
        Log.i("AndroidUtils", (new StringBuilder()).append("Length of file= ").append(operation.getLength()).toString());
        fileoutputstream2 = new FileOutputStream(file1);
        byte abyte1[] = new byte[1024];
        int k = 0;
_L28:
        int i1 = inputstream.read(abyte1);
        if (i1 <= 0)
            break MISSING_BLOCK_LABEL_1409;
        k += i1;
        fileoutputstream2.write(abyte1, 0, i1);
        Log.d("AndroidUtils", (new StringBuilder()).append("totalBytesTransferred=").append(k).toString());
          goto _L28
        long l1;
        long l2;
        fileoutputstream2.close();
        inputstream.close();
        operation.close();
        l1 = Calendar.getInstance().getTimeInMillis();
        l2 = (l1 - l) / 1000L;
        String s7;
        s7 = "sec";
        if (l2 == 0L)
        {
            l2 = l1 - l;
            s7 = "milli-sec";
        }
        Log.i("AndroidUtils", (new StringBuilder()).append("File stored in: ").append(file1.getAbsolutePath()).toString());
        Log.i("AndroidUtils", (new StringBuilder()).append("Time taken for Transfer is ").append(l2).append(" ").append(s7).toString());
        FileOutputStream fileoutputstream1 = fileoutputstream2;
_L29:
        if (fileoutputstream1 == null)
            break MISSING_BLOCK_LABEL_1549;
        fileoutputstream1.close();
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_1559;
        inputstream.close();
        if (operation == null)
            break MISSING_BLOCK_LABEL_1571;
        operation.close();
        if (clientsession == null)
            break MISSING_BLOCK_LABEL_1589;
        clientsession.disconnect(null);
        clientsession.close();
_L30:
        flag = true;
          goto _L12
_L20:
        Log.e("AndroidUtils", "Invalid file name or extension / format");
        clientsession = null;
        fileoutputstream1 = null;
        inputstream = null;
        operation = null;
          goto _L29
_L4:
        Log.e("AndroidUtils", "Operation cannot be performed.Memory Card not found");
        clientsession = null;
        fileoutputstream1 = null;
        inputstream = null;
        operation = null;
          goto _L29
        IOException ioexception2;
        ioexception2;
        ioexception2.printStackTrace();
          goto _L30
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
        flag = false;
          goto _L12
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
          goto _L31
        Exception exception2;
        exception2;
          goto _L31
        exception1;
        fileoutputstream = fileoutputstream2;
          goto _L32
        Exception exception4;
        exception4;
        flag = false;
          goto _L12
        Exception exception5;
        exception5;
          goto _L30
        Exception exception6;
        exception6;
        flag = false;
          goto _L12
_L26:
        j++;
          goto _L33
        exception3;
        fileoutputstream = fileoutputstream2;
          goto _L34
    }

    public void resumeMediaPlayer()
    {
        try
        {
            if (mMediaPlayer != null && !mMediaPlayer.isPlaying())
            {
                ((AudioManager)ToqApplication.getAppContext().getSystemService("audio")).requestAudioFocus(null, 4, 2);
                mMediaPlayer.start();
            }
            return;
        }
        catch (Exception exception)
        {
            Log.d("AndroidUtils", exception.toString());
        }
    }

    public void setBroadCastReceiver(HeadsetBroadCastReciever headsetbroadcastreciever)
    {
        headsetBroadcastReciever = headsetbroadcastreciever;
    }

    public void setCurrentRingerMode(int i)
    {
        if (ToqApplication.getAppContext() != null)
            ((AudioManager)ToqApplication.getAppContext().getSystemService("audio")).setRingerMode(i);
    }

    public void setRingerModeSilent(int i)
    {
        ConnectionFactory connectionfactory;
        AudioManager audiomanager;
        try
        {
            connectionfactory = ConnectionFactory.getConnectionFactory();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("AndroidUtils", (new StringBuilder()).append("Exception = ").append(exception.toString()).toString());
            return;
        }
        if (connectionfactory != null)
            break MISSING_BLOCK_LABEL_17;
        Log.d("AndroidUtils", "ConnectionFactory.getConnectionFactory() is null");
        return;
        if (i != 1)
            break MISSING_BLOCK_LABEL_107;
        audiomanager = (AudioManager)ToqApplication.getAppContext().getSystemService("audio");
        if (audiomanager.getRingerMode() != 1)
            previousRingerModeState = audiomanager.getRingerMode();
        connectionfactory.setAppCurrentMode(0);
        setCurrentRingerMode(1);
        Log.printUsageLog("AndroidUtils", "Putting Phone to Vibrate Mode");
        return;
        connectionfactory.setAppCurrentMode(1);
        setCurrentRingerMode(previousRingerModeState);
        Log.printUsageLog("AndroidUtils", "Putting Phone to Normal Mode");
        return;
    }

    public void startMediaPlayer()
    {
        if (ToqApplication.getAppContext() == null)
            break MISSING_BLOCK_LABEL_156;
        AudioManager audiomanager = (AudioManager)ToqApplication.getAppContext().getSystemService("audio");
        if (mMediaPlayer == null)
            createMediaPlayer();
        mMediaPlayer.setAudioStreamType(4);
        mMediaPlayer.setLooping(true);
        int i;
        try
        {
            mMediaPlayer.prepare();
        }
        catch (IllegalStateException illegalstateexception)
        {
            Log.d("FindPhoneActivity", illegalstateexception.toString());
            illegalstateexception.printStackTrace();
        }
        catch (IOException ioexception)
        {
            Log.d("FindPhoneActivity", ioexception.toString());
            ioexception.printStackTrace();
        }
        catch (Exception exception)
        {
            Log.d("FindPhoneActivity", exception.toString());
            exception.printStackTrace();
        }
        if (!mMediaPlayer.isPlaying())
        {
            mDeviceAlarmVolume = audiomanager.getStreamVolume(4);
            i = 1 + (int)(0.75F * (float)audiomanager.getStreamMaxVolume(4));
            audiomanager.requestAudioFocus(null, 4, 2);
            mMediaPlayer.start();
            if (isA2DPConnected())
            {
                Log.d("AndroidUtils", "A2DP is connected : need to do the tweak");
                audiomanager.setStreamVolume(4, i + 1, 8);
                audiomanager.setStreamVolume(4, i, 8);
                audiomanager.setStreamVolume(4, i + 1, 8);
            }
            audiomanager.setStreamVolume(4, i, 8);
        }
        return;
        Exception exception1;
        exception1;
        Log.d("FindPhoneActivity", exception1.toString());
        exception1.printStackTrace();
        return;
    }

    public void stopMediaPlayer()
    {
        try
        {
            if (mMediaPlayer != null)
            {
                ((AudioManager)ToqApplication.getAppContext().getSystemService("audio")).abandonAudioFocus(null);
                mMediaPlayer.stop();
                mMediaPlayer.release();
                mMediaPlayer = null;
            }
            return;
        }
        catch (Exception exception)
        {
            Log.d("AndroidUtils", exception.toString());
        }
    }

    public void updateToqLanguage()
    {
        PhubPreference phubpreference = PhubPreference.getPhubPreference(ToqApplication.getAppContext());
        String s = "en_US";
        if (phubpreference != null)
            s = phubpreference.getString("locale_key", "en_US");
        Locale locale = getNormalizedLocale(s);
        Log.d("AndroidUtils", (new StringBuilder()).append("Application Locale in preference : ").append(locale).toString());
        Configuration configuration = new Configuration();
        if (getWDSupportedLanguages().contains(locale.toString()))
            configuration.locale = locale;
        else
            configuration.locale = getNormalizedLocale("en_US");
        if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
        {
            Log.d("AndroidUtils", "Application Locale for release 1.6 hard set to: en_US");
            configuration.locale = getNormalizedLocale("en_US");
        }
        if (phubpreference != null)
            phubpreference.putString("locale_key", configuration.locale.toString());
        Log.d("AndroidUtils", (new StringBuilder()).append("Application Locale has been set to : ").append(configuration.locale).toString());
        ToqApplication.getAppContext().getResources().updateConfiguration(configuration, ToqApplication.getAppContext().getResources().getDisplayMetrics());
    }




/*
    static long access$102(AndroidUtils androidutils, long l)
    {
        androidutils.startTime = l;
        return l;
    }

*/



/*
    static long access$202(AndroidUtils androidutils, long l)
    {
        androidutils.endTime = l;
        return l;
    }

*/



/*
    static long access$302(AndroidUtils androidutils, long l)
    {
        androidutils.timeDiff = l;
        return l;
    }

*/



/*
    static String access$402(AndroidUtils androidutils, String s)
    {
        androidutils.timeUnit = s;
        return s;
    }

*/
}
