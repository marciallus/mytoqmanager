// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import java.io.*;
import java.util.*;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            CalendarController

public class AgendaController extends DefaultController
{

    public static final String ATTENDEE_STATUS_DECLINED = "2";
    public static final int DELETED = 1;
    public static final String EVENT_STATUS_CANCELED = "2";
    private static final String ID = "_id";
    public static final int IS_ATTENDEE_DATA_PRESENT = 1;
    private static final String TAG = "AgendaController";
    public static final String appName = "AGENDA_CONTROLLER";
    private static AgendaController mInstance = null;
    private String AGENDA_SEQUENCE;
    private int agendaEventsForDays;
    public boolean bSyncUpdateStoreReqFailed;
    private int offsetFromUTCForAllDayEvent;

    private AgendaController()
    {
        AGENDA_SEQUENCE = "agendasequence";
        bSyncUpdateStoreReqFailed = false;
        offsetFromUTCForAllDayEvent = getLocalTimezoneOffsetFromUTC();
    }

    private void createTempStoreFile(String s)
    {
        File file;
        File file1;
        BufferedWriter bufferedwriter;
        FileWriter filewriter;
        File file2;
        Log.d("AgendaController", "Inside createTempStoreFile()");
        file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        file1 = new File((new StringBuilder()).append(file).append("/").append("Phub.Phone.Agenda").append("_Temp").append(".jsn").toString());
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
        File file3 = new File(file, "Phub.Phone.Agenda_Temp.jsn");
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
            Log.e("AgendaController", "Called file nulling createTempStore() #2");
        }
        catch (Exception exception4)
        {
            Log.e("AgendaController", "Exception while nulling createTempStore() #2");
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
        filewriter2 = new FileWriter((new StringBuilder()).append(file).append("/").append("Phub.Phone.Agenda").append("_Temp").append(".jsn").toString(), false);
        bufferedwriter2 = new BufferedWriter(filewriter2);
        filewriter = filewriter2;
        bufferedwriter = bufferedwriter2;
        file2 = null;
          goto _L4
        Exception exception2;
        exception2;
_L11:
        Log.e("AgendaController", (new StringBuilder()).append("Exception in createTempStoreFile(): ").append(exception2.toString()).toString());
        exception2.printStackTrace();
        try
        {
            Log.e("AgendaController", "Called file nulling createTempStore() #2");
        }
        catch (Exception exception3)
        {
            Log.e("AgendaController", "Exception while nulling createTempStore() #2");
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
        Log.e("AgendaController", "Called file nulling createTempStore() #2");
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
        Log.e("AgendaController", "Exception while nulling createTempStore() #2");
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

    public static AgendaController getAgendaController()
    {
        if (mInstance == null)
            mInstance = new AgendaController();
        return mInstance;
    }

    private int getAgendaEventsForDays()
    {
        agendaEventsForDays = ProjectConfig.getProjectConfig().getAgendaEventsForDays();
        return 2;
    }

    private int getLocalTimezoneOffsetFromUTC()
    {
        Calendar calendar = Calendar.getInstance();
        Date date = calendar.getTime();
        TimeZone timezone = calendar.getTimeZone();
        Log.d("AgendaController", (new StringBuilder()).append("Input calendar has date [").append(date).append("]").append("Display name").append(timezone.getDisplayName()).toString());
        int i = timezone.getOffset(date.getTime());
        Log.d("AgendaController", (new StringBuilder()).append("offsetFromUTC is ").append(i).toString());
        return i;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    private boolean writeAgendaToFile(String s, long l)
    {
        BufferedWriter bufferedwriter;
        FileWriter filewriter;
        File file;
        File file1;
        Log.d("AgendaController", "Writing Agenda JSON data to file");
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
        File file3 = new File(file2, (new StringBuilder()).append("Phub.Phone.Agenda_").append(l).append(".jsn").toString());
        FileWriter filewriter1 = new FileWriter(file3);
        BufferedWriter bufferedwriter1 = new BufferedWriter(filewriter1);
        file = file3;
        filewriter = filewriter1;
        bufferedwriter = bufferedwriter1;
_L4:
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_174;
        bufferedwriter.write(s);
        bufferedwriter.newLine();
        bufferedwriter.flush();
        bufferedwriter.close();
        Log.e("AgendaController", "Called file nulling writeAgendaToFile() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_191;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_201;
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
        FileWriter filewriter2 = new FileWriter((new StringBuilder()).append(file2).append("/").append("Phub.Phone.Agenda").append("_").append(l).append(".jsn").toString(), false);
        BufferedWriter bufferedwriter2 = new BufferedWriter(filewriter2);
        filewriter = filewriter2;
        bufferedwriter = bufferedwriter2;
        file = null;
          goto _L4
        Exception exception3;
        exception3;
        Log.e("AgendaController", "Exception while nulling writeAgendaToFile() #2");
        exception3.printStackTrace();
          goto _L5
        IOException ioexception4;
        ioexception4;
_L12:
        try
        {
            Log.e("AgendaController", "Called file nulling writeAgendaToFile() #2");
        }
        catch (Exception exception)
        {
            Log.e("AgendaController", "Exception while nulling writeAgendaToFile() #2");
            exception.printStackTrace();
            return false;
        }
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_348;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_358;
        filewriter.close();
        if (file == null);
        flag = false;
        if (file1 == null) goto _L7; else goto _L6
_L6:
        return false;
        Exception exception1;
        exception1;
_L11:
        Log.e("AgendaController", "Called file nulling writeAgendaToFile() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_408;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_418;
        filewriter.close();
        if (file == null);
        if (file1 == null);
_L9:
        throw exception1;
        Exception exception2;
        exception2;
        Log.e("AgendaController", "Exception while nulling writeAgendaToFile() #2");
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

    public JSONObject createAgendaJson(Context context)
    {
        JSONObject jsonobject = new JSONObject();
        int i;
        JSONArray jsonarray;
        int j;
        JSONObject jsonobject1;
        Calendar calendar;
        long l;
        long l1;
        StringBuilder stringbuilder;
        Date date;
        StringBuilder stringbuilder1;
        Date date1;
        JSONArray jsonarray1;
        JSONObject jsonobject2;
        JSONObject jsonobject3;
        try
        {
            i = getAgendaEventsForDays();
            jsonarray = new JSONArray();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.d("AgendaController", (new StringBuilder()).append("Exception ").append(exception).toString());
            return jsonobject;
        }
        j = 1;
        if (j > i)
            break; /* Loop/switch isn't completed */
        jsonobject1 = new JSONObject();
        jsonobject1.put("RecordId", j);
        calendar = Calendar.getInstance();
        calendar.set(11, 24 * (j - 1));
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        l = calendar.getTimeInMillis();
        l1 = (0x5265c00L + l) - 1000L;
        Log.i("AgendaController", (new StringBuilder()).append("<Agenda events> - (").append(j).append(" of ").append(getAgendaEventsForDays()).append(")").toString());
        stringbuilder = (new StringBuilder()).append("<Agenda events> - startMillis date ");
        date = new Date(l);
        stringbuilder1 = stringbuilder.append(date).append(", endMillis date");
        date1 = new Date(l1);
        Log.i("AgendaController", stringbuilder1.append(date1).toString());
        jsonarray1 = new JSONArray();
        getAgendaRecords(l, l1, true, j, jsonarray1);
        Log.d("AgendaController", (new StringBuilder()).append("<Agenda events><AllDay events> agendaRecords.size ").append(jsonarray1.length()).toString());
        getAgendaRecords(l, l1, false, j, jsonarray1);
        Log.d("AgendaController", (new StringBuilder()).append("<Agenda events><Non-AllDay events> agendaRecords.size ").append(jsonarray1.length()).toString());
        jsonobject2 = new JSONObject();
        jsonobject2.put("Date", l / 1000L);
        jsonobject2.put("AgendaRecords", jsonarray1);
        jsonobject1.put("RecordPayload", jsonobject2);
        jsonarray.put(jsonobject1);
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_26;
_L1:
        jsonobject3 = new JSONObject();
        jsonobject3.put("Name", "Phub.Phone.Agenda");
        jsonobject3.put("Records", jsonarray);
        jsonobject.put("DataStore", jsonobject3);
        Log.i("AgendaController", (new StringBuilder()).append("AgendaDataStore payload ").append(jsonobject.toString()).toString());
        return jsonobject;
    }

    public void getAgendaRecords(long l, long l1, boolean flag, int i, JSONArray jsonarray)
    {
        this;
        JVM INSTR monitorenter ;
        Cursor cursor;
        Cursor cursor1;
        Cursor cursor2;
        cursor = null;
        cursor1 = null;
        cursor2 = null;
        if (android.os.Build.VERSION.SDK_INT < 7) goto _L2; else goto _L1
_L1:
        Uri uri = Uri.parse("content://com.android.calendar/events");
_L27:
        String as[] = {
            "_id", "event_id", "begin", "end", "startDay", "endDay"
        };
        if (!flag) goto _L4; else goto _L3
_L3:
        l += 1000 + offsetFromUTCForAllDayEvent;
        l1 = l + 0x5265430L;
        Log.d("AgendaController", (new StringBuilder()).append("<Agenda events><AllDay events> Starttime ").append(new Date(l)).append(", endtime ").append(new Date(l1)).toString());
_L28:
        int j = android.os.Build.VERSION.SDK_INT;
        cursor2 = null;
        cursor = null;
        cursor1 = null;
        if (j < 7) goto _L6; else goto _L5
_L5:
        Uri uri1 = Uri.parse((new StringBuilder()).append("content://com.android.calendar/instances/when/").append(l).append("/").append(l1).toString());
_L29:
        ContentResolver contentresolver;
        contentresolver = ConnectionFactory.getConnectionFactory().getContext().getContentResolver();
        cursor = contentresolver.query(uri1, as, null, null, "startDay ASC, begin ASC, title ASC");
        cursor2 = null;
        cursor1 = null;
        if (cursor == null) goto _L8; else goto _L7
_L7:
        if (cursor.getCount() <= 0) goto _L8; else goto _L9
_L9:
        if (!cursor.moveToNext()) goto _L11; else goto _L10
_L10:
        String s;
        String as1[];
        String as2[];
        int k = cursor.getColumnIndex("event_id");
        s = cursor.getString(k);
        as1 = (new String[] {
            "title", "eventLocation", "dtstart", "dtend", "_id", "organizer", "selfAttendeeStatus", "eventStatus", "deleted", "calendar_id", 
            "allDay", "rrule", "hasAttendeeData"
        });
        as2 = new String[3];
        as2[0] = s;
        as2[1] = "2";
        Exception exception;
        Exception exception1;
        Exception exception2;
        String s1;
        String s2;
        File file;
        int k1;
        String s3;
        String s4;
        String s5;
        String s6;
        int j3;
        String s7;
        String s8;
        int j4;
        long l4;
        long l5;
        JSONObject jsonobject;
        JSONObject jsonobject1;
        Exception exception3;
        Calendar calendar;
        Calendar calendar1;
        Calendar calendar2;
        boolean flag1;
        int k5;
        Uri uri2;
        String as3[];
        String as4[];
        String s9;
        int k6;
        if (flag)
            s1 = "1";
        else
            s1 = "0";
        as2[2] = s1;
        if (cursor1 == null)
            break MISSING_BLOCK_LABEL_427;
        if (cursor1.isClosed())
            break MISSING_BLOCK_LABEL_427;
        cursor1.close();
        cursor1 = null;
        cursor1 = contentresolver.query(uri, as1, "_id=? AND selfAttendeeStatus!=? AND allDay=?", as2, null);
        if (cursor1 == null) goto _L9; else goto _L12
_L12:
        if (!cursor1.moveToNext()) goto _L9; else goto _L13
_L13:
        int i1 = cursor1.getColumnIndex("calendar_id");
        s2 = cursor1.getString(i1);
        file = new File("/data/data/com.qualcomm.toq/shared_prefs/calendars_pref.xml");
        if (CalendarController.getCalendarController() != null && !CalendarController.getCalendarController().getSelectedCalendarIds().contains(s2) && file.exists()) goto _L9; else goto _L14
_L14:
        int j1 = cursor1.getColumnIndex("deleted");
        k1 = cursor1.getInt(j1);
        int i2 = cursor1.getColumnIndex("eventStatus");
        s3 = cursor1.getString(i2);
        int j2 = cursor1.getColumnIndex("rrule");
        s4 = cursor1.getString(j2);
        int k2 = cursor1.getColumnIndex("title");
        s5 = cursor1.getString(k2);
        int l2 = cursor1.getColumnIndex("selfAttendeeStatus");
        s6 = cursor1.getString(l2);
        int i3 = cursor1.getColumnIndex("allDay");
        j3 = cursor1.getInt(i3);
        int k3 = cursor1.getColumnIndex("eventLocation");
        s7 = cursor1.getString(k3);
        int l3 = cursor1.getColumnIndex("organizer");
        s8 = cursor1.getString(l3);
        int i4 = cursor1.getColumnIndex("hasAttendeeData");
        j4 = cursor1.getInt(i4);
        Log.d("AgendaController", (new StringBuilder()).append("<Agenda events>title: ").append(s5).append("   organizer: ").append(s8).toString());
        if (j4 != 1) goto _L16; else goto _L15
_L15:
        uri2 = android.provider.CalendarContract.Attendees.CONTENT_URI;
        as3 = (new String[] {
            "event_id", "attendeeName", "attendeeRelationship"
        });
        as4 = (new String[] {
            s
        });
        if (cursor2 == null)
            break MISSING_BLOCK_LABEL_837;
        if (cursor2.isClosed())
            break MISSING_BLOCK_LABEL_837;
        cursor2.close();
        cursor2 = null;
        cursor2 = contentresolver.query(uri2, as3, "event_id=?", as4, null);
_L18:
        if (cursor2 == null)
            break MISSING_BLOCK_LABEL_964;
        if (!cursor2.moveToNext())
            break MISSING_BLOCK_LABEL_964;
        int i6 = cursor2.getColumnIndex("attendeeName");
        s9 = cursor2.getString(i6);
        int j6 = cursor2.getColumnIndex("attendeeRelationship");
        k6 = cursor2.getInt(j6);
        if (s9 == null) goto _L18; else goto _L17
_L17:
        if (s9.isEmpty() || k6 != 2) goto _L18; else goto _L19
_L19:
        s8 = s9;
        Log.d("AgendaController", (new StringBuilder()).append("<Agenda events>Attendee Name: ").append(s8).toString());
        if (cursor2 == null)
            break MISSING_BLOCK_LABEL_989;
        if (cursor2.isClosed())
            break MISSING_BLOCK_LABEL_989;
        cursor2.close();
        cursor2 = null;
        if (cursor2 == null) goto _L16; else goto _L20
_L20:
        if (cursor2.isClosed()) goto _L16; else goto _L21
_L21:
        cursor2.close();
        cursor2 = null;
_L16:
        if (k1 == 1) goto _L9; else goto _L22
_L22:
        if (s3 == null) goto _L24; else goto _L23
_L23:
        if (s3.equals("2")) goto _L9; else goto _L24
_L24:
        int k4 = cursor.getColumnIndex("begin");
        l4 = cursor.getLong(k4);
        int i5 = cursor.getColumnIndex("end");
        l5 = cursor.getLong(i5);
        Log.d("AgendaController", (new StringBuilder()).append("<Agenda events>Title ").append(s5).append(" selfAttendeeStatus ").append(s6).append(" eventStatus ").append(s3).append(" deleted ").append(k1).append(" calendar_id ").append(s2).append(" allDay ").append(j3).append(" start time").append(l4).append(" end time ").append(l5).append(" rrule ").append(s4).toString());
        jsonobject = new JSONObject();
        int j5 = cursor1.getColumnIndex("_id");
        jsonobject.put("ItemId", Integer.parseInt(cursor1.getString(j5)));
        jsonobject1 = new JSONObject();
        jsonobject1.put("Title", s5);
        jsonobject1.put("Location", s7);
        calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l4);
        calendar1 = Calendar.getInstance();
        calendar1.setTimeInMillis(l5);
        calendar2 = Calendar.getInstance();
        calendar2.set(11, 24 * (i - 1));
        calendar2.set(12, 0);
        calendar2.set(14, 0);
        if (!isSameDay(calendar, calendar2))
            l4 = l;
        Exception exception4;
        Exception exception5;
        if (!isSameDay(calendar1, calendar2))
            if (flag)
                l5 = l1;
            else
                l5 = l1 + 60000L;
        cursor1.close();
        cursor1 = null;
        if (l5 - l4 >= 60000L) goto _L26; else goto _L25
_L25:
        k5 = l5 - l4 != 0L;
        cursor1 = null;
        if (k5 > 0) goto _L9; else goto _L26
_L26:
        Log.d("AgendaController", (new StringBuilder()).append("Day StartTime = ").append(l).toString());
        Log.d("AgendaController", (new StringBuilder()).append("Event StartTime = ").append(l4).toString());
        Log.d("AgendaController", (new StringBuilder()).append("Day EndTime = ").append(l1).toString());
        Log.d("AgendaController", (new StringBuilder()).append("Event EndTime = ").append(l5).toString());
        jsonobject1.put("StartTime", l4 / 1000L);
        jsonobject1.put("EndTime", l5 / 1000L);
        jsonobject1.put("Organizer", s8);
        if (j3 == 0)
            flag1 = false;
        else
            flag1 = true;
        jsonobject1.put("AllDay", flag1);
        jsonobject.put("AgendaDetails", jsonobject1);
        jsonarray.put(jsonobject);
        cursor1 = null;
          goto _L9
        exception3;
        exception3.printStackTrace();
        Log.d("AgendaController", (new StringBuilder()).append("Exception ").append(exception3).toString());
          goto _L9
        exception2;
        exception2.printStackTrace();
        Log.e("AgendaController", (new StringBuilder()).append("Exception in getAgendaRecords: ").append(exception2.toString()).toString());
        if (cursor2 == null)
            break MISSING_BLOCK_LABEL_1679;
        if (!cursor2.isClosed())
            cursor2.close();
        if (cursor1 == null)
            break MISSING_BLOCK_LABEL_1701;
        if (!cursor1.isClosed())
            cursor1.close();
        if (cursor == null)
            break MISSING_BLOCK_LABEL_1723;
        if (!cursor.isClosed())
            cursor.close();
_L35:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        uri = Uri.parse("content://calendar/events");
          goto _L27
_L4:
        Log.d("AgendaController", (new StringBuilder()).append("<Agenda events><Non-AllDay events> Starttime ").append(new Date(l)).append(", endtime ").append(new Date(l1)).toString());
          goto _L28
        exception;
        if (cursor2 == null)
            break MISSING_BLOCK_LABEL_1813;
        if (!cursor2.isClosed())
            cursor2.close();
        if (cursor1 == null)
            break MISSING_BLOCK_LABEL_1835;
        if (!cursor1.isClosed())
            cursor1.close();
        if (cursor == null)
            break MISSING_BLOCK_LABEL_1857;
        if (!cursor.isClosed())
            cursor.close();
        throw exception;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
_L6:
        uri1 = Uri.parse((new StringBuilder()).append("content://calendar/instances/when/").append(l).append("/").append(l1).toString());
          goto _L29
        exception5;
        Log.logException("AgendaController", exception5, "Exception in Attendee cursor ");
        if (cursor2 == null) goto _L16; else goto _L30
_L30:
        if (cursor2.isClosed()) goto _L16; else goto _L31
_L31:
        cursor2.close();
        cursor2 = null;
          goto _L16
        exception4;
        if (cursor2 == null)
            break MISSING_BLOCK_LABEL_1979;
        if (cursor2.isClosed())
            break MISSING_BLOCK_LABEL_1979;
        cursor2.close();
        cursor2 = null;
        throw exception4;
_L8:
        Log.i("AgendaController", "Cursor count is zero");
_L11:
        if (cursor2 == null)
            break MISSING_BLOCK_LABEL_2012;
        if (!cursor2.isClosed())
            cursor2.close();
        if (cursor1 == null) goto _L33; else goto _L32
_L32:
        if (!cursor1.isClosed())
            cursor1.close();
_L33:
        if (cursor == null) goto _L35; else goto _L34
_L34:
        if (cursor.isClosed()) goto _L35; else goto _L36
_L36:
        cursor.close();
          goto _L35
    }

    public long getSequence()
    {
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            long l = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("stores_pref", 0).getLong(AGENDA_SEQUENCE, 0L);
            Log.d("AgendaController", (new StringBuilder()).append("GET sequence:  ").append(l).toString());
            return l;
        } else
        {
            return -1L;
        }
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
    }

    public boolean isSameDay(Calendar calendar, Calendar calendar1)
    {
        return calendar == null || calendar1 == null || calendar.get(0) == calendar1.get(0) && calendar.get(1) == calendar1.get(1) && calendar.get(6) == calendar1.get(6);
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(i) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void sendSynchStoreIndication()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("store", "Phub.Phone.Agenda");
            jsonobject.put("sequence", getSequence());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("AgendaController", "Sending SyncStoreUpdatedInd to WD for Agenda");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 9, 10, jsonobject, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
                Log.d("AgendaController", "SyncStoreUpdatedInd sent to WD for Agenda");
                Log.d("AgendaController", jsonobject.toString());
            }
            return;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
    }

    public void setSequence(long l)
    {
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("stores_pref", 0).edit();
            editor.putLong(AGENDA_SEQUENCE, l);
            Log.d("AgendaController", (new StringBuilder()).append("Set sequence:  ").append(l).toString());
            editor.commit();
        }
    }

    public void storeAgendaToFile(Context context)
    {
        JSONObject jsonobject;
        File file1;
        boolean flag;
        jsonobject = createAgendaJson(context);
        Log.d("AgendaController", (new StringBuilder()).append("storeAgendaToFile() called: \n").append(jsonobject.toString()).toString());
        File file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        file1 = new File((new StringBuilder()).append(file).append("/").append("Phub.Phone.Agenda").append("_").append(getSequence()).append(".jsn").toString());
        if (!file.exists())
            break MISSING_BLOCK_LABEL_308;
        flag = file1.exists();
        if (!flag)
            break MISSING_BLOCK_LABEL_308;
        long l1;
        long l2;
        createTempStoreFile(jsonobject.toString());
        l1 = Utils.getCheckSum((new StringBuilder()).append("Phub.Phone.Agenda_").append(getSequence()).append(".jsn").toString());
        l2 = Utils.getCheckSum("Phub.Phone.Agenda_Temp.jsn");
        Log.d("AgendaController", (new StringBuilder()).append("currentChecksum = ").append(l1).append(" tempChecksum = ").append(l2).toString());
        if (l1 == l2)
        {
            try
            {
                Log.d("AgendaController", " Agenda Data did not change");
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
            break MISSING_BLOCK_LABEL_307;
        }
        Log.d("AgendaController", " Agenda Data is been changed.Update the sequence.Write the new file to SD card");
        if (writeAgendaToFile(jsonobject.toString(), l2))
        {
            if (getSequence() != 0L)
                Utils.deleteOldStoreFile(file1.getAbsolutePath());
            setSequence(l2);
            sendSynchStoreIndication();
            return;
        }
        break MISSING_BLOCK_LABEL_401;
        return;
        Log.d("AgendaController", "File not Found. ");
        createTempStoreFile(jsonobject.toString());
        long l = Utils.getCheckSum("Phub.Phone.Agenda_Temp.jsn");
        if (writeAgendaToFile(jsonobject.toString(), l))
        {
            if (getSequence() != 0L && getSequence() != l)
                Utils.deleteOldStoreFile(file1.getAbsolutePath());
            setSequence(l);
            if (bSyncUpdateStoreReqFailed)
            {
                Log.d("AgendaController", " Sending Agenda Update Indication as Agenda Synch Store Request Failed");
                bSyncUpdateStoreReqFailed = false;
                sendSynchStoreIndication();
            }
        }
    }

    public void storeUpdateAgendaToFile(Context context)
    {
        JSONObject jsonobject;
        boolean flag;
        jsonobject = createAgendaJson(context);
        Log.d("AgendaController", (new StringBuilder()).append("storeUpdateAgendaToFile() called: \n").append(jsonobject.toString()).toString());
        File file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        File file1 = new File((new StringBuilder()).append(file).append("/").append("Phub.Phone.Agenda").append("_").append(getSequence()).append(".jsn").toString());
        if (!file.exists())
            break MISSING_BLOCK_LABEL_387;
        flag = file1.exists();
        if (!flag)
            break MISSING_BLOCK_LABEL_387;
        long l;
        long l1;
        createTempStoreFile(jsonobject.toString());
        l = Utils.getCheckSum((new StringBuilder()).append("Phub.Phone.Agenda_").append(getSequence()).append(".jsn").toString());
        l1 = Utils.getCheckSum("Phub.Phone.Agenda_Temp.jsn");
        Log.d("AgendaController", (new StringBuilder()).append("currentChecksum = ").append(l).append(" tempChecksum = ").append(l1).toString());
        if (l == l1)
        {
            try
            {
                Log.d("AgendaController", " Agenda Data did not change. No Need to send SyncStoreUpdatedInd");
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
            break MISSING_BLOCK_LABEL_387;
        }
        Log.d("AgendaController", " Agenda Data did change. Need to send SyncStoreUpdatedInd");
        if (writeAgendaToFile(jsonobject.toString(), l1))
        {
            if (getSequence() != 0L)
                Utils.deleteOldStoreFile((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").append("/").append("Phub.Phone.Agenda").append("_").append(getSequence()).append(".jsn").toString());
            setSequence(l1);
            Log.d("AgendaController", (new StringBuilder()).append("getSequence() = ").append(getSequence()).toString());
            sendSynchStoreIndication();
            return;
        }
    }

}
