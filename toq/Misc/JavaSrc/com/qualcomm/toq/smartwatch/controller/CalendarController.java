// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.app.*;
import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.utils.CalendarEventObject;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.util.*;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            PopUpController

public class CalendarController extends DefaultController
{
    public class Calendars
    {

        public String calendarId;
        public String calendarName;
        public boolean checked;
        final CalendarController this$0;

        public String getCalendarId()
        {
            return calendarId;
        }

        public String getCalendarName()
        {
            return calendarName;
        }

        public boolean isChecked()
        {
            return checked;
        }

        public void setChecked(boolean flag)
        {
            checked = flag;
        }

        public void toggleChecked()
        {
            boolean flag;
            if (!checked)
                flag = true;
            else
                flag = false;
            checked = flag;
        }

        public Calendars(String s, String s1, boolean flag)
        {
            this$0 = CalendarController.this;
            super();
            calendarName = s;
            calendarId = s1;
            checked = flag;
        }
    }


    private static final int ATTENDEE_STATUS_DECLINED = 2;
    private static final String CALENDAR_ALERT_ALARMTIME = "alarmTime";
    private static final String CALENDAR_ALERT_BEGIN = "begin";
    private static final String CALENDAR_ALERT_END = "end";
    private static final String CALENDAR_ALERT_EVENTID = "event_id";
    private static final String CALENDAR_ALERT_ID = "_id";
    private static final String CALENDAR_ALERT_NOTIFYTIME = "notifyTime";
    private static final String CALENDAR_ALERT_STATE = "state";
    public static int DEFAULT_EVENTS = 0;
    private static final int DISMISSED = 2;
    private static final String EVENT_DESCRIPTION = "description";
    private static final String EVENT_LOCATION = "eventLocation";
    private static final String EVENT_SELFATTENDEESTATUS = "selfAttendeeStatus";
    private static final String EVENT_TITLE = "title";
    private static final int FIRED = 1;
    private static final String PROJECTION[] = {
        "begin", "end", "event_id", "alarmTime", "state", "_id"
    };
    private static final int SCHEDULED = 0;
    public static final String TAG = "CalendarController";
    public static final int USE_FIRED_EVENTS = 1;
    public static final int USE_SCHEDULED_EVENTS;
    private static CalendarController mInstance = null;
    private Uri CONTENT_URI;
    private Uri EVENT_URI;
    public AlarmManager am;
    public HashMap availableCalendarIds;
    private Context context;
    private List nextCalendarEventObjectsForPopup;

    public CalendarController()
    {
        am = null;
        availableCalendarIds = null;
        nextCalendarEventObjectsForPopup = null;
        context = ConnectionFactory.getConnectionFactory().getContext();
        CONTENT_URI = null;
        EVENT_URI = null;
    }

