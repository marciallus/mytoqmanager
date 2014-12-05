// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import java.util.ArrayList;

public class MMSUtil
{

    private static final String TAG = "MMSUtil";
    private static String lastMmsId = null;


    public static String getLastMmsId()
    {
        ContentResolver contentresolver = ConnectionFactory.getConnectionFactory().getContext().getContentResolver();
        String as[] = {
            "_id"
        };
        Cursor cursor = contentresolver.query(Uri.parse("content://mms/inbox"), as, null, null, null);
        String s = null;
        if (cursor != null)
        {
            boolean flag = cursor.moveToFirst();
            s = null;
            if (flag)
            {
                s = cursor.getString(cursor.getColumnIndex("_id"));
                Log.d("MMSUtil", (new StringBuilder()).append("MMS Id: ").append(s).toString());
            }
        }
        if (cursor != null)
            cursor.close();
        return s;
    }

    public static String getMmsSenderAddress(String s)
    {
        Cursor cursor;
        String s2;
        ContentResolver contentresolver = ConnectionFactory.getConnectionFactory().getContext().getContentResolver();
        String s1 = new String((new StringBuilder()).append("msg_id=").append(s).toString());
        cursor = contentresolver.query(Uri.parse((new StringBuilder()).append("content://mms/").append(s).append("/addr").toString()), null, s1, null, null);
        s2 = "";
        if (cursor == null || !cursor.moveToLast()) goto _L2; else goto _L1
_L1:
        String s3;
        s3 = cursor.getString(cursor.getColumnIndex("address"));
        if (s3 == null)
            break MISSING_BLOCK_LABEL_128;
        Long.parseLong(s3.replaceAll("[^0-9]", ""));
        s2 = s3;
_L4:
        if (cursor.moveToPrevious())
            continue; /* Loop/switch isn't completed */
_L2:
        if (cursor != null)
            cursor.close();
        return s2;
        NumberFormatException numberformatexception;
        numberformatexception;
        numberformatexception.printStackTrace();
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }

    public static String getMmsText(String s)
    {
        ContentResolver contentresolver = ConnectionFactory.getConnectionFactory().getContext().getContentResolver();
        String s1 = "";
        String s2 = (new StringBuilder()).append("mid=").append(s).toString();
        Cursor cursor = contentresolver.query(Uri.parse("content://mms/part"), null, s2, null, null);
        if (cursor != null && cursor.moveToFirst())
            do
                if ("text/plain".equals(cursor.getString(cursor.getColumnIndex("ct"))))
                    s1 = cursor.getString(cursor.getColumnIndex("text"));
            while (cursor.moveToNext());
        if (cursor != null)
            cursor.close();
        return s1;
    }

    public static ArrayList getNewMmsIds()
    {
        com/qualcomm/toq/smartwatch/utils/MMSUtil;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        ArrayList arraylist1;
        Cursor cursor;
        ContentResolver contentresolver = ConnectionFactory.getConnectionFactory().getContext().getContentResolver();
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        initializeLastMms();
        cursor = contentresolver.query(Uri.parse("content://mms/inbox"), null, null, null, "_ID DESC LIMIT 10");
_L8:
        if (!cursor.moveToNext()) goto _L2; else goto _L1
_L1:
        String s2 = cursor.getString(cursor.getColumnIndex("_ID"));
        if (!lastMmsId.equals(s2)) goto _L3; else goto _L2
_L2:
        if (arraylist1.isEmpty()) goto _L5; else goto _L4
_L4:
        int i = -1 + arraylist1.size();
_L9:
        if (i < 0) goto _L5; else goto _L6
_L6:
        String s;
        s = (String)arraylist1.get(i);
        String s1 = getMmsText(s);
        if (s1.equals("") || s1.equals("Message not found"))
            break MISSING_BLOCK_LABEL_209;
          goto _L7
_L3:
        arraylist1.add(s2);
          goto _L8
        Exception exception;
        exception;
        throw exception;
_L7:
        arraylist.add(s);
        break MISSING_BLOCK_LABEL_209;
_L5:
        if (!arraylist.isEmpty())
            lastMmsId = (String)arraylist.get(-1 + arraylist.size());
        cursor.close();
        com/qualcomm/toq/smartwatch/utils/MMSUtil;
        JVM INSTR monitorexit ;
        return arraylist;
        i--;
          goto _L9
    }

    public static void initializeLastMms()
    {
        if (lastMmsId == null)
            lastMmsId = getLastMmsId();
    }

}
