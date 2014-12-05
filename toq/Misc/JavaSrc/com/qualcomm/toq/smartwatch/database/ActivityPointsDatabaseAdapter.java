// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.database;

import android.content.*;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.activitytracker.*;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.util.*;

public class ActivityPointsDatabaseAdapter
{
    private static class DatabaseHelper extends SQLiteOpenHelper
    {

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("inside DatabaseHelper:onCreate").append(sqlitedatabase.getPath()).toString());
            sqlitedatabase.execSQL("create table pointsTable (_id integer primary key autoincrement, epoc_time long unique, points integer);");
        }

        public void onOpen(SQLiteDatabase sqlitedatabase)
        {
            Log.d("ActivityPointsDatabaseAdapter", "DB: inside SQLiteOpenHelper:onOpen");
            super.onOpen(sqlitedatabase);
        }

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            Log.w("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Upgrading database from version ").append(i).append(" to ").append(j).append(", which will destroy all old data").toString());
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS pointsTable");
            onCreate(sqlitedatabase);
        }

        public DatabaseHelper(Context context1)
        {
            super(context1, "activityDb", null, 1);
        }
    }


    private static final String DATABASE_CREATE = "create table pointsTable (_id integer primary key autoincrement, epoc_time long unique, points integer);";
    private static final String DATABASE_NAME = "activityDb";
    private static final String DATABASE_TABLE = "pointsTable";
    private static final int DATABASE_VERSION = 1;
    private static final int HOURS_IN_DAY = 24;
    public static final String KEY_EPOC_TIME = "epoc_time";
    public static final String KEY_POINTS = "points";
    public static final String KEY_ROWID = "_id";
    private static final long MAX_TIME_GAP = 10800L;
    private static final long ONE_DAY_IN_MILLISEC = 0x5265c00L;
    private static final long ONE_HOUR_IN_SEC = 3600L;
    private static final String TAG = "ActivityPointsDatabaseAdapter";
    private static ActivityPointsDatabaseAdapter mInstance;
    private DatabaseHelper DBHelper;
    private final String PROJECTION[] = {
        "_id", "epoc_time", "points"
    };
    private final Context context;
    private SQLiteDatabase db;
    private SharedPreferences prefs;

    private ActivityPointsDatabaseAdapter(Context context1)
    {
        prefs = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        context = context1;
        DBHelper = new DatabaseHelper(context);
    }

    private ArrayList fetchActivityData(long l, long l1)
    {
        ArrayList arraylist;
        Cursor cursor;
        arraylist = new ArrayList();
        cursor = null;
        String as[] = {
            Long.toString(l), Long.toString(l1)
        };
        if (db == null || !db.isOpen()) goto _L2; else goto _L1
_L1:
        cursor = db.query("pointsTable", PROJECTION, "epoc_time BETWEEN ? AND ?", as, null, null, "epoc_time ASC");
_L7:
        if (cursor == null) goto _L4; else goto _L3
_L3:
        if (!cursor.moveToNext()) goto _L4; else goto _L5
_L5:
        long l2 = cursor.getLong(cursor.getColumnIndex("epoc_time"));
        int i = cursor.getInt(cursor.getColumnIndex("points"));
        ActivityPoints activitypoints = new ActivityPoints();
        activitypoints.setEpochTime(l2);
        activitypoints.setPoints(i);
        arraylist.add(activitypoints);
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception;
        exception;
        Log.e("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Exception in fetchActivityData ").append(exception).toString());
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        exception.printStackTrace();
_L9:
        return arraylist;
_L4:
        if (cursor == null) goto _L9; else goto _L8
_L8:
        if (cursor.isClosed()) goto _L9; else goto _L10
_L10:
        cursor.close();
        return arraylist;
_L2:
        if (db != null)
            continue; /* Loop/switch isn't completed */
        Log.e("ActivityPointsDatabaseAdapter", "fetchData(): db is null");
        return arraylist;
        if (db.isOpen()) goto _L9; else goto _L11