    public static CalendarController getCalendarController()
    {
        com/qualcomm/toq/smartwatch/controller/CalendarController;
        JVM INSTR monitorenter ;
        if (mInstance == null)
            mInstance = new CalendarController();
        com/qualcomm/toq/smartwatch/controller/CalendarController;
        JVM INSTR monitorexit ;
        mInstance.initializeURI();
        return mInstance;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/controller/CalendarController;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private Set getProcessesedEventsSet()
    {
        Object obj = new HashSet();
        Context context1 = ConnectionFactory.getConnectionFactory().getContext();
        if (context1 != null)
            obj = context1.getSharedPreferences("app_pref", 0).getStringSet("processedEventsSet", ((Set) (obj)));
        return ((Set) (obj));
    }

    private void initializeURI()
    {
        if (android.os.Build.VERSION.SDK_INT >= 7)
        {
            CONTENT_URI = Uri.parse("content://com.android.calendar/calendar_alerts");
            EVENT_URI = Uri.parse("content://com.android.calendar/events");
            return;
        } else
        {
            CONTENT_URI = Uri.parse("content://calendar/calendar_alerts");
            EVENT_URI = Uri.parse("content://calendar/events");
            return;
        }
    }

    private void registerAnAlarm(List list)
    {
        this;
        JVM INSTR monitorenter ;
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
            break MISSING_BLOCK_LABEL_27;
        Log.e("CalendarController", "registerAnAlarm(): ConnectionFactory context is null");
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        Log.d("CalendarController", "registerAnAlarm() called");
        CancelAlarm(ConnectionFactory.getConnectionFactory().getContext());
        setCalendarObject(list);
        CalendarEventObject calendareventobject = (CalendarEventObject)list.get(0);
        Calendar.getInstance().setTimeInMillis(calendareventobject.getEventStartDate().getTime());
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(calendareventobject.getReminderTime());
        long l = calendar.getTimeInMillis();
        Log.e("CalendarController", (new StringBuilder()).append("delay Calendar Time: ").append(l).toString());
        SetAlarm(ConnectionFactory.getConnectionFactory().getContext(), l);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public static void setController(Object obj)
    {
        if (mInstance != null && ConnectionFactory.getConnectionFactory().getContext() != null)
            mInstance.CancelAlarm(ConnectionFactory.getConnectionFactory().getContext());
        mInstance = null;
    }

    private void storeProcessesedEventsSet(Set set)
    {
        Context context1 = ConnectionFactory.getConnectionFactory().getContext();
        if (context1 != null)
        {
            android.content.SharedPreferences.Editor editor = context1.getSharedPreferences("app_pref", 0).edit();
            editor.putStringSet("processedEventsSet", set);
            editor.commit();
        }
    }

    public void CancelAlarm(Context context1)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("CalendarController", "CancelAlarm() called");
        PendingIntent pendingintent = PendingIntent.getBroadcast(context1, 0, new Intent((new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.calendarcontroller.popup").toString()), 0);
        ((AlarmManager)context1.getSystemService("alarm")).cancel(pendingintent);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void SetAlarm(Context context1, long l)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("CalendarController", "SetAlarm() called");
        ((AlarmManager)context1.getSystemService("alarm")).set(0, l, PendingIntent.getBroadcast(context1, 0, new Intent((new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.calendarcontroller.popup").toString()), 0));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public JSONObject createButtonWidgets(String s, String s1, int i, int j, int k, int l, boolean flag, 
            boolean flag1, String s2)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("id", s);
            jsonobject.put("type", "bitmap_button");
            jsonobject.put("image", (new StringBuilder()).append("/").append(s1).toString());
            jsonobject.put("show", flag);
            JSONArray jsonarray = new JSONArray();
            jsonarray.put(i);
            jsonarray.put(j);
            jsonarray.put(k);
            jsonarray.put(l);
            jsonobject.put("position", jsonarray);
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("dismiss", flag1);
            jsonobject1.put("event_data", s2);
            jsonobject.put("onclick", jsonobject1);
            Log.d("TAG", (new StringBuilder()).append("CreateButtonWidget : ").append(jsonobject.toString()).toString());
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return null;
        }
        return jsonobject;
    }

    public JSONObject createIconWidgets(String s, String s1, int i, int j, int k, int l)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("id", s);
            jsonobject.put("type", "icon");
            jsonobject.put("image", (new StringBuilder()).append("/").append(s1).toString());
            JSONArray jsonarray = new JSONArray();
            jsonarray.put(i);
            jsonarray.put(j);
            jsonarray.put(k);
            jsonarray.put(l);
            jsonobject.put("position", jsonarray);
            Log.d("TAG", (new StringBuilder()).append("createIconWidgets: ").append(jsonobject.toString()).toString());
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return null;
        }
        return jsonobject;
    }

    public JSONObject createPopUp(String s, String s1, String s2, String s3)
    {
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1 = new JSONObject();
        JSONArray jsonarray;
        byte byte0;
        try
        {
            jsonobject1.put("vibe", 1);
            jsonobject.put("alerts", jsonobject1);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        try
        {
            jsonarray = new JSONArray();
            jsonarray.put(createIconWidgets("anonymous", "notificationicon_calendar_ND.img", 23, 14, 89, 76));
            jsonarray.put(createTextWidgets("time", s2, 96, 33, 96 + 192, 66, "QCOM_SB_17_20", 20, "semibold", "#000000", true));
        }
        catch (JSONException jsonexception1)
        {
            jsonexception1.printStackTrace();
            return null;
        }
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (s1.length() == 0) goto _L2; else goto _L3
_L3:
        if (s1.length() > 15)
            s1 = (new StringBuilder()).append(s1.substring(0, 13)).append("...").toString();
        jsonarray.put(createTextWidgets("location", s1, 23, 83, 265, 136, "QCOM_SB_21_24", 24, "semibold", "#0000ff", true));
        byte0 = 112;
_L5:
        jsonarray.put(createTextWidgets("title1", s, 23, byte0, 269, 256, "QCOM_24_35", 35, "regular", "#000000", true));
        jsonobject.put("widgets", jsonarray);
        Log.i("CalendarController", (new StringBuilder()).append(" Calendar: createPopUP Payload : ").append(jsonobject).toString());
        return jsonobject;
_L2:
        byte0 = 83;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public JSONObject createTextWidgets(String s, String s1, int i, int j, int k, int l, String s2, 
            int i1, String s3, String s4, boolean flag)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("id", s);
            jsonobject.put("type", "text");
            jsonobject.put("text", s1);
            jsonobject.put("show", flag);
            jsonobject.put("color", s4);
            JSONArray jsonarray = new JSONArray();
            jsonarray.put(i);
            jsonarray.put(j);
            jsonarray.put(k);
            jsonarray.put(l);
            jsonobject.put("position", jsonarray);
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("name", s2);
            jsonobject1.put("size", i1);
            jsonobject1.put("weight", s3);
            jsonobject.put("font", jsonobject1);
            Log.d("TAG", (new StringBuilder()).append("createTextWidgets : ").append(jsonobject.toString()).toString());
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return null;
        }
        return jsonobject;
    }

    public JSONObject createTextWidgets(String s, String s1, int i, int j, int k, int l, String s2, 
            int i1, String s3, boolean flag)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("id", s);
            jsonobject.put("type", "text");
            jsonobject.put("text", s1);
            jsonobject.put("show", flag);
            jsonobject.put("color", s3);
            JSONArray jsonarray = new JSONArray();
            jsonarray.put(i);
            jsonarray.put(j);
            jsonarray.put(k);
            jsonarray.put(l);
            jsonobject.put("position", jsonarray);
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("name", s2);
            jsonobject1.put("size", i1);
            jsonobject.put("font", jsonobject1);
            Log.d("TAG", (new StringBuilder()).append("createTextWidgets : ").append(jsonobject.toString()).toString());
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return null;
        }
        return jsonobject;
    }

    public HashMap getAvailableCalendarIds()
    {
        if (availableCalendarIds == null)
            availableCalendarIds = new HashMap();
        return availableCalendarIds;
    }

    public Calendars[] getAvailableCalendars(Context context1)
    {
        Log.e("CalendarController", "getAvailableCalendars");
        String as[] = {
            "700"
        };
        if (android.os.Build.VERSION.SDK_INT <= 10) goto _L2; else goto _L1
_L1:
        String as1[] = {
            "_id", "calendar_displayName", "account_name"
        };
        String s;
        String as2[];
        s = "calendar_access_level = ?";
        as2 = as1;
_L15:
        if (android.os.Build.VERSION.SDK_INT < 8) goto _L4; else goto _L3
_L3:
        Uri uri1 = Uri.parse("content://com.android.calendar/calendars");
_L13:
        Calendars acalendars[];
        Cursor cursor = null;
        Uri uri;
        int i;
        String s1;
        int j;
        String s2;
        int k;
        String s3;
        int l;
        String s4;
        String s5;
        String s6;
        String as3[];
        if (context1 != null)
            try
            {
                cursor = context1.getContentResolver().query(uri1, as2, s, as, null);
            }
            catch (Exception exception)
            {
                Log.e("CalendarController", (new StringBuilder()).append("Exception in getAvailableCalendars(): ").append(exception.toString()).toString());
                exception.printStackTrace();
                return null;
            }
        if (cursor == null) goto _L6; else goto _L5
_L5:
        acalendars = new Calendars[cursor.getCount()];
        if (!cursor.moveToFirst()) goto _L8; else goto _L7
_L7:
        i = 0;
        s1 = as2[2];
        j = cursor.getColumnIndex(s1);
        s2 = as2[1];
        k = cursor.getColumnIndex(s2);
        s3 = as2[0];
        l = cursor.getColumnIndex(s3);
_L9:
        s4 = cursor.getString(j);
        Log.d("CalendarController", (new StringBuilder()).append("calendarName = ").append(s4).toString());
        s5 = cursor.getString(l);
        Log.d("CalendarController", (new StringBuilder()).append("calendarId = ").append(s5).toString());
        s6 = cursor.getString(k);
        Log.d("CalendarController", (new StringBuilder()).append("calendarDisplayName = ").append(s6).toString());
        acalendars[i] = new Calendars(s6, s5, getSelectedCalendarIds().contains(s5));
        i++;
        if (cursor.moveToNext()) goto _L9; else goto _L8
_L8:
        if (cursor == null) goto _L11; else goto _L10
_L10:
        if (cursor.isClosed()) goto _L11; else goto _L12
_L12:
        cursor.close();
        return acalendars;
_L2:
        as3 = (new String[] {
            "_id", "displayName", "_sync_account"
        });
        s = "access_level = ?";
        as2 = as3;
        continue; /* Loop/switch isn't completed */
_L4:
        uri = Uri.parse("content://calendar/calendars");
        uri1 = uri;
          goto _L13
_L6:
        return null;
_L11:
        return acalendars;
        if (true) goto _L15; else goto _L14
_L14:
    }

    public List getCalendarObject()
    {
        this;
        JVM INSTR monitorenter ;
        List list = nextCalendarEventObjectsForPopup;
        this;
        JVM INSTR monitorexit ;
        return list;
        Exception exception;
        exception;
        throw exception;
    }

    public ArrayList getSelectedCalendarIds()
    {
        HashMap hashmap = new HashMap();
        ArrayList arraylist = new ArrayList();
        try
        {
            if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
                hashmap = (HashMap)ObjectSerializer.deserialize(ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("calendars_pref", 0).getString("all_calendar_id", ObjectSerializer.serialize(new HashMap())));
            Iterator iterator = hashmap.entrySet().iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                String s = (String)entry.getKey();
                if (((Boolean)entry.getValue()).booleanValue())
                    arraylist.add(s);
            } while (true);
        }
        catch (Exception exception)
        {
            Log.e("CalendarController", exception.toString());
        }
        return arraylist;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        Log.d("CalendarController", (new StringBuilder()).append("handleConnHandlerMessage called, command = ").append(j).toString());
        j;
        JVM INSTR tableswitch 13 16: default 56
    //                   13 57
    //                   14 94
    //                   15 495
    //                   16 131;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        Log.printUsageLog("CalendarController", "Received CalendarCreatePopupResp from WD");
        Log.d("CalendarController", (new StringBuilder()).append("Received CalendarCreatePopupResp = ").append(obj.toString()).toString());
        return;
_L3:
        Log.printUsageLog("CalendarController", "Received CalendarUpdatePopupResp from WD");
        Log.d("CalendarController", (new StringBuilder()).append("Received CalendarUpdatePopupResp = ").append(obj.toString()).toString());
        return;
_L5:
        boolean flag;
        String s;
        int i1;
        Log.printUsageLog("CalendarController", "Received CalendarPopupInd from WD");
        flag = false;
        s = null;
        i1 = -1;
        Log.d("CalendarController", (new StringBuilder()).append("Received CalendarPopupInd = ").append(obj.toString()).toString());
        boolean flag1;
        i1 = ((JSONObject)obj).getInt("popup_id");
        flag1 = ((JSONObject)obj).isNull("widget_id");
        s = null;
        if (flag1) goto _L7; else goto _L6
_L6:
        s = ((JSONObject)obj).getString("widget_id");
_L7:
        flag = ((JSONObject)obj).getBoolean("dismissed");
        Log.d("CalendarController", (new StringBuilder()).append("widgetId = ").append(s).toString());
        Log.d("CalendarController", (new StringBuilder()).append("dismissed = ").append(flag).toString());
_L9:
        if (s != null)
        {
            try
            {
                if (s.compareTo("dismiss_button") == 0)
                {
                    Log.d("CalendarController", "Calendar Event Popup Dismissed");
                    Log.printUsageLog("CalendarController", "Dismissing Calendar Event Pop up");
                    PopUpController.getPopUpController().unMapPopup(9, i1);
                    ((NotificationManager)context.getSystemService("notification")).cancel(0);
                    return;
                }
            }
            catch (Exception exception1)
            {
                Log.d("CalendarController", exception1.toString());
                exception1.printStackTrace();
                return;
            }
            continue; /* Loop/switch isn't completed */
        }
          goto _L8
        Exception exception;
        exception;
        Log.e("CalendarController", (new StringBuilder()).append("Exception in JSON Parsing: CalendarPopupInd, ").append(exception.toString()).toString());
        exception.printStackTrace();
          goto _L9
        if (s.compareTo("snooze_button") != 0) goto _L1; else goto _L10
_L10:
        Log.d("CalendarController", "Calendar Event Popup Dismissed");
        PopUpController.getPopUpController().unMapPopup(9, i1);
        Log.printUsageLog("CalendarController", "Dismissing Calendar Event Pop up");
        return;
_L8:
        Log.d("CalendarController", "widgetId is null");
        if (PopUpController.getPopUpController() == null || !flag) goto _L1; else goto _L11
_L11:
        Log.d("CalendarController", (new StringBuilder()).append("Calendar Event Dismiss PopupID: ").append(i1).toString());
        PopUpController.getPopUpController().unMapPopup(9, i1);
        return;
_L4:
        Log.printUsageLog("CalendarController", "Received CalendarDestroyPopupResp from WD");
        Log.d("CalendarController", (new StringBuilder()).append("Received CalendarDestroyPopupResp = ").append(obj.toString()).toString());
        return;
    }

    public void readCalendar(Context context1)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("CalendarController", "readCalendar() called");
        Cursor cursor;
        Cursor cursor1;
        cursor = null;
        cursor1 = null;
        ContentResolver contentresolver = context1.getContentResolver();
        if (CONTENT_URI == null || EVENT_URI == null) goto _L2; else goto _L1
_L1:
        Cursor cursor2 = contentresolver.query(CONTENT_URI, null, null, null, null);
_L4:
        cursor = null;
        cursor1 = null;
        if (cursor2 == null)
            break; /* Loop/switch isn't completed */
        if (!cursor2.moveToNext())
            break; /* Loop/switch isn't completed */
        Log.d("CalendarController", (new StringBuilder()).append(cursor2.getString(cursor2.getColumnIndex("title"))).append(" Event ID ").append(cursor2.getString(cursor2.getColumnIndex("event_id"))).append(" State ").append(cursor2.getString(cursor2.getColumnIndex("state"))).append(" Record Id ").append(cursor2.getString(cursor2.getColumnIndex("_id"))).toString());
        if (true) goto _L4; else goto _L3
        Exception exception2;
        exception2;
        exception2.printStackTrace();
        Log.d("CalendarController", (new StringBuilder()).append("Exception in readCalendar").append(exception2).toString());
        if (cursor == null)
            break MISSING_BLOCK_LABEL_234;
        if (!cursor.isClosed())
            cursor.close();
        if (cursor1 == null)
            break MISSING_BLOCK_LABEL_256;
        if (!cursor1.isClosed())
            cursor1.close();
_L38:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        if (cursor2 == null) goto _L6; else goto _L5
_L5:
        boolean flag1 = cursor2.isClosed();
        cursor = null;
        cursor1 = null;
        if (flag1) goto _L6; else goto _L7
_L7:
        cursor2.close();
_L21:
        cursor = contentresolver.query(CONTENT_URI, PROJECTION, null, null, "alarmTime ASC, begin ASC");
        long l = -1L;
        ArrayList arraylist = new ArrayList();
        cursor1 = null;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_359;
        Log.d("CalendarController", (new StringBuilder()).append("calendarAlertsCursor count = ").append(cursor.getCount()).toString());
_L12:
        if (cursor == null) goto _L9; else goto _L8
_L8:
        if (!cursor.moveToNext()) goto _L9; else goto _L10
_L10:
        int i;
        i = cursor.getInt(cursor.getColumnIndex("state"));
        Log.d("CalendarController", (new StringBuilder()).append("readCalendar() the CALENDAR_ALERT_STATE = ").append(i).toString());
        if (i != 0) goto _L12; else goto _L11
_L11:
        Date date;
        Date date1;
        Long long1;
        date = new Date(cursor.getLong(cursor.getColumnIndex("begin")));
        date1 = new Date(cursor.getLong(cursor.getColumnIndex("end")));
        long1 = Long.valueOf(cursor.getLong(cursor.getColumnIndex("event_id")));
        Log.d("CalendarController", (new StringBuilder()).append("Calendar event ID = ").append(long1).toString());
        cursor1 = contentresolver.query(Uri.withAppendedPath(EVENT_URI, (new StringBuilder()).append("").append(long1).toString()), null, null, null, null);
        if (cursor1 == null) goto _L14; else goto _L13
_L13:
        if (cursor1.getCount() <= 0) goto _L14; else goto _L15
_L15:
        String s3;
        ArrayList arraylist1;
        cursor1.moveToFirst();
        int k = cursor1.getColumnIndex("calendar_id");
        s3 = cursor1.getString(k);
        arraylist1 = getSelectedCalendarIds();
        if (arraylist1 == null) goto _L17; else goto _L16
_L16:
        if (arraylist1.contains(s3)) goto _L17; else goto _L18
_L18:
        if (cursor1 == null) goto _L12; else goto _L19
_L19:
        if (cursor1.isClosed()) goto _L12; else goto _L20
_L20:
        cursor1.close();
        cursor1 = null;
          goto _L12
_L6:
        Log.d("CalendarController", (new StringBuilder()).append("printCursor is closed. So What to do here !!! with ").append(cursor2).toString());
          goto _L21
        Exception exception1;
        exception1;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_694;
        if (!cursor.isClosed())
            cursor.close();
        if (cursor1 == null)
            break MISSING_BLOCK_LABEL_716;
        if (!cursor1.isClosed())
            cursor1.close();
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L17:
        String s;
        String s1;
        String s2;
        int i1 = cursor1.getColumnIndex("title");
        s = cursor1.getString(i1);
        int j1 = cursor1.getColumnIndex("eventLocation");
        s1 = cursor1.getString(j1);
        int k1 = cursor1.getColumnIndex("description");
        s2 = cursor1.getString(k1);
        Log.d("CalendarController", (new StringBuilder()).append("title:").append(s).append("eventLocation:").append(s1).append("eventDescription:").append(s2).toString());
        if (s1 == null)
            s1 = "";
        break MISSING_BLOCK_LABEL_1794;
_L43:
        if (cursor1 == null)
            break MISSING_BLOCK_LABEL_876;
        if (cursor1.isClosed())
            break MISSING_BLOCK_LABEL_876;
        cursor1.close();
        cursor1 = null;
        int j;
        long l1;
        j = cursor.getInt(cursor.getColumnIndex("event_id"));
        l1 = cursor.getLong(cursor.getColumnIndex("alarmTime"));
        Log.d("CalendarController", (new StringBuilder()).append("calendarEventTimeForSearch = ").append(l).toString());
        if (l != -1L) goto _L23; else goto _L22
_L22:
        l = l1;
_L31:
        CalendarEventObject calendareventobject;
        calendareventobject = new CalendarEventObject(s, s1, s2, date, date1, long1.longValue());
        calendareventobject.setReminderTime(l1);
        boolean flag = false;
        if (arraylist == null) goto _L25; else goto _L24
_L24:
        if (arraylist.isEmpty()) goto _L25; else goto _L26
_L26:
        Iterator iterator = arraylist.iterator();
_L29:
        if (!iterator.hasNext()) goto _L28; else goto _L27
_L27:
        CalendarEventObject calendareventobject1 = (CalendarEventObject)iterator.next();
        if (calendareventobject1.getEventTitle().equals(calendareventobject.getEventTitle()) && calendareventobject1.getEventID() == calendareventobject.getEventID() && calendareventobject1.getEventStartDate().getTime() == calendareventobject.getEventStartDate().getTime() && calendareventobject1.getEventEndDate().getTime() == calendareventobject.getEventEndDate().getTime() && calendareventobject1.getReminderTime() == calendareventobject.getReminderTime() && calendareventobject1.getEventLocation().equals(calendareventobject.getEventLocation()) && calendareventobject1.getEventDescription().equals(calendareventobject.getEventDescription()))
            flag = true;
          goto _L29
_L23:
        if (l == l1) goto _L31; else goto _L30
_L30:
        Log.e("CalendarController", "CALENDAR_ALERT_ALARMTIME differed so break the while loop");
_L9:
        if (arraylist == null) goto _L33; else goto _L32
_L32:
        if (arraylist.isEmpty()) goto _L33; else goto _L34
_L34:
        registerAnAlarm(arraylist);
_L41:
        if (cursor == null)
            break MISSING_BLOCK_LABEL_1207;
        if (cursor.isClosed())
            break MISSING_BLOCK_LABEL_1207;
        cursor.close();
        cursor = null;
_L42:
        if (cursor == null) goto _L36; else goto _L35
_L35:
        if (!cursor.isClosed())
            cursor.close();
_L36:
        if (cursor1 == null) goto _L38; else goto _L37
_L37:
        if (cursor1.isClosed()) goto _L38; else goto _L39
_L39:
        cursor1.close();
          goto _L38
_L28:
        if (!flag) goto _L25; else goto _L40
_L40:
        Log.e("CalendarController", "Same Event clash in Calendar!!!!");
          goto _L12
_L25:
        Log.d("CalendarController", "Add entry in nextCalendarEventObjectsForPopup");
        arraylist.add(calendareventobject);
        Log.e("PopUpController", "************ALARM SET For these values********************");
        Log.e("PopUpController", (new StringBuilder()).append("Title:").append(calendareventobject.getEventTitle()).toString());
        Log.e("PopUpController", (new StringBuilder()).append("Begin:").append(calendareventobject.getEventStartDate().toString()).toString());
        Log.e("PopUpController", (new StringBuilder()).append("End:").append(calendareventobject.getEventEndDate().toString()).toString());
        Log.e("PopUpController", (new StringBuilder()).append("Reminder Date:").append(new Date(calendareventobject.getReminderTime())).toString());
        Log.e("PopUpController", "******************************************************");
        Log.i("CalendarController", (new StringBuilder()).append("Alarm Time:").append((new Date(l1)).toString()).toString());
        Log.i("CalendarController", "**********************************");
        Log.i("CalendarController", (new StringBuilder()).append("Event Details:\nTitle->").append(s).append("\nDescription->").append(s2).append("\nStartDate->").append(date).append("\nEnd Date->").append(date1).append("\nState->").append(i).append("\nRecordId->").append(j).toString());
        Date date2 = new Date(System.currentTimeMillis());
        Log.i("CalendarController", (new StringBuilder()).append("Current Date:").append(date2.toString()).toString());
        Log.i("CalendarController", "************ALARM SET For these values********************");
        Log.i("CalendarController", (new StringBuilder()).append("Title:").append(calendareventobject.getEventTitle()).toString());
        Log.i("CalendarController", (new StringBuilder()).append("Begin:").append(calendareventobject.getEventStartDate().toString()).toString());
        Log.i("CalendarController", (new StringBuilder()).append("End:").append(calendareventobject.getEventEndDate().toString()).toString());
        Log.i("CalendarController", (new StringBuilder()).append("Reminder Date:").append(new Date(calendareventobject.getReminderTime())).toString());
        Log.i("CalendarController", "******************************************************");
          goto _L12
_L33:
        CancelAlarm(context1);
        Log.e("CalendarController", "nextCalendarEventObectsForPopup is null or empty need to cancel any alarms");
          goto _L41
_L2:
        Log.e("CalendarController", "Either Content URI or Event URI is null in readCalendar");
        cursor = null;
        cursor1 = null;
          goto _L42
_L14:
        s = null;
        s1 = null;
        s2 = null;
          goto _L43
        if (s == null)
            s = "Title Not Mentioned";
        if (s2 == null)
            s2 = "";
          goto _L43
    }

