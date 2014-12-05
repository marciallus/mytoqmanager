// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.logger;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.widget.Toast;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ProjectConfig;
import com.qualcomm.toq.smartwatch.controller.*;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.io.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import org.apache.http.entity.InputStreamEntity;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.logger:
//            ToqLogger

public abstract class AbstractToqLoggerImpl
    implements ToqLogger
{

    private static final String TAG = "AbstractToqLoggerImpl";
    private static ScheduledExecutorService loggerExecutorService = null;


    private Date getDate(File file)
    {
        FileInputStream fileinputstream;
        BufferedReader bufferedreader;
        if (file != null && file.isDirectory())
            return null;
        fileinputstream = null;
        bufferedreader = null;
        FileInputStream fileinputstream1 = new FileInputStream(file);
        BufferedReader bufferedreader1 = new BufferedReader(new InputStreamReader(fileinputstream1));
        String s = bufferedreader1.readLine();
        Date date;
        date = null;
        if (s == null)
            break MISSING_BLOCK_LABEL_93;
        Date date1;
        String s1 = s.substring(0, 19);
        date1 = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US)).parse(s1);
        date = date1;
        if (bufferedreader1 == null)
            break MISSING_BLOCK_LABEL_103;
        bufferedreader1.close();
        if (fileinputstream1 != null)
            try
            {
                fileinputstream1.close();
            }
            catch (IOException ioexception6)
            {
                ioexception6.printStackTrace();
            }
_L2:
        return date;
        ParseException parseexception;
        parseexception;
_L11:
        parseexception.printStackTrace();
        if (bufferedreader == null)
            break MISSING_BLOCK_LABEL_141;
        bufferedreader.close();
        date = null;
        if (fileinputstream == null) goto _L2; else goto _L1
_L1:
        fileinputstream.close();
        date = null;
          goto _L2
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
        date = null;
          goto _L2
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
_L10:
        filenotfoundexception.printStackTrace();
        if (bufferedreader == null)
            break MISSING_BLOCK_LABEL_186;
        bufferedreader.close();
        date = null;
        if (fileinputstream == null) goto _L2; else goto _L3
_L3:
        fileinputstream.close();
        date = null;
          goto _L2
        IOException ioexception2;
        ioexception2;
        ioexception2.printStackTrace();
        date = null;
          goto _L2
        IOException ioexception3;
        ioexception3;
_L9:
        ioexception3.printStackTrace();
        if (bufferedreader == null)
            break MISSING_BLOCK_LABEL_231;
        bufferedreader.close();
        date = null;
        if (fileinputstream == null) goto _L2; else goto _L4
_L4:
        fileinputstream.close();
        date = null;
          goto _L2
        IOException ioexception4;
        ioexception4;
        ioexception4.printStackTrace();
        date = null;
          goto _L2
        Exception exception1;
        exception1;
_L8:
        exception1.printStackTrace();
        Log.e("AbstractToqLoggerImpl", "Excetion!!! while getting the date");
        if (bufferedreader == null)
            break MISSING_BLOCK_LABEL_283;
        bufferedreader.close();
        date = null;
        if (fileinputstream == null) goto _L2; else goto _L5
_L5:
        fileinputstream.close();
        date = null;
          goto _L2
        IOException ioexception5;
        ioexception5;
        ioexception5.printStackTrace();
        date = null;
          goto _L2
        Exception exception;
        exception;
_L7:
        if (bufferedreader == null)
            break MISSING_BLOCK_LABEL_323;
        bufferedreader.close();
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
        fileinputstream = fileinputstream1;
        bufferedreader = null;
        continue; /* Loop/switch isn't completed */
        exception;
        bufferedreader = bufferedreader1;
        fileinputstream = fileinputstream1;
        if (true) goto _L7; else goto _L6
