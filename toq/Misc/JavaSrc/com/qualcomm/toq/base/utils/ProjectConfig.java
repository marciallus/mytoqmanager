// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.utils;

import android.os.Environment;
import android.text.TextUtils;
import java.io.*;
import java.util.Properties;

// Referenced classes of package com.qualcomm.toq.base.utils:
//            Constants, Log

public class ProjectConfig
{

    private static final String TAG = "ProjectConfig";
    private static ProjectConfig mInstance;
    private String KEY_AGENDA_EVENT_DAYS;
    private String KEY_BT_CONNECTION_LOOPER_DELAY;
    private String KEY_CHECK_COMPATIBILITY;
    private String KEY_COMM_HUB_CONTACTS;
    private String KEY_ISSUE_LOGGER_DEFAULT_EMAIL;
    private String KEY_ISSUE_LOGGER_FILE_SIZE_IN_KB;
    private String KEY_MUSIC_CONTROLLER_TYPE;
    private String KEY_OPP_TRANSFER_LOOPER_DELAY;
    private String KEY_STOCK_AMBIENT_FILE_PUSH_TIMER;
    private String KEY_TCP_PORT;
    private String KEY_TOTAL_NUMBER_OF_CONTACTS;
    private String KEY_WD_DEVICE_NAME;
    private String KEY_WEATHER_AMBIENT_FILE_PUSH_TIMER;
    private int agendaEventDays;
    private String apkVariant;
    private String bambooBuildNumber;
    private long bt_Looper_Delay;
    private String buildType;
    private int checkCompatibilityValue;
    private int commHubContactCount;
    private String connectionListener;
    private String connectionType;
    private long isssueLoggerFileSizeInKB;
    private String issueLoggerDefaultEmail;
    private String musicControllerTypeValue;
    private long opp_Looper_Delay;
    private String packerType;
    private int stockAmbientFilePushTimer;
    private int tcpPort;
    private int totalNumberOfContacts;
    private String transferType;
    private String wdDeviceName[];
    private int weatherAmbientFilePushTimer;

    public ProjectConfig()
    {
        connectionType = "BLUETOOTH";
        apkVariant = "release";
        packerType = "JSON";
        connectionListener = "BLUETOOTH";
        tcpPort = Constants.PHUB_TCP_PORT;
        KEY_TCP_PORT = "TCP_PORT";
        wdDeviceName = Constants.PERSONALHUB_DEVICE_NAME;
        KEY_WD_DEVICE_NAME = "WD_DEVICE_NAME";
        bt_Looper_Delay = 5000L;
        KEY_BT_CONNECTION_LOOPER_DELAY = "BT_CONN_DELAY";
        opp_Looper_Delay = 60000L;
        KEY_OPP_TRANSFER_LOOPER_DELAY = "OPP_TRANSFER_DELAY";
        totalNumberOfContacts = 2000;
        KEY_TOTAL_NUMBER_OF_CONTACTS = "TOTAL_NUMBER_OF_CONTACTS";
        isssueLoggerFileSizeInKB = 200L;
        KEY_ISSUE_LOGGER_FILE_SIZE_IN_KB = "ISSUE_LOGGER_FILE_SIZE_IN_KB";
        issueLoggerDefaultEmail = "phub.errorlog@qualcomm.com";
        KEY_ISSUE_LOGGER_DEFAULT_EMAIL = "ISSUE_LOGGER_DEFAULT_EMAIL";
        buildType = "release";
        transferType = "OPP";
        bambooBuildNumber = "0000";
        commHubContactCount = 20;
        KEY_COMM_HUB_CONTACTS = "TOTAL_COMM_HUB_CONTACTS";
        stockAmbientFilePushTimer = 900;
        weatherAmbientFilePushTimer = 900;
        KEY_STOCK_AMBIENT_FILE_PUSH_TIMER = "STOCK_AMBIENT_FILE_PUSH_TIMER_IN_SEC";
        KEY_WEATHER_AMBIENT_FILE_PUSH_TIMER = "WEATHER_AMBIENT_FILE_PUSH_TIMER_IN_SEC";
        agendaEventDays = 2;
        KEY_AGENDA_EVENT_DAYS = "AGENDA_EVENT_DAYS";
        KEY_CHECK_COMPATIBILITY = "CHECK_COMPATIBILITY";
        checkCompatibilityValue = 0;
        KEY_MUSIC_CONTROLLER_TYPE = "MUSIC_CONTROLLER_TYPE";
        musicControllerTypeValue = "SERIAL";
    }

