// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.service.receiver;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.*;
import android.media.AudioManager;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.*;
import com.qualcomm.toq.smartwatch.service.PHubService;
import com.qualcomm.toq.smartwatch.service.listener.CustomPhoneStateListener;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.CalendarEventObject;
import java.text.SimpleDateFormat;
import java.util.*;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.service.receiver:
//            PHubTimeReceiver

public class PHubServiceReceiver extends BroadcastReceiver
{

    private static final String TAG = "PHubServiceReceiver";
    private final long ONE_DAY_IN_SEC = 0x15180L;
    public Timer counter;


    public void onReceive(Context context, Intent intent)
    {
        String s;
        String s1;
        s = intent.getAction();
        s1 = intent.getType();
        Log.d("PHubServiceReceiver", (new StringBuilder()).append("PHubServiceReceiver onReceive() called : ").append(s).toString());
        if (!s.equals("android.provider.Telephony.SMS_RECEIVED") && !s.equals("android.provider.Telephony.SMS_DELIVER")) goto _L2; else goto _L1
_L1:
        Log.d("SMSController", "SMS Received");
        Bundle bundle = intent.getExtras();
        Intent intent1 = new Intent(Constants.ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE);
        Bundle bundle1 = new Bundle();
        Object aobj[] = (Object[])(Object[])bundle.get("pdus");
        Log.v("PHubServiceReceiver", (new StringBuilder()).append("messages:::").append(((Object) (aobj))).toString());
        int i = aobj.length;
        for (int j = 0; j < i; j++)
            bundle1.putByteArray(Integer.toString(j), (byte[])(byte[])aobj[j]);

        bundle1.putInt("condition", 4);
        bundle1.putInt("messageLength", i);
        intent1.putExtras(bundle1);
        context.startService(intent1);
_L4:
        return;
_L2:
        if (!"android.intent.action.DATE_CHANGED".equals(s) && !"android.intent.action.TIME_SET".equals(s) && !"android.intent.action.TIMEZONE_CHANGED".equals(s))
            break; /* Loop/switch isn't completed */
        SharedPreferences sharedpreferences;
        int j1;
        if ("android.intent.action.DATE_CHANGED".equals(s))
            Log.printUsageLog("PHubServiceReceiver", "Date Changed");
        else
        if ("android.intent.action.TIME_SET".equals(s))
            Log.printUsageLog("PHubServiceReceiver", "Time Changed");
        else
        if ("android.intent.action.TIMEZONE_CHANGED".equals(s))
            Log.printUsageLog("PHubServiceReceiver", "Timezone Changed");
        Log.e("PHubServiceReceiver", (new StringBuilder()).append("Action Called").append(s).toString());
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        if (sharedpreferences != null)
        {
            long l3 = Calendar.getInstance().getTimeInMillis() / 1000L;
            long l4 = sharedpreferences.getLong("activity_current_day_end", 0L);
            Intent intent2;
            Calendar calendar;
            long l;
            Intent intent3;
            PendingIntent pendingintent;
            JSONObject jsonobject;
            long l1;
            long l2;
            Calendar calendar1;
            TimeZone timezone;
            int k;
            int i1;
            Date date;
            JSONObject jsonobject1;
            PHubService phubservice;
            if (l3 >= l4 - 0x15180L && l3 < l4)
            {
                Log.d("PHubServiceReceiver", "There is only time change");
            } else
            {
                Log.d("PHubServiceReceiver", "Date got changed.Resetting initial progress to 0");
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putLong("activity_current_day_end", AndroidUtils.getAndroidUtils().getCurrentDayEndTimeInSec());
                editor.commit();
            }
        }
        intent2 = new Intent(Constants.ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE);
        intent2.putExtra("condition", 6);
        intent2.putExtra("action", 7);
        context.startService(intent2);
        SMSController.getSMSController().updateSMSReceivedTime();
        calendar = Calendar.getInstance();
        calendar.set(11, 24);
        calendar.set(12, 0);
        calendar.set(13, 0);
        l = calendar.getTimeInMillis();
        Log.i("PHubServiceReceiver", (new StringBuilder()).append("Midnight Alarm time set date ").append(new Date(l)).toString());
        Log.printUsageLog("PHubServiceReceiver", (new StringBuilder()).append("Midnight Alarm time set date ").append(new Date(l)).toString());
        intent3 = new Intent(context, com/qualcomm/toq/smartwatch/service/receiver/PHubTimeReceiver);
        intent3.setAction((new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.service.receiver.PHubTimeReceiver").toString());
        pendingintent = PendingIntent.getBroadcast(context, 0, intent3, 0);
        ((AlarmManager)context.getSystemService("alarm")).set(0, l, pendingintent);
        jsonobject = new JSONObject();
        l1 = System.currentTimeMillis();
        l2 = l1 / 1000L;
        calendar1 = Calendar.getInstance();
        timezone = calendar1.getTimeZone();
        k = timezone.getRawOffset() / 1000;
        Log.d("PHubServiceReceiver", (new StringBuilder()).append("timezone Offset Raw = ").append(k).toString());
        i1 = timezone.getOffset(l1) / 1000;
        Log.d("PHubServiceReceiver", (new StringBuilder()).append("timezone Offset including daylight savings time  = ").append(i1).toString());
        date = calendar1.getTime();
        if (timezone.useDaylightTime())
        {
            if (timezone.inDaylightTime(date))
                j1 = 1;
            else
                j1 = 0;
        } else
        {
            j1 = 0;
        }
        try
        {
            jsonobject1 = new JSONObject();
            jsonobject1.put("epoch_time", l2);
            jsonobject1.put("dst", j1);
            jsonobject1.put("time_zone", k);
            jsonobject.put("time", jsonobject1);
        }
        catch (Exception exception)
        {
            Log.e("PHubServiceReceiver", (new StringBuilder()).append("Exception ocured in either date, time or timezone changed: ").append(exception).toString());
        }
        Log.d("PHubServiceReceiver", (new StringBuilder()).append("TimeUpdateInd: ").append(jsonobject).toString());
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            phubservice = PHubService.getPHubService();
            if (phubservice != null)
                phubservice.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
        }
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            if (AgendaController.getAgendaController() != null)
            {
                Log.d("PHubServiceReceiver", "storeUpdateAgendaToFile() called from PHubServiceReceiver");
                AgendaController.getAgendaController().storeUpdateAgendaToFile(ConnectionFactory.getConnectionFactory().getContext());
            }
            if (CalendarController.getCalendarController() != null)
                if (CalendarController.DEFAULT_EVENTS == 0)
                    CalendarController.getCalendarController().readCalendar(ConnectionFactory.getConnectionFactory().getContext());
                else
                if (CalendarController.DEFAULT_EVENTS == 1)
                    CalendarController.getCalendarController().readCalendarVer2(ConnectionFactory.getConnectionFactory().getContext());
            if (CommHubController.getCommHubController() != null)
            {
                CommHubController.getCommHubController().storeCommHubToFile();
                return;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!"android.intent.action.NEW_OUTGOING_CALL".equals(s))
            break; /* Loop/switch isn't completed */
        String s6 = intent.getExtras().getString("android.intent.extra.PHONE_NUMBER");
        if (s6 != null)
        {
            String s7 = PhoneNumberUtils.formatNumber(s6);
            Log.i("PHubServiceReceiver", (new StringBuilder()).append("ACTION_NEW_OUTGOING_CALL:").append(s7).toString());
            CustomPhoneStateListener customphonestatelistener = CustomPhoneStateListener.getPhoneStateListener(context);
            if (customphonestatelistener.getCurrentState() == 0)
                customphonestatelistener.setOutgoingActive(true);
            customphonestatelistener.setCallerNumber(s7);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (!s.equals("android.media.RINGER_MODE_CHANGED") && !s.equals("android.media.VIBRATE_SETTING_CHANGED")) goto _L7; else goto _L6
_L6:
        int k1;
label0:
        {
            Log.d("PHubServiceReceiver", (new StringBuilder()).append("Received action =  ").append(s).append(" RINGER or VIBRATE").toString());
            AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
            if (audiomanager.getRingerMode() != 1)
            {
                int i2 = audiomanager.getRingerMode();
                k1 = 0;
                if (i2 != 0)
                    break label0;
            }
            k1 = 1;
        }
        JSONObject jsonobject2 = new JSONObject();
        Intent intent4;
        Bundle bundle2;
        Exception exception2;
        List list;
        Exception exception3;
        Calendar calendar2;
        Iterator iterator;
        CalendarEventObject calendareventobject;
        String s2;
        String s3;
        String s4;
        SimpleDateFormat simpledateformat;
        String s5;
        long l5;
        long l6;
        long l7;
        try
        {
            jsonobject2.put("silence_mode", k1);
        }
        catch (Exception exception1) { }
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            PHubService phubservice1 = PHubService.getPHubService();
            if (phubservice1 != null)
            {
                phubservice1.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject2, 32769, ConnectionFactory.getConnectionFactory().createTransactionID());
                Log.d("PHubServiceReceiver", (new StringBuilder()).append("SilencePhoneInd: ").append(jsonobject2).toString());
                return;
            }
        }
        if (true) goto _L4; else goto _L7
_L7:
        if (!s.equals((new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.calendarcontroller.popup").toString()))
            continue; /* Loop/switch isn't completed */
        try
        {
            if (CalendarController.getCalendarController() == null || CalendarController.getCalendarController().getCalendarObject() == null || CalendarController.getCalendarController().getCalendarObject().isEmpty())
            {
                Log.d("PopUpController", "CalendarController: nextCalendarEventObectsForPopup is null or empty");
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception2)
        {
            exception2.printStackTrace();
            Log.e("PopUpController", (new StringBuilder()).append("Exception in CalendarController: com.qualcomm.toq.smartwatch.calendarcontroller.popup :").append(exception2.toString()).toString());
            return;
        }
        if (CalendarController.DEFAULT_EVENTS != 0)
            break MISSING_BLOCK_LABEL_1534;
        l5 = Calendar.getInstance().getTimeInMillis();
        if (intent.getExtras() == null)
            break; /* Loop/switch isn't completed */
        l6 = intent.getLongExtra("occurenceTime", 0x12d4cdL);
        l7 = intent.getLongExtra("occurenceTime", l5);
        Log.d("PHubServiceReceiver", (new StringBuilder()).append("Current time: ").append(l5).append("Scheduleed Time= ").append(l7).append("Dummy Time ").append(l6).toString());
        if (l5 - l7 > 15000L) goto _L9; else goto _L8
_L9:
        break; /* Loop/switch isn't completed */
_L8:
        CalendarController.getCalendarController().updateState();
        list = CalendarController.getCalendarController().getCalendarObject();
        list;
        JVM INSTR monitorenter ;
        Log.d("CalendarController", (new StringBuilder()).append("Size of the nextCalendarEventObectsForPopup calendar event List: ").append(list.size()).toString());
        calendar2 = Calendar.getInstance();
        iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            calendareventobject = (CalendarEventObject)iterator.next();
            s2 = calendareventobject.getEventTitle();
            s3 = calendareventobject.getEventLocation();
            s4 = calendareventobject.getEventDescription();
            if (CalendarController.DEFAULT_EVENTS != 0 || calendar2.getTimeInMillis() - calendareventobject.getReminderTime() <= 15000L)
            {
                simpledateformat = new SimpleDateFormat("h:mmaa", Locale.US);
                s5 = (new StringBuilder()).append("").append(simpledateformat.format(calendareventobject.getEventStartDate())).append(" - ").append(simpledateformat.format(calendareventobject.getEventEndDate())).toString();
                Log.d("PHubServiceReceiver", (new StringBuilder()).append("Getting details for title: ").append(s2).append("   ").append(ConnectionFactory.getConnectionFactory().getEndPointVersionState(0)).toString());
                if (PopUpController.getPopUpController() != null && ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getEndPoint(0) != null && ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
                {
                    Log.d("PHubServiceReceiver", "CreatePopUp for Calendar Event called");
                    Log.printUsageLog("PHubService", "Sending Calendar Pop Up Event to WD");
                    PopUpController.getPopUpController().sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 7, 8, CalendarController.getCalendarController().createPopUp(s2, s3, s5.toLowerCase(Locale.US), s4), 10, ConnectionFactory.getConnectionFactory().createTransactionID());
                }
            }
        } while (true);
        break MISSING_BLOCK_LABEL_1876;
        exception3;
        list;
        JVM INSTR monitorexit ;
        throw exception3;
        list.clear();
        list;
        JVM INSTR monitorexit ;
        return;
        if (!s.equals("android.provider.Telephony.WAP_PUSH_RECEIVED") || !s1.equals("application/vnd.wap.mms-message")) goto _L11; else goto _L10
_L10:
        break MISSING_BLOCK_LABEL_1908;
_L11:
        break; /* Loop/switch isn't completed */
        Log.d("PHubServiceReceiver", "MMS Received");
        intent4 = new Intent(Constants.ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE);
        bundle2 = new Bundle();
        bundle2.putInt("condition", 5);
        bundle2.putInt("messageLength", 0);
        intent4.putExtras(bundle2);
        context.startService(intent4);
        return;
    }
}