_L11:
        Log.e("ActivityPointsDatabaseAdapter", "fetchData(): db is not open");
        return arraylist;
    }

    public static ActivityPointsDatabaseAdapter getActivityPointsDatabaseAdapter(Context context1)
    {
        if (mInstance == null)
            mInstance = new ActivityPointsDatabaseAdapter(context1);
        return mInstance;
    }

    private ArrayList getData(long l, long l1, int i)
    {
        long l2;
        ArrayList arraylist;
        int k1;
        long l5;
        int j2;
        int k2;
        l2 = l - l1 * (long)i;
        arraylist = new ArrayList();
        ArrayList arraylist2;
        int j1;
        long l6;
        long l7;
        int i2;
        ActivityPoints activitypoints4;
        try
        {
            ArrayList arraylist1 = fetchActivityData(l2, l);
            ActivityPoints activitypoints = new ActivityPoints();
            ActivityPoints activitypoints1 = getMinPoints(l2);
            int k = activitypoints1.getPoints();
            long l3 = activitypoints1.getEpochTime();
            activitypoints.setPoints(k);
            activitypoints.setEpochTime(l3);
            Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("LeftGuard=").append(k).append(" : ").append(l3).toString());
            ActivityPoints activitypoints2 = new ActivityPoints();
            ActivityPoints activitypoints3 = getMaxPoints(l);
            int i1 = activitypoints3.getPoints();
            long l4 = activitypoints3.getEpochTime();
            activitypoints2.setPoints(i1);
            activitypoints2.setEpochTime(l4);
            Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("RightGuard=").append(i1).append(" : ").append(l4).toString());
            arraylist2 = new ArrayList();
            arraylist2.add(activitypoints);
            arraylist2.addAll(1, arraylist1);
            arraylist2.add(activitypoints2);
        }
        catch (Exception exception)
        {
            Log.e("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Exception in getData : ").append(exception).toString());
            exception.printStackTrace();
            break MISSING_BLOCK_LABEL_455;
        }
        j1 = 0;
        k1 = 0;
          goto _L1
_L7:
        for (; ((ActivityPoints)arraylist2.get(j1 + 1)).getEpochTime() <= l5; j1++);
        if (((ActivityPoints)arraylist2.get(j1)).getEpochTime() == l5)
        {
            arraylist.add(arraylist2.get(j1));
            break MISSING_BLOCK_LABEL_603;
        }
        l6 = ((ActivityPoints)arraylist2.get(j1)).getEpochTime();
        l7 = ((ActivityPoints)arraylist2.get(j1 + 1)).getEpochTime();
        i2 = ((ActivityPoints)arraylist2.get(j1)).getPoints();
        j2 = ((ActivityPoints)arraylist2.get(j1 + 1)).getPoints();
        if (l7 - l6 == 0L) goto _L3; else goto _L2
_L2:
        k2 = i2 + (int)(((long)(j2 - i2) * (l5 - l6)) / (l7 - l6));
_L4:
        activitypoints4 = new ActivityPoints();
        activitypoints4.setEpochTime(l5);
        activitypoints4.setPoints(k2);
        arraylist.add(activitypoints4);
        break MISSING_BLOCK_LABEL_603;
_L3:
        k2 = j2;
          goto _L4
_L6:
        Log.e("NormalizedData", "=================Normalized list From DB======================");
        for (int j = 0; j < arraylist.size(); j++)
        {
            Log.e("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Epoc Time ").append(j).append("=").append(((ActivityPoints)arraylist.get(j)).getEpochTime()).toString());
            Log.e("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Points ").append(j).append("=").append(((ActivityPoints)arraylist.get(j)).getPoints()).toString());
        }

        return arraylist;
_L1:
        if (k1 > i) goto _L6; else goto _L5