_L6:
        exception1;
        fileinputstream = fileinputstream1;
        bufferedreader = null;
          goto _L8
        exception1;
        bufferedreader = bufferedreader1;
        fileinputstream = fileinputstream1;
          goto _L8
        ioexception3;
        fileinputstream = fileinputstream1;
        bufferedreader = null;
          goto _L9
        ioexception3;
        bufferedreader = bufferedreader1;
        fileinputstream = fileinputstream1;
          goto _L9
        filenotfoundexception;
        fileinputstream = fileinputstream1;
        bufferedreader = null;
          goto _L10
        filenotfoundexception;
        bufferedreader = bufferedreader1;
        fileinputstream = fileinputstream1;
          goto _L10
        parseexception;
        fileinputstream = fileinputstream1;
        bufferedreader = null;
          goto _L11
        parseexception;
        bufferedreader = bufferedreader1;
        fileinputstream = fileinputstream1;
          goto _L11
    }

    private File[] getLoggerFilteredFileArray(final String filterName)
    {
        FilenameFilter filenamefilter = new FilenameFilter() {

            final AbstractToqLoggerImpl this$0;
            final String val$filterName;

            public boolean accept(File file, String s)
            {
                return s.startsWith(filterName);
            }

            
            {
                this$0 = AbstractToqLoggerImpl.this;
                filterName = s;
                super();
            }
        }
;
        return getLoggerDirectory().listFiles(filenamefilter);
    }

    public static ScheduledExecutorService getScheduledLoogerExecuterService()
        throws IllegalArgumentException
    {
        com/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;
        JVM INSTR monitorenter ;
        ScheduledExecutorService scheduledexecutorservice;
        if (loggerExecutorService == null)
            loggerExecutorService = Executors.newScheduledThreadPool(1);
        scheduledexecutorservice = loggerExecutorService;
        com/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;
        JVM INSTR monitorexit ;
        return scheduledexecutorservice;
        Exception exception;
        exception;
        throw exception;
    }

    private void printJSONInUsageLog()
    {
        JSONObject jsonobject;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        try
        {
            new JSONObject();
            jsonobject = UserSettingsController.getUserSettingsController().createUserSettingsJson(ToqApplication.getAppContext());
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if (jsonobject == null) goto _L2; else goto _L1
_L1:
        if (jsonobject.length() == 0) goto _L2; else goto _L3
_L3:
        Log.printUsageLog("UserSettingsController", (new StringBuilder()).append("usersettings.jsn contents : ").append(jsonobject.toString()).toString());
_L7:
        jsonobject1 = FavoriteAppsController.getFavoriteAppsController().createFavoriteAppsJson(ToqApplication.getAppContext());
        if (jsonobject1 == null) goto _L5; else goto _L4
_L4:
        if (jsonobject1.length() == 0) goto _L5; else goto _L6
_L6:
        Log.printUsageLog("FavoriteAppsController", (new StringBuilder()).append("app_list.jsn contents : ").append(jsonobject1.toString()).toString());
_L8:
        jsonobject2 = ClockSettingsController.getClockSettingsController().createClockSettingsJson(ToqApplication.getAppContext());
        if (jsonobject2 == null)
            break MISSING_BLOCK_LABEL_187;
        if (jsonobject2.length() != 0)
        {
            Log.printUsageLog("ClockSettingsController", (new StringBuilder()).append("clock_list.jsn contents : ").append(jsonobject2.toString()).toString());
            return;
        }
        break MISSING_BLOCK_LABEL_187;
_L2:
        Log.printUsageLog("UserSettingsController", "Unable to print usersettings json string");
          goto _L7
_L5:
        Log.printUsageLog("FavoriteAppsController", "Unable to print app_list json string");
          goto _L8
        Log.printUsageLog("ClockSettingsController", "Unable to print clock_list json string");
        return;
          goto _L7
    }

    private void writeProjectConfigInfoToFile(FileOutputStream fileoutputstream)
        throws IOException
    {
        fileoutputstream.write("***************************\n".getBytes());
        Object aobj[] = new Object[1];
        aobj[0] = ToqApplication.getAppContext().getString(0x7f0a0002);
        fileoutputstream.write(String.format("BAMBOO BUILD NUMBER: %s \n", aobj).getBytes());
        Object aobj1[];
        Object aobj2[];
        Object aobj3[];
        Object aobj4[];
        Object aobj5[];
        Object aobj6[];
        Object aobj7[];
        Object aobj8[];
        Object aobj9[];
        Object aobj10[];
        Object aobj11[];
        try
        {
            Object aobj12[] = new Object[1];
            aobj12[0] = ToqApplication.getAppContext().getPackageManager().getPackageInfo(ToqApplication.getAppContext().getPackageName(), 0).versionName;
            fileoutputstream.write(String.format("BAMBOO VERSION NUMBER: %s \n", aobj12).getBytes());
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        aobj1 = new Object[1];
        aobj1[0] = Build.MANUFACTURER;
        fileoutputstream.write(String.format("MANUFACTURER: %s \n", aobj1).getBytes());
        aobj2 = new Object[1];
        aobj2[0] = Build.MODEL;
        fileoutputstream.write(String.format("MODEL: %s \n", aobj2).getBytes());
        aobj3 = new Object[1];
        aobj3[0] = Build.BOARD;
        fileoutputstream.write(String.format("BOARD: %s \n", aobj3).getBytes());
        aobj4 = new Object[1];
        aobj4[0] = Build.BRAND;
        fileoutputstream.write(String.format("BRAND: %s \n", aobj4).getBytes());
        aobj5 = new Object[1];
        aobj5[0] = Build.DEVICE;
        fileoutputstream.write(String.format("DEVICE: %s \n", aobj5).getBytes());
        aobj6 = new Object[1];
        aobj6[0] = Build.DISPLAY;
        fileoutputstream.write(String.format("DISPLAY: %s \n", aobj6).getBytes());
        aobj7 = new Object[1];
        aobj7[0] = Build.FINGERPRINT;
        fileoutputstream.write(String.format("FINGERPRINT: %s \n", aobj7).getBytes());
        aobj8 = new Object[1];
        aobj8[0] = Build.HARDWARE;
        fileoutputstream.write(String.format("HARDWARE: %s \n", aobj8).getBytes());
        aobj9 = new Object[1];
        aobj9[0] = Build.HOST;
        fileoutputstream.write(String.format("HOST: %s \n", aobj9).getBytes());
        aobj10 = new Object[1];
        aobj10[0] = Build.ID;
        fileoutputstream.write(String.format("ID: %s \n", aobj10).getBytes());
        aobj11 = new Object[1];
        aobj11[0] = Build.PRODUCT;
        fileoutputstream.write(String.format("PRODUCT: %s \n", aobj11).getBytes());
        if (ProjectConfig.getProjectConfig() != null && !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
        {
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("watch_details_pref", 0);
            if (sharedpreferences != null)
            {
                String s = sharedpreferences.getString("serial_number0", "");
                if (!s.isEmpty())
                    fileoutputstream.write(String.format("WD_CCA_ID: %s \n", new Object[] {
                        s
                    }).getBytes());
                else
                    fileoutputstream.write(String.format("WD_CCA_ID: %s \n", new Object[] {
                        "Not Available"
                    }).getBytes());
            }
            fileoutputstream.write("***************************\n\n".getBytes());
        }
    }

    public String convertInputStreamToString(InputStream inputstream)
    {
        String s;
        BufferedReader bufferedreader;
        s = "";
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_88;
        bufferedreader = null;
        BufferedReader bufferedreader1 = new BufferedReader(new InputStreamReader(inputstream));
        String s1 = bufferedreader1.readLine();
_L1:
        if (s1 == null)
            break MISSING_BLOCK_LABEL_69;
        s = (new StringBuilder()).append(s).append(s1).toString();
        s1 = bufferedreader1.readLine();
          goto _L1
        bufferedreader1.close();
        inputstream.close();
        if (bufferedreader1 == null)
            break MISSING_BLOCK_LABEL_208;
        try
        {
            bufferedreader1.close();
        }
        catch (IOException ioexception3)
        {
            Log.e(ioexception3.getClass().getName(), ioexception3.getMessage());
            return s;
        }
_L3:
        return s;
        IOException ioexception;
        ioexception;
_L6:
        Log.e(ioexception.getClass().getName(), ioexception.getMessage());
        if (bufferedreader == null) goto _L3; else goto _L2
_L2:
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception2)
        {
            Log.e(ioexception2.getClass().getName(), ioexception2.getMessage());
            return s;
        }
        return s;
        Exception exception;
        exception;
_L5:
        if (bufferedreader != null)
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception1)
            {
                Log.e(ioexception1.getClass().getName(), ioexception1.getMessage());
            }
        throw exception;
        exception;
        bufferedreader = bufferedreader1;
        if (true) goto _L5; else goto _L4
_L4:
        ioexception;
        bufferedreader = bufferedreader1;
          goto _L6
        return s;
    }

    public void deleteExistingMergedFile(String s)
    {
        File afile[] = getLoggerFilteredFileArray(s);
        int i = afile.length;
        for (int j = 0; j < i; j++)
        {
            File file = afile[j];
            if (!file.isDirectory())
                file.delete();
        }

    }

    public File getLoggerDirectory()
    {
        return ToqApplication.getAppContext().getExternalFilesDir(null);
    }

    public InputStreamEntity getLoggerFileInputStreamEntity(String s, String s1)
    {
        File file;
        InputStreamEntity inputstreamentity;
        deleteExistingMergedFile(s);
        file = new File(getLoggerDirectory(), getNewLoggerMergeFileName(s));
        mergeFiles(file, s1);
        inputstreamentity = null;
        if (file == null)
            break MISSING_BLOCK_LABEL_97;
        boolean flag = file.exists();
        inputstreamentity = null;
        if (!flag)
            break MISSING_BLOCK_LABEL_97;
        InputStreamEntity inputstreamentity1 = new InputStreamEntity(new FileInputStream(file), file.length());
        inputstreamentity1.setContentType("text/plain");
        inputstreamentity1.setChunked(true);
        inputstreamentity1.setContentEncoding("utf-8");
        inputstreamentity = inputstreamentity1;
        return inputstreamentity;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
_L2:
        Log.e(filenotfoundexception.getClass().getName(), filenotfoundexception.getMessage());
        return inputstreamentity;
        filenotfoundexception;
        inputstreamentity = inputstreamentity1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String getLoggerFullFilePath(String s)
    {
        String s1 = Environment.getExternalStorageState();
        boolean flag = "mounted".equals(s1);
        String s2 = null;
        if (flag)
        {
            boolean flag1 = "mounted_ro".equals(s1);
            s2 = null;
            if (!flag1)
            {
                File file = getLoggerDirectory();
                s2 = null;
                if (file != null)
                {
                    String s3 = file.toString();
                    s2 = null;
                    if (s3 != null)
                    {
                        s2 = null;
                        if (s != null)
                            s2 = (new StringBuilder()).append(getLoggerDirectory()).append(File.separator).append(s).toString();
                    }
                }
            }
        }
        return s2;
    }

    public String getNewLoggerMergeFileName(String s)
    {
        SharedPreferences sharedpreferences;
        String s1;
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("watch_details_pref", 0);
        s1 = (new SimpleDateFormat("yyyyMMddHHmmss", Locale.US)).format(new Date());
        if (sharedpreferences == null) goto _L2; else goto _L1
_L1:
        String s3 = sharedpreferences.getString("serial_number0", "");
        if (s3 == null) goto _L4; else goto _L3
_L3:
        if (s3.isEmpty()) goto _L4; else goto _L5
_L5:
        byte abyte0[];
        StringBuffer stringbuffer;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(s3.getBytes());
        abyte0 = messagedigest.digest();
        stringbuffer = new StringBuffer();
        String s2;
        int i = 0;
        do
        {
            String s4;
            String s5;
            String s6;
            try
            {
                if (i >= abyte0.length)
                    break;
                stringbuffer.append(Integer.toHexString(0xff & abyte0[i]));
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception)
            {
                Log.logException("AbstractToqLoggerImpl", nosuchalgorithmexception);
                s2 = null;
                continue; /* Loop/switch isn't completed */
            }
            i++;
        } while (true);
        s5 = stringbuffer.toString();
        Log.d("AbstractToqLoggerImpl", (new StringBuilder()).append("CCAID ").append(s3).append(" MD5 CCCAID").append(s5).toString());
        s6 = String.format("%s_%s_%s.txt", new Object[] {
            s, s5.toUpperCase(Locale.US), s1
        });
        s2 = s6;
_L7:
        Log.d("AbstractToqLoggerImpl", (new StringBuilder()).append(" File Name : ").append(s2).toString());
        return s2;
_L4:
        Log.d("AbstractToqLoggerImpl", "Serial Number is empty fetched from preference");
        s4 = String.format("%s_%s_%s.txt", new Object[] {
            s, "_NoCcaId_", s1
        });
        s2 = s4;
        continue; /* Loop/switch isn't completed */
_L2:
        Log.d("AbstractToqLoggerImpl", "Preference is null");
        s2 = String.format("%s_%s_%s.txt", new Object[] {
            s, "_NoCcaId_", s1
        });
        if (true) goto _L7; else goto _L6
_L6:
    }

    public boolean mergeFiles(File file, String s)
    {
        File afile[];
        int i;
        Log.printUsageLog("AbstractToqLoggerImpl", (new StringBuilder()).append("Is Current city enabled ").append(AndroidUtils.getCurrentCityEnabledStatus()).toString());
        Log.printUsageLog("AbstractToqLoggerImpl", (new StringBuilder()).append("Number of weather cities ").append(AndroidUtils.getNumWeatherCities()).toString());
        Log.printUsageLog("AbstractToqLoggerImpl", (new StringBuilder()).append("Number of stocks ").append(AndroidUtils.getNumStocks()).toString());
        printJSONInUsageLog();
        afile = getLoggerFilteredFileArray(s);
        if (afile == null)
        {
            Log.d("AbstractToqLoggerImpl", "log4j directory is empty");
            return false;
        }
        if (afile.length == 0)
        {
            Log.d("AbstractToqLoggerImpl", "log4j directory is empty");
            return false;
        }
        i = 0;
_L22:
        int j1;
        int k1;
        if (i >= afile.length)
            break MISSING_BLOCK_LABEL_388;
        j1 = i;
        k1 = i;
_L2:
        Date date;
        Date date1;
label0:
        {
            if (k1 < afile.length)
            {
                date = getDate(afile[j1]);
                date1 = getDate(afile[k1]);
                if (date != null)
                    break label0;
                if (afile[j1] != null && afile[j1].exists() && afile[j1].isFile())
                {
                    Log.d("AbstractToqLoggerImpl", (new StringBuilder()).append("deleting unrequired file in log4j directory :").append(afile[j1].getPath()).toString());
                    afile[j1].delete();
                }
                afile[j1] = null;
            }
            File file1 = afile[i];
            afile[i] = afile[j1];
            afile[j1] = file1;
            i++;
            continue; /* Loop/switch isn't completed */
        }
        if (date1 != null)
            break; /* Loop/switch isn't completed */
        if (afile[k1] != null && afile[k1].exists() && afile[k1].isFile())
        {
            Log.d("AbstractToqLoggerImpl", (new StringBuilder()).append("deleting unrequired file in log4j directory :").append(afile[k1].getPath()).toString());
            afile[k1].delete();
        }
        afile[k1] = null;
_L4:
        k1++;
        if (true) goto _L2; else goto _L1
_L1:
        if (date == null || date1 == null || !getDate(afile[j1]).after(getDate(afile[k1]))) goto _L4; else goto _L3
_L3:
        j1 = k1;
          goto _L4
        FileOutputStream fileoutputstream = null;
        FileOutputStream fileoutputstream1 = new FileOutputStream(file);
        writeProjectConfigInfoToFile(fileoutputstream1);
        int k = 0;
_L20:
        if (k >= afile.length) goto _L6; else goto _L5
_L5:
        if (afile[k] == null || !afile[k].exists() || afile[k].isDirectory()) goto _L8; else goto _L7
_L7:
        FileInputStream fileinputstream;
        byte abyte0[];
        Log.d("AbstractToqLoggerImpl", (new StringBuilder()).append(" Log4j file index : ").append(k).append(" Content length : ").append(afile[k].length()).append(" File name : ").append(afile[k].getName()).toString());
        fileinputstream = new FileInputStream(afile[k]);
        abyte0 = new byte[0x80000];
_L11:
        int i1 = fileinputstream.read(abyte0);
        if (i1 == -1) goto _L10; else goto _L9
_L9:
        fileoutputstream1.write(abyte0, 0, i1);
          goto _L11
        IOException ioexception1;
        ioexception1;
        fileoutputstream = fileoutputstream1;
_L18:
        Log.d("AbstractToqLoggerImpl", "Exception while merging log4j files");
        ioexception1.printStackTrace();
        if (ioexception1.getMessage().contains("ENOSPC") || ioexception1.getMessage().contains("No space left on device"))
            Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a01cd), 0).show();
        if (fileoutputstream == null)
            break MISSING_BLOCK_LABEL_629;
        fileoutputstream.close();
        long l1 = file.length();
        boolean flag;
        int j = l1 != 0L;
        flag = false;
        if (j <= 0)
            return false;
          goto _L12
_L10:
        fileinputstream.close();
        break; /* Loop/switch isn't completed */
_L8:
        Log.d("AbstractToqLoggerImpl", (new StringBuilder()).append("Log4j file at index : ").append(k).append(" doesn't exist or is a directory").toString());
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        fileoutputstream = fileoutputstream1;
_L16:
        if (fileoutputstream == null)
            break MISSING_BLOCK_LABEL_710;
        fileoutputstream.close();
        long l = file.length();
        if (l <= 0L)
            return false;
          goto _L13
_L6:
        flag = true;
        if (fileoutputstream1 == null)
            break MISSING_BLOCK_LABEL_738;
        fileoutputstream1.close();
        long l2 = file.length();
        if (l2 <= 0L)
            return false;
_L12:
        return flag;
        IOException ioexception3;
        ioexception3;
        Log.d("AbstractToqLoggerImpl", "Exception while closing Merged Log file");
        ioexception3.printStackTrace();
        continue; /* Loop/switch isn't completed */
        IOException ioexception2;
        ioexception2;
        Log.d("AbstractToqLoggerImpl", "Exception while closing Merged Log file");
        ioexception2.printStackTrace();
        flag = false;
        if (true) goto _L12; else goto _L14
_L14:
        IOException ioexception;
        ioexception;
        Log.d("AbstractToqLoggerImpl", "Exception while closing Merged Log file");
        ioexception.printStackTrace();
_L13:
        throw exception;
        exception;
        if (true) goto _L16; else goto _L15
_L15:
        ioexception1;
        fileoutputstream = null;
        if (true) goto _L18; else goto _L17
_L17:
        k++;
        if (true) goto _L20; else goto _L19
_L19:
        if (true) goto _L22; else goto _L21
_L21:
    }

    public void stopLoggerExecutorService()
    {
        Log.d("AbstractToqLoggerImpl", "Inside stopLogUploadExecutorService()");
        try
        {
            if (loggerExecutorService != null && !loggerExecutorService.isShutdown())
            {
                loggerExecutorService.shutdownNow();
                loggerExecutorService = null;
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("AbstractToqLoggerImpl", (new StringBuilder()).append("Exception in stopping the executor service ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

}
