// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.app.PendingIntent;
import android.content.*;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsManager;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.Utils;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.*;
import java.util.*;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            ContactController

public class SMSController extends DefaultController
{
    public class Reminder
    {

        final SMSController this$0;
        Timer timer;

        public Reminder(int i)
        {
            this$0 = SMSController.this;
            super();
            isTimesUp = false;
            timer = new Timer();
            timer.schedule(new RemindTask(), i * 1000);
        }
    }

    class Reminder.RemindTask extends TimerTask
    {

        final Reminder this$1;

        public void run()
        {
            isTimesUp = true;
            if (timer != null)
                timer.schedule(new TimerTask() {

                    final Reminder.RemindTask this$2;

                    public void run()
                    {
                        Intent intent = new Intent("SMS_SENT");
                        intent.putExtra("status", "response_error");
                        Context context = ConnectionFactory.getConnectionFactory().getContext();
                        if (context != null)
                            context.sendBroadcast(intent);
                        timer.cancel();
                    }

            
            {
                this$2 = Reminder.RemindTask.this;
                super();
            }
                }
, 3000L);
        }

        Reminder.RemindTask()
        {
            this$1 = Reminder.this;
            super();
        }
    }


    private static final String KEY_QUICK_REPLY_SEQUENCE = "quickreplysequence";
    private static final String TAG = "SMSController";
    public static final String mAppName = "SMS_CONTROLLER";
    private static SMSController mInstance = null;
    public boolean bSyncUpdateQuickReplyStoreReqFailed;
    private BroadcastReceiver broadcastReceiver;
    boolean isTimesUp;
    private ArrayList mCurrentQuickReplys;
    int mHtcLastSMSResultCode;

    private SMSController()
    {
        bSyncUpdateQuickReplyStoreReqFailed = false;
        broadcastReceiver = null;
        mHtcLastSMSResultCode = -1;
        isTimesUp = false;
    }

    private JSONObject createQuickReplyJson(ArrayList arraylist)
    {
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1 = new JSONObject();
        JSONArray jsonarray;
        int i;
        QuickReplyMessageObject quickreplymessageobject;
        JSONObject jsonobject2;
        JSONObject jsonobject3;
        try
        {
            jsonarray = new JSONArray();
        }
        catch (Exception exception)
        {
            return jsonobject;
        }
        i = 0;
        if (i >= arraylist.size())
            break; /* Loop/switch isn't completed */
        quickreplymessageobject = (QuickReplyMessageObject)arraylist.get(i);
        jsonobject2 = new JSONObject();
        jsonobject2.put("RecordId", i + 1);
        jsonobject3 = new JSONObject();
        jsonobject3.put("Message", quickreplymessageobject.getQRMessage());
        jsonobject2.put("RecordPayload", jsonobject3);
        jsonarray.put(jsonobject2);
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_28;
_L1:
        jsonobject1.put("Name", "Phub.Phone.Settings.QuickReply");
        jsonobject1.put("Records", jsonarray);
        jsonobject.put("DataStore", jsonobject1);
        return jsonobject;
    }