_L5:
        l5 = l2 + l1 * (long)k1;
          goto _L7
        k1++;
          goto _L1
    }

    public void InitiatePhubDatabaseHelper()
    {
        DBHelper = new DatabaseHelper(context);
    }

    public void close()
    {
        if (DBHelper == null)
        {
            Log.e("ActivityPointsDatabaseAdapter", "close(): DBHelper is null");
            InitiatePhubDatabaseHelper();
        }
        DBHelper.close();
    }

    public boolean deleteEpocTimeEntry(long l)
    {
        return db.delete("pointsTable", (new StringBuilder()).append("epoc_time=").append(l).toString(), null) > 0;
    }

    public int deleteOldDBEntries(int i)
    {
        int k;
        int j = i - 1;
        k = 0;
        if (j <= 0)
            break MISSING_BLOCK_LABEL_162;
        long l;
        SQLiteDatabase sqlitedatabase;
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.add(5, -(i - 1));
        l = calendar.getTimeInMillis() / 1000L;
        Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("delete Start time").append(calendar.getTimeInMillis()).toString());
        sqlitedatabase = db;
        k = 0;
        if (sqlitedatabase == null)
            break MISSING_BLOCK_LABEL_162;
        boolean flag = db.isOpen();
        k = 0;
        if (!flag)
            break MISSING_BLOCK_LABEL_162;
        int i1 = db.delete("pointsTable", (new StringBuilder()).append("epoc_time<").append(l).toString(), null);
        k = i1;