    public static ProjectConfig getProjectConfig()
    {
        if (mInstance == null)
            mInstance = new ProjectConfig();
        return mInstance;
    }

    public String getAPKVariant()
    {
        return apkVariant;
    }

    public int getAgendaEventsForDays()
    {
        return agendaEventDays;
    }

    public String getBambooBuildNumber()
    {
        return bambooBuildNumber;
    }

    public long getBt_Looper_Delay()
    {
        Log.i("*BT conenction Looper delay From File**", (new StringBuilder()).append("").append(bt_Looper_Delay).toString());
        return bt_Looper_Delay;
    }

    public String getBuildType()
    {
        return buildType;
    }

    public int getCheckCompatibilityMode()
    {
        return checkCompatibilityValue;
    }

    public int getCommHubContactCount()
    {
        return commHubContactCount;
    }

    public String getConnectionListener()
    {
        return connectionListener;
    }

    public String getConnectionType()
    {
        return connectionType;
    }

    public long getIsssueLoggerFileSizeInKB()
    {
        return isssueLoggerFileSizeInKB;
    }

    public String getIssueLoggerDefaultEmail()
    {
        return issueLoggerDefaultEmail;
    }

    public String getMusicControllerType()
    {
        if (musicControllerTypeValue != null && !TextUtils.isEmpty(musicControllerTypeValue))
            return musicControllerTypeValue;
        else
            return "SERIAL";
    }

    public long getOpp_Looper_Delay()
    {
        return opp_Looper_Delay;
    }

    public String getPackerType()
    {
        return packerType;
    }

    public int getStockAmbientFilePushTimer()
    {
        return stockAmbientFilePushTimer;
    }

    public int getTCPPort()
    {
        return tcpPort;
    }

    public int getTotalNumberOfContacts()
    {
        return totalNumberOfContacts;
    }

    public String getTransferType()
    {
        return transferType;
    }

    public int getWeatherAmbientFilePushTimer()
    {
        return weatherAmbientFilePushTimer;
    }

    public String[] getWristDisplayDeviceName()
    {
        Log.i("**wdDeviceName From File**", (new StringBuilder()).append("").append(wdDeviceName[0]).toString());
        return wdDeviceName;
    }

