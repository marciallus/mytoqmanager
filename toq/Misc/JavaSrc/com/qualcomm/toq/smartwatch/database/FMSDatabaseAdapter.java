// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.database;

import android.content.*;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;

public class FMSDatabaseAdapter
{
    private static class FMSDatabaseHelper extends SQLiteOpenHelper
    {

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            Log.printUsageLog("FMSDatabaseAdapter", "DB: inside SQLiteOpenHelper:onCreate");
            Log.d("FMSController", "DB: inside SQLiteOpenHelper:onCreate");
            sqlitedatabase.execSQL("create table FMSTransactionDatabase (_id integer primary key autoincrement, app_id interger, dest_path text not null, checksum long, state integer, timestamp long, priority integer);");
        }

        public void onOpen(SQLiteDatabase sqlitedatabase)
        {
            Log.printUsageLog("FMSDatabaseAdapter", "DB: inside SQLiteOpenHelper:onOpen");
            Log.d("FMSController", "DB: inside SQLiteOpenHelper:onOpen");
            super.onOpen(sqlitedatabase);
        }

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            Log.d("FMSController", (new StringBuilder()).append("DB: Upgrading database from version ").append(i).append(" to ").append(j).append(", which will destroy all old data").toString());
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS FMSTransactionDatabase");
            onCreate(sqlitedatabase);
        }

        public FMSDatabaseHelper(Context context1)
        {
            super(context1, "FMSDataBase", null, 1);
        }
    }


    private static final String DATABASE_CREATE = "create table FMSTransactionDatabase (_id integer primary key autoincrement, app_id interger, dest_path text not null, checksum long, state integer, timestamp long, priority integer);";
    private static final String DATABASE_NAME = "FMSDataBase";
    private static final String DATABASE_TABLE = "FMSTransactionDatabase";
    private static final int DATABASE_VERSION = 1;
    public static final String KEY_APPID = "app_id";
    public static final String KEY_CHECKSUM = "checksum";
    public static final String KEY_DESTINATIONPATH = "dest_path";
    public static final String KEY_PRIORITY = "priority";
    public static final String KEY_ROWID = "_id";
    public static final String KEY_STATE = "state";
    public static final String KEY_TIMESTAMP = "timestamp";
    private static final String TAG = "FMSController";
    private static FMSDatabaseAdapter mInstance;
    private FMSDatabaseHelper FMSDBHelper;
    private final String PROJECTION[] = {
        "_id", "app_id", "dest_path", "checksum", "state", "timestamp", "priority"
    };
    private final Context context;
    private SQLiteDatabase db;

    private FMSDatabaseAdapter(Context context1)
    {
        context = context1;
        InitiateFMSDatabaseHelper();
    }

    public static FMSDatabaseAdapter getFMSDatabaseAdapter(Context context1)
    {
        if (mInstance == null)
        {
            Log.d("FMSController", "FMSDatabaseAdapter mInstance is null");
            mInstance = new FMSDatabaseAdapter(context1);
        }
        return mInstance;
    }

    public void InitiateFMSDatabaseHelper()
    {
        Log.d("FMSController", "InitiateFMSDatabaseHelper()");
        FMSDBHelper = new FMSDatabaseHelper(context);
    }

    public void close()
    {
        Log.d("FMSController", "FMSDBHelper: close() called");
        if (FMSDBHelper == null)
        {
            Log.e("FMSController", "close(): FMSDBHelper is null");
            InitiateFMSDatabaseHelper();
        }
        FMSDBHelper.close();
    }

    public boolean deleteFMSEntry(String s)
    {
        boolean flag1;
        if (db != null && db.isOpen())
        {
            int i = db.delete("FMSTransactionDatabase", (new StringBuilder()).append("dest_path= '").append(s).append("'").toString(), null);
            flag1 = false;
            if (i > 0)
                flag1 = true;
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "deleteFMSEntry(): db is null");
                return false;
            }
            boolean flag = db.isOpen();
            flag1 = false;
            if (!flag)
            {
                Log.e("FMSController", "deleteFMSEntry(): db is not open");
                return false;
            }
        }
        return flag1;
    }

    public void dropDB()
    {
        context.deleteDatabase("FMSDataBase");
    }

    public void fmsResetStates()
    {
        Cursor cursor;
        int i;
        try
        {
            resetFailedPriorities();
            cursor = getAllData();
        }
        catch (Exception exception)
        {
            Log.e("FMSController", (new StringBuilder()).append("FMSDatabaseAdapter: Exception in fmsResetStates(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
        if (cursor == null)
            break MISSING_BLOCK_LABEL_146;
_L4:
        if (!cursor.moveToNext())
            break MISSING_BLOCK_LABEL_139;
        i = cursor.getInt(cursor.getColumnIndex("state"));
        if (i == 6 || i == 8 || i == 7) goto _L2; else goto _L1
_L1:
        updateFMSDBState(cursor.getInt(cursor.getColumnIndex("_id")), 3);
        break MISSING_BLOCK_LABEL_13;
_L2:
        if (i != 8) goto _L4; else goto _L3
_L3:
        updateFMSDBState(cursor.getInt(cursor.getColumnIndex("_id")), 7);
          goto _L4
        cursor.close();
        return;
        Log.d("FMSController", "fmsResetStates(): fmsCursor IS NULL");
        return;
    }

    public Cursor getAllData()
    {
        Cursor cursor;
        if (db != null && db.isOpen())
        {
            cursor = db.query("FMSTransactionDatabase", PROJECTION, null, null, null, null, "priority ASC");
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "getAllData(): db is null");
                return null;
            }
            boolean flag = db.isOpen();
            cursor = null;
            if (!flag)
            {
                Log.e("FMSController", "getAllData(): db is not open");
                return null;
            }
        }
        return cursor;
    }

    public String[] getAllDestinationPath()
    {
        Cursor cursor;
        String as[];
        int i;
        try
        {
            cursor = getAllData();
        }
        catch (Exception exception)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in getAllDestinationPath(): ").append(exception.toString()).toString());
            return null;
        }
        if (cursor == null)
            break MISSING_BLOCK_LABEL_77;
        if (!cursor.moveToFirst())
            break MISSING_BLOCK_LABEL_77;
        as = new String[cursor.getCount()];
        i = 0;
_L2:
        if (i >= as.length)
            break; /* Loop/switch isn't completed */
        as[i] = cursor.getString(cursor.getColumnIndex("dest_path"));
        cursor.moveToNext();
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        cursor.close();
        return as;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_87;
        cursor.close();
        Log.e("FMSController", "getDestinationPath(): fmsCursor is null or fmsCursor.moveToFirst() returns false");
        return null;
    }

    public int getAppPriority(String s)
    {
        byte byte0;
        if (s.equalsIgnoreCase("/firmware/1234.zip"))
            byte0 = 1;
        else
        if (!s.equalsIgnoreCase("/settings/app_list.jsn") && !s.equalsIgnoreCase("/settings/usersettings.jsn"))
        {
            if (!s.equalsIgnoreCase("/settings/clock_list.jsn") && !s.equalsIgnoreCase("/musicplayer/playlist.jsn"))
                byte0 = 99;
            else
                byte0 = 3;
        } else
        {
            byte0 = 2;
        }
        Log.d("FMSController", (new StringBuilder()).append("getAppPriority for: ").append(s).append(" = ").append(byte0).toString());
        return byte0;
    }

    public Cursor getDataFromDB(String s, String as[])
    {
        Cursor cursor;
        if (db != null && db.isOpen())
        {
            cursor = db.query("FMSTransactionDatabase", PROJECTION, s, as, null, null, "priority ASC");
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "getDataFromDB(): db is null");
                return null;
            }
            boolean flag = db.isOpen();
            cursor = null;
            if (!flag)
            {
                Log.e("FMSController", "getDataFromDB(): db is not open");
                return null;
            }
        }
        return cursor;
    }

    public String[] getDestinationPath(int i)
    {
        String as[] = new String[1];
        as[0] = String.valueOf(i);
        Cursor cursor = getDataFromDB("state = ?", as);
        if (cursor != null && cursor.moveToFirst())
        {
            String as1[] = new String[cursor.getCount()];
            for (int j = 0; j < as1.length; j++)
            {
                as1[j] = cursor.getString(cursor.getColumnIndex("dest_path"));
                cursor.moveToNext();
            }

            cursor.close();
            return as1;
        }
        if (cursor != null)
            cursor.close();
        Log.e("FMSController", "getDestinationPath(int state): fmsCursor is null or fmsCursor.moveToFirst() returns false");
        return null;
    }

    public long getFMSChecksum(String s)
        throws SQLException
    {
        long l = 0L;
        if (db != null && db.isOpen())
        {
            Cursor cursor = db.query(true, "FMSTransactionDatabase", PROJECTION, (new StringBuilder()).append("dest_path='").append(s).append("'").toString(), null, null, null, null, null);
            if (cursor != null && cursor.moveToFirst())
            {
                l = cursor.getLong(cursor.getColumnIndex("checksum"));
                cursor.close();
            } else
            if (cursor != null)
            {
                cursor.close();
                return l;
            }
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "getFMSChecksum(): db is null");
                return l;
            }
            if (!db.isOpen())
            {
                Log.e("FMSController", "getFMSChecksum(): db is not open");
                return l;
            }
        }
        return l;
    }

    public int getFMSId(String s)
        throws SQLException
    {
        int i;
        if (db != null && db.isOpen())
        {
            Cursor cursor = db.query(true, "FMSTransactionDatabase", PROJECTION, (new StringBuilder()).append("dest_path='").append(s).append("'").toString(), null, null, null, null, null);
            if (cursor != null && cursor.moveToFirst())
            {
                i = cursor.getInt(cursor.getColumnIndex("_id"));
                cursor.close();
            } else
            {
                i = 0;
                if (cursor != null)
                {
                    cursor.close();
                    return 0;
                }
            }
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "getFMSId(): db is null");
                return 0;
            }
            boolean flag = db.isOpen();
            i = 0;
            if (!flag)
            {
                Log.e("FMSController", "getFMSId(): db is not open");
                return 0;
            }
        }
        return i;
    }

    public int getFMSState(String s)
        throws SQLException
    {
        int i;
        if (db != null && db.isOpen())
        {
            Cursor cursor = db.query(true, "FMSTransactionDatabase", PROJECTION, (new StringBuilder()).append("dest_path='").append(s).append("'").toString(), null, null, null, null, null);
            if (cursor != null && cursor.moveToFirst())
            {
                i = cursor.getInt(cursor.getColumnIndex("state"));
                cursor.close();
            } else
            {
                i = 0;
                if (cursor != null)
                {
                    cursor.close();
                    return 0;
                }
            }
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "getFMSState(): db is null");
                return 0;
            }
            boolean flag = db.isOpen();
            i = 0;
            if (!flag)
            {
                Log.e("FMSController", "getFMSState(): db is not open");
                return 0;
            }
        }
        return i;
    }

    public int getHighestPriorityEntry()
    {
        Cursor cursor = getAllData();
        if (cursor != null && cursor.moveToFirst())
        {
            int i = cursor.getInt(cursor.getColumnIndex("_id"));
            cursor.close();
            return i;
        }
        Log.e("FMSController", "getHighestPriorityEntry(): fmsCursor is null");
        if (cursor != null)
            cursor.close();
        return 0;
    }

    public String getNextFileTransferPath()
    {
        String as[] = new String[1];
        as[0] = String.valueOf(3);
        Cursor cursor = getDataFromDB("state = ?", as);
        if (cursor != null && cursor.moveToFirst())
        {
            String s = cursor.getString(cursor.getColumnIndex("dest_path"));
            cursor.close();
            Log.d("FMSController", (new StringBuilder()).append("getNextFileTransferPath() = ").append(s).toString());
            return s;
        }
        if (cursor != null)
            cursor.close();
        Log.e("FMSController", "getNextFileTransferPath(): fmsCursor is null or fmsCursor.moveToFirst() returns false");
        return null;
    }

    public String[] getPendingReqDestPath()
    {
        String as[] = new String[1];
        as[0] = String.valueOf(7);
        Cursor cursor = getDataFromDB("state = ? or state = ?", as);
        if (cursor != null)
            Log.d("FMSController", (new StringBuilder()).append("fmsCursor.getCount() = ").append(cursor.getCount()).toString());
        if (cursor != null && cursor.moveToFirst())
        {
            String as1[] = new String[cursor.getCount()];
            for (int i = 0; i < as1.length; i++)
            {
                as1[i] = cursor.getString(cursor.getColumnIndex("dest_path"));
                cursor.moveToNext();
            }

            cursor.close();
            return as1;
        }
        if (cursor != null)
            cursor.close();
        Log.e("FMSController", "getPendingReqDestPath(): fmsCursor is null or fmsCursor.moveToFirst() returns false");
        return null;
    }

    public int getPriorityDBEntry(String s)
    {
        Cursor cursor = getSingleFMSEntry(s);
        if (cursor != null && cursor.getCount() != 0)
        {
            int i = cursor.getInt(cursor.getColumnIndex("priority"));
            Log.d("FMSController", (new StringBuilder()).append("getPriorityDBEntry for ").append(s).append(" = ").append(i).toString());
            cursor.close();
            return i;
        }
        if (cursor != null)
            cursor.close();
        return -1;
    }

    public Cursor getSingleFMSEntry(String s)
        throws SQLException
    {
        if (db != null && db.isOpen())
        {
            Cursor cursor = db.query(true, "FMSTransactionDatabase", PROJECTION, (new StringBuilder()).append("dest_path='").append(s).append("'").toString(), null, null, null, null, null);
            if (cursor != null)
                cursor.moveToFirst();
            return cursor;
        }
        if (db == null)
            Log.e("FMSController", "getSingleFMSEntry(): db is null");
        else
        if (!db.isOpen())
            Log.e("FMSController", "getSingleFMSEntry(): db is not open");
        return null;
    }

    public long getTimeStamp(String s)
        throws SQLException
    {
        long l = 0L;
        if (db != null && db.isOpen())
        {
            Cursor cursor = db.query(true, "FMSTransactionDatabase", PROJECTION, (new StringBuilder()).append("dest_path='").append(s).append("'").toString(), null, null, null, null, null);
            if (cursor != null && cursor.moveToFirst())
            {
                l = cursor.getLong(cursor.getColumnIndex("timestamp"));
                cursor.close();
            } else
            if (cursor != null)
            {
                cursor.close();
                return l;
            }
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "getTimeStamp(): db is null");
                return l;
            }
            if (!db.isOpen())
            {
                Log.e("FMSController", "getTimeStamp(): db is not open");
                return l;
            }
        }
        return l;
    }

    public long insertFMSData(int i, String s, long l, int j, long l1, 
            int k)
    {
        long l2 = -1L;
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("app_id", Integer.valueOf(i));
        contentvalues.put("dest_path", s);
        contentvalues.put("checksum", Long.valueOf(l));
        contentvalues.put("state", Integer.valueOf(j));
        contentvalues.put("timestamp", Long.valueOf(l1));
        contentvalues.put("priority", Integer.valueOf(k));
        if (db != null && db.isOpen())
            l2 = db.insert("FMSTransactionDatabase", null, contentvalues);
        else
        if (db == null)
            Log.e("FMSController", "insertFMSData(): db is null");
        else
        if (!db.isOpen())
            Log.e("FMSController", "insertFMSData(): db is not open");
        if (l2 != -1L)
            l2 = i;
        return l2;
    }

    public boolean isFMSDBOpen()
    {
        if (db != null)
        {
            return db.isOpen();
        } else
        {
            Log.e("FMSController", "isFMSDBOpen(): db is null");
            return false;
        }
    }

    public boolean isFMSEntryAvailable(String s)
        throws SQLException
    {
        Cursor cursor = getAllData();
        if (cursor != null)
        {
            while (cursor.moveToNext()) 
                if (cursor.getString(cursor.getColumnIndex("dest_path")).equals(s))
                {
                    cursor.close();
                    return true;
                }
            cursor.close();
        }
        return false;
    }

    public boolean isFileTransferInProgress()
    {
        Cursor cursor = getAllData();
        if (cursor != null)
        {
            while (cursor.moveToNext()) 
                if (cursor.getInt(cursor.getColumnIndex("state")) == 4)
                {
                    cursor.close();
                    return true;
                }
            cursor.close();
        }
        return false;
    }

    public FMSDatabaseAdapter open()
    {
        Log.d("FMSController", "FMSDatabaseAdapter open() called");
        if (FMSDBHelper == null)
        {
            Log.e("FMSController", "open(): FMSDBHelper is null");
            InitiateFMSDatabaseHelper();
        }
        if (db != null)
            break MISSING_BLOCK_LABEL_64;
        Log.printUsageLog("FMSDatabaseAdapter", "open(): db is null");
        Log.d("FMSController", "open(): db is null");
        db = FMSDBHelper.getWritableDatabase();
        return this;
        if (db.isOpen())
            break MISSING_BLOCK_LABEL_137;
        Log.printUsageLog("FMSDatabaseAdapter", "open(): db is not open");
        Log.d("FMSController", "open(): db is not open");
        db = FMSDBHelper.getWritableDatabase();
        return this;
        Exception exception;
        exception;
        exception.printStackTrace();
        Log.e("FMSController", (new StringBuilder()).append("Exception in open(): ").append(exception.toString()).toString());
        return this;
    }

    public void resetFMSPriority(String s, int i)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("priority", Integer.valueOf(i));
        if (db != null && db.isOpen())
        {
            db.update("FMSTransactionDatabase", contentvalues, "dest_path=?", new String[] {
                s
            });
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "resetFMSPriority(): db is null");
                return;
            }
            if (!db.isOpen())
            {
                Log.e("FMSController", "resetFMSPriority(): db is not open");
                return;
            }
        }
    }

    public void resetFailedPriorities()
    {
        Log.d("FMSController", "DB: resetFailedPriorities()");
        String as[] = new String[2];
        as[0] = String.valueOf(3);
        as[1] = String.valueOf(100);
        if (db != null && db.isOpen())
        {
            Cursor cursor = db.query("FMSTransactionDatabase", PROJECTION, "state=? AND priority=?", as, null, null, null);
            if (cursor != null)
            {
                String s;
                for (; cursor.moveToNext(); resetFMSPriority(s, getAppPriority(s)))
                    s = cursor.getString(cursor.getColumnIndex("dest_path"));

                cursor.close();
            }
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "resetFailedPriorities(): db is null");
                return;
            }
            if (!db.isOpen())
            {
                Log.e("FMSController", "resetFailedPriorities(): db is not open");
                return;
            }
        }
    }

    public void setFailedFMSPriority(String s)
    {
        if (s == null)
        {
            Log.d("FMSController", "DB: No Transaction with Failed Priority");
        } else
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("priority", Integer.valueOf(100));
            if (db != null && db.isOpen())
            {
                db.update("FMSTransactionDatabase", contentvalues, "dest_path=?", new String[] {
                    s
                });
                return;
            }
            if (db == null)
            {
                Log.e("FMSController", "setFailedFMSPriority(): db is null");
                return;
            }
            if (!db.isOpen())
            {
                Log.e("FMSController", "setFailedFMSPriority(): db is not open");
                return;
            }
        }
    }

    public void setStateReadyToTransfer()
    {
        if (getDestinationPath(4) != null)
        {
            Log.d("FMSController", (new StringBuilder()).append("DB: setStateReadyToTransfer() FMS_TRANSFER_IN_PROGRESS destpath = ").append(getDestinationPath(4)[0]).toString());
            Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_READY_TO_TRANSFER: ").append(getDestinationPath(4)[0]).toString());
            updateFMSState(getDestinationPath(4)[0], 3, System.currentTimeMillis());
            return;
        } else
        {
            Log.d("FMSController", "DB: No Transaction in state FMS_TRANSFER_IN_PROGRESS");
            return;
        }
    }

    public boolean setStateTransferComplete()
    {
        if (getDestinationPath(4) != null)
        {
            Log.d("FMSController", (new StringBuilder()).append("DB: setStateTransferComplete() FMS_TRANSFER_IN_PROGRESS destpath = ").append(getDestinationPath(4)[0]).toString());
            Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_TRANSFER_COMPLETE: ").append(getDestinationPath(4)[0]).toString());
            updateFMSState(getDestinationPath(4)[0], 5, System.currentTimeMillis());
            return true;
        } else
        {
            Log.d("FMSController", "DB: No Transaction in state FMS_TRANSFER_IN_PROGRESS");
            return false;
        }
    }

    public void updateFMSDBState(int i, int j)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("state", Integer.valueOf(j));
        if (db != null && db.isOpen())
        {
            SQLiteDatabase sqlitedatabase = db;
            String as[] = new String[1];
            as[0] = String.valueOf(i);
            sqlitedatabase.update("FMSTransactionDatabase", contentvalues, "_id=?", as);
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "updateFMSDBState(): db is null");
                return;
            }
            if (!db.isOpen())
            {
                Log.e("FMSController", "updateFMSDBState(): db is not open");
                return;
            }
        }
    }

    public void updateFMSEntry(String s, int i, long l, long l1, int j)
    {
        ContentValues contentvalues = new ContentValues();
        if (i != -1)
            contentvalues.put("state", Integer.valueOf(i));
        if (l != -1L)
            contentvalues.put("checksum", Long.valueOf(l));
        if (l1 != -1L)
            contentvalues.put("timestamp", Long.valueOf(l1));
        if (j != -1)
            contentvalues.put("priority", Integer.valueOf(j));
        if (db != null && db.isOpen())
        {
            db.update("FMSTransactionDatabase", contentvalues, "dest_path=?", new String[] {
                s
            });
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "updateFMSEntry(): db is null");
                return;
            }
            if (!db.isOpen())
            {
                Log.e("FMSController", "updateFMSEntry(): db is not open");
                return;
            }
        }
    }

    public void updateFMSState(String s, int i, long l)
    {
        Log.d("FMSController", (new StringBuilder()).append("DB: destPath:").append(s).append(" state=").append(i).toString());
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("state", Integer.valueOf(i));
        contentvalues.put("timestamp", Long.valueOf(l));
        if (db != null && db.isOpen())
        {
            int j = db.update("FMSTransactionDatabase", contentvalues, "dest_path=?", new String[] {
                s
            });
            Log.d("FMSController", (new StringBuilder()).append("DB: update rows?:").append(j).toString());
            Cursor cursor = db.query(true, "FMSTransactionDatabase", null, "dest_path=?", new String[] {
                s
            }, null, null, null, null);
            if (cursor != null)
            {
                for (; cursor.moveToNext(); Log.d("FMSController", (new StringBuilder()).append("DB: destPath:").append(cursor.getString(2)).append(" state=").append(cursor.getString(4)).toString()));
                cursor.close();
            }
            if (i == 6)
            {
                Intent intent = new Intent(Constants.ACTION_SMARTWATCH_FMS_FILE_SYNCED);
                intent.putExtra("DESTPATH", s);
                Log.d("FMSController", "Sending ACTION_SMARTWATCH_FMS_FILE_SYNCED Broadcast");
                ToqApplication.getAppContext().sendBroadcast(intent);
            }
        } else
        {
            if (db == null)
            {
                Log.e("FMSController", "updateFMSState(): db is null");
                return;
            }
            if (!db.isOpen())
            {
                Log.e("FMSController", "updateFMSState(): db is not open");
                return;
            }
        }
    }
}
