// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.qualcomm.toq.base.controller.IController;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.*;

public class PHubDatabaseAdapter
{
    private static class DatabaseHelper extends SQLiteOpenHelper
    {

        private int createAppID(String s, SQLiteDatabase sqlitedatabase)
        {
            Log.d("PHubDatabaseAdapter", (new StringBuilder()).append("Inside createAppID() for appname = ").append(s).toString());
            byte byte0;
            if ("TIME_CONTROLLER".equals(s))
                byte0 = 5;
            else
            if ("SMS_CONTROLLER".equals(s))
                byte0 = 3;
            else
            if ("STORAGE_SERVICE_CONTROLLER".equals(s))
                byte0 = 9;
            else
            if ("VOICE_CALL_CONTROLLER".equals(s))
                byte0 = 1;
            else
            if ("FMS_CONTROLLER".equals(s))
                byte0 = 17;
            else
            if ("VERSION_CONTROLLER".equals(s))
            {
                byte0 = 0;
            } else
            {
                boolean flag = "ACTIVITY_MONITORING_CONTROLLER".equals(s);
                byte0 = 0;
                if (flag)
                    byte0 = 30;
            }
            Log.d("PHubDatabaseAdapter", (new StringBuilder()).append("End of createAppID() appID = ").append(byte0).append(" for appName = ").append(s).toString());
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("app_id", Integer.valueOf(byte0));
            contentvalues.put("app_name", s);
            contentvalues.put("icon", null);
            contentvalues.put("status", Boolean.valueOf(true));
            contentvalues.put("app_type", Integer.valueOf(0));
            sqlitedatabase.insert("appDatabase", null, contentvalues);
            return byte0;
        }

        private void insertNativeAppData(SQLiteDatabase sqlitedatabase)
        {
            Log.d("PHubDatabaseAdapter", "Inside insertNativeAppData()");
            SystemController.getSystemController().appID = createAppID("TIME_CONTROLLER", sqlitedatabase);
            SMSController.getSMSController().appID = createAppID("SMS_CONTROLLER", sqlitedatabase);
            PopUpController.getPopUpController().appID = createAppID("POPUP_CONTROLLER", sqlitedatabase);
            StorageServiceController.getStorageServiceController().appID = createAppID("STORAGE_SERVICE_CONTROLLER", sqlitedatabase);
            VoiceCallController.getVoiceCallController().appID = createAppID("VOICE_CALL_CONTROLLER", sqlitedatabase);
            FMSController.getFmsController().appID = createAppID("FMS_CONTROLLER", sqlitedatabase);
            ActivityMonitoringController.getActivityMonitoringController().appID = createAppID("ACTIVITY_MONITORING_CONTROLLER", sqlitedatabase);
        }

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            Log.d("PHubDatabaseAdapter", "inside DatabaseHelper:onCreate");
            sqlitedatabase.execSQL("create table appDatabase (_id integer primary key autoincrement, app_id interger unique, app_name text not null, icon blob, status bool true, app_type text not null);");
            insertNativeAppData(sqlitedatabase);
        }

