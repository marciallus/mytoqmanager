// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.logger;

import android.content.*;
import android.content.res.Resources;
import android.net.Uri;
import android.widget.Toast;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.utils.PhubPreference;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.*;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.log4j.*;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.logger:
//            AbstractToqLoggerImpl, ToqLoggerFactory

public class UsageToqLoggerImpl extends AbstractToqLoggerImpl
{

    private static String TAG = "UsageToqLoggerImpl";
    private static final String USAGE_CURRENT_FILE_NAME_START = "UsageLog";
    private static String USAGE_LOG_FILE_LAYOUT_PATTERN = "%d{yyyy-MM-dd HH:mm:ss,SSS Z} %m%n";
    private static String USAGE_LOG_FILE_NAME = "UsageLog.txt";
    private static final String USAGE_LOG_FILE_NAME_START = "Usage_Log_A";
    private static int USAGE_LOG_MAX_BACKUP_FILES = 0;
    private static long USAGE_LOG_MAX_FILE_SIZE = 0L;
    private static final String USAGE_LOG_POSTING_URI = "https://toq-logger.qualcomm.com/ToqLogger/rest/admin/login?username=toqApp&password=thalivar1729";
    private static final String USAGE_LOG_POSTING_URI_PASSWORD = "thalivar1729";
    private static final String USAGE_LOG_POSTING_URI_USERNAME = "toqApp";
    private static final String USAGE_LOG_SERVICE_URL_DEVELOPER = "https://toq-logger.qualcomm.com/ToqLogger/rest/toqUsageLogUpload/saveUsageLogFile/dev/";
    private static final String USAGE_LOG_SERVICE_URL_RELEASE = "https://toq-logger.qualcomm.com/ToqLogger/rest/toqUsageLogUpload/saveUsageLogFile/";
    private static int USAGE_LOG_UPLOADER_INITIAL_DELAY = 360;
    private static int USAGE_LOG_UPLOADER_NORMAL_PERIOD = 1440;
    private static int USAGE_LOG_UPLOADER_RESET_PERIOD = 240;
    private long DEFAULT_VALUE;
    private Future mUsageLogUploadTask;
    private TimeUnit timeUnit;

    private UsageToqLoggerImpl()
    {
        mUsageLogUploadTask = null;
        timeUnit = TimeUnit.MINUTES;
        DEFAULT_VALUE = -1L;
    }

    private Future createUsageLogUploadTask(int i, int j)
        throws RejectedExecutionException, IllegalArgumentException, NullPointerException
    {
        return getScheduledLoogerExecuterService().scheduleAtFixedRate(new Runnable() {

            final UsageToqLoggerImpl this$0;

            public void run()
            {
                Log.d(UsageToqLoggerImpl.TAG, (new StringBuilder()).append("Start usage log upload:").append(new Date()).toString());
                upload();
            }

            
            {
                this$0 = UsageToqLoggerImpl.this;
                super();
            }
        }
, i, j, timeUnit);
    }