    private void createTempQuickReplyStoreFile(String s)
    {
        File file;
        File file1;
        BufferedWriter bufferedwriter;
        FileWriter filewriter;
        File file2;
        Log.d("SMSController", "Inside createTempStoreFile()");
        file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        file1 = new File((new StringBuilder()).append(file).append("/").append("Phub.Phone.Settings.QuickReply").append("_Temp").append(".jsn").toString());
        Utils.deleteOldStoreFile(file1.getAbsolutePath());
        bufferedwriter = null;
        filewriter = null;
        file2 = null;
        boolean flag = file.mkdirs();
        bufferedwriter = null;
        file2 = null;
        filewriter = null;
        if (!flag) goto _L2; else goto _L1
_L1:
        File file3 = new File(file, "Phub.Phone.Settings.QuickReply_Temp.jsn");
        FileWriter filewriter1 = new FileWriter(file3);
        BufferedWriter bufferedwriter1 = new BufferedWriter(filewriter1);
        file2 = file3;
        filewriter = filewriter1;
        bufferedwriter = bufferedwriter1;
_L4:
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_195;
        bufferedwriter.write(s);
        bufferedwriter.newLine();
        bufferedwriter.flush();
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_208;
        filewriter.close();
        filewriter = null;
        FileWriter filewriter2;
        if (file2 != null)
            file2 = null;
        boolean flag1;
        BufferedWriter bufferedwriter2;
        try
        {
            Log.e("SMSController", "Called file nulling createTempStore() #2");
        }
        catch (Exception exception4)
        {
            Log.e("SMSController", "Exception while nulling createTempStore() #2");
            exception4.printStackTrace();
            return;
        }
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_233;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_243;
        filewriter.close();
        if (file2 == null);
        if (file == null);
        if (file1 == null);
_L6:
        return;
_L2:
        flag1 = file.exists();
        bufferedwriter = null;
        file2 = null;
        filewriter = null;
        if (!flag1) goto _L4; else goto _L3
_L3:
        filewriter2 = new FileWriter((new StringBuilder()).append(file).append("/").append("Phub.Phone.Settings.QuickReply").append("_Temp").append(".jsn").toString(), false);
        bufferedwriter2 = new BufferedWriter(filewriter2);
        filewriter = filewriter2;
        bufferedwriter = bufferedwriter2;
        file2 = null;
          goto _L4
        Exception exception2;
        exception2;
_L11:
        Log.e("SMSController", (new StringBuilder()).append("Exception in createTempStoreFile(): ").append(exception2.toString()).toString());
        exception2.printStackTrace();
        try
        {
            Log.e("SMSController", "Called file nulling createTempStore() #2");
        }
        catch (Exception exception3)
        {
            Log.e("SMSController", "Exception while nulling createTempStore() #2");
            exception3.printStackTrace();
            return;
        }
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_413;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_423;
        filewriter.close();
        if (file2 == null);
        if (file == null);
        if (file1 == null) goto _L6; else goto _L5
_L5:
        return;
        Exception exception;
        exception;
_L10:
        Log.e("SMSController", "Called file nulling createTempStore() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_471;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_481;
        filewriter.close();
        if (file2 == null);
        if (file == null);
        if (file1 == null);
_L8:
        throw exception;
        Exception exception1;
        exception1;
        Log.e("SMSController", "Exception while nulling createTempStore() #2");
        exception1.printStackTrace();
        if (true) goto _L8; else goto _L7
_L7:
        exception;
        file2 = file3;
        bufferedwriter = null;
        filewriter = null;
        continue; /* Loop/switch isn't completed */
        exception;
        file2 = file3;
        filewriter = filewriter1;
        bufferedwriter = null;
        continue; /* Loop/switch isn't completed */
        exception;
        filewriter = filewriter2;
        bufferedwriter = null;
        file2 = null;
        if (true) goto _L10; else goto _L9
_L9:
        exception2;
        file2 = file3;
        bufferedwriter = null;
        filewriter = null;
          goto _L11
        exception2;
        file2 = file3;
        filewriter = filewriter1;
        bufferedwriter = null;
          goto _L11
        exception2;
        filewriter = filewriter2;
        bufferedwriter = null;
        file2 = null;
          goto _L11
    }

    public static SMSController getSMSController()
    {
        if (mInstance == null)
            mInstance = new SMSController();
        return mInstance;
    }

    private void sendErrorMessageToWD(String s, String s1, String s2, JSONObject jsonobject)
    {
        long l;
        l = Calendar.getInstance().getTimeInMillis();
        Log.i("SMSController", (new StringBuilder()).append("SMS TimeStamp value =").append(l).toString());
        jsonobject.put("result", 1);
        jsonobject.put("description", "Message Not sent");
        if (s == null)
            s = "";
        jsonobject.put("phone_number", s);
        jsonobject.put("caller_name", s2);
        if (s1 == null)
            s1 = "";
        try
        {
            jsonobject.put("text", s1);
            jsonobject.put("time_stamp", l);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SMSController", "Error Sending in SendSMSResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 3, 4, jsonobject, 16384, ConnectionFactory.getConnectionFactory().createTransactionID());
            Log.d("SMSController", (new StringBuilder()).append("SendSMSResp sent to WD: ").append(jsonobject.toString()).toString());
        }
        return;
    }