        public void onOpen(SQLiteDatabase sqlitedatabase)
        {
            super.onOpen(sqlitedatabase);
            Cursor cursor = sqlitedatabase.query("appDatabase", new String[] {
                "app_id", "app_name"
            }, "app_type = ?", new String[] {
                "0"
            }, null, null, null);
            if (cursor != null)
            {
                cursor.moveToFirst();
                do
                {
                    if (!cursor.moveToNext())
                        break;
                    String s = cursor.getString(cursor.getColumnIndex("app_name"));
                    int i = cursor.getInt(cursor.getColumnIndex("app_id"));
                    if ("TIME_CONTROLLER".equals(s))
                        SystemController.getSystemController().appID = i;
                    else
                    if ("SMS_CONTROLLER".equals(s))
                        SMSController.getSMSController().appID = i;
                    else
                    if ("POPUP_CONTROLLER".equals(s))
                        PopUpController.getPopUpController().appID = i;
                    else
                    if ("STORAGE_SERVICE_CONTROLLER".equals(s))
                        StorageServiceController.getStorageServiceController().appID = i;
                    else
                    if ("VOICE_CALL_CONTROLLER".equals(s))
                        VoiceCallController.getVoiceCallController().appID = i;
                    else
                    if ("FMS_CONTROLLER".equals(s))
                        FMSController.getFmsController().appID = i;
                    else
                    if ("VERSION_CONTROLLER".equals(s))
                        VersionController.getVersionController().appID = i;
                    else
                    if ("ACTIVITY_MONITORING_CONTROLLER".equals(s))
                        ActivityMonitoringController.getActivityMonitoringController().appID = i;
                } while (true);
                cursor.close();
            }
        }

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            Log.w("PHubDatabaseAdapter", (new StringBuilder()).append("Upgrading database from version ").append(i).append(" to ").append(j).append(", which will destroy all old data").toString());
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS appDatabase");
            onCreate(sqlitedatabase);
        }

        public DatabaseHelper(Context context1)
        {
            super(context1, "pHubDataBase", null, 1);
        }
    }


    private static final String DATABASE_CREATE = "create table appDatabase (_id integer primary key autoincrement, app_id interger unique, app_name text not null, icon blob, status bool true, app_type text not null);";
    private static final String DATABASE_NAME = "pHubDataBase";
    private static final String DATABASE_TABLE = "appDatabase";
    private static final int DATABASE_VERSION = 1;
    public static final String KEY_APPID = "app_id";
    public static final String KEY_APPNAME = "app_name";
    public static final String KEY_APP_TYPE = "app_type";
    public static final String KEY_ICON = "icon";
    public static final String KEY_ROWID = "_id";
    public static final String KEY_STATUS = "status";
    private static final String TAG = "PHubDatabaseAdapter";
    private static PHubDatabaseAdapter mInstance;
    private DatabaseHelper DBHelper;
    private final String PROJECTION[] = {
        "_id", "app_id", "app_name", "icon", "status", "app_type"
    };
    private final Context context;
    private SQLiteDatabase db;

    private PHubDatabaseAdapter(Context context1)
    {
        context = context1;
        DBHelper = new DatabaseHelper(context);
    }

    public static PHubDatabaseAdapter getDatabaseAdapter(Context context1)
    {
        if (mInstance == null)
            mInstance = new PHubDatabaseAdapter(context1);
        return mInstance;
    }

    public void InitiatePhubDatabaseHelper()
    {
        DBHelper = new DatabaseHelper(context);
    }

    public void close()
    {
        DBHelper.close();
    }

    public boolean deleteAppData(long l)
    {
        return db.delete("appDatabase", (new StringBuilder()).append("app_id=").append(l).toString(), null) > 0;
    }

    public Cursor getAllAppData()
    {
        return db.query("appDatabase", PROJECTION, null, null, null, null, null);
    }

    public int getAppID(String s)
        throws SQLException
    {
        Cursor cursor = db.query(true, "appDatabase", PROJECTION, (new StringBuilder()).append("app_name='").append(s).append("'").toString(), null, null, null, null, null);
        if (cursor != null && cursor.moveToFirst())
        {
            int i = cursor.getInt(cursor.getColumnIndex("app_id"));
            cursor.close();
            return i;
        } else
        {
            return 0;
        }
    }

    public IController getController(int i)
    {
        Cursor cursor = db.query(true, "appDatabase", PROJECTION, (new StringBuilder()).append("app_id=").append(i).toString(), null, null, null, null, null);
        Object obj = null;
        if (cursor != null)
        {
            boolean flag = cursor.moveToFirst();
            obj = null;
            if (flag)
            {
                String s = cursor.getString(cursor.getColumnIndex("app_name"));
                if (s.equals("TIME_CONTROLLER"))
                    obj = SystemController.getSystemController();
                else
                if (s.equals("SMS_CONTROLLER"))
                    obj = SMSController.getSMSController();
                else
                if (s.equals("VOICE_CALL_CONTROLLER"))
                    obj = VoiceCallController.getVoiceCallController();
                else
                if (s.equals("STORAGE_SERVICE_CONTROLLER"))
                    obj = StorageServiceController.getStorageServiceController();
                else
                if (s.equals("POPUP_CONTROLLER"))
                    obj = PopUpController.getPopUpController();
                else
                if (s.equals("FMS_CONTROLLER"))
                    obj = FMSController.getFmsController();
                else
                if (s.equals("VERSION_CONTROLLER"))
                {
                    obj = VersionController.getVersionController();
                } else
                {
                    boolean flag1 = s.equals("ACTIVITY_MONITORING_CONTROLLER");
                    obj = null;
                    if (flag1)
                        obj = ActivityMonitoringController.getActivityMonitoringController();
                }
                cursor.close();
            }
        }
        return ((IController) (obj));
    }

    public Cursor getSingleAppData(long l)
        throws SQLException
    {
        Cursor cursor = db.query(true, "appDatabase", PROJECTION, (new StringBuilder()).append("app_id=").append(l).toString(), null, null, null, null, null);
        if (cursor != null)
            cursor.moveToFirst();
        return cursor;
    }

    public long insertAppData(int i, String s, boolean flag, int j)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("app_id", Integer.valueOf(i));
        contentvalues.put("app_name", s);
        contentvalues.put("icon", null);
        contentvalues.put("status", Boolean.valueOf(flag));
        contentvalues.put("app_type", Integer.valueOf(j));
        long l = db.insert("appDatabase", null, contentvalues);
        if (l != -1L)
            l = i;
        return l;
    }

    public PHubDatabaseAdapter open()
    {
        try
        {
            if (DBHelper == null)
                InitiatePhubDatabaseHelper();
            db = DBHelper.getWritableDatabase();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return this;
    }
}
