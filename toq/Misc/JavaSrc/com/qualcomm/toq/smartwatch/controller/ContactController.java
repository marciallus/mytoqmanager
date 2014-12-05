// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.Utils;
import com.qualcomm.toq.smartwatch.utils.ContactsJsonData;
import java.io.*;
import java.text.Collator;
import java.util.*;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            CommHubController

public class ContactController extends DefaultController
{

    public static final Comparator ALPHA_COMPARATOR = new Comparator() {

        private final Collator sCollator = Collator.getInstance();

        public int compare(ContactsJsonData contactsjsondata, ContactsJsonData contactsjsondata1)
        {
            return sCollator.compare(contactsjsondata.getmDisplayName(), contactsjsondata1.getmDisplayName());
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((ContactsJsonData)obj, (ContactsJsonData)obj1);
        }

    }
;
    private static final String TAG = "ContactController";
    public static final String appName = "CONTACT_CONTROLLER";
    private static ContactController mInstance = null;
    private String KEY_SEQUENCE;
    public boolean bContactContentObserverCalled;
    public boolean bContactStoreCreation;
    private ConnectionFactory connFactory;
    boolean isFav;
    private File resultFileFolderLocation;
    BufferedWriter writer;

    private ContactController()
    {
        KEY_SEQUENCE = "contactsequence";
        bContactStoreCreation = false;
        bContactContentObserverCalled = false;
        resultFileFolderLocation = null;
        connFactory = ConnectionFactory.getConnectionFactory();
        isFav = false;
    }