    public void readCalendarVer2(Context context1)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("CalendarController", "readCalendarVer2() called");
        int i = ConnectionFactory.getConnectionFactory().getEndPointVersionState(0);
        if (i == 1) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        ContentResolver contentresolver = context1.getContentResolver();
        if (CONTENT_URI == null || EVENT_URI == null) goto _L4; else goto _L3
_L3:
        HashSet hashset;
        Cursor cursor;
        hashset = new HashSet();
        cursor = contentresolver.query(CONTENT_URI, null, null, null, null);
_L9:
        if (cursor == null) goto _L6; else goto _L5
_L5:
        if (!cursor.moveToNext()) goto _L6; else goto _L7
_L7:
        if (cursor.getInt(cursor.getColumnIndex("state")) == 1)
        {
            Long long3 = Long.valueOf(cursor.getLong(cursor.getColumnIndex("event_id")));
            Long long4 = Long.valueOf(cursor.getLong(cursor.getColumnIndex("_id")));
            hashset.add((new StringBuilder()).append(String.valueOf(long3)).append("_").append(String.valueOf(long4)).toString());
        }
        Log.d("CalendarController", (new StringBuilder()).append(cursor.getString(cursor.getColumnIndex("title"))).append(" Event ID ").append(cursor.getString(cursor.getColumnIndex("event_id"))).append(" State ").append(cursor.getString(cursor.getColumnIndex("state"))).append(" Record Id ").append(cursor.getString(cursor.getColumnIndex("_id"))).toString());
        if (true) goto _L9; else goto _L8
_L8:
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        Log.d("CalendarController", (new StringBuilder()).append("Exception in readCalendar").append(exception1).toString());
          goto _L1
        Exception exception;
        exception;
        throw exception;
_L6:
        if (cursor == null) goto _L1; else goto _L10
_L10:
        Set set;
        ArrayList arraylist;
        boolean flag = cursor.moveToPosition(-1);
        Log.d("CalendarController", (new StringBuilder()).append("Done fired events list preparation and moving cursor to first. status: ").append(flag).toString());
        set = getProcessesedEventsSet();
        Log.d("CalendarController", (new StringBuilder()).append("FiredEventsSet: ").append(hashset.toString()).append("\nprocessedFiredEventsSet: ").append(set.toString()).toString());
        set.retainAll(hashset);
        hashset.clear();
        Log.d("CalendarController", (new StringBuilder()).append("After retainAll: processedFiredEvents: ").append(set.toString()).toString());
        arraylist = new ArrayList();
        Log.d("CalendarController", (new StringBuilder()).append("calendarAlertsCursor count = ").append(cursor.getCount()).toString());
_L15:
        if (cursor == null) goto _L12; else goto _L11
_L11:
        if (!cursor.moveToNext()) goto _L12; else goto _L13
_L13:
        Long long1;
        Long long2;
        int j;
        long1 = Long.valueOf(cursor.getLong(cursor.getColumnIndex("event_id")));
        long2 = Long.valueOf(cursor.getLong(cursor.getColumnIndex("_id")));
        j = cursor.getInt(cursor.getColumnIndex("state"));
        Log.d("CalendarController", (new StringBuilder()).append("readCalendar() the eventID: ").append(long1).append("   CALENDAR_ALERT_STATE = ").append(j).toString());
        if (j != 1) goto _L15; else goto _L14
_L14:
        Iterator iterator = set.iterator();
_L19:
        boolean flag1 = iterator.hasNext();
        boolean flag2 = false;
        if (!flag1) goto _L17; else goto _L16
_L16:
        if (!((String)iterator.next()).equals((new StringBuilder()).append(String.valueOf(long1)).append("_").append(String.valueOf(long2)).toString())) goto _L19; else goto _L18
_L18:
        flag2 = true;
_L17:
        if (flag2) goto _L15; else goto _L20
_L20:
        Cursor cursor1;
        Log.d("CalendarController", (new StringBuilder()).append("Processing Calendar event ID = ").append(long1).toString());
        cursor1 = contentresolver.query(Uri.withAppendedPath(EVENT_URI, (new StringBuilder()).append("").append(long1).toString()), null, null, null, null);
        if (cursor1 == null) goto _L22; else goto _L21
_L21:
        if (cursor1.getCount() <= 0) goto _L22; else goto _L23
_L23:
        String s3;
        ArrayList arraylist1;
        cursor1.moveToFirst();
        s3 = cursor1.getString(cursor1.getColumnIndex("calendar_id"));
        arraylist1 = getSelectedCalendarIds();
        if (arraylist1 == null)
            break MISSING_BLOCK_LABEL_868;
        if (arraylist1.contains(s3))
            break MISSING_BLOCK_LABEL_868;
        if (cursor1 == null) goto _L15; else goto _L24
_L24:
        if (cursor1.isClosed()) goto _L15; else goto _L25
_L25:
        cursor1.close();
          goto _L15
        String s;
        String s1;
        String s2;
        s = cursor1.getString(cursor1.getColumnIndex("title"));
        s1 = cursor1.getString(cursor1.getColumnIndex("eventLocation"));
        s2 = cursor1.getString(cursor1.getColumnIndex("description"));
        Log.d("CalendarController", (new StringBuilder()).append("title:").append(s).append("eventLocation:").append(s1).append("eventDescription:").append(s2).toString());
        if (s == null)
            s = "Title Not Mentioned";
        break MISSING_BLOCK_LABEL_1744;
_L29:
        if (cursor1 == null)
            break MISSING_BLOCK_LABEL_1005;
        if (!cursor1.isClosed())
            cursor1.close();
        Date date = new Date(cursor.getLong(cursor.getColumnIndex("begin")));
        Date date1 = new Date(cursor.getLong(cursor.getColumnIndex("end")));
        int k = cursor.getInt(cursor.getColumnIndex("event_id"));
        long l = cursor.getLong(cursor.getColumnIndex("alarmTime"));
        CalendarEventObject calendareventobject = new CalendarEventObject(s, s1, s2, date, date1, long1.longValue());
        calendareventobject.setReminderTime(l);
        Log.d("CalendarController", "Add entry in nextCalendarEventObjectsForPopup");
        arraylist.add(calendareventobject);
        set.add((new StringBuilder()).append(String.valueOf(long1)).append("_").append(String.valueOf(long2)).toString());
        Log.e("PopUpController", "************ALARM SET For these values********************");
        Log.e("PopUpController", (new StringBuilder()).append("Title:").append(calendareventobject.getEventTitle()).toString());
        Log.e("PopUpController", (new StringBuilder()).append("Begin:").append(calendareventobject.getEventStartDate().toString()).toString());
        Log.e("PopUpController", (new StringBuilder()).append("End:").append(calendareventobject.getEventEndDate().toString()).toString());
        Log.e("PopUpController", (new StringBuilder()).append("Reminder Date:").append(new Date(calendareventobject.getReminderTime())).toString());
        Log.e("PopUpController", "******************************************************");
        StringBuilder stringbuilder = (new StringBuilder()).append("Alarm Time:");
        Date date2 = new Date(l);
        Log.i("CalendarController", stringbuilder.append(date2.toString()).toString());
        Log.i("CalendarController", "**********************************");
        Log.i("CalendarController", (new StringBuilder()).append("Event Details:\nTitle->").append(s).append("\nDescription->").append(s2).append("\nStartDate->").append(date).append("\nEnd Date->").append(date1).append("\nState->").append(j).append("\nRecordId->").append(k).toString());
        Date date3 = new Date(System.currentTimeMillis());
        Log.i("CalendarController", (new StringBuilder()).append("Current Date:").append(date3.toString()).toString());
        Log.i("CalendarController", "************ALARM SET For these values********************");
        Log.i("CalendarController", (new StringBuilder()).append("Title:").append(calendareventobject.getEventTitle()).toString());
        Log.i("CalendarController", (new StringBuilder()).append("Begin:").append(calendareventobject.getEventStartDate().toString()).toString());
        Log.i("CalendarController", (new StringBuilder()).append("End:").append(calendareventobject.getEventEndDate().toString()).toString());
        Log.i("CalendarController", (new StringBuilder()).append("Reminder Date:").append(new Date(calendareventobject.getReminderTime())).toString());
        Log.i("CalendarController", "******************************************************");
          goto _L15
_L12:
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_1705;
        if (arraylist.isEmpty())
            break MISSING_BLOCK_LABEL_1705;
        registerAnAlarm(arraylist);
        storeProcessesedEventsSet(set);
_L28:
        if (cursor == null) goto _L1; else goto _L26
_L26:
        if (cursor.isClosed()) goto _L1; else goto _L27
_L27:
        cursor.close();
          goto _L1
        CancelAlarm(context1);
        Log.e("CalendarController", "nextCalendarEventObectsForPopup is null or empty need to cancel any alarms");
          goto _L28
_L4:
        Log.e("CalendarController", "Either Content URI or Event URI is null in readCalendar");
          goto _L1
_L22:
        s = null;
        s1 = null;
        s2 = null;
          goto _L29
        if (s1 == null)
            s1 = "";
        if (s2 == null)
            s2 = "";
          goto _L29
    }

    public void setAvailableCalendarIds(HashMap hashmap)
    {
        availableCalendarIds = hashmap;
    }

    public void setCalendarObject(List list)
    {
        this;
        JVM INSTR monitorenter ;
        if (nextCalendarEventObjectsForPopup == null)
            break MISSING_BLOCK_LABEL_44;
        synchronized (nextCalendarEventObjectsForPopup)
        {
            nextCalendarEventObjectsForPopup.addAll(list);
        }
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        exception1;
        list1;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        nextCalendarEventObjectsForPopup = list;
          goto _L1
    }

    public void updateState()
    {
        String as[];
        if (CONTENT_URI == null)
            break MISSING_BLOCK_LABEL_326;
        as = new String[2];
        as[0] = Integer.toString(1);
        as[1] = Integer.toString(0);
        if (ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getContext() == null) goto _L2; else goto _L1
_L1:
        ContentResolver contentresolver;
        long l;
        Cursor cursor;
        contentresolver = ConnectionFactory.getConnectionFactory().getContext().getContentResolver();
        l = System.currentTimeMillis();
        cursor = contentresolver.query(CONTENT_URI, null, (new StringBuilder()).append("(state=? OR state=?) AND alarmTime<=").append(l).toString(), as, "begin DESC, end DESC");
_L8:
        if (cursor == null) goto _L4; else goto _L3
_L3:
        if (!cursor.moveToNext()) goto _L4; else goto _L5
_L5:
        Uri uri;
        long l1 = cursor.getLong(cursor.getColumnIndex("_id"));
        uri = ContentUris.withAppendedId(CONTENT_URI, l1);
        Exception exception;
        boolean flag;
        int i;
        ContentValues contentvalues;
        byte byte0;
        if (cursor.getInt(cursor.getColumnIndex("selfAttendeeStatus")) == 2)
            flag = true;
        else
            flag = false;
        i = cursor.getInt(cursor.getColumnIndex("state"));
        contentvalues = new ContentValues();
        byte0 = -1;
        if (flag) goto _L7; else goto _L6
_L6:
        if (i != 0)
            break MISSING_BLOCK_LABEL_215;
        byte0 = 1;
        contentvalues.put("receivedTime", Long.valueOf(l));
_L9:
        if (byte0 == -1)
            break MISSING_BLOCK_LABEL_237;
        contentvalues.put("state", Integer.valueOf(byte0));
        i = byte0;
        if (i != 1)
            break MISSING_BLOCK_LABEL_255;
        contentvalues.put("notifyTime", Long.valueOf(l));
        if (contentvalues.size() > 0)
            contentresolver.update(uri, contentvalues, null, null);
          goto _L8
        exception;
        exception.printStackTrace();
        Log.e("CalendarController", "Exception in updateState");
_L2:
        return;
_L7:
        byte0 = 2;
          goto _L9
_L4:
        if (cursor == null) goto _L2; else goto _L10
_L10:
        if (cursor.isClosed()) goto _L2; else goto _L11
_L11:
        cursor.close();
        return;
        Log.e("CalendarController", "CONTENT_URI is null in updateState");
        return;
          goto _L8
    }

    static 
    {
        DEFAULT_EVENTS = 1;
    }
}