_L2:
        Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("deleteOldDBEntries deleted rows=").append(k).toString());
        return k;
        Exception exception;
        exception;
        Log.e("ActivityPointsDatabaseAdapter", "Exception in deleteOldDBEntries");
        exception.printStackTrace();
        k = 0;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void dropDB()
    {
        context.deleteDatabase("activityDb");
    }

    public Day fetchDayData(long l)
    {
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("fetch Day Data called with end time=").append(l).append(" : ").append(new Date(1000L * l)).toString());
        Day day = new Day();
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = getData(l, 3600L, 24);
        Calendar calendar = Calendar.getInstance();
        for (int i = 0; i < -1 + arraylist1.size(); i++)
        {
            Hour hour = new Hour();
            calendar.setTimeInMillis(1000L * ((ActivityPoints)arraylist1.get(i)).getEpochTime());
            int j = calendar.get(11);
            int k = calendar.get(12);
            hour.setCurrentHour((new StringBuilder()).append(j).append(":").append(k).toString());
            int i1 = ((ActivityPoints)arraylist1.get(i + 1)).getPoints() - ((ActivityPoints)arraylist1.get(i)).getPoints();
            if (i1 < 0)
                i1 = 0;
            hour.setPoints(i1);
            hour.setEpocTime(((ActivityPoints)arraylist1.get(i)).getEpochTime());
            arraylist.add(hour);
        }

        day.setHourDataList(arraylist);
        return day;
    }

    public Month fetchMonthData()
    {
        Log.d("ActivityPointsDatabaseAdapter", "Inside fetchMonthData");
        Calendar calendar = Calendar.getInstance();
        Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("CurrentDay").append(calendar.getTimeInMillis()).toString());
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("CurrentDay Start").append(calendar.getTimeInMillis()).toString());
        long l = (0x5265c00L + calendar.getTimeInMillis()) / 1000L;
        StringBuilder stringbuilder = (new StringBuilder()).append("Month End Date").append(l).append(" ");
        Date date = new Date(l);
        Log.i("ActivityPointsDatabaseAdapter", stringbuilder.append(date).toString());
        calendar.add(5, -29);
        long l1 = calendar.getTimeInMillis() / 1000L;
        StringBuilder stringbuilder1 = (new StringBuilder()).append("Month Start Date").append(l1).append(" ");
        Date date1 = new Date(l1);
        Log.i("ActivityPointsDatabaseAdapter", stringbuilder1.append(date1).toString());
        long l2 = calendar.getTimeInMillis() / 1000L;
        Month month = new Month();
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
label0:
            {
                if (l2 < l)
                {
                    if (i != 29)
                        break label0;
                    new Week();
                    long l4 = (0x5265c00L + calendar.getTimeInMillis()) / 1000L;
                    arraylist.add(fetchWeekData(l2, l4));
                }
                for (; arraylist.size() != 4; arraylist.remove(0));
                month.setWeekDataList(arraylist);
                int j = 1;
                for (Iterator iterator = month.getWeekDataList().iterator(); iterator.hasNext();)
                {
                    Week week = (Week)iterator.next();
                    Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("-----Week Data ----").append(j).toString());
                    int k = 1;
                    for (Iterator iterator1 = week.getDayDataList().iterator(); iterator1.hasNext();)
                    {
                        Day day = (Day)iterator1.next();
                        Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("-----Day  Data ----").append(k).toString());
                        Log.i("ActivityPointsDatabaseAdapter", day.toString());
                        k++;
                    }

                    j++;
                }

                return month;
            }
            if (calendar.get(7) == 7)
            {
                Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Splitting at").append(calendar.getTimeInMillis()).toString());
                Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Week Start Time").append(l2).toString());
                long l3 = (0x5265c00L + calendar.getTimeInMillis()) / 1000L;
                new Week();
                arraylist.add(fetchWeekData(l2, l3));
                l2 = l3;
            }
            calendar.add(5, 1);
            i++;
        } while (true);
    }

    public Week fetchWeekData(long l, long l1)
    {
        Week week = new Week();
        long l2 = l;
        long l3 = l2 + 0x15180L;
        ArrayList arraylist = new ArrayList();
        while (l2 < l1) 
        {
            arraylist.add(fetchDayData(l3));
            l2 = l3;
            l3 = l2 + 0x15180L;
        }
        week.setDayDataList(arraylist);
        return week;
    }

    public int getActivityPointAt(long l)
    {
        String as[] = {
            Long.toString(l)
        };
        if (db != null && db.isOpen())
        {
            Cursor cursor = db.query("pointsTable", PROJECTION, "epoc_time = ? ", as, null, null, null);
            int i = 0;
            if (cursor != null)
            {
                cursor.moveToFirst();
                if (cursor.getCount() == 0)
                {
                    Log.i("ActivityPointsDatabaseAdapter", "getActivityPointAt--Cannot fetch the given epochTime from the Db.Interpolating the data");
                    cursor.close();
                    cursor = null;
                    ActivityPoints activitypoints = getMinPoints(l);
                    int j = activitypoints.getPoints();
                    long l1 = activitypoints.getEpochTime();
                    ActivityPoints activitypoints1 = getMaxPoints(l);
                    int k = activitypoints1.getPoints();
                    long l2 = activitypoints1.getEpochTime();
                    if (l2 - l1 != 0L)
                        i = j + (int)(((long)(k - j) * (l - l1)) / (l2 - l1));
                    else
                        i = k;
                    Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Points Retrieved After Interpolating").append(i).toString());
                } else
                {
                    i = cursor.getInt(cursor.getColumnIndex("points"));
                    Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Points Retrieved without Interpolating").append(i).toString());
                }
                if (cursor != null && !cursor.isClosed())
                    cursor.close();
            }
            return i;
        }
        if (db == null)
            Log.e("ActivityPointsDatabaseAdapter", "fetchData(): db is null");
        else
        if (!db.isOpen())
            Log.e("ActivityPointsDatabaseAdapter", "fetchData(): db is not open");
        return 0;
    }

    public Cursor getAllAppData()
    {
        return db.query("pointsTable", PROJECTION, null, null, null, null, null);
    }

    public int getCurrentDayProgress(int i)
    {
        int j = getActivityPointAt(AndroidUtils.getAndroidUtils().getCurrentDayStartTimeInSec());
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Current Day Start Points =").append(j).toString());
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Current Day Counter Points =").append(i).toString());
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Progress =").append(i - j).toString());
        int k = i - j;
        Log.printUsageLog("ProgressGraphChartBuilder", (new StringBuilder()).append("CurrentCount from WD(with offset) stored in preference is ").append(i).append(" , and the current day start points is ").append(j).append(". Final progress calculated =").append(k).toString());
        return k;
    }

    public ActivityPoints getMaxPoints(long l)
    {
        ActivityPoints activitypoints;
        int i;
        long l1;
        String as[];
        String as1[];
        Cursor cursor;
        Log.e("ActivityPointsDatabaseAdapter", (new StringBuilder()).append(" inside getMaxPoints : endTime= ").append(l).toString());
        String s = Long.toString(l);
        activitypoints = new ActivityPoints();
        i = 0;
        l1 = l + 1L;
        as = (new String[] {
            s
        });
        as1 = (new String[] {
            "epoc_time", "points"
        });
        cursor = null;
        if (db == null || !db.isOpen()) goto _L2; else goto _L1
_L1:
        cursor = db.query("pointsTable", as1, "epoc_time > ? ", as, null, null, "epoc_time ASC");
        i = 0;
        if (cursor == null) goto _L4; else goto _L3
_L3:
        int j = cursor.getCount();
        i = 0;
        if (j == 0) goto _L4; else goto _L5
_L5:
        cursor.moveToFirst();
        int k = cursor.getColumnIndex("points");
        i = cursor.getInt(k);
        int i1 = cursor.getColumnIndex("epoc_time");
        l1 = cursor.getLong(i1);
        Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("There is data after the given endTime.Points :").append(i).append(" Epoch :").append(l1).toString());