    private void sendSMS(final String phoneNumber, final String smsText, final String smsName, final String actWdSMSNum)
    {
        Intent intent;
        int i;
        Context context;
        PendingIntent pendingintent;
        SmsManager smsmanager;
        ArrayList arraylist;
        ArrayList arraylist1;
        if (Build.MANUFACTURER.contains("HTC"))
            if (mHtcLastSMSResultCode == -1)
            {
                new Reminder(7);
                mHtcLastSMSResultCode = 1;
            } else
            {
                new Reminder(55);
            }
        intent = new Intent("SMS_SENT");
        intent.putExtra("number", phoneNumber);
        intent.putExtra("name", smsName);
        intent.putExtra("actWdSMSNum", actWdSMSNum);
        intent.putExtra("text", smsText);
        i = (new Random()).nextInt(100);
        context = ConnectionFactory.getConnectionFactory().getContext();
        pendingintent = PendingIntent.getBroadcast(context, i, intent, 0x8000000);
        smsmanager = SmsManager.getDefault();
        arraylist = smsmanager.divideMessage(smsText);
        try
        {
            if (broadcastReceiver != null)
            {
                Log.d("SMSController", "Unregister the SMS Sent BroadcastReceiver");
                context.unregisterReceiver(broadcastReceiver);
                isTimesUp = false;
                broadcastReceiver = null;
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        broadcastReceiver = new BroadcastReceiver() {

            final SMSController this$0;
            final String val$actWdSMSNum;
            final String val$phoneNumber;
            final String val$smsName;
            final String val$smsText;

            public void onReceive(Context context1, Intent intent1)
            {
                JSONObject jsonobject;
                int k;
                String s;
                String s1;
                String s2;
                String s3;
                String s4;
                jsonobject = new JSONObject();
                k = getResultCode();
                Log.d("SMSController", (new StringBuilder()).append("ResultCode ==").append(k).toString());
                s = Build.MANUFACTURER;
                s1 = intent1.getStringExtra("number");
                s2 = intent1.getStringExtra("name");
                s3 = intent1.getStringExtra("actWdSMSNum");
                s4 = intent1.getStringExtra("text");
                if (s1 == null)
                    s1 = phoneNumber;
                if (s2 == null)
                    s2 = smsName;
                if (s3 == null)
                    s3 = actWdSMSNum;
                if (s4 == null)
                    s4 = smsText;
                if (!s.contains("HTC")) goto _L2; else goto _L1
_L1:
                if (isTimesUp) goto _L4; else goto _L3
_L3:
                if (k != -1) goto _L6; else goto _L5
_L5:
                Log.d("SMSController", (new StringBuilder()).append("Getting result ok code : ").append(-1).toString());
                context1.unregisterReceiver(broadcastReceiver);
                isTimesUp = true;
_L2:
                switch (getResultCode())
                {
                case 0: // '\0'
                case 2: // '\002'
                case 3: // '\003'
                case 6: // '\006'
                default:
                    Log.v("SMSController", "Inside error");
                    sendErrorMessageToWD(s3, s4, s2, jsonobject);
                    break;

                case -1: 
                    break MISSING_BLOCK_LABEL_313;

                case 1: // '\001'
                    break MISSING_BLOCK_LABEL_349;

                case 4: // '\004'
                    break MISSING_BLOCK_LABEL_364;

                case 5: // '\005'
                    break MISSING_BLOCK_LABEL_379;

                case 7: // '\007'
                    break MISSING_BLOCK_LABEL_401;
                }
_L6:
                return;
_L4:
                if (!"response_error".equals(intent1.getStringExtra("status"))) goto _L2; else goto _L7
_L7:
                Log.v("SMSController", "HTC device can not process request");
                context1.unregisterReceiver(broadcastReceiver);
                sendErrorMessageToWD(s3, s4, s2, jsonobject);
                return;
                mHtcLastSMSResultCode = -1;
                try
                {
                    context1.unregisterReceiver(broadcastReceiver);
                }
                catch (IllegalArgumentException illegalargumentexception) { }
                sendSuccessMessageToWD(s1, s3, s4, s2, jsonobject);
                return;
                sendErrorMessageToWD(s3, s4, s2, jsonobject);
                return;
                sendErrorMessageToWD(s3, s4, s2, jsonobject);
                return;
                Log.v("SMSController", "Inside STATUS_ON_ICC_SENT");
                sendErrorMessageToWD(s3, s4, s2, jsonobject);
                return;
                sendErrorMessageToWD(s3, s4, s2, jsonobject);
                return;
            }

            
            {
                this$0 = SMSController.this;
                phoneNumber = s;
                smsName = s1;
                actWdSMSNum = s2;
                smsText = s3;
                super();
            }
        }
;
        context.registerReceiver(broadcastReceiver, new IntentFilter("SMS_SENT"));
        arraylist1 = new ArrayList();
        for (int j = 0; j < arraylist.size(); j++)
            arraylist1.add(pendingintent);

        Log.d("SMSController", (new StringBuilder()).append("number of smsParts = ").append(arraylist.size()).toString());
        smsmanager.sendMultipartTextMessage(phoneNumber, null, arraylist, arraylist1, null);
    }

    private void sendSuccessMessageToWD(String s, String s1, String s2, String s3, JSONObject jsonobject)
    {
        try
        {
            Log.printUsageLog("SMSController", "SMS sent successfully");
            long l = Calendar.getInstance().getTimeInMillis();
            Log.i("SMSController", (new StringBuilder()).append("SMS TimeStamp value =").append(l).toString());
            jsonobject.put("result", 0);
            jsonobject.put("description", "SMS Successfully sent");
            jsonobject.put("phone_number", s1);
            jsonobject.put("caller_name", s3);
            jsonobject.put("text", s2);
            jsonobject.put("time_stamp", l);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SMSController", "Sending SendSMSResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 3, 4, jsonobject, 16384, ConnectionFactory.getConnectionFactory().createTransactionID());
            Log.d("SMSController", (new StringBuilder()).append("SendSMSResp sent to WD: ").append(jsonobject.toString()).toString());
        }
        try
        {
            ContentResolver contentresolver = ConnectionFactory.getConnectionFactory().getContext().getContentResolver();
            Uri uri = Uri.parse("content://sms");
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("address", s);
            contentvalues.put("read", "1");
            contentvalues.put("status", "-1");
            contentvalues.put("type", "2");
            contentvalues.put("body", s2);
            contentresolver.notifyChange(contentresolver.insert(uri, contentvalues), null);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    private void sendSynchStoreIndication()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("store", "Phub.Phone.Settings.QuickReply");
            jsonobject.put("sequence", getQuickReplySequence());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("SMSController", "Sending SyncStoreUpdatedInd to WD for QuickReply");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 9, 10, jsonobject, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
                Log.d("SMSController", "SyncStoreUpdatedInd sent to WD");
                Log.d("SMSController", jsonobject.toString());
            }
            return;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    private void setQuickReplySequence(long l)
    {
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("stores_pref", 0).edit();
            editor.putLong("quickreplysequence", l);
            Log.d("SMSController", (new StringBuilder()).append("Set Quick Reply sequence:  ").append(l).toString());
            editor.commit();
        }
    }

    private void updateSMSDB(String s)
    {
        Uri uri = Uri.parse("content://sms/inbox");
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("read", "1");
        ConnectionFactory.getConnectionFactory().getContext().getContentResolver().update(uri, contentvalues, (new StringBuilder()).append("_id=").append(s).toString(), null);
    }

    private boolean writeQuickReplyToFile(String s, long l)
    {
        BufferedWriter bufferedwriter;
        FileWriter filewriter;
        File file;
        File file1;
        Log.d("SMSController", "Writing Quick Reply JSON data to file");
        bufferedwriter = null;
        filewriter = null;
        file = null;
        file1 = null;
        File file2 = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        boolean flag1 = file2.mkdirs();
        bufferedwriter = null;
        file = null;
        filewriter = null;
        if (!flag1) goto _L2; else goto _L1
_L1:
        File file3 = new File(file2, (new StringBuilder()).append("Phub.Phone.Settings.QuickReply_").append(l).append(".jsn").toString());
        FileWriter filewriter1 = new FileWriter(file3);
        BufferedWriter bufferedwriter1 = new BufferedWriter(filewriter1);
        file = file3;
        filewriter = filewriter1;
        bufferedwriter = bufferedwriter1;
_L4:
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_176;
        bufferedwriter.write(s);
        bufferedwriter.newLine();
        bufferedwriter.flush();
        bufferedwriter.close();
        Log.e("SMSController", "Called file nulling writeQuickReplyToFile() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_194;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_204;
        filewriter.close();
        if (file == null);
        if (file2 == null);
_L5:
        boolean flag = true;
_L7:
        return flag;
_L2:
        boolean flag2 = file2.exists();
        bufferedwriter = null;
        file = null;
        filewriter = null;
        if (!flag2) goto _L4; else goto _L3
_L3:
        FileWriter filewriter2 = new FileWriter((new StringBuilder()).append(file2).append("/").append("Phub.Phone.Settings.QuickReply").append("_").append(l).append(".jsn").toString(), false);
        BufferedWriter bufferedwriter2 = new BufferedWriter(filewriter2);
        filewriter = filewriter2;
        bufferedwriter = bufferedwriter2;
        file = null;
          goto _L4
        Exception exception3;
        exception3;
        Log.e("SMSController", "Exception while nulling writeQuickReplyToFile() #2");
        exception3.printStackTrace();
          goto _L5
        IOException ioexception4;
        ioexception4;
_L12:
        try
        {
            Log.e("SMSController", "Called file nulling writeQuickReplyToFile() #2");
        }
        catch (Exception exception)
        {
            Log.e("SMSController", "Exception while nulling writeQuickReplyToFile() #2");
            exception.printStackTrace();
            return false;
        }
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_354;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_364;
        filewriter.close();
        if (file == null);
        flag = false;
        if (file1 == null) goto _L7; else goto _L6
_L6:
        return false;
        Exception exception1;
        exception1;
_L11:
        Log.e("SMSController", "Called file nulling writeQuickReplyToFile() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_416;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_426;
        filewriter.close();
        if (file == null);
        if (file1 == null);
_L9:
        throw exception1;
        Exception exception2;
        exception2;
        Log.e("SMSController", "Exception while nulling writeQuickReplyToFile() #2");
        exception2.printStackTrace();
        if (true) goto _L9; else goto _L8
_L8:
        exception1;
        file1 = file2;
        continue; /* Loop/switch isn't completed */
        exception1;
        file1 = file2;
        file = file3;
        bufferedwriter = null;
        filewriter = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        file1 = file2;
        file = file3;
        filewriter = filewriter1;
        bufferedwriter = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        file1 = file2;
        filewriter = filewriter2;
        bufferedwriter = null;
        file = null;
        if (true) goto _L11; else goto _L10
_L10:
        IOException ioexception;
        ioexception;
        file1 = file2;
          goto _L12
        IOException ioexception2;
        ioexception2;
        file1 = file2;
        file = file3;
        bufferedwriter = null;
        filewriter = null;
          goto _L12
        IOException ioexception1;
        ioexception1;
        file1 = file2;
        file = file3;
        filewriter = filewriter1;
        bufferedwriter = null;
          goto _L12
        IOException ioexception3;
        ioexception3;
        file1 = file2;
        filewriter = filewriter2;
        bufferedwriter = null;
        file = null;
          goto _L12
    }

    public void checkSMSNotification()
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("SMSController", "checkSMSNotification called");
        Cursor cursor;
        long l;
        long l1;
        cursor = null;
        l = 0L;
        l1 = 0L;
        Context context = ToqApplication.getAppContext();
        Uri uri = Uri.parse("content://sms/inbox");
        cursor = context.getContentResolver().query(uri, null, null, null, "_id DESC");
        if (cursor == null)
            break MISSING_BLOCK_LABEL_142;
        PhubPreference phubpreference;
        l = cursor.getCount();
        phubpreference = PhubPreference.getPhubPreference(context);
        if (phubpreference == null)
            break MISSING_BLOCK_LABEL_142;
        l1 = phubpreference.getLong("sms_inbox_cursor_count_key", 0L);
        Log.d("SMSController", (new StringBuilder()).append("Stored Cursor Count in pref :").append(l1).toString());
        Log.d("SMSController", (new StringBuilder()).append("Cursor count updated in pref to :").append(l).toString());
        phubpreference.putLong("sms_inbox_cursor_count_key", l);
        if (cursor == null || l == 0L) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        AndroidUtils androidutils = AndroidUtils.getAndroidUtils();
        if (l <= l1 || androidutils == null) goto _L5; else goto _L4
_L4:
        if (!androidutils.isThirdPartySMSAppsInstalled(ToqApplication.getAppContext())) goto _L5; else goto _L6
_L6:
        String s;
        int i = cursor.getColumnIndex("address");
        s = cursor.getString(i);
        String s1 = s;
        long l2;
        String s2;
        String s3;
        int j = cursor.getColumnIndex("date");
        l2 = cursor.getLong(j);
        Log.i("SMSController", (new StringBuilder()).append("SMS received time stamp:").append(l2).toString());
        int k = cursor.getColumnIndex("thread_id");
        s2 = cursor.getString(k);
        Log.i("SMSController", (new StringBuilder()).append("itemID(thread_id):").append(s2).toString());
        s3 = Utils.getFormattedNumber(s);
        if (s3 == null)
            break MISSING_BLOCK_LABEL_342;
        if (!s3.contains("@"))
            break MISSING_BLOCK_LABEL_342;
        s3 = PhoneNumberUtils.extractNetworkPortion(s3);
        s1 = s3;
        String s4 = ContactController.getContactController().getContactInfoFromPhone(s3, context)[0];
        int i1;
        int j1;
        String s5;
        JSONObject jsonobject;
        if (ContactController.getContactController().isPriviledgeContact(s3, context))
            i1 = 1;
        else
            i1 = 0;
        j1 = cursor.getColumnIndex("body");
        s5 = cursor.getString(j1);
        jsonobject = new JSONObject();
        jsonobject.put("caller_id", s1);
        jsonobject.put("caller_name", s4);
        jsonobject.put("privileged", i1);
        jsonobject.put("text", s5);
        jsonobject.put("item_id", s2);
        jsonobject.put("time_stamp", l2);
_L7:
        Log.d("SMSController", (new StringBuilder()).append("IncomingSMSInd payload: ").append(jsonobject.toString()).toString());
        sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 3, 4, jsonobject, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
_L2:
        if (cursor == null)
            break MISSING_BLOCK_LABEL_542;
        if (!cursor.isClosed())
            cursor.close();
_L9:
        this;
        JVM INSTR monitorexit ;
        return;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
          goto _L7
        Exception exception2;
        exception2;
        Log.e("SMSController", (new StringBuilder()).append("Exception in checkSMSNotified(): ").append(exception2.toString()).toString());
        exception2.printStackTrace();
        if (cursor == null) goto _L9; else goto _L8
_L8:
        if (cursor.isClosed()) goto _L9; else goto _L10
_L10:
        cursor.close();
          goto _L9
_L5:
        Log.e("SMSController", "No new messages or indication already sent to WD.");
          goto _L2
        Exception exception1;
        exception1;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_651;
        if (!cursor.isClosed())
            cursor.close();
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
          goto _L7
    }

    public void clearQuickReply()
    {
        if (mCurrentQuickReplys != null)
        {
            mCurrentQuickReplys.clear();
            mCurrentQuickReplys = null;
        }
    }

    public int getItemID(String s, long l, Context context)
    {
        Uri uri = Uri.parse("content://sms");
        String as[] = {
            s
        };
        Cursor cursor = context.getContentResolver().query(uri, null, "address=?", as, null);
        if (cursor != null && cursor.getCount() > 0)
        {
            cursor.moveToFirst();
            int j = cursor.getInt(cursor.getColumnIndex("thread_id"));
            cursor.close();
            return j;
        }
        Cursor cursor1 = context.getContentResolver().query(uri, null, null, null, "_id DESC");
        cursor1.moveToFirst();
        for (; !cursor1.isAfterLast(); cursor1.moveToNext())
            if (PhoneNumberUtils.compare(s, cursor1.getString(cursor1.getColumnIndex("address"))))
            {
                int i = cursor1.getInt(cursor1.getColumnIndex("thread_id"));
                Log.d("SMSController", (new StringBuilder()).append("returning itemID(thread_id) :").append(i).toString());
                cursor1.moveToLast();
                return i;
            }

        cursor1.close();
        return 0;
    }

    public long getQuickReplySequence()
    {
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            long l = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("stores_pref", 0).getLong("quickreplysequence", 0L);
            Log.d("SMSController", (new StringBuilder()).append("GET Quick Reply sequence:  ").append(l).toString());
            return l;
        } else
        {
            return -1L;
        }
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        j;
        JVM INSTR lookupswitch 2: default 28
    //                   0: 29
    //                   32769: 220;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        String s;
        String s1;
        String s2;
        String s3;
        Log.printUsageLog("SMSController", "Received SendSMSReq from WD");
        JSONObject jsonobject;
        String s4;
        try
        {
            jsonobject = (JSONObject)obj;
            s = jsonobject.getString("phone_number");
            s1 = jsonobject.getString("text");
        }
        catch (Exception exception)
        {
            Log.d("SMSController", "Exception in SMSController handleConnHandlerMessage");
            exception.printStackTrace();
            return;
        }
        s2 = "";
        s4 = jsonobject.getString("caller_name");
        s2 = s4;
_L7:
        s3 = s.replaceAll("[\" \"\\(\\)\\/]", "");
        Log.d("SMSController", (new StringBuilder()).append("SMS num: ").append(s3).toString());
        if (s3 == null) goto _L5; else goto _L4
_L4:
        if (PhoneNumberUtils.isWellFormedSmsAddress(s3) && PhoneNumberUtils.isGlobalPhoneNumber(s3) && s1 != null) goto _L6; else goto _L5
_L5:
        Log.e("SMSController", "[SendSMSReq] Not getting valid payload from WD");
        sendErrorMessageToWD(s, s1, s2, new JSONObject());
        return;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
          goto _L7
_L6:
        Log.d("SMSController", "[SendSMSReq]  Got valid payload from WD");
        sendSMS(Utils.getFormattedNumber(s3), s1, s2, s);
        return;
_L3:
        Log.printUsageLog("SMSController", "Received SMSReadIndication from WD");
        try
        {
            updateSMSDB(((JSONObject)obj).getString("item_id"));
            return;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        return;
    }

    public ArrayList loadQuickReplys()
    {
        if (ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getContext() == null) goto _L2; else goto _L1
_L1:
        SharedPreferences sharedpreferences = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("sms_pref", 0);
        String s;
        String s1;
        s = Utils.getFirstTimeQRDispPrefsKeyForLocale(ToqApplication.getAppContext().getResources().getConfiguration().locale.toString());
        s1 = Utils.getQuickReplyPrefsKeyForLocale(ToqApplication.getAppContext().getResources().getConfiguration().locale.toString());
        mCurrentQuickReplys = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString(s1, ObjectSerializer.serialize(new ArrayList())));
        if (sharedpreferences.getBoolean(s, false) || mCurrentQuickReplys == null || mCurrentQuickReplys.size() != 0) goto _L2; else goto _L3
_L3:
        android.content.SharedPreferences.Editor editor;
        mCurrentQuickReplys.add(new QuickReplyMessageObject(ConnectionFactory.getConnectionFactory().getContext().getString(0x7f0a0033), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(ConnectionFactory.getConnectionFactory().getContext().getString(0x7f0a0034), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(ConnectionFactory.getConnectionFactory().getContext().getString(0x7f0a0035), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(ConnectionFactory.getConnectionFactory().getContext().getString(0x7f0a0036), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(ConnectionFactory.getConnectionFactory().getContext().getString(0x7f0a0031), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(ConnectionFactory.getConnectionFactory().getContext().getString(0x7f0a0032), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(ConnectionFactory.getConnectionFactory().getContext().getString(0x7f0a0037), true));
        editor = sharedpreferences.edit();
        editor.putString(s1, ObjectSerializer.serialize(mCurrentQuickReplys));
_L4:
        ClassNotFoundException classnotfoundexception;
        Exception exception1;
        IOException ioexception1;
        try
        {
            editor.commit();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
_L2:
        return mCurrentQuickReplys;
        ioexception1;
        ioexception1.printStackTrace();
          goto _L4
        exception1;
        exception1.printStackTrace();
          goto _L4
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
          goto _L2
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void storeQuickReplyToFile(Context context)
    {
        JSONObject jsonobject;
        jsonobject = createQuickReplyJson(loadQuickReplys());
        Log.d("SMSController", jsonobject.toString());
        if (jsonobject == null)
            break MISSING_BLOCK_LABEL_410;
        File file1;
        boolean flag;
        File file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        file1 = new File((new StringBuilder()).append(file).append("/").append("Phub.Phone.Settings.QuickReply").append("_").append(getQuickReplySequence()).append(".jsn").toString());
        if (!file.exists())
            break MISSING_BLOCK_LABEL_317;
        flag = file1.exists();
        if (!flag)
            break MISSING_BLOCK_LABEL_317;
        long l1;
        long l2;
        createTempQuickReplyStoreFile(jsonobject.toString());
        l1 = Utils.getCheckSum((new StringBuilder()).append("Phub.Phone.Settings.QuickReply_").append(getQuickReplySequence()).append(".jsn").toString());
        l2 = Utils.getCheckSum("Phub.Phone.Settings.QuickReply_Temp.jsn");
        Log.d("SMSController", (new StringBuilder()).append("currentChecksum = ").append(l1).append(" tempChecksum = ").append(l2).toString());
        if (l1 == l2)
        {
            try
            {
                Log.d("SMSController", " Quick Reply Data did not change");
                return;
            }
            catch (Exception exception1)
            {
                try
                {
                    exception1.printStackTrace();
                    return;
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
            }
            break MISSING_BLOCK_LABEL_316;
        }
        Log.d("SMSController", " Quick Reply is been changed.Update the sequence.Write the new file to SD card");
        if (writeQuickReplyToFile(jsonobject.toString(), l2))
        {
            if (getQuickReplySequence() != 0L)
                Utils.deleteOldStoreFile(file1.getAbsolutePath());
            setQuickReplySequence(l2);
            if (bSyncUpdateQuickReplyStoreReqFailed)
            {
                Log.d("SMSController", " Sending Agenda Update Indication as Agenda Synch Store Request Failed");
                bSyncUpdateQuickReplyStoreReqFailed = false;
                sendSynchStoreIndication();
                return;
            }
        }
        break MISSING_BLOCK_LABEL_410;
        return;
        Log.d("SMSController", "File not Found. ");
        createTempQuickReplyStoreFile(jsonobject.toString());
        long l = Utils.getCheckSum("Phub.Phone.Settings.QuickReply_Temp.jsn");
        if (writeQuickReplyToFile(jsonobject.toString(), l))
        {
            if (getQuickReplySequence() != 0L && getQuickReplySequence() != l)
                Utils.deleteOldStoreFile(file1.getAbsolutePath());
            setQuickReplySequence(l);
            if (bSyncUpdateQuickReplyStoreReqFailed)
            {
                Log.d("SMSController", " Sending Agenda Update Indication as Agenda Synch Store Request Failed");
                bSyncUpdateQuickReplyStoreReqFailed = false;
                sendSynchStoreIndication();
            }
        }
    }

    public void storeUpdateQuickReplyToFile(Context context)
    {
        JSONObject jsonobject;
        jsonobject = createQuickReplyJson(loadQuickReplys());
        Log.d("SMSController", jsonobject.toString());
        if (jsonobject == null)
            break MISSING_BLOCK_LABEL_394;
        File file1;
        boolean flag;
        File file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        file1 = new File((new StringBuilder()).append(file).append("/").append("Phub.Phone.Settings.QuickReply").append("_").append(getQuickReplySequence()).append(".jsn").toString());
        if (!file.exists())
            break MISSING_BLOCK_LABEL_325;
        flag = file1.exists();
        if (!flag)
            break MISSING_BLOCK_LABEL_325;
        long l1;
        long l2;
        createTempQuickReplyStoreFile(jsonobject.toString());
        l1 = Utils.getCheckSum((new StringBuilder()).append("Phub.Phone.Settings.QuickReply_").append(getQuickReplySequence()).append(".jsn").toString());
        l2 = Utils.getCheckSum("Phub.Phone.Settings.QuickReply_Temp.jsn");
        Log.d("SMSController", (new StringBuilder()).append("currentChecksum = ").append(l1).append(" tempChecksum = ").append(l2).toString());
        if (l1 == l2)
        {
            try
            {
                Log.d("SMSController", " Quick Reply Data did not change");
                return;
            }
            catch (Exception exception1)
            {
                try
                {
                    exception1.printStackTrace();
                    return;
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
            }
            break MISSING_BLOCK_LABEL_324;
        }
        Log.d("SMSController", " Quick Reply is been changed.Update the sequence.Write the new file to SD card");
        if (writeQuickReplyToFile(jsonobject.toString(), l2))
        {
            if (getQuickReplySequence() != 0L)
                Utils.deleteOldStoreFile(file1.getAbsolutePath());
            setQuickReplySequence(l2);
            Log.d("SMSController", (new StringBuilder()).append("getQuickReplySequence() = ").append(getQuickReplySequence()).toString());
            sendSynchStoreIndication();
            return;
        }
        break MISSING_BLOCK_LABEL_394;
        return;
        Log.d("SMSController", "File not Found. ");
        createTempQuickReplyStoreFile(jsonobject.toString());
        long l = Utils.getCheckSum("Phub.Phone.Settings.QuickReply_Temp.jsn");
        if (writeQuickReplyToFile(jsonobject.toString(), l))
        {
            if (getQuickReplySequence() != 0L && getQuickReplySequence() != l)
                Utils.deleteOldStoreFile(file1.getAbsolutePath());
            setQuickReplySequence(l);
        }
    }

    public void updateSMSReceivedTime()
    {
        Cursor cursor;
        Context context;
        Log.d("SMSController", "updateSMSReceivedTime called");
        cursor = null;
        context = ToqApplication.getAppContext();
        Uri uri = Uri.parse("content://sms/inbox");
        cursor = context.getContentResolver().query(uri, null, null, null, "_id DESC");
        if (cursor == null)
            break MISSING_BLOCK_LABEL_121;
        Log.d("SMSController", (new StringBuilder()).append("smsCursor.getCount() = ").append(cursor.getCount()).toString());
        long l = cursor.getCount();
        Log.d("SMSController", (new StringBuilder()).append("Cursor count in preference updated to :").append(l).toString());
        PhubPreference.getPhubPreference(ToqApplication.getAppContext()).putLong("sms_inbox_cursor_count_key", l);
        if (cursor != null)
            cursor.close();
_L2:
        return;
        Exception exception1;
        exception1;
        Log.e("SMSController", (new StringBuilder()).append("Exception in checkSMSNotified(): ").append(exception1.toString()).toString());
        exception1.printStackTrace();
        if (cursor == null) goto _L2; else goto _L1
_L1:
        cursor.close();
        return;
        Exception exception;
        exception;
        if (cursor != null)
            cursor.close();
        throw exception;
    }




}