    private void createTempStoreFile(String s)
    {
        File file;
        BufferedWriter bufferedwriter;
        FileWriter filewriter;
        File file1;
        Log.d("ContactController", "Inside createTempStoreFile()");
        if (resultFileFolderLocation == null)
            resultFileFolderLocation = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        file = new File((new StringBuilder()).append(resultFileFolderLocation).append("/").append("Phub.Phone.Contacts").append("_Temp").append(".jsn").toString());
        Utils.deleteOldStoreFile(file.getAbsolutePath());
        bufferedwriter = null;
        filewriter = null;
        file1 = null;
        boolean flag = resultFileFolderLocation.mkdirs();
        bufferedwriter = null;
        file1 = null;
        filewriter = null;
        if (!flag) goto _L2; else goto _L1
_L1:
        File file2 = new File(resultFileFolderLocation, "Phub.Phone.Contacts_Temp.jsn");
        FileWriter filewriter1 = new FileWriter(file2);
        BufferedWriter bufferedwriter1 = new BufferedWriter(filewriter1);
        file1 = file2;
        filewriter = filewriter1;
        bufferedwriter = bufferedwriter1;
_L6:
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_206;
        bufferedwriter.write(s);
        bufferedwriter.newLine();
        bufferedwriter.flush();
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_219;
        filewriter.close();
        filewriter = null;
        FileWriter filewriter2;
        if (file1 != null)
            file1 = null;
        boolean flag1;
        BufferedWriter bufferedwriter2;
        try
        {
            Log.e("ContactController", "Called file nulling createTempStore() #2");
        }
        catch (Exception exception4)
        {
            Log.e("ContactController", "Exception while nulling createTempStore() #2");
            exception4.printStackTrace();
            return;
        }
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_242;
        bufferedwriter.close();
        if (filewriter == null) goto _L4; else goto _L3
_L3:
        filewriter.close();
          goto _L4
_L16:
        if (resultFileFolderLocation != null)
            resultFileFolderLocation = null;
        if (file == null);
_L10:
        return;
_L2:
        flag1 = resultFileFolderLocation.exists();
        bufferedwriter = null;
        file1 = null;
        filewriter = null;
        if (!flag1) goto _L6; else goto _L5
_L5:
        filewriter2 = new FileWriter((new StringBuilder()).append(resultFileFolderLocation).append("/").append("Phub.Phone.Contacts").append("_Temp").append(".jsn").toString(), false);
        bufferedwriter2 = new BufferedWriter(filewriter2);
        filewriter = filewriter2;
        bufferedwriter = bufferedwriter2;
        file1 = null;
          goto _L6
        Exception exception2;
        exception2;
_L15:
        Log.e("ContactController", (new StringBuilder()).append("Exception in createTempStoreFile(): ").append(exception2.toString()).toString());
        exception2.printStackTrace();
        try
        {
            Log.e("ContactController", "Called file nulling createTempStore() #2");
        }
        catch (Exception exception3)
        {
            Log.e("ContactController", "Exception while nulling createTempStore() #2");
            exception3.printStackTrace();
            return;
        }
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_430;
        bufferedwriter.close();
        if (filewriter == null) goto _L8; else goto _L7
_L7:
        filewriter.close();
          goto _L8
_L17:
        if (resultFileFolderLocation != null)
            resultFileFolderLocation = null;
        if (file == null) goto _L10; else goto _L9
_L9:
        return;
        Exception exception;
        exception;
_L14:
        Log.e("ContactController", "Called file nulling createTempStore() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_492;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_643;
        try
        {
            filewriter.close();
            break MISSING_BLOCK_LABEL_643;
        }
        catch (Exception exception1)
        {
            Log.e("ContactController", "Exception while nulling createTempStore() #2");
            exception1.printStackTrace();
        }
          goto _L11
_L18:
        if (resultFileFolderLocation != null)
            resultFileFolderLocation = null;
        if (file == null);
_L13:
        throw exception;
_L11:
        if (true) goto _L13; else goto _L12
_L12:
        exception;
        file1 = file2;
        bufferedwriter = null;
        filewriter = null;
          goto _L14
        exception;
        file1 = file2;
        filewriter = filewriter1;
        bufferedwriter = null;
          goto _L14
        exception;
        filewriter = filewriter2;
        bufferedwriter = null;
        file1 = null;
          goto _L14
        exception2;
        file1 = file2;
        bufferedwriter = null;
        filewriter = null;
          goto _L15
        exception2;
        file1 = file2;
        filewriter = filewriter1;
        bufferedwriter = null;
          goto _L15
        exception2;
        filewriter = filewriter2;
        bufferedwriter = null;
        file1 = null;
          goto _L15
_L4:
        if (file1 == null);
          goto _L16
_L8:
        if (file1 == null);
          goto _L17
        if (file1 == null);
          goto _L18
    }

    public static ContactController getContactController()
    {
        if (mInstance == null)
            mInstance = new ContactController();
        return mInstance;
    }

    private JSONObject getContactJsonArray()
    {
        this;
        JVM INSTR monitorenter ;
        StringBuffer stringbuffer;
        StringBuffer stringbuffer1;
        StringBuffer stringbuffer2;
        StringBuffer stringbuffer3;
        StringBuffer stringbuffer4;
        stringbuffer = new StringBuffer();
        stringbuffer1 = new StringBuffer();
        stringbuffer2 = new StringBuffer();
        stringbuffer3 = new StringBuffer();
        stringbuffer4 = new StringBuffer();
        String s;
        String s1;
        long l;
        int i;
        Cursor cursor;
        s = null;
        s1 = null;
        l = -1L;
        i = 0;
        cursor = null;
        ArrayList arraylist;
        ArrayList arraylist1;
        JSONArray jsonarray;
        JSONArray jsonarray1;
        JSONObject jsonobject;
        JSONObject jsonobject1;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        jsonarray = new JSONArray();
        jsonarray1 = new JSONArray();
        jsonobject = new JSONObject();
        jsonobject1 = new JSONObject();
        long l3;
        l3 = Calendar.getInstance().getTimeInMillis();
        cursor = ConnectionFactory.getConnectionFactory().getContext().getContentResolver().query(android.provider.ContactsContract.Data.CONTENT_URI, null, "has_phone_number!=0 AND (mimetype=? OR mimetype=?)", new String[] {
            "vnd.android.cursor.item/name", "vnd.android.cursor.item/phone_v2"
        }, "contact_id");
_L28:
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToNext()) goto _L2; else goto _L3
_L3:
        if (s != null)
            break MISSING_BLOCK_LABEL_197;
        s = cursor.getString(cursor.getColumnIndexOrThrow("contact_id"));
        if (s.equals(cursor.getString(cursor.getColumnIndexOrThrow("contact_id")))) goto _L5; else goto _L4
_L4:
        JSONObject jsonobject2;
        JSONObject jsonobject3;
        jsonobject2 = new JSONObject();
        jsonobject3 = new JSONObject();
        jsonobject3.put("Initial", stringbuffer.toString());
        jsonobject3.put("First", stringbuffer1.toString());
        jsonobject3.put("Middle", stringbuffer2.toString());
        jsonobject3.put("Last", stringbuffer3.toString());
        if (!TextUtils.isEmpty(stringbuffer4) || s1 == null)
            break MISSING_BLOCK_LABEL_310;
        stringbuffer4.append(s1);
        ContactsJsonData contactsjsondata;
        jsonobject3.put("Display", stringbuffer4.toString());
        jsonobject2.put("Name", jsonobject3);
        jsonobject2.put("PhoneNumber", jsonarray);
        jsonobject2.put("IsFav", isFav);
        JSONObject jsonobject4 = new JSONObject();
        jsonobject4.put("RecordId", Integer.parseInt(s.toString()));
        jsonobject4.put("RecordPayload", jsonobject2);
        contactsjsondata = new ContactsJsonData();
        contactsjsondata.setmDisplayName(stringbuffer4.toString());
        contactsjsondata.setmSingleRecord(jsonobject4);
        if (!isFav) goto _L7; else goto _L6
_L6:
        arraylist1.add(contactsjsondata);
_L31:
        JSONArray jsonarray2 = new JSONArray();
        s1 = null;
        l = -1L;
        int k3 = stringbuffer.length();
        stringbuffer.delete(0, k3);
        int i4 = stringbuffer1.length();
        stringbuffer1.delete(0, i4);
        int j4 = stringbuffer2.length();
        stringbuffer2.delete(0, j4);
        int k4 = stringbuffer3.length();
        stringbuffer3.delete(0, k4);
        stringbuffer4.delete(0, stringbuffer4.length());
        stringbuffer.setLength(0);
        stringbuffer1.setLength(0);
        stringbuffer2.setLength(0);
        stringbuffer3.setLength(0);
        stringbuffer4.setLength(0);
        i = 0;
        String s2 = cursor.getString(cursor.getColumnIndexOrThrow("contact_id"));
        s = s2;
        jsonarray = jsonarray2;
_L5:
        if (cursor.getInt(cursor.getColumnIndexOrThrow("starred")) != 1) goto _L9; else goto _L8
_L8:
        isFav = true;
_L32:
        if (!s.equals(cursor.getString(cursor.getColumnIndexOrThrow("contact_id")))) goto _L11; else goto _L10
_L10:
        s = cursor.getString(cursor.getColumnIndexOrThrow("contact_id"));
        if (!cursor.getString(cursor.getColumnIndexOrThrow("mimetype")).equals("vnd.android.cursor.item/name")) goto _L13; else goto _L12
_L12:
        if (i != 0) goto _L11; else goto _L14
_L14:
        String s3 = cursor.getString(cursor.getColumnIndexOrThrow("data4"));
        stringbuffer.append(s3);
        String s4 = cursor.getString(cursor.getColumnIndexOrThrow("data2"));
        stringbuffer1.append(s4);
        String s5 = cursor.getString(cursor.getColumnIndexOrThrow("data5"));
        stringbuffer2.append(s5);
        String s6 = cursor.getString(cursor.getColumnIndexOrThrow("data3"));
        stringbuffer3.append(s6);
        if (!stringbuffer.toString().equals("null"))
            stringbuffer4.append(stringbuffer.toString());
        if (stringbuffer1.toString().equals("null")) goto _L16; else goto _L15
_L15:
        if (!TextUtils.isEmpty(stringbuffer4)) goto _L18; else goto _L17
_L17:
        stringbuffer4.append(stringbuffer1.toString());
_L16:
        if (stringbuffer2.toString().equals("null")) goto _L20; else goto _L19
_L19:
        if (!TextUtils.isEmpty(stringbuffer4)) goto _L22; else goto _L21
_L21:
        stringbuffer4.append(stringbuffer2.toString());
_L20:
        if (stringbuffer3.toString().equals("null")) goto _L24; else goto _L23
_L23:
        if (!TextUtils.isEmpty(stringbuffer4)) goto _L26; else goto _L25
_L25:
        stringbuffer4.append(stringbuffer3.toString());
          goto _L24
_L11:
        if (!cursor.isLast()) goto _L28; else goto _L27
_L27:
        JSONObject jsonobject5;
        JSONObject jsonobject6;
        jsonobject5 = new JSONObject();
        jsonobject6 = new JSONObject();
        jsonobject6.put("Initial", stringbuffer.toString());
        jsonobject6.put("First", stringbuffer1.toString());
        jsonobject6.put("Middle", stringbuffer2.toString());
        jsonobject6.put("Last", stringbuffer3.toString());
        if (!TextUtils.isEmpty(stringbuffer4) || s1 == null)
            break MISSING_BLOCK_LABEL_1003;
        stringbuffer4.append(s1);
        ContactsJsonData contactsjsondata1;
        jsonobject6.put("Display", stringbuffer4.toString());
        jsonobject5.put("Name", jsonobject6);
        jsonobject5.put("PhoneNumber", jsonarray);
        jsonobject5.put("IsFav", isFav);
        JSONObject jsonobject7 = new JSONObject();
        jsonobject7.put("RecordId", Integer.parseInt(s.toString()));
        jsonobject7.put("RecordPayload", jsonobject5);
        contactsjsondata1 = new ContactsJsonData();
        contactsjsondata1.setmDisplayName(stringbuffer4.toString());
        contactsjsondata1.setmSingleRecord(jsonobject7);
        if (!isFav) goto _L30; else goto _L29
_L29:
        arraylist1.add(contactsjsondata1);
_L40:
        jsonarray2 = new JSONArray();
        l = -1L;
        int l4 = stringbuffer.length();
        stringbuffer.delete(0, l4);
        int i5 = stringbuffer1.length();
        stringbuffer1.delete(0, i5);
        int j5 = stringbuffer2.length();
        stringbuffer2.delete(0, j5);
        int k5 = stringbuffer3.length();
        stringbuffer3.delete(0, k5);
        stringbuffer4.delete(0, stringbuffer4.length());
        stringbuffer.setLength(0);
        stringbuffer1.setLength(0);
        stringbuffer2.setLength(0);
        stringbuffer3.setLength(0);
        stringbuffer4.setLength(0);
        jsonarray = jsonarray2;
        i = 0;
        s1 = null;
          goto _L28
_L7:
        arraylist.add(contactsjsondata);
          goto _L31
        Exception exception2;
        exception2;
_L59:
        Log.e("ContactController", (new StringBuilder()).append("Exception in getJSONArray ").append(exception2.getMessage()).toString());
        exception2.printStackTrace();
        if (cursor == null)
            break MISSING_BLOCK_LABEL_1326;
        if (cursor.isClosed())
            break MISSING_BLOCK_LABEL_1326;
        cursor.close();
        cursor = null;
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_1339;
        arraylist.clear();
        arraylist = null;
        if (arraylist1 == null)
            break MISSING_BLOCK_LABEL_1352;
        arraylist1.clear();
        arraylist1 = null;
        if (stringbuffer == null)
            break MISSING_BLOCK_LABEL_1377;
        int k1 = stringbuffer.length();
        stringbuffer.delete(0, k1);
        stringbuffer.setLength(0);
        stringbuffer = null;
        if (stringbuffer1 == null)
            break MISSING_BLOCK_LABEL_1402;
        int l1 = stringbuffer1.length();
        stringbuffer1.delete(0, l1);
        stringbuffer1.setLength(0);
        stringbuffer1 = null;
        if (stringbuffer2 == null)
            break MISSING_BLOCK_LABEL_1427;
        int i2 = stringbuffer2.length();
        stringbuffer2.delete(0, i2);
        stringbuffer2.setLength(0);
        stringbuffer2 = null;
        if (stringbuffer3 == null)
            break MISSING_BLOCK_LABEL_1457;
        int j2 = stringbuffer3.length();
        stringbuffer3.delete(0, j2);
        stringbuffer3.setLength(0);
        stringbuffer3 = null;
        if (stringbuffer4 == null)
            break MISSING_BLOCK_LABEL_1483;
        stringbuffer4.delete(0, stringbuffer4.length());
        stringbuffer4.setLength(0);
        stringbuffer4 = null;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_1505;
        if (!cursor.isClosed())
            cursor.close();
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_1515;
        arraylist.clear();
        if (arraylist1 == null)
            break MISSING_BLOCK_LABEL_1525;
        arraylist1.clear();
        if (stringbuffer == null)
            break MISSING_BLOCK_LABEL_1548;
        int k2 = stringbuffer.length();
        stringbuffer.delete(0, k2);
        stringbuffer.setLength(0);
        if (stringbuffer1 == null)
            break MISSING_BLOCK_LABEL_1571;
        int l2 = stringbuffer1.length();
        stringbuffer1.delete(0, l2);
        stringbuffer1.setLength(0);
        if (stringbuffer2 == null)
            break MISSING_BLOCK_LABEL_1594;
        int i3 = stringbuffer2.length();
        stringbuffer2.delete(0, i3);
        stringbuffer2.setLength(0);
        if (stringbuffer3 == null)
            break MISSING_BLOCK_LABEL_1621;
        int j3 = stringbuffer3.length();
        stringbuffer3.delete(0, j3);
        stringbuffer3.setLength(0);
        if (stringbuffer4 == null)
            break MISSING_BLOCK_LABEL_1644;
        stringbuffer4.delete(0, stringbuffer4.length());
        stringbuffer4.setLength(0);
        jsonobject1 = null;
_L56:
        this;
        JVM INSTR monitorexit ;
        return jsonobject1;
_L9:
        isFav = false;
          goto _L32
        Exception exception;
        exception;
_L58:
        if (cursor == null)
            break MISSING_BLOCK_LABEL_1684;
        if (!cursor.isClosed())
            cursor.close();
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_1694;
        arraylist.clear();
        if (arraylist1 == null)
            break MISSING_BLOCK_LABEL_1704;
        arraylist1.clear();
        if (stringbuffer == null)
            break MISSING_BLOCK_LABEL_1727;
        int j = stringbuffer.length();
        stringbuffer.delete(0, j);
        stringbuffer.setLength(0);
        if (stringbuffer1 == null)
            break MISSING_BLOCK_LABEL_1750;
        int k = stringbuffer1.length();
        stringbuffer1.delete(0, k);
        stringbuffer1.setLength(0);
        if (stringbuffer2 == null)
            break MISSING_BLOCK_LABEL_1773;
        int i1 = stringbuffer2.length();
        stringbuffer2.delete(0, i1);
        stringbuffer2.setLength(0);
        if (stringbuffer3 == null)
            break MISSING_BLOCK_LABEL_1800;
        int j1 = stringbuffer3.length();
        stringbuffer3.delete(0, j1);
        stringbuffer3.setLength(0);
        if (stringbuffer4 == null)
            break MISSING_BLOCK_LABEL_1823;
        stringbuffer4.delete(0, stringbuffer4.length());
        stringbuffer4.setLength(0);
        throw exception;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
_L18:
        stringbuffer4.append((new StringBuilder()).append(" ").append(stringbuffer1.toString()).toString());
          goto _L16
_L22:
        stringbuffer4.append((new StringBuilder()).append(" ").append(stringbuffer2.toString()).toString());
          goto _L20
_L26:
        stringbuffer4.append((new StringBuilder()).append(" ").append(stringbuffer3.toString()).toString());
          goto _L24
_L13:
        if (!cursor.getString(cursor.getColumnIndexOrThrow("mimetype")).equalsIgnoreCase("vnd.android.cursor.item/phone_v2")) goto _L11; else goto _L33
_L33:
        JSONObject jsonobject8;
        String s7;
        int l5;
        int i6;
        long l6;
        jsonobject8 = new JSONObject();
        s7 = cursor.getString(cursor.getColumnIndexOrThrow("data1"));
        l5 = cursor.getInt(cursor.getColumnIndexOrThrow("data2"));
        i6 = cursor.getInt(cursor.getColumnIndexOrThrow("is_primary"));
        l6 = cursor.getLong(cursor.getColumnIndexOrThrow("_id"));
        if (i6 != 1) goto _L35; else goto _L34
_L34:
        if (l5 != 1) goto _L37; else goto _L36
_L36:
        jsonobject8.put("Type", "Home");
        jsonobject8.put("Number", s7);
        jsonobject8.put("Default", true);
          goto _L38
_L60:
        jsonarray.put(jsonobject8);
          goto _L39
_L37:
        if (l5 != 2)
            break MISSING_BLOCK_LABEL_2170;
        jsonobject8.put("Type", "Mobile");
        jsonobject8.put("Number", s7);
        jsonobject8.put("Default", true);
        continue; /* Loop/switch isn't completed */
        if (l5 != 3)
            continue; /* Loop/switch isn't completed */
        jsonobject8.put("Type", "Work");
        jsonobject8.put("Number", s7);
        jsonobject8.put("Default", true);
        continue; /* Loop/switch isn't completed */
_L35:
        if (l5 != 1)
            break MISSING_BLOCK_LABEL_2244;
        jsonobject8.put("Type", "Home");
        jsonobject8.put("Number", s7);
        continue; /* Loop/switch isn't completed */
        if (l5 != 2)
            break MISSING_BLOCK_LABEL_2276;
        jsonobject8.put("Type", "Mobile");
        jsonobject8.put("Number", s7);
        continue; /* Loop/switch isn't completed */
        if (l5 != 3)
            continue; /* Loop/switch isn't completed */
        jsonobject8.put("Type", "Work");
        jsonobject8.put("Number", s7);
        continue; /* Loop/switch isn't completed */
_L30:
        arraylist.add(contactsjsondata1);
          goto _L40
_L2:
        if (cursor == null)
            break MISSING_BLOCK_LABEL_2344;
        if (cursor.isClosed())
            break MISSING_BLOCK_LABEL_2344;
        cursor.close();
        cursor = null;
        arraylist2 = new ArrayList();
        Log.d("ContactController", (new StringBuilder()).append("Favorite list size : ").append(arraylist1.size()).toString());
        Log.d("ContactController", (new StringBuilder()).append("Non-fav list size : ").append(arraylist.size()).toString());
        j6 = arraylist1.size();
        if (j6 <= 3000)
            break MISSING_BLOCK_LABEL_2478;
        Log.d("ContactController", "Favorite contact count  greater than 3000.Limiting it to 3000");
        Comparator comparator = ALPHA_COMPARATOR;
        Collections.sort(arraylist1, comparator);
_L41:
        if (j6 <= 3000)
            break MISSING_BLOCK_LABEL_2478;
        j9 = j6 - 1;
        arraylist1.remove(j9);
        j6 = arraylist1.size();
          goto _L41
        k6 = arraylist.size();
        if (k6 <= 3000 - j6) goto _L43; else goto _L42
_L42:
        Log.d("ContactController", (new StringBuilder()).append("Non-Fav count greater than : ").append(3000 - j6).toString());
        if (j6 != 3000) goto _L45; else goto _L44
_L44:
        Log.d("ContactController", "Fav count is already 3000. No need to add any further contact");
        arraylist.clear();
_L43:
        arraylist2.addAll(arraylist1);
        arraylist2.addAll(arraylist);
        Log.d("ContactController", (new StringBuilder()).append("Final Contact list size : ").append(arraylist2.size()).toString());
        Collections.sort(arraylist2, ALPHA_COMPARATOR);
        i7 = 0;
_L47:
        j7 = arraylist2.size();
        if (i7 >= j7)
            break; /* Loop/switch isn't completed */
        jsonarray1.put(((ContactsJsonData)arraylist2.get(i7)).getmSingleRecord());
        i7++;
        if (true) goto _L47; else goto _L46
_L46:
        break; /* Loop/switch isn't completed */
_L45:
        Comparator comparator1 = ALPHA_COMPARATOR;
        Collections.sort(arraylist, comparator1);
_L49:
        if (k6 <= 3000 - j6)
            break; /* Loop/switch isn't completed */
        i9 = k6 - 1;
        arraylist.remove(i9);
        k6 = arraylist.size();
        if (true) goto _L49; else goto _L48
_L48:
        if (true) goto _L43; else goto _L50
_L50:
        jsonobject.put("Records", jsonarray1);
        jsonobject.put("Name", "Phub.Phone.Contacts");
        jsonobject1.put("DataStore", jsonobject);
        arraylist.clear();
        arraylist1.clear();
        arraylist2.clear();
        l7 = Calendar.getInstance().getTimeInMillis();
        l8 = (l7 - l3) / 1000L;
        if (l8 == 0L) goto _L52; else goto _L51
_L51:
        Log.i("ContactController", (new StringBuilder()).append("Time taken for the transfer is : ").append(l8).append(" seconds").toString());
_L57:
        Log.i("ContactController", (new StringBuilder()).append("End JSON Object= ").append(jsonobject1).toString());
        if (cursor == null)
            break MISSING_BLOCK_LABEL_2843;
        if (!cursor.isClosed())
            cursor.close();
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_2853;
        arraylist.clear();
        if (arraylist1 == null)
            break MISSING_BLOCK_LABEL_2863;
        arraylist1.clear();
        if (stringbuffer == null)
            break MISSING_BLOCK_LABEL_2886;
        int k7 = stringbuffer.length();
        stringbuffer.delete(0, k7);
        stringbuffer.setLength(0);
        if (stringbuffer1 == null)
            break MISSING_BLOCK_LABEL_2909;
        int i8 = stringbuffer1.length();
        stringbuffer1.delete(0, i8);
        stringbuffer1.setLength(0);
        if (stringbuffer2 == null)
            break MISSING_BLOCK_LABEL_2932;
        int j8 = stringbuffer2.length();
        stringbuffer2.delete(0, j8);
        stringbuffer2.setLength(0);
        if (stringbuffer3 == null) goto _L54; else goto _L53
_L53:
        int k8 = stringbuffer3.length();
        stringbuffer3.delete(0, k8);
        stringbuffer3.setLength(0);
_L54:
        if (stringbuffer4 == null) goto _L56; else goto _L55
_L55:
        stringbuffer4.delete(0, stringbuffer4.length());
        stringbuffer4.setLength(0);
          goto _L56
_L52:
        l9 = l7 - l3;
        Log.i("ContactController", (new StringBuilder()).append("Time taken for the transfer is : ").append(l9).append(" millisec").toString());
          goto _L57
        exception;
        jsonarray2;
          goto _L58
        exception2;
        jsonarray2;
          goto _L59
_L24:
        i++;
        break; /* Loop/switch isn't completed */
_L38:
        if (l5 != 1 && l5 != 2 && l5 != 3) goto _L11; else goto _L60
_L39:
        ArrayList arraylist2;
        int j6;
        int k6;
        int i7;
        int j7;
        long l7;
        long l8;
        long l9;
        int i9;
        int j9;
        if (l == -1L && s1 == null && l6 >= 0L)
        {
            l = l6;
            s1 = s7;
            break; /* Loop/switch isn't completed */
        }
        if (l6 < l && l6 >= 0L)
        {
            l = l6;
            s1 = s7;
        }
        break; /* Loop/switch isn't completed */
    }