_L7:
        if (cursor == null)
            break MISSING_BLOCK_LABEL_244;
        cursor.close();
        cursor = null;
_L10:
        if (cursor != null && !cursor.isClosed())
            cursor.close();
_L9:
        activitypoints.setEpochTime(l1);
        activitypoints.setPoints(i);
        return activitypoints;
_L4:
        Log.i("ActivityPointsDatabaseAdapter", "There is no epoc time greater than the provided end time.Fetching data less than or equal to end time");
        i = 0;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_326;
        boolean flag1 = cursor.isClosed();
        i = 0;
        if (flag1)
            break MISSING_BLOCK_LABEL_326;
        cursor.close();
        cursor = null;
        cursor = db.query("pointsTable", as1, "epoc_time <= ? ", as, null, null, "epoc_time DESC");
        i = 0;
        if (cursor == null) goto _L7; else goto _L6
_L6:
        int j1 = cursor.getCount();
        i = 0;
        if (j1 == 0) goto _L7; else goto _L8
_L8:
        cursor.moveToFirst();
        int k1 = cursor.getColumnIndex("points");
        i = cursor.getInt(k1);
        Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Data Retrieved :").append(i).append(" Epoch :").append(l1).toString());
          goto _L7
        Exception exception1;
        exception1;
        Log.e("ActivityPointsDatabaseAdapter", "Exception in getMaxPoints");
        exception1.printStackTrace();
        if (cursor != null && !cursor.isClosed())
            cursor.close();
          goto _L9
_L2:
        if (db != null)
            break MISSING_BLOCK_LABEL_534;
        Log.e("ActivityPointsDatabaseAdapter", "fetchData(): db is null");
        cursor = null;
        i = 0;
          goto _L10
        Exception exception;
        exception;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception;
        boolean flag = db.isOpen();
        cursor = null;
        i = 0;
        if (flag) goto _L10; else goto _L11
_L11:
        Log.e("ActivityPointsDatabaseAdapter", "fetchData(): db is not open");
        cursor = null;
        i = 0;
          goto _L10
    }

    public ActivityPoints getMinPoints(long l)
    {
        ActivityPoints activitypoints;
        long l1;
        String as[];
        String as1[];
        Cursor cursor;
        Log.e("ActivityPointsDatabaseAdapter", (new StringBuilder()).append(" inside getMinPoints : startTime= ").append(l).toString());
        String s = Long.toString(l);
        activitypoints = new ActivityPoints();
        l1 = 0L;
        as = (new String[] {
            s
        });
        as1 = (new String[] {
            "epoc_time", "points"
        });
        cursor = null;
        if (db == null || !db.isOpen()) goto _L2; else goto _L1
_L1:
        cursor = db.query("pointsTable", as1, "epoc_time < ? ", as, null, null, "epoc_time DESC");
        if (cursor == null) goto _L4; else goto _L3
_L3:
        if (cursor.getCount() == 0) goto _L4; else goto _L5
_L5:
        int i;
        cursor.moveToFirst();
        int i1 = cursor.getColumnIndex("points");
        i = cursor.getInt(i1);
        int j1 = cursor.getColumnIndex("epoc_time");
        l1 = cursor.getLong(j1);
        Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("There is data before the given startTime.Points :").append(i).append(" Epoch :").append(l1).toString());