    public void loadProperties()
    {
        File file = Environment.getExternalStorageDirectory();
        if (!Environment.getExternalStorageState().equals("mounted") || !file.canRead()) goto _L2; else goto _L1
_L1:
        File file1;
        FileInputStream fileinputstream;
        file1 = new File((new StringBuilder()).append(file).append("/config.properties").toString());
        fileinputstream = null;
        if (!file1.exists()) goto _L4; else goto _L3
_L3:
        FileInputStream fileinputstream1;
        Log.d("MainActivity", "Config File exists and data is read");
        fileinputstream1 = new FileInputStream(file1.getAbsolutePath());
        Properties properties;
        String s;
        StringBuilder stringbuilder;
        properties = new Properties();
        properties.load(fileinputstream1);
        s = properties.getProperty(KEY_TCP_PORT);
        stringbuilder = new StringBuilder();
        if (s == null) goto _L6; else goto _L5
_L5:
        StringBuilder stringbuilder1;
        setTCPPort(Integer.parseInt(s.trim()));
        stringbuilder1 = stringbuilder.append((new StringBuilder()).append(KEY_TCP_PORT).append("=").append(s).append("\n").toString());
_L32:
        String s1 = properties.getProperty(KEY_WD_DEVICE_NAME);
        if (s1 == null) goto _L8; else goto _L7
_L7:
        StringBuilder stringbuilder2;
        setWristDisplayDeviceName(new String[] {
            s1, "Toq Smartwatch", "Toq Smar"
        });
        stringbuilder2 = stringbuilder1.append((new StringBuilder()).append(KEY_WD_DEVICE_NAME).append("=").append(s1).append("\n").toString());
_L33:
        String s2 = properties.getProperty(KEY_COMM_HUB_CONTACTS);
        if (s2 == null) goto _L10; else goto _L9
_L9:
        StringBuilder stringbuilder3;
        int i = Integer.parseInt(s2.trim());
        setCommHubContactCount(i);
        stringbuilder3 = stringbuilder2.append((new StringBuilder()).append(KEY_COMM_HUB_CONTACTS).append("=").append(i).append("\n").toString());
_L34:
        String s3 = properties.getProperty(KEY_BT_CONNECTION_LOOPER_DELAY);
        if (s3 == null) goto _L12; else goto _L11
_L11:
        StringBuilder stringbuilder4;
        long l = Integer.parseInt(s3.trim());
        setBt_Looper_Delay(l);
        stringbuilder4 = stringbuilder3.append((new StringBuilder()).append(KEY_BT_CONNECTION_LOOPER_DELAY).append("=").append(l).append("\n").toString());
_L35:
        String s4 = properties.getProperty(KEY_AGENDA_EVENT_DAYS);
        if (s4 == null) goto _L14; else goto _L13
_L13:
        StringBuilder stringbuilder5;
        int j = Integer.parseInt(s4.trim());
        setAgendaEventsForDays(j);
        stringbuilder5 = stringbuilder4.append((new StringBuilder()).append(KEY_AGENDA_EVENT_DAYS).append("=").append(j).append("\n").toString());
_L36:
        String s5 = properties.getProperty(KEY_CHECK_COMPATIBILITY);
        if (s5 == null) goto _L16; else goto _L15
_L15:
        StringBuilder stringbuilder6;
        int k = Integer.parseInt(s5.trim());
        setCheckCompatibilityMode(k);
        stringbuilder6 = stringbuilder5.append((new StringBuilder()).append(KEY_CHECK_COMPATIBILITY).append("=").append(k).append("\n").toString());
_L37:
        String s6 = properties.getProperty(KEY_OPP_TRANSFER_LOOPER_DELAY);
        if (s6 == null) goto _L18; else goto _L17
_L17:
        StringBuilder stringbuilder7;
        long l1 = Integer.parseInt(s6.trim());
        setOpp_Looper_Delay(l1);
        stringbuilder7 = stringbuilder6.append((new StringBuilder()).append(KEY_OPP_TRANSFER_LOOPER_DELAY).append("=").append(l1).append("\n").toString());
_L38:
        String s7 = properties.getProperty(KEY_TOTAL_NUMBER_OF_CONTACTS);
        if (s7 == null) goto _L20; else goto _L19
_L19:
        StringBuilder stringbuilder8;
        int i1 = Integer.parseInt(s7.trim());
        setTotalNumberOfContacts(i1);
        stringbuilder8 = stringbuilder7.append((new StringBuilder()).append(KEY_TOTAL_NUMBER_OF_CONTACTS).append("=").append(i1).append("\n").toString());
_L39:
        String s8 = properties.getProperty(KEY_ISSUE_LOGGER_FILE_SIZE_IN_KB);
        if (s8 == null) goto _L22; else goto _L21
_L21:
        StringBuilder stringbuilder9;
        long l2 = Long.parseLong(s8.trim());
        setIsssueLoggerFileSizeInKB(l2);
        stringbuilder9 = stringbuilder8.append((new StringBuilder()).append(KEY_ISSUE_LOGGER_FILE_SIZE_IN_KB).append("=").append(l2).append("\n").toString());
_L40:
        String s9 = properties.getProperty(KEY_ISSUE_LOGGER_DEFAULT_EMAIL);
        if (s9 == null) goto _L24; else goto _L23
_L23:
        StringBuilder stringbuilder10;
        setIssueLoggerDefaultEmail(s9);
        stringbuilder10 = stringbuilder9.append((new StringBuilder()).append(KEY_ISSUE_LOGGER_DEFAULT_EMAIL).append("=").append(s9).append("\n").toString());
_L41:
        String s10 = properties.getProperty(KEY_STOCK_AMBIENT_FILE_PUSH_TIMER);
        if (s10 == null) goto _L26; else goto _L25
_L25:
        StringBuilder stringbuilder11;
        int j1 = Integer.parseInt(s10.trim());
        setStockAmbientFilePushTimer(j1);
        stringbuilder11 = stringbuilder10.append((new StringBuilder()).append(KEY_STOCK_AMBIENT_FILE_PUSH_TIMER).append("=").append(j1).append("\n").toString());
_L42:
        String s11 = properties.getProperty(KEY_WEATHER_AMBIENT_FILE_PUSH_TIMER);
        if (s11 == null) goto _L28; else goto _L27
_L27:
        StringBuilder stringbuilder12;
        int k1 = Integer.parseInt(s11.trim());
        setWeatherAmbientFilePushTimer(k1);
        stringbuilder12 = stringbuilder11.append((new StringBuilder()).append(KEY_WEATHER_AMBIENT_FILE_PUSH_TIMER).append("=").append(k1).append("\n").toString());
_L43:
        String s12 = properties.getProperty(KEY_MUSIC_CONTROLLER_TYPE);
        if (s12 == null) goto _L30; else goto _L29
_L29:
        StringBuilder stringbuilder13;
        setMusicControllerType(s12.trim());
        stringbuilder13 = stringbuilder12.append((new StringBuilder()).append(KEY_MUSIC_CONTROLLER_TYPE).append("=").append(s12.trim()).append("\n").toString());
_L44:
        if (stringbuilder13 == null)
            break MISSING_BLOCK_LABEL_1106;
        if (!stringbuilder13.toString().isEmpty())
        {
            file1.delete();
            FileWriter filewriter = new FileWriter(file1, true);
            BufferedWriter bufferedwriter = new BufferedWriter(filewriter);
            bufferedwriter.write(stringbuilder13.toString());
            bufferedwriter.close();
        }
        fileinputstream1.close();
_L4:
        if (true) goto _L2; else goto _L31
_L31:
        null.close();
_L2:
        return;
_L6:
        stringbuilder1 = stringbuilder.append((new StringBuilder()).append(KEY_TCP_PORT).append("=").append(tcpPort).append("\n").toString());
          goto _L32
_L8:
        stringbuilder2 = stringbuilder1.append((new StringBuilder()).append(KEY_WD_DEVICE_NAME).append("=").append(wdDeviceName[0]).append("\n").toString());
          goto _L33
_L10:
        stringbuilder3 = stringbuilder2.append((new StringBuilder()).append(KEY_COMM_HUB_CONTACTS).append("=").append(commHubContactCount).append("\n").toString());
          goto _L34
_L12:
        stringbuilder4 = stringbuilder3.append((new StringBuilder()).append(KEY_BT_CONNECTION_LOOPER_DELAY).append("=").append(bt_Looper_Delay).append("\n").toString());
          goto _L35
_L14:
        stringbuilder5 = stringbuilder4.append((new StringBuilder()).append(KEY_AGENDA_EVENT_DAYS).append("=").append(agendaEventDays).append("\n").toString());
          goto _L36
_L16:
        stringbuilder6 = stringbuilder5.append((new StringBuilder()).append(KEY_CHECK_COMPATIBILITY).append("=").append(checkCompatibilityValue).append("\n").toString());
          goto _L37
_L18:
        stringbuilder7 = stringbuilder6.append((new StringBuilder()).append(KEY_OPP_TRANSFER_LOOPER_DELAY).append("=").append(opp_Looper_Delay).append("\n").toString());
          goto _L38
_L20:
        stringbuilder8 = stringbuilder7.append((new StringBuilder()).append(KEY_TOTAL_NUMBER_OF_CONTACTS).append("=").append(totalNumberOfContacts).append("\n").toString());
          goto _L39
_L22:
        stringbuilder9 = stringbuilder8.append((new StringBuilder()).append(KEY_ISSUE_LOGGER_FILE_SIZE_IN_KB).append("=").append(isssueLoggerFileSizeInKB).append("\n").toString());
          goto _L40
_L24:
        stringbuilder10 = stringbuilder9.append((new StringBuilder()).append(KEY_ISSUE_LOGGER_DEFAULT_EMAIL).append("=").append(issueLoggerDefaultEmail).append("\n").toString());
          goto _L41
_L26:
        stringbuilder11 = stringbuilder10.append((new StringBuilder()).append(KEY_STOCK_AMBIENT_FILE_PUSH_TIMER).append("=").append(stockAmbientFilePushTimer).append("\n").toString());
          goto _L42
_L28:
        stringbuilder12 = stringbuilder11.append((new StringBuilder()).append(KEY_WEATHER_AMBIENT_FILE_PUSH_TIMER).append("=").append(weatherAmbientFilePushTimer).append("\n").toString());
          goto _L43
_L30:
        StringBuilder stringbuilder14 = stringbuilder12.append((new StringBuilder()).append(KEY_MUSIC_CONTROLLER_TYPE).append("=").append(musicControllerTypeValue).append("\n").toString());
        stringbuilder13 = stringbuilder14;
          goto _L44
        IOException ioexception4;
        ioexception4;
        Log.e("ProjectConfig", (new StringBuilder()).append("Error in closing the stream ").append(ioexception4).toString());
        return;
        NumberFormatException numberformatexception;
        numberformatexception;
_L50:
        Log.e("ProjectConfig", (new StringBuilder()).append("Incorrect data added in config file ").append(numberformatexception).toString());
        if (fileinputstream == null) goto _L2; else goto _L45
_L45:
        try
        {
            fileinputstream.close();
            return;
        }
        catch (IOException ioexception3)
        {
            Log.e("ProjectConfig", (new StringBuilder()).append("Error in closing the stream ").append(ioexception3).toString());
        }
        return;
        IOException ioexception1;
        ioexception1;
_L49:
        Log.e("ProjectConfig", (new StringBuilder()).append("Exception occured in config file ").append(ioexception1).toString());
        if (fileinputstream == null) goto _L2; else goto _L46
_L46:
        try
        {
            fileinputstream.close();
            return;
        }
        catch (IOException ioexception2)
        {
            Log.e("ProjectConfig", (new StringBuilder()).append("Error in closing the stream ").append(ioexception2).toString());
        }
        return;
        Exception exception;
        exception;
_L48:
        if (fileinputstream != null)
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception)
            {
                Log.e("ProjectConfig", (new StringBuilder()).append("Error in closing the stream ").append(ioexception).toString());
            }
        throw exception;
        exception;
        fileinputstream = fileinputstream1;
        if (true) goto _L48; else goto _L47
_L47:
        ioexception1;
        fileinputstream = fileinputstream1;
          goto _L49
        numberformatexception;
        fileinputstream = fileinputstream1;
          goto _L50
    }

    public void setAPKVariant(String s)
    {
        apkVariant = s;
    }

    public void setAgendaEventsForDays(int i)
    {
        agendaEventDays = i;
    }

    public void setBambooBuildNumber(String s)
    {
        bambooBuildNumber = s;
    }

    public void setBt_Looper_Delay(long l)
    {
        bt_Looper_Delay = l;
    }

    public void setBuildType(String s)
    {
        buildType = s;
    }

    public void setCheckCompatibilityMode(int i)
    {
        checkCompatibilityValue = i;
    }

    public void setCommHubContactCount(int i)
    {
        commHubContactCount = i;
    }

    public void setConnectionListener(String s)
    {
        connectionListener = s;
    }

    public void setConnectionType(String s)
    {
        connectionType = s;
    }

    public void setIsssueLoggerFileSizeInKB(long l)
    {
        isssueLoggerFileSizeInKB = l;
    }

    public void setIssueLoggerDefaultEmail(String s)
    {
        issueLoggerDefaultEmail = s;
    }

    public void setMusicControllerType(String s)
    {
        if (s != null && !TextUtils.isEmpty(s) && (s.trim().equals("AVRCP") || s.trim().equals("SERIAL")))
            musicControllerTypeValue = s;
    }

    public void setOpp_Looper_Delay(long l)
    {
        opp_Looper_Delay = l;
    }

    public void setPackerType(String s)
    {
        packerType = s;
    }

    public void setStockAmbientFilePushTimer(int i)
    {
        stockAmbientFilePushTimer = i;
    }

    public void setTCPPort(int i)
    {
        tcpPort = i;
    }

    public void setTotalNumberOfContacts(int i)
    {
        totalNumberOfContacts = i;
    }

    public void setTransferType(String s)
    {
        transferType = s;
    }

    public void setWeatherAmbientFilePushTimer(int i)
    {
        weatherAmbientFilePushTimer = i;
    }

    public void setWristDisplayDeviceName(String as[])
    {
        wdDeviceName = as;
    }
}