    private void sendUpdateIndication()
    {
        this;
        JVM INSTR monitorenter ;
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("store", "Phub.Phone.Contacts");
        jsonobject.put("sequence", getSequence());
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("ContactController", "Sending SyncStoreUpdatedInd to WD for Contacts");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 9, 10, jsonobject, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
            Log.d("ContactController", "SyncStoreUpdatedInd sent to WD");
            Log.d("ContactController", jsonobject.toString());
        }
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    private boolean writeContactToFile(String s, long l)
    {
        BufferedWriter bufferedwriter;
        FileWriter filewriter;
        File file;
        Log.d("ContactController", "Writing Contact JSON data to file");
        bufferedwriter = null;
        filewriter = null;
        file = null;
        File file2 = resultFileFolderLocation;
        bufferedwriter = null;
        file = null;
        filewriter = null;
        if (file2 != null)
            break MISSING_BLOCK_LABEL_78;
        resultFileFolderLocation = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        boolean flag1 = resultFileFolderLocation.mkdirs();
        bufferedwriter = null;
        file = null;
        filewriter = null;
        if (!flag1) goto _L2; else goto _L1
_L1:
        File file3 = new File(resultFileFolderLocation, (new StringBuilder()).append("Phub.Phone.Contacts_").append(l).append(".jsn").toString());
        FileWriter filewriter1 = new FileWriter(file3);
        BufferedWriter bufferedwriter1 = new BufferedWriter(filewriter1);
        file = file3;
        filewriter = filewriter1;
        bufferedwriter = bufferedwriter1;
_L4:
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_199;
        bufferedwriter.write(s);
        bufferedwriter.newLine();
        bufferedwriter.flush();
        bufferedwriter.close();
        Log.e("ContactController", "Called file nulling writeContactToFile() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_217;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_230;
        filewriter.close();
        if (file == null);
        try
        {
            if (resultFileFolderLocation != null)
                resultFileFolderLocation = null;
        }
        catch (Exception exception3)
        {
            Log.e("ContactController", "Exception while nulling writeContactToFile() #2");
            exception3.printStackTrace();
        }
        flag = true;
        return flag;
_L2:
        flag2 = resultFileFolderLocation.exists();
        bufferedwriter = null;
        file = null;
        filewriter = null;
        if (!flag2)
            continue; /* Loop/switch isn't completed */
        filewriter2 = new FileWriter((new StringBuilder()).append(resultFileFolderLocation).append("/").append("Phub.Phone.Contacts").append("_").append(l).append(".jsn").toString(), false);
        bufferedwriter2 = new BufferedWriter(filewriter2);
        filewriter = filewriter2;
        bufferedwriter = bufferedwriter2;
        file = null;
        if (true) goto _L4; else goto _L3
_L3:
        ioexception;
_L7:
        try
        {
            Log.e("ContactController", "Called file nulling writeContactToFile() #2");
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception2)
        {
            Log.e("ContactController", "Exception while nulling writeContactToFile() #2");
            exception2.printStackTrace();
            return false;
        }
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_386;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_603;
        filewriter.close();
        break MISSING_BLOCK_LABEL_603;
_L8:
        file1 = resultFileFolderLocation;
        flag = false;
        if (file1 == null)
            break MISSING_BLOCK_LABEL_245;
        resultFileFolderLocation = null;
        return false;
        exception;
_L6:
        Log.e("ContactController", "Called file nulling writeContactToFile() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_457;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_611;
        filewriter.close();
        break MISSING_BLOCK_LABEL_611;
        if (file == null);
        try
        {
            if (resultFileFolderLocation != null)
                resultFileFolderLocation = null;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1)
        {
            Log.e("ContactController", "Exception while nulling writeContactToFile() #2");
            exception1.printStackTrace();
        }
        throw exception;
        exception;
        file = file3;
        bufferedwriter = null;
        filewriter = null;
        continue; /* Loop/switch isn't completed */
        exception;
        file = file3;
        filewriter = filewriter1;
        bufferedwriter = null;
        continue; /* Loop/switch isn't completed */
        exception;
        filewriter = filewriter2;
        bufferedwriter = null;
        file = null;
        if (true) goto _L6; else goto _L5
_L5:
        ioexception2;
        file = file3;
        bufferedwriter = null;
        filewriter = null;
          goto _L7
        ioexception1;
        file = file3;
        filewriter = filewriter1;
        bufferedwriter = null;
          goto _L7
        ioexception3;
        filewriter = filewriter2;
        bufferedwriter = null;
        file = null;
          goto _L7
        if (file == null);
          goto _L8
    }

    public void createJSONFile()
    {
        this;
        JVM INSTR monitorenter ;
        JSONObject jsonobject;
        Log.d("ContactController", "createJSONFile() called.");
        jsonobject = getContactJsonArray();
        File file;
        if (resultFileFolderLocation == null)
            resultFileFolderLocation = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        file = new File((new StringBuilder()).append(resultFileFolderLocation).append("/").append("Phub.Phone.Contacts").append("_").append(getSequence()).append(".jsn").toString());
        if (!resultFileFolderLocation.exists()) goto _L2; else goto _L1
_L1:
        boolean flag = file.exists();
        if (!flag) goto _L2; else goto _L3
_L3:
        long l1;
        long l2;
        Log.v("SyncTest", (new StringBuilder()).append("Before File Checksum Comparision: ").append(System.currentTimeMillis()).toString());
        createTempStoreFile(jsonobject.toString());
        l1 = Utils.getCheckSum((new StringBuilder()).append("Phub.Phone.Contacts_").append(getSequence()).append(".jsn").toString());
        l2 = Utils.getCheckSum("Phub.Phone.Contacts_Temp.jsn");
        Log.d("ContactController", (new StringBuilder()).append("currentChecksum = ").append(l1).append(" tempChecksum = ").append(l2).toString());
        if (l1 != l2) goto _L5; else goto _L4
_L4:
        Log.v("SyncTest", (new StringBuilder()).append("After File Checksum Comparision: ").append(System.currentTimeMillis()).toString());
        Log.d("ContactController", " Contact Data did not change");
_L8:
        if (!bContactContentObserverCalled) goto _L7; else goto _L6
_L6:
        Log.d("ContactController", "Contact ContentObserver has been called. Contact Store Creation again");
        bContactContentObserverCalled = false;
        createJSONFile();
_L11:
        this;
        JVM INSTR monitorexit ;
        return;
_L5:
        Log.v("SyncTest", (new StringBuilder()).append("After File Checksum Comparision: ").append(System.currentTimeMillis()).toString());
        Log.d("ContactController", " Contact Data is been changed.Update the sequence.Write the new file to SD card");
        if (writeContactToFile(jsonobject.toString(), l2))
        {
            setSequence(l2);
            if (getSequence() != 0L)
                Utils.deleteOldStoreFile(file.getAbsolutePath());
            sendUpdateIndication();
        }
          goto _L8
        Exception exception2;
        exception2;
        exception2.printStackTrace();
        if (!bContactContentObserverCalled) goto _L10; else goto _L9
_L9:
        Log.d("ContactController", "Contact ContentObserver has been called. Contact Store Creation again");
        bContactContentObserverCalled = false;
        createJSONFile();
          goto _L11
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        if (!bContactContentObserverCalled)
            break MISSING_BLOCK_LABEL_597;
        Log.d("ContactController", "Contact ContentObserver has been called. Contact Store Creation again");
        bContactContentObserverCalled = false;
        createJSONFile();
          goto _L11
        Exception exception;
        exception;
        throw exception;
_L7:
        bContactStoreCreation = false;
          goto _L11
_L10:
        bContactStoreCreation = false;
          goto _L11
_L2:
label0:
        {
            Log.d("ContactController", "File not Found. ");
            createTempStoreFile(jsonobject.toString());
            long l = Utils.getCheckSum("Phub.Phone.Contacts_Temp.jsn");
            if (writeContactToFile(jsonobject.toString(), l))
            {
                setSequence(l);
                if (getSequence() != 0L && getSequence() != l)
                    Utils.deleteOldStoreFile(file.getAbsolutePath());
                sendUpdateIndication();
            }
            if (!bContactContentObserverCalled)
                break label0;
            Log.d("ContactController", "Contact ContentObserver has been called. Contact Store Creation again");
            bContactContentObserverCalled = false;
            createJSONFile();
        }
          goto _L11
        bContactStoreCreation = false;
          goto _L11
        bContactStoreCreation = false;
          goto _L11
    }

    public String[] getContactInfoFromPhone(String s, Context context)
    {
        Cursor cursor;
        String as[];
        cursor = null;
        as = new String[4];
        Uri uri = Uri.withAppendedPath(android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI, s);
        cursor = context.getContentResolver().query(uri, new String[] {
            "_id", "display_name", "type", "starred"
        }, null, null, "display_name ASC");
        String s1 = "false";
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        Log.d("ContactController", (new StringBuilder()).append("cursor Fav: ").append(cursor.getCount()).toString());
        if (cursor.getInt(cursor.getColumnIndex("starred")) == 1)
            s1 = "true";
        String s2;
        String s4;
        int i;
        s2 = cursor.getString(cursor.getColumnIndex("display_name"));
        s4 = cursor.getString(cursor.getColumnIndex("_id"));
        i = cursor.getInt(cursor.getColumnIndex("type"));
        Exception exception;
        Exception exception1;
        String s3;
        if (i == 1)
            s3 = "Home";
        else
        if (i == 2)
            s3 = "Mobile";
        else
        if (i == 3)
            s3 = "Work";
        else
            s3 = "Unknown";
        if (cursor == null)
            break MISSING_BLOCK_LABEL_206;
        cursor.close();
        cursor = null;
        as[0] = s2;
        as[1] = s3;
        as[2] = s4;
        as[3] = s1;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
_L5:
        return as;
_L2:
        s2 = "Unknown";
        s3 = "Unknown";
        s4 = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        Log.e("ContactController", (new StringBuilder()).append("Exception occured in getContactInfoFromPhone(): ").append(exception1.toString()).toString());
        exception1.printStackTrace();
        as[0] = "";
        as[1] = "Unknown";
        as[2] = null;
        as[3] = "false";
        if (cursor == null)
            continue; /* Loop/switch isn't completed */
        if (cursor.isClosed())
            continue; /* Loop/switch isn't completed */
        cursor.close();
        cursor = null;
        if (cursor == null || cursor.isClosed()) goto _L5; else goto _L4
_L4:
        cursor.close();
        return as;
        exception;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception;
        if (true) goto _L7; else goto _L6
_L7:
        break MISSING_BLOCK_LABEL_194;
_L6:
    }

    public long getSequence()
    {
        long l = connFactory.getContext().getSharedPreferences("stores_pref", 0).getLong(KEY_SEQUENCE, 0L);
        Log.d("ContactController", (new StringBuilder()).append("GET sequence:  ").append(l).toString());
        return l;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
    }

    public boolean isPriviledgeContact(String s, Context context)
    {
        boolean flag;
        Cursor cursor;
        flag = false;
        Log.i("ContactController", (new StringBuilder()).append("PhoneNumber=").append(s).toString());
        cursor = null;
        if (s == null)
            break MISSING_BLOCK_LABEL_211;
        boolean flag1 = s.equals("");
        flag = false;
        cursor = null;
        if (flag1)
            break MISSING_BLOCK_LABEL_211;
        Uri uri = Uri.withAppendedPath(android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI, s);
        cursor = context.getContentResolver().query(uri, new String[] {
            "_id", "display_name", "type", "starred"
        }, null, null, "display_name ASC");
        flag = false;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_211;
        int i;
        if (!cursor.moveToFirst())
            break MISSING_BLOCK_LABEL_211;
        Log.d("ContactController", (new StringBuilder()).append("cursor Fav - isPrivilagedContact: ").append(cursor.getCount()).toString());
        i = cursor.getInt(cursor.getColumnIndex("starred"));
        flag = false;
        if (i == 1)
            flag = true;
        cursor.close();
        if (false && !null.isClosed())
            null.close();
        return flag;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        return false;
        Exception exception1;
        exception1;
        Log.e("ContactController", (new StringBuilder()).append("Exception occured in isPriviledgeContact(): ").append(exception1.toString()).toString());
        exception1.printStackTrace();
        if (cursor == null)
            break MISSING_BLOCK_LABEL_296;
        if (cursor.isClosed())
            break MISSING_BLOCK_LABEL_296;
        cursor.close();
        cursor = null;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        return flag;
        Exception exception;
        exception;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception;
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void setSequence(long l)
    {
        android.content.SharedPreferences.Editor editor = connFactory.getContext().getSharedPreferences("stores_pref", 0).edit();
        editor.putLong(KEY_SEQUENCE, l);
        Log.d("ContactController", (new StringBuilder()).append("Set sequence:  ").append(l).toString());
        editor.commit();
    }

    public void storePhoneContactsToFile()
    {
        try
        {
            if (resultFileFolderLocation == null)
                resultFileFolderLocation = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
            (new Thread() {

                final ContactController this$0;

                public void run()
                {
                    createJSONFile();
                }

            
            {
                this$0 = ContactController.this;
                super();
            }
            }
).start();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void storeUpdatePhoneContactsForRecentComms()
    {
        if (!CommHubController.getCommHubController().bCommHubStoreCreation)
        {
            CommHubController.getCommHubController().bCommHubStoreCreation = true;
            CommHubController.getCommHubController().storeCommHubToFile();
            return;
        } else
        {
            CommHubController.getCommHubController().bCommHubStoreUpdateCalled = true;
            return;
        }
    }

    public void write(String s)
    {
        try
        {
            writer.write(s);
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
    }

}