_L7:
        if (cursor == null)
            break MISSING_BLOCK_LABEL_240;
        if (cursor.isClosed())
            break MISSING_BLOCK_LABEL_240;
        cursor.close();
        cursor = null;
        activitypoints.setEpochTime(l1);
        activitypoints.setPoints(i);
_L11:
        if (cursor != null && !cursor.isClosed())
            cursor.close();
_L10:
        return activitypoints;
_L4:
        Log.i("ActivityPointsDatabaseAdapter", "There is no epoc time less than the provided start time.Fetching data greater than or equal to start time");
        if (cursor == null)
            break MISSING_BLOCK_LABEL_312;
        if (cursor.isClosed())
            break MISSING_BLOCK_LABEL_312;
        cursor.close();
        cursor = null;
        cursor = db.query("pointsTable", as1, "epoc_time >= ? ", as, null, null, "epoc_time ASC");
        i = 0;
        if (cursor == null) goto _L7; else goto _L6
_L6:
        int j = cursor.getCount();
        i = 0;
        if (j == 0) goto _L7; else goto _L8
_L8:
        cursor.moveToFirst();
        int k = cursor.getColumnIndex("points");
        i = cursor.getInt(k);
        l1 = 0L;
        Log.i("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Data Retrieved :").append(i).append(" Epoch :").append(l1).toString());
          goto _L7
        Exception exception1;
        exception1;
        Log.e("ActivityPointsDatabaseAdapter", "Exception in getMinPoints");
        exception1.printStackTrace();
        if (cursor == null || cursor.isClosed()) goto _L10; else goto _L9
_L9:
        cursor.close();
        return activitypoints;
_L2:
        if (db != null)
            break MISSING_BLOCK_LABEL_519;
        Log.e("ActivityPointsDatabaseAdapter", "fetchData(): db is null");
        cursor = null;
          goto _L11
        Exception exception;
        exception;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception;
        boolean flag = db.isOpen();
        cursor = null;
        if (flag) goto _L11; else goto _L12
_L12:
        Log.e("ActivityPointsDatabaseAdapter", "fetchData(): db is not open");
        cursor = null;
          goto _L11
    }

    public void insertActivitydata(long l, int i)
    {
        long l1;
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("epochTime Received = ").append(l).toString());
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("activityPoints Received = ").append(i).toString());
        l1 = 0L;
        SharedPreferences sharedpreferences = prefs;
        int j;
        int k;
        j = 0;
        k = 0;
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_115;
        j = prefs.getInt("activity_last_received_points", 0);
        l1 = prefs.getLong("activity_last_epoc_time", 0L);
        k = prefs.getInt("activity_monitoring_offset_points", 0);
        long l2;
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("lastReceivedEpochTime = ").append(l1).toString());
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("activityPoints Offset = ").append(k).toString());
        l2 = AndroidUtils.getAndroidUtils().getCurrentDayEndTimeInSec();
        Log.e("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Current Day End Time=").append(l2).toString());
        if (l > l1 && l <= l2)
            break MISSING_BLOCK_LABEL_248;
        if (l > l2)
        {
            try
            {
                Log.e("ActivityPointsDatabaseAdapter", "epochtime is greater than current day end time");
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            break MISSING_BLOCK_LABEL_247;
        }
        Log.e("ActivityPointsDatabaseAdapter", "epochtime is either less or same as the lastReceivedEpochTime");
        return;
        return;
        if (i >= j && (l1 == 0L || l - l1 <= 10800L))
            break MISSING_BLOCK_LABEL_365;
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("activityPoints less than previous/ 3 hour gap= ").append(k).toString());
        k += j - i;
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Updated Offset = ").append(k).toString());
        if (i >= j)
            break MISSING_BLOCK_LABEL_493;
        Log.printUsageLog("ActivityPointsDatabaseAdapter", (new StringBuilder()).append(" WD Reset occurred.Activitypoints less than previous value: updated offset = ").append(k).toString());
