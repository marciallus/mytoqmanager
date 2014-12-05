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
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.apache.log4j.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.logger:
//            AbstractToqLoggerImpl, ToqLoggerFactory

public class GenericToqLoggerImpl extends AbstractToqLoggerImpl
{

    private static final String GENERIC_CURRENT_FILE_NAME_START = "GenericLog";
    private static String GENERIC_LOG_FILE_LAYOUT_PATTERN = "%d{yyyy-MM-dd HH:mm:ss,SSS Z} %c: %m%n";
    private static String GENERIC_LOG_FILE_NAME = "GenericLog.txt";
    private static final String GENERIC_LOG_FILE_NAME_START = "Recent_Log_A";
    private static int GENERIC_LOG_MAX_BACKUP_FILES = 5;
    private static long GENERIC_LOG_MAX_FILE_SIZE = 0x19000L;
    private static String TAG = "GenericToqLoggerImpl";
    private boolean isGenericToqLoggerEnabled;

    private GenericToqLoggerImpl()
    {
        isGenericToqLoggerEnabled = true;
    }

    public void autoUploadLogs()
    {
    }

    public void configure()
    {
        RollingFileAppender rollingfileappender;
        String s;
        rollingfileappender = new RollingFileAppender();
        s = getLoggerFullFilePath(GENERIC_LOG_FILE_NAME);
        if (s == null)
            break MISSING_BLOCK_LABEL_75;
        rollingfileappender.setName("genericlog_appender");
        rollingfileappender.setMaxBackupIndex(GENERIC_LOG_MAX_BACKUP_FILES);
        rollingfileappender.setMaximumFileSize(GENERIC_LOG_MAX_FILE_SIZE);
        rollingfileappender.setFile(s);
        rollingfileappender.setLayout(new PatternLayout(GENERIC_LOG_FILE_LAYOUT_PATTERN));
        rollingfileappender.setThreshold(Level.ALL);
        rollingfileappender.setAppend(true);
        rollingfileappender.activateOptions();
        Logger.getRootLogger().addAppender(rollingfileappender);
        setGenericToqLoggerEnabled(true);
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    public void disableAutoUploadLogs()
    {
    }

    public void init()
    {
    }

    public boolean isGenericToqLoggerEnabled()
    {
        return isGenericToqLoggerEnabled;
    }

    public void sendLogs()
    {
        String s = getLoggerFullFilePath(GENERIC_LOG_FILE_NAME);
        if (s != null)
        {
            if ((new File(s)).exists())
            {
                deleteExistingMergedFile("Recent_Log_A");
                Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
                String s1;
                File file;
                if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
                    intent.putExtra("android.intent.extra.SUBJECT", "Android Log");
                else
                    intent.putExtra("android.intent.extra.SUBJECT", (new StringBuilder()).append("Android Log: ").append(Constants.LOG_DATE_FORMAT.format(new Date())).toString());
                if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
                    s1 = "toq.support@qce.qualcomm.com";
                else
                    s1 = ProjectConfig.getProjectConfig().getIssueLoggerDefaultEmail();
                Log.d(TAG, (new StringBuilder()).append("ProjectConfig.getProjectConfig().getIssueLoggerDefaultEmail()").append(s1).toString());
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.EMAIL", new String[] {
                    s1
                });
                file = new File(getLoggerDirectory(), getNewLoggerMergeFileName("Recent_Log_A"));
                if (mergeFiles(file, "GenericLog"))
                {
                    Uri uri = Uri.fromFile(file);
                    ArrayList arraylist = new ArrayList();
                    arraylist.add(uri);
                    intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arraylist);
                    try
                    {
                        ToqApplication.getAppContext().startActivity(Intent.createChooser(intent, "Send mail...").addFlags(0x10000000));
                        return;
                    }
                    catch (ActivityNotFoundException activitynotfoundexception)
                    {
                        Toast.makeText(ToqApplication.getAppContext(), "Sorry No email Application was found", 0).show();
                    }
                    return;
                } else
                {
                    Log.d(TAG, "Log copy and rename failed");
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

    public void setGenericToqLoggerEnabled(boolean flag)
    {
        isGenericToqLoggerEnabled = flag;
    }

    static 
    {
        ToqLoggerFactory.getInstance().registerLogger("generic_log", new GenericToqLoggerImpl());
    }
}