    private String postUsageLogs(String s)
    {
        InputStream inputstream;
        String s1;
        inputstream = null;
        s1 = null;
        Log.printUsageLog(TAG, "Attempting usage log auto-upload");
        HttpPost httppost = new HttpPost("https://toq-logger.qualcomm.com/ToqLogger/rest/admin/login?username=toqApp&password=thalivar1729");
        BasicHttpParams basichttpparams = new BasicHttpParams();
        basichttpparams.setParameter("username", "toqApp");
        basichttpparams.setParameter("password", "thalivar1729");
        httppost.setParams(basichttpparams);
        httppost.setHeader("Content-type", "application/json");
        JSONObject jsonobject = new JSONObject(convertInputStreamToString((new DefaultHttpClient()).execute(httppost).getEntity().getContent()));
        DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
        org.apache.http.entity.InputStreamEntity inputstreamentity = getLoggerFileInputStreamEntity("Usage_Log_A", "UsageLog");
        String s2 = getNewLoggerMergeFileName("Usage_Log_A");
        HttpPost httppost1 = new HttpPost((new StringBuilder()).append(s).append("?fileName=").append(s2).toString());
        httppost1.setEntity(inputstreamentity);
        httppost1.setHeader("ENCTYPE", "multipart/form-data");
        httppost1.setHeader("X-Auth-Token", jsonobject.getString("loginTokenId"));
        httppost1.setHeader("Content-type", (new StringBuilder()).append("multipart/form-data; boundary=").append(System.currentTimeMillis()).toString());
        HttpResponse httpresponse = defaulthttpclient.execute(httppost1);
        Log.d(TAG, (new StringBuilder()).append("HTTP Response : ").append(httpresponse).toString());
        inputstream = httpresponse.getEntity().getContent();
        if (inputstream == null) goto _L2; else goto _L1
_L1:
        s1 = convertInputStreamToString(inputstream);
        Log.printUsageLog(TAG, "Usage log auto-upload success");
_L3:
        Exception exception1;
        if (inputstream != null)
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
            }
_L4:
        Log.d(TAG, (new StringBuilder()).append("Result for HTTP_REQUEST: ").append(s1).toString());
        return s1;
_L2:
        s1 = "Failed";
        Log.printUsageLog(TAG, "Usage log auto-upload failed");
          goto _L3
        exception1;
        exception1.printStackTrace();
        Log.e(TAG, "!!! Exception while uploading usage logs !!!");
        Log.printUsageLog(TAG, "Usage log auto-upload exception");
        if (inputstream != null)
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
          goto _L4
        Exception exception;
        exception;
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
    }

    private void upload()
    {
        Log.e(TAG, " Start UsageLog Upload ");
        if (!Utils.isWIFIConnectivityAvailable(ToqApplication.getAppContext())) goto _L2; else goto _L1
_L1:
        if (ProjectConfig.getProjectConfig() == null || !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release")) goto _L4; else goto _L3
_L3:
        String s = postUsageLogs("https://toq-logger.qualcomm.com/ToqLogger/rest/toqUsageLogUpload/saveUsageLogFile/");
_L5:
        PhubPreference phubpreference1;
        if (s == null)
            try
            {
                Log.e(TAG, (new StringBuilder()).append("Result is null: Cancelling the task and recreating the task with the time to delay first execution: ").append(USAGE_LOG_UPLOADER_RESET_PERIOD).append(" ").append(timeUnit).append(" the period between successive executions: ").append(USAGE_LOG_UPLOADER_RESET_PERIOD).append(" ").append(timeUnit).toString());
                mUsageLogUploadTask.cancel(true);
                mUsageLogUploadTask = createUsageLogUploadTask(USAGE_LOG_UPLOADER_RESET_PERIOD, USAGE_LOG_UPLOADER_RESET_PERIOD);
                Log.printUsageLog(TAG, (new StringBuilder()).append("Result is null: Cancelling the task and recreating the task with the time to delay first execution: ").append(USAGE_LOG_UPLOADER_RESET_PERIOD).append(" ").append(timeUnit).append(" the period between successive executions: ").append(USAGE_LOG_UPLOADER_RESET_PERIOD).append(" ").append(timeUnit).toString());
                PhubPreference phubpreference = PhubPreference.getPhubPreference(ToqApplication.getAppContext());
                phubpreference.putLong("usage_log_last_upload_time", (new Date()).getTime());
                phubpreference.putBoolean("usage_log_last_upload_status", false);
                phubpreference.putInt("usage_log_delay", USAGE_LOG_UPLOADER_RESET_PERIOD);
                return;
            }
            catch (RejectedExecutionException rejectedexecutionexception)
            {
                Log.e(TAG, (new StringBuilder()).append("Exception in startAutoUploadLog4jLogs(): The task cannot be scheduled for execution ").append(rejectedexecutionexception.toString()).toString());
                rejectedexecutionexception.printStackTrace();
                return;
            }
            catch (NullPointerException nullpointerexception)
            {
                Log.e(TAG, (new StringBuilder()).append("Exception in startAutoUploadLog4jLogs(): Runnable might be NULL ").append(nullpointerexception.toString()).toString());
                nullpointerexception.printStackTrace();
                return;
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                Log.e(TAG, (new StringBuilder()).append("Exception in startAutoUploadLog4jLogs(): Period (delayInHours) less than or equal to zero  ||  If corePoolSize < 0  in newScheduledThreadPool").append(illegalargumentexception.toString()).toString());
                illegalargumentexception.printStackTrace();
                return;
            }
            catch (Exception exception)
            {
                Log.e(TAG, (new StringBuilder()).append("Exception in startAutoUploadLog4jLogs(): ").append(exception.toString()).toString());
                exception.printStackTrace();
                return;
            }
        break MISSING_BLOCK_LABEL_320;
_L4:
        s = postUsageLogs("https://toq-logger.qualcomm.com/ToqLogger/rest/toqUsageLogUpload/saveUsageLogFile/dev/");
          goto _L5
_L2:
        Log.printUsageLog(TAG, "WiFi unavailable, Usage logs not posted");
        s = null;
          goto _L5
        Log.e(TAG, (new StringBuilder()).append("Result is not null: ").append(s).toString());
        phubpreference1 = PhubPreference.getPhubPreference(ToqApplication.getAppContext());
        if (!phubpreference1.getBoolean("usage_log_last_upload_status", true))
        {
            Log.e(TAG, (new StringBuilder()).append("Reseting timer to normal upload. Cancelling the task and recreating the task with the time to delay first execution: ").append(USAGE_LOG_UPLOADER_NORMAL_PERIOD).append(" ").append(timeUnit).append(" the period between successive executions: ").append(USAGE_LOG_UPLOADER_NORMAL_PERIOD).append(" ").append(timeUnit).toString());
            Log.printUsageLog(TAG, (new StringBuilder()).append("Reseting timer to normal upload. Cancelling the task and recreating the task with the time to delay first execution: ").append(USAGE_LOG_UPLOADER_NORMAL_PERIOD).append(" ").append(timeUnit).append(" the period between successive executions: ").append(USAGE_LOG_UPLOADER_NORMAL_PERIOD).append(" ").append(timeUnit).toString());
            mUsageLogUploadTask.cancel(true);
            mUsageLogUploadTask = createUsageLogUploadTask(USAGE_LOG_UPLOADER_NORMAL_PERIOD, USAGE_LOG_UPLOADER_NORMAL_PERIOD);
        }
        phubpreference1.putLong("usage_log_last_upload_time", (new Date()).getTime());
        phubpreference1.putBoolean("usage_log_last_upload_status", true);
        phubpreference1.putInt("usage_log_delay", USAGE_LOG_UPLOADER_NORMAL_PERIOD);
        return;
    }

    public void autoUploadLogs()
    {
        Log.d(TAG, "Starting auto upload of usage logs");
        stopLoggerExecutorService();
        try
        {
            int i = PhubPreference.getPhubPreference(ToqApplication.getAppContext()).getInt("usage_log_delay", USAGE_LOG_UPLOADER_RESET_PERIOD);
            mUsageLogUploadTask = createUsageLogUploadTask(i, USAGE_LOG_UPLOADER_NORMAL_PERIOD);
            Log.d(TAG, (new StringBuilder()).append("Usage Log Upload task created with the time to delay first execution: ").append(i).append(" ").append(timeUnit).append(" the period between successive executions: ").append(USAGE_LOG_UPLOADER_NORMAL_PERIOD).append(" ").append(timeUnit).toString());
            Log.printUsageLog(TAG, (new StringBuilder()).append("Usage Log Upload task created with the time to delay first execution: ").append(i).append(" the period between successive executions: ").append(USAGE_LOG_UPLOADER_NORMAL_PERIOD).append(" ").append(timeUnit).toString());
            return;
        }
        catch (RejectedExecutionException rejectedexecutionexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Exception in startAutoUploadLog4jLogs(): The task cannot be scheduled for execution ").append(rejectedexecutionexception.toString()).toString());
            rejectedexecutionexception.printStackTrace();
            return;
        }
        catch (NullPointerException nullpointerexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Exception in startAutoUploadLog4jLogs(): Runnable might be NULL ").append(nullpointerexception.toString()).toString());
            nullpointerexception.printStackTrace();
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Exception in startAutoUploadLog4jLogs(): Period (delayInHours) less than or equal to zero  ||  If corePoolSize < 0  in newScheduledThreadPool").append(illegalargumentexception.toString()).toString());
            illegalargumentexception.printStackTrace();
            return;
        }
        catch (Exception exception)
        {
            Log.e(TAG, (new StringBuilder()).append("Exception in startAutoUploadLog4jLogs(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void configure()
    {
        RollingFileAppender rollingfileappender;
        String s;
        rollingfileappender = new RollingFileAppender();
        s = getLoggerFullFilePath(USAGE_LOG_FILE_NAME);
        if (s == null)
            break MISSING_BLOCK_LABEL_76;
        rollingfileappender.setName("usagelog_appender");
        rollingfileappender.setMaxBackupIndex(USAGE_LOG_MAX_BACKUP_FILES);
        rollingfileappender.setMaximumFileSize(USAGE_LOG_MAX_FILE_SIZE);
        rollingfileappender.setFile(s);
        rollingfileappender.setLayout(new PatternLayout(USAGE_LOG_FILE_LAYOUT_PATTERN));
        rollingfileappender.setThreshold(Level.FATAL);
        rollingfileappender.setAppend(true);
        rollingfileappender.activateOptions();
        Logger.getRootLogger().addAppender(rollingfileappender);
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        Log.d(TAG, (new StringBuilder()).append("Exception while configuring the log4j for usage logs ").append(exception.toString()).toString());
        return;
    }

    public void disableAutoUploadLogs()
    {
        Log.d(TAG, "Disable auto upload of usage logs");
        Log.printUsageLog(TAG, "Disable usage log auto-upload");
        stopLoggerExecutorService();
    }

    public void init()
    {
        PhubPreference phubpreference = PhubPreference.getPhubPreference(ToqApplication.getAppContext());
        long l = phubpreference.getLong("usage_log_last_upload_time", DEFAULT_VALUE);
        long l1 = (new Date()).getTime();
        if (l == DEFAULT_VALUE)
        {
            Log.d(TAG, "Last Upload Time is not set ie first time auto upload usage log feature is used");
            phubpreference.putLong("usage_log_last_upload_time", l1);
            phubpreference.putBoolean("usage_log_last_upload_status", false);
            phubpreference.putInt("usage_log_delay", USAGE_LOG_UPLOADER_INITIAL_DELAY);
            return;
        }
        boolean flag = phubpreference.getBoolean("usage_log_last_upload_status", false);
        long l2 = phubpreference.getLong("usage_log_last_upload_time", DEFAULT_VALUE);
        int i = phubpreference.getInt("usage_log_delay", USAGE_LOG_UPLOADER_RESET_PERIOD);
        String s = TAG;
        StringBuilder stringbuilder = (new StringBuilder()).append("Last Upload Time is set ");
        Date date = new Date(l2);
        StringBuilder stringbuilder1 = stringbuilder.append(date).append(" Last Upload Status ").append(flag).append(" Current Time ");
        Date date1 = new Date(l1);
        Log.d(s, stringbuilder1.append(date1).append(" Last Upload Delay ").append(i).toString());
        long l3 = 60000L * (long)i;
        if (l1 <= l2 + l3 && l1 >= l)
        {
            long l4 = ((l2 + l3) - l1) / 60000L;
            String s2 = TAG;
            StringBuilder stringbuilder4 = (new StringBuilder()).append("Current time ");
            Date date4 = new Date(l1);
            Log.d(s2, stringbuilder4.append(date4).append(" is lesser than last scheduled upload time ").append(new Date(l2 + l3)).append(" next upload will happen after delay ").append(l4).toString());
            phubpreference.putInt("usage_log_delay", (int)l4);
            return;
        } else
        {
            String s1 = TAG;
            StringBuilder stringbuilder2 = (new StringBuilder()).append("Current time ");
            Date date2 = new Date(l1);
            StringBuilder stringbuilder3 = stringbuilder2.append(date2).append(" is greater than last scheduled upload time ").append(new Date(l2 + l3)).append(" OR less than last upload time ");
            Date date3 = new Date(l);
            Log.d(s1, stringbuilder3.append(date3).toString());
            phubpreference.putInt("usage_log_delay", USAGE_LOG_UPLOADER_RESET_PERIOD);
            return;
        }
    }

    public void sendLogs()
    {
        String s = getLoggerFullFilePath(USAGE_LOG_FILE_NAME);
        if (s != null)
        {
            if ((new File(s)).exists())
            {
                deleteExistingMergedFile("Usage_Log_A");
                Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
                String s1;
                File file;
                if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
                    intent.putExtra("android.intent.extra.SUBJECT", "Toq app log");
                else
                    intent.putExtra("android.intent.extra.SUBJECT", (new StringBuilder()).append("Toq app log: ").append(Constants.LOG_DATE_FORMAT.format(new Date())).toString());
                if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
                    s1 = "toq.support@qce.qualcomm.com";
                else
                    s1 = ProjectConfig.getProjectConfig().getIssueLoggerDefaultEmail();
                Log.d(TAG, (new StringBuilder()).append("ProjectConfig.getProjectConfig().getIssueLoggerDefaultEmail()").append(s1).toString());
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.EMAIL", new String[] {
                    s1
                });
                file = new File(getLoggerDirectory(), getNewLoggerMergeFileName("Usage_Log_A"));
                if (mergeFiles(file, "UsageLog"))
                {
                    Uri uri = Uri.fromFile(file);
                    ArrayList arraylist = new ArrayList();
                    arraylist.add(uri);
                    intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arraylist);
                    try
                    {
                        ToqApplication.getAppContext().startActivity(Intent.createChooser(intent, "Email usage logs:").addFlags(0x10000000));
                        return;
                    }
                    catch (ActivityNotFoundException activitynotfoundexception)
                    {
                        Toast.makeText(ToqApplication.getAppContext(), "Sorry No email Application was found", 0).show();
                    }
                    return;
                } else
                {
                    Log.d(TAG, "Usage_Log copy and rename failed");
                    return;
                }
            } else
            {
                Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0023), 0).show();
                return;
            }
        } else
        {
            Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0023), 0).show();
            return;
        }
    }

    static 
    {
        USAGE_LOG_MAX_BACKUP_FILES = 5;
        USAGE_LOG_MAX_FILE_SIZE = 0x32000L;
        ToqLoggerFactory.getInstance().registerLogger("usage_log", new UsageToqLoggerImpl());
    }


}