_L2:
        Log.d("ActivityPointsDatabaseAdapter", "=======Inserted Data ======== ");
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("epochTime Inserted = ").append(l).toString());
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("activityPoints Inserted = ").append(k + i).toString());
        insertData(l, k + i);
        android.content.SharedPreferences.Editor editor = prefs.edit();
        editor.putLong("activity_last_epoc_time", l);
        editor.putInt("activity_last_received_points", i);
        editor.putInt("activity_monitoring_offset_points", k);
        editor.commit();
        return;
        Log.printUsageLog("ActivityPointsDatabaseAdapter", (new StringBuilder()).append(" There is a 3 hour gap between the current and last received time : updated offset = ").append(k).toString());
        if (true) goto _L2; else goto _L1
_L1:
    }

    public long insertData(long l, int i)
    {
        if (!isDBOpen())
            open();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("epoc_time", Long.valueOf(l));
        contentvalues.put("points", Integer.valueOf(i));
        return db.insert("pointsTable", null, contentvalues);
    }

    public boolean isAnyDataAfterCurrentDatePresent(boolean flag)
    {
        boolean flag1;
        Cursor cursor;
        flag1 = false;
        long l;
        String as[];
        SQLiteDatabase sqlitedatabase;
        boolean flag2;
        int i;
        if (flag)
            l = AndroidUtils.getAndroidUtils().getCurrentDayStartTimeInSec();
        else
            l = AndroidUtils.getAndroidUtils().getCurrentDayEndTimeInSec();
        as = (new String[] {
            Long.toString(l)
        });
        cursor = null;
        sqlitedatabase = db;
        flag1 = false;
        cursor = null;
        if (sqlitedatabase == null)
            break MISSING_BLOCK_LABEL_130;
        flag2 = db.isOpen();
        flag1 = false;
        cursor = null;
        if (!flag2)
            break MISSING_BLOCK_LABEL_130;
        cursor = db.query("pointsTable", PROJECTION, "epoc_time >= ?", as, null, null, null);
        flag1 = false;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_130;
        i = cursor.getCount();
        flag1 = false;
        if (i == 0)
            break MISSING_BLOCK_LABEL_130;
        Log.e("ActivityPointsDatabaseAdapter", "Future data present");
        flag1 = true;
        cursor.close();
        cursor = null;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
_L2:
        return flag1;
        Exception exception1;
        exception1;
        Log.e("ActivityPointsDatabaseAdapter", "Exception in isAnyDataAfterCurrentDatePresent");
        exception1.printStackTrace();
        if (cursor == null || cursor.isClosed()) goto _L2; else goto _L1
_L1:
        cursor.close();
        return flag1;
        Exception exception;
        exception;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception;
    }

    public boolean isAnyDataBeforeCurrentDatePresent()
    {
        boolean flag;
        String as[];
        Cursor cursor;
        flag = false;
        as = (new String[] {
            Long.toString(AndroidUtils.getAndroidUtils().getCurrentDayStartTimeInSec())
        });
        cursor = null;
        SQLiteDatabase sqlitedatabase = db;
        flag = false;
        cursor = null;
        if (sqlitedatabase == null)
            break MISSING_BLOCK_LABEL_106;
        boolean flag1 = db.isOpen();
        flag = false;
        cursor = null;
        if (!flag1)
            break MISSING_BLOCK_LABEL_106;
        cursor = db.query("pointsTable", PROJECTION, "epoc_time <= ?", as, null, null, null);
        flag = false;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_106;
        int i = cursor.getCount();
        flag = false;
        if (i == 0)
            break MISSING_BLOCK_LABEL_106;
        flag = true;
        cursor.close();
        cursor = null;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
_L2:
        return flag;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        Log.e("ActivityPointsDatabaseAdapter", "Exception in isAnyDataBeforeCurrentDatePresent");
        if (cursor == null || cursor.isClosed()) goto _L2; else goto _L1
_L1:
        cursor.close();
        return flag;
        Exception exception;
        exception;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception;
    }

    public boolean isDBEmpty()
    {
        boolean flag;
        Cursor cursor;
        flag = true;
        cursor = null;
        SQLiteDatabase sqlitedatabase = db;
        cursor = null;
        if (sqlitedatabase == null)
            break MISSING_BLOCK_LABEL_83;
        boolean flag1 = db.isOpen();
        cursor = null;
        if (!flag1)
            break MISSING_BLOCK_LABEL_83;
        cursor = db.query("pointsTable", PROJECTION, null, null, null, null, null);
        if (cursor == null)
            break MISSING_BLOCK_LABEL_83;
        if (cursor.getCount() == 0)
            break MISSING_BLOCK_LABEL_83;
        Log.e("ActivityPointsDatabaseAdapter", "DB is not Empty");
        flag = false;
        cursor.close();
        cursor = null;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
_L2:
        return flag;
        Exception exception1;
        exception1;
        Log.e("ActivityPointsDatabaseAdapter", "Exception in isDBEmpty");
        exception1.printStackTrace();
        if (cursor == null || cursor.isClosed()) goto _L2; else goto _L1
_L1:
        cursor.close();
        return flag;
        Exception exception;
        exception;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception;
    }

    public boolean isDBOpen()
    {
        if (db != null)
        {
            return db.isOpen();
        } else
        {
            Log.e("ActivityPointsDatabaseAdapter", "isDBOpen(): db is null");
            return false;
        }
    }

    public ActivityPointsDatabaseAdapter open()
    {
        if (DBHelper == null)
            InitiatePhubDatabaseHelper();
        if (db != null)
            break MISSING_BLOCK_LABEL_39;
        Log.d("ActivityPointsDatabaseAdapter", "open(): db is null");
        db = DBHelper.getWritableDatabase();
        return this;
        if (db.isOpen())
            break MISSING_BLOCK_LABEL_77;
        Log.d("ActivityPointsDatabaseAdapter", "open(): db is not open");
        db = DBHelper.getWritableDatabase();
        return this;
        Exception exception;
        exception;
        exception.printStackTrace();
        this = null;
        return this;
    }

    public void printDBValues()
    {
        Cursor cursor = null;
        SQLiteDatabase sqlitedatabase = db;
        cursor = null;
        if (sqlitedatabase == null)
            break MISSING_BLOCK_LABEL_198;
        boolean flag = db.isOpen();
        cursor = null;
        if (!flag)
            break MISSING_BLOCK_LABEL_198;
        cursor = db.query("pointsTable", PROJECTION, null, null, null, null, null);
        int i;
        i = 1;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_186;
        Log.i("ActivityPointsDatabaseAdapter", "==========Database Contents==========");
_L1:
        if (!cursor.moveToNext())
            break MISSING_BLOCK_LABEL_178;
        long l = cursor.getLong(cursor.getColumnIndex("epoc_time"));
        Log.d("ActivityPointsDatabaseAdapter", (new StringBuilder()).append("Entry: ").append(i).append(" - Epoch : ").append(l).append(" - Points : ").append(cursor.getLong(cursor.getColumnIndex("points"))).append(" - Date: ").append(new Date(1000L * l)).toString());
        i++;
          goto _L1
        Log.i("ActivityPointsDatabaseAdapter", "=======================================");
        if (cursor == null)
            break MISSING_BLOCK_LABEL_198;
        cursor.close();
        cursor = null;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
_L3:
        return;
        Exception exception1;
        exception1;
        Log.e("ActivityPointsDatabaseAdapter", "Exception in fetching data from DB");
        exception1.printStackTrace();
        if (cursor == null || cursor.isClosed()) goto _L3; else goto _L2
_L2:
        cursor.close();
        return;
        Exception exception;
        exception;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception;
    }
}
