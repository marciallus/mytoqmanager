// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.telephony.PhoneNumberUtils;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.utils.MMSUtil;
import com.qualcomm.toq.smartwatch.utils.PhubPreference;
import java.io.*;
import java.util.*;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            ContactController

public class CommHubController extends DefaultController
{
    class CallLogDetail extends Commondetails
    {

        private String callerId;
        private String direction;
        private long duration;
        private boolean isMissedCall;
        private int itemID;
        private String name;
        private String phoneType;
        final CommHubController this$0;



/*
        static String access$002(CallLogDetail calllogdetail, String s)
        {
            calllogdetail.callerId = s;
            return s;
        }

*/



/*
        static String access$102(CallLogDetail calllogdetail, String s)
        {
            calllogdetail.name = s;
            return s;
        }

*/



/*
        static String access$202(CallLogDetail calllogdetail, String s)
        {
            calllogdetail.direction = s;
            return s;
        }

*/



/*
        static long access$302(CallLogDetail calllogdetail, long l)
        {
            calllogdetail.duration = l;
            return l;
        }

*/



/*
        static String access$402(CallLogDetail calllogdetail, String s)
        {
            calllogdetail.phoneType = s;
            return s;
        }

*/



/*
        static boolean access$502(CallLogDetail calllogdetail, boolean flag)
        {
            calllogdetail.isMissedCall = flag;
            return flag;
        }

*/


        public CallLogDetail()
        {
            this$0 = CommHubController.this;
            super();
        }
    }

    class Commondetails
    {

        public String contactID;
        public boolean isDetailUsed;
        public long receivedTime;
        final CommHubController this$0;

        public long getReceivedTime()
        {
            return receivedTime;
        }

        public Commondetails()
        {
            this$0 = CommHubController.this;
            super();
            isDetailUsed = false;
        }
    }

    class DetailsComparator
        implements Comparator
    {

        public static final int ASC = 1;
        public static final int DESC = -1;
        private int sortingOrder;
        final CommHubController this$0;

        public int compare(Commondetails commondetails, Commondetails commondetails1)
        {
            Long long1 = Long.valueOf(commondetails.getReceivedTime());
            Long long2 = Long.valueOf(commondetails1.getReceivedTime());
            return sortingOrder * long1.compareTo(long2);
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((Commondetails)obj, (Commondetails)obj1);
        }

        public DetailsComparator(int i)
        {
            this$0 = CommHubController.this;
            super();
            sortingOrder = 1;
            sortingOrder = i;
        }
    }

    class MessageDetail extends Commondetails
    {

        private int direction;
        private boolean isRead;
        private int itemID;
        private String message;
        private int privileged;
        private int recordID;
        private String senderName;
        private String senderNumber;
        final CommHubController this$0;



/*
        static String access$1002(MessageDetail messagedetail, String s)
        {
            messagedetail.message = s;
            return s;
        }

*/



/*
        static boolean access$1102(MessageDetail messagedetail, boolean flag)
        {
            messagedetail.isRead = flag;
            return flag;
        }

*/



/*
        static int access$1202(MessageDetail messagedetail, int i)
        {
            messagedetail.privileged = i;
            return i;
        }

*/



/*
        static int access$1302(MessageDetail messagedetail, int i)
        {
            messagedetail.direction = i;
            return i;
        }

*/



/*
        static int access$1402(MessageDetail messagedetail, int i)
        {
            messagedetail.recordID = i;
            return i;
        }

*/



/*
        static String access$602(MessageDetail messagedetail, String s)
        {
            messagedetail.senderNumber = s;
            return s;
        }

*/



/*
        static String access$702(MessageDetail messagedetail, String s)
        {
            messagedetail.senderName = s;
            return s;
        }

*/



/*
        static int access$902(MessageDetail messagedetail, int i)
        {
            messagedetail.itemID = i;
            return i;
        }

*/

        public MessageDetail()
        {
            this$0 = CommHubController.this;
            super();
        }
    }


    private static final int LOGTYPE_VALUE_MESS = 300;
    private static final int LOGTYPE_VALUE_MMS = 200;
    private static final String TAG = "CommHubController";
    public static final String appName = "COMMUNICATION_HUB_CONTROLLER";
    private static CommHubController mInstance = null;
    private String COMM_HUB_SEQUENCE;
    public boolean bCommHubStoreCreation;
    public boolean bCommHubStoreUpdateCalled;
    private ConnectionFactory connFactory;
    private Context context;

    public CommHubController()
    {
        COMM_HUB_SEQUENCE = "recentcommsequence";
        bCommHubStoreCreation = false;
        bCommHubStoreUpdateCalled = false;
        connFactory = ConnectionFactory.getConnectionFactory();
        context = connFactory.getContext();
    }

    private JSONObject arrangeDataInJSON(ArrayList arraylist)
    {
        JSONArray jsonarray;
        int i;
        int j;
        jsonarray = new JSONArray();
        Collections.sort(arraylist, new DetailsComparator(1));
        i = 1;
        j = -1 + arraylist.size();
_L4:
        CallLogDetail calllogdetail;
        String s1;
        if (j < 0)
            break MISSING_BLOCK_LABEL_500;
        if (!(arraylist.get(j) instanceof CallLogDetail))
            break MISSING_BLOCK_LABEL_243;
        calllogdetail = (CallLogDetail)arraylist.get(j);
        if (calllogdetail.isDetailUsed)
            break MISSING_BLOCK_LABEL_567;
        i++;
        s1 = calllogdetail.callerId;
        JSONObject jsonobject4;
        Object obj1;
        jsonobject4 = new JSONObject();
        jsonobject4.put("Name", calllogdetail.name);
        if (calllogdetail.contactID != null)
            break MISSING_BLOCK_LABEL_192;
        obj1 = JSONObject.NULL;
_L1:
        JSONArray jsonarray2;
        jsonobject4.put("ContactId", obj1);
        jsonarray2 = createRecordPayLoad(s1, arraylist);
        jsonobject4.put("CommsRecords", jsonarray2);
        if (jsonarray2 == null)
            break MISSING_BLOCK_LABEL_202;
        if (jsonarray2.length() > 0)
        {
            JSONObject jsonobject5 = new JSONObject();
            jsonobject5.put("RecordPayload", jsonobject4);
            jsonobject5.put("RecordId", i);
            jsonarray.put(jsonobject5);
            break MISSING_BLOCK_LABEL_567;
        }
        break MISSING_BLOCK_LABEL_202;
        obj1 = calllogdetail.contactID;
          goto _L1
        i--;
        try
        {
            Log.e("CommHubController", (new StringBuilder()).append("CommsRecord is empty not adding the record:").append(jsonobject4).toString());
        }
        catch (Exception exception2)
        {
            exception2.printStackTrace();
        }
        break MISSING_BLOCK_LABEL_567;
        MessageDetail messagedetail;
        String s;
        if (!(arraylist.get(j) instanceof MessageDetail))
            break MISSING_BLOCK_LABEL_567;
        messagedetail = (MessageDetail)arraylist.get(j);
        s = messagedetail.senderNumber;
        if (messagedetail.isDetailUsed)
            break MISSING_BLOCK_LABEL_567;
        i++;
        JSONObject jsonobject2;
        Object obj;
        jsonobject2 = new JSONObject();
        jsonobject2.put("Name", messagedetail.senderName);
        if (messagedetail.contactID != null)
            break MISSING_BLOCK_LABEL_459;
        obj = JSONObject.NULL;
_L2:
        JSONArray jsonarray1;
        jsonobject2.put("ContactId", obj);
        Log.d("CommHubController", (new StringBuilder()).append("calling createRecordPayLoad with number: ").append(s).toString());
        jsonarray1 = createRecordPayLoad(s, arraylist);
        jsonobject2.put("CommsRecords", jsonarray1);
        if (jsonarray1 == null)
            break MISSING_BLOCK_LABEL_469;
        Exception exception1;
        if (jsonarray1.length() > 0)
        {
            JSONObject jsonobject3 = new JSONObject();
            jsonobject3.put("RecordPayload", jsonobject2);
            jsonobject3.put("RecordId", i);
            Log.d("CommHubController", (new StringBuilder()).append("Message RecordPayload").append(jsonobject3).toString());
            jsonarray.put(jsonobject3);
            break MISSING_BLOCK_LABEL_567;
        }
        break MISSING_BLOCK_LABEL_469;
        obj = messagedetail.contactID;
          goto _L2
        i--;
        try
        {
            Log.e("CommHubController", (new StringBuilder()).append("Msg CommsRecord is empty not adding the record:").append(jsonobject2).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
        break MISSING_BLOCK_LABEL_567;
        JSONObject jsonobject = new JSONObject();
        try
        {
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("Name", "Phub.Phone.RecentComms");
            jsonobject1.put("Records", jsonarray);
            jsonobject.put("DataStore", jsonobject1);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.v("CommHubController", "Inside DATStore Json exception");
            return jsonobject;
        }
        return jsonobject;
        j--;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private JSONArray createRecordPayLoad(String s, ArrayList arraylist)
    {
        JSONArray jsonarray;
        int i;
        jsonarray = new JSONArray();
        i = -1 + arraylist.size();
_L14:
        if (i < 0)
            break MISSING_BLOCK_LABEL_576;
        if (!(arraylist.get(i) instanceof CallLogDetail)) goto _L2; else goto _L1
_L1:
        CallLogDetail calllogdetail = (CallLogDetail)arraylist.get(i);
        if (!PhoneNumberUtils.compare(calllogdetail.callerId.trim(), s.trim()) && (!calllogdetail.callerId.isEmpty() || !s.isEmpty())) goto _L2; else goto _L3
_L3:
        calllogdetail.isDetailUsed = true;
        JSONObject jsonobject2;
        JSONObject jsonobject3;
        jsonobject2 = new JSONObject();
        jsonobject2.put("CommsType", "Call");
        jsonobject2.put("ReceivedTime", calllogdetail.receivedTime);
        jsonobject2.put("CallerId", Utils.getFormattedNumber(calllogdetail.callerId));
        jsonobject2.put("ItemId", calllogdetail.itemID);
        jsonobject3 = new JSONObject();
        jsonobject3.put("Duration", calllogdetail.duration);
        jsonobject3.put("PhoneType", calllogdetail.phoneType);
        if (calllogdetail.direction != null) goto _L5; else goto _L4
_L4:
        String s3 = "Unknown";
_L11:
        MessageDetail messagedetail;
        JSONObject jsonobject;
        JSONObject jsonobject1;
        String s1;
        String s4;
        try
        {
            jsonobject3.put("Direction", s3);
            jsonobject3.put("IsMissedCall", calllogdetail.isMissedCall);
            jsonobject2.put("CommsDetails", jsonobject3);
            jsonarray.put(jsonobject2);
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
_L2:
        if (!(arraylist.get(i) instanceof MessageDetail)) goto _L7; else goto _L6
_L6:
        messagedetail = (MessageDetail)arraylist.get(i);
        if (!PhoneNumberUtils.compare(messagedetail.senderNumber.trim(), s.trim()) && !messagedetail.senderNumber.equalsIgnoreCase(s)) goto _L7; else goto _L8
_L8:
        messagedetail.isDetailUsed = true;
        Log.d("CommHubController", (new StringBuilder()).append("Found match. obj_SmsdeDetail.sendernumber: (").append(messagedetail.senderNumber).append(")   number: (").append(s).append(")").toString());
        jsonobject = new JSONObject();
        jsonobject.put("CommsType", "Text");
        jsonobject.put("ReceivedTime", messagedetail.receivedTime);
        jsonobject.put("CallerId", Utils.getFormattedNumber(messagedetail.senderNumber));
        jsonobject.put("ItemId", messagedetail.itemID);
        jsonobject1 = new JSONObject();
        if (messagedetail.message != null) goto _L10; else goto _L9
_L9:
        s1 = "";
_L12:
        String s2;
        try
        {
            jsonobject1.put("Message", s1);
            jsonobject1.put("IsRead", messagedetail.isRead);
            jsonobject1.put("privileged", messagedetail.privileged);
            jsonobject1.put("Direction", messagedetail.direction);
            jsonobject.put("CommsDetails", jsonobject1);
            jsonarray.put(jsonobject);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("CommHubController", (new StringBuilder()).append("Exception in message payload creation: ").append(exception.getMessage()).toString());
        }
_L7:
        i--;
        continue; /* Loop/switch isn't completed */
_L5:
        s4 = calllogdetail.direction;
        s3 = s4;
          goto _L11
_L10:
        s2 = messagedetail.message;
        s1 = s2;
          goto _L12
        return jsonarray;
        if (true) goto _L14; else goto _L13
_L13:
    }

    private void createTempStoreFile(String s)
    {
        File file;
        File file1;
        BufferedWriter bufferedwriter;
        FileWriter filewriter;
        File file2;
        Log.d("CommHubController", "Inside createTempStoreFile()");
        file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        file1 = new File((new StringBuilder()).append(file).append("/").append("Phub.Phone.RecentComms").append("_Temp").append(".jsn").toString());
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
        File file3 = new File(file, "Phub.Phone.RecentComms_Temp.jsn");
        FileWriter filewriter1 = new FileWriter(file3);
        BufferedWriter bufferedwriter1 = new BufferedWriter(filewriter1);
        file2 = file3;
        filewriter = filewriter1;
        bufferedwriter = bufferedwriter1;
_L4:
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_201;
        bufferedwriter.write(s);
        bufferedwriter.newLine();
        bufferedwriter.flush();
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_214;
        filewriter.close();
        filewriter = null;
        FileWriter filewriter2;
        if (file2 != null)
            file2 = null;
        boolean flag1;
        BufferedWriter bufferedwriter2;
        try
        {
            Log.e("CommHubController", "Called file nulling createTempStore() #2");
        }
        catch (Exception exception4)
        {
            Log.e("CommHubController", "Exception while nulling createTempStore() #2");
            exception4.printStackTrace();
            return;
        }
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_240;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_250;
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
        filewriter2 = new FileWriter((new StringBuilder()).append(file).append("/").append("Phub.Phone.RecentComms").append("_Temp").append(".jsn").toString(), false);
        bufferedwriter2 = new BufferedWriter(filewriter2);
        filewriter = filewriter2;
        bufferedwriter = bufferedwriter2;
        file2 = null;
          goto _L4
        Exception exception2;
        exception2;
_L11:
        Log.e("CommHubController", (new StringBuilder()).append("Exception in createTempStoreFile(): ").append(exception2.toString()).toString());
        exception2.printStackTrace();
        try
        {
            Log.e("CommHubController", "Called file nulling createTempStore() #2");
        }
        catch (Exception exception3)
        {
            Log.e("CommHubController", "Exception while nulling createTempStore() #2");
            exception3.printStackTrace();
            return;
        }
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_426;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_436;
        filewriter.close();
        if (file2 == null);
        if (file == null);
        if (file1 == null) goto _L6; else goto _L5
_L5:
        return;
        Exception exception;
        exception;
_L10:
        Log.e("CommHubController", "Called file nulling createTempStore() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_486;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_496;
        filewriter.close();
        if (file2 == null);
        if (file == null);
        if (file1 == null);
_L8:
        throw exception;
        Exception exception1;
        exception1;
        Log.e("CommHubController", "Exception while nulling createTempStore() #2");
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

    private ArrayList fillMessageDetails(ArrayList arraylist)
    {
        int i;
        ArrayList arraylist1;
        String s;
        PhubPreference phubpreference = PhubPreference.getPhubPreference(context);
        i = 0;
        if (phubpreference != null)
        {
            int k = PhubPreference.getPhubPreference(context).getInt("DISP_MSG", 0);
            Constants.setCommsHistoryValue();
            i = ((Integer)Constants.commsHistoryValue.get(k)).intValue();
        }
        arraylist1 = new ArrayList();
        s = "";
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
            s = (new StringBuilder()).append(" LIMIT ").append(i).toString();
        String s1 = (new StringBuilder()).append("date DESC").append(s).toString();
        getSMSMessageDetailsObject(arraylist1, s1, 1);
        Log.d("CommHubController", (new StringBuilder()).append(" MessageDetail SMS Inbox size").append(arraylist1.size()).toString());
        getSMSMessageDetailsObject(arraylist1, s1, 2);
        Log.d("CommHubController", (new StringBuilder()).append(" MessageDetail SMS Inbox+outBox size ").append(arraylist1.size()).toString());
        getMMSMessageDetailObject(arraylist1, s1, 1);
        Log.d("CommHubController", (new StringBuilder()).append(" MessageDetail SMS Inbox+outBox+ MMS Inbox size ").append(arraylist1.size()).toString());
        getMMSMessageDetailObject(arraylist1, s1, 2);
        Log.d("CommHubController", (new StringBuilder()).append(" MessageDetail SMS+MMS Inbox+outBox size ").append(arraylist1.size()).toString());
        Collections.sort(arraylist1, new DetailsComparator(-1));
        int j = 0;
_L2:
        if (j >= i)
            break; /* Loop/switch isn't completed */
        if (j >= arraylist1.size())
            break; /* Loop/switch isn't completed */
        arraylist.add(arraylist1.get(j));
        j++;
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        Log.d("CommHubController", exception.toString());
        exception.printStackTrace();
_L1:
        return arraylist;
    }

    public static CommHubController getCommHubController()
    {
        if (mInstance == null)
            mInstance = new CommHubController();
        return mInstance;
    }

    private void getMMSMessageDetailObject(ArrayList arraylist, String s, int i)
    {
        Uri uri;
        String s1;
        Cursor cursor;
        uri = Uri.parse("content://mms");
        s1 = (new StringBuilder()).append("msg_box = ").append(i).toString();
        cursor = null;
        cursor = context.getContentResolver().query(uri, null, s1, null, s);
        Log.i("CommHubController", (new StringBuilder()).append("cursor:").append(cursor.getCount()).toString());
_L5:
        if (!cursor.moveToNext()) goto _L2; else goto _L1
_L1:
        String s2;
        String s3;
        s2 = cursor.getString(cursor.getColumnIndex("_ID"));
        s3 = MMSUtil.getMmsSenderAddress(s2);
        if (s3 == null) goto _L4; else goto _L3
_L3:
        if (s3.equals("")) goto _L5; else goto _L4
_L4:
        String s4;
        String s5;
        s4 = ContactController.getContactController().getContactInfoFromPhone(s3, context)[0];
        s5 = ContactController.getContactController().getContactInfoFromPhone(s3, context)[2];
        Exception exception1;
        int j;
        String s6;
        int k;
        long l;
        MessageDetail messagedetail;
        boolean flag;
        if (ContactController.getContactController().isPriviledgeContact(s3, context))
            j = 1;
        else
            j = 0;
        s6 = MMSUtil.getMmsText(s2);
        if (s6.equals("")) goto _L5; else goto _L6
_L6:
        k = cursor.getInt(cursor.getColumnIndex("read"));
        l = cursor.getLong(cursor.getColumnIndex("date"));
        messagedetail = new MessageDetail();
        if (s5 == null)
            s5 = null;
        messagedetail.contactID = s5;
        messagedetail.receivedTime = l;
        if (s4 == null)
            break MISSING_BLOCK_LABEL_299;
        if (!"Unknown".equals(s4) && !"".equals(s4))
            break MISSING_BLOCK_LABEL_322;
        s4 = (new StringBuilder()).append("").append(s3).toString();
        messagedetail.senderName = s4;
        messagedetail.message = s6;
        if (k == 0)
            flag = false;
        else
            flag = true;
        messagedetail.isRead = flag;
        messagedetail.itemID = Integer.parseInt(s2);
        messagedetail.recordID = Integer.parseInt(s2);
        messagedetail.privileged = j;
        messagedetail.senderNumber = s3;
        messagedetail.direction = i;
        if (s3.equals(Constants.UNKNOWN_NUMBER) || s3.equals(Constants.PRIVATE_NUMBER) || s3.equals(Constants.PAYPHONE_NUMBER))
        {
            messagedetail.senderNumber = "";
            messagedetail.senderName = "Unknown";
        }
        Log.d("CommHubController", "-------MMS details------");
        Log.d("CommHubController", (new StringBuilder()).append(" contactID=").append(messagedetail.contactID).append(" receivedTime=").append(messagedetail.receivedTime).append(" SenderName=").append(messagedetail.senderName).append(" Message=").append(messagedetail.message).toString());
        Log.d("CommHubController", (new StringBuilder()).append(" isRead=").append(messagedetail.isRead).append(" itemID=").append(messagedetail.itemID).append(" recordID=").append(messagedetail.recordID).append(" privileged=").append(messagedetail.privileged).toString());
        arraylist.add(messagedetail);
          goto _L5
        exception1;
        Log.d("CommHubController", exception1.toString());
        exception1.printStackTrace();
        if (cursor != null && !cursor.isClosed())
            cursor.close();
_L8:
        return;
_L2:
        if (cursor == null || cursor.isClosed()) goto _L8; else goto _L7
_L7:
        cursor.close();
        return;
        Exception exception;
        exception;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception;
    }

    private void getSMSMessageDetailsObject(ArrayList arraylist, String s, int i)
    {
        Uri uri;
        String s1;
        Cursor cursor;
        uri = Uri.parse("content://sms");
        s1 = (new StringBuilder()).append("type = ").append(i).toString();
        cursor = null;
        cursor = context.getContentResolver().query(uri, null, s1, null, s);
        Log.i("CommHubController", (new StringBuilder()).append("cursor:").append(cursor.getCount()).toString());
_L5:
        if (!cursor.moveToNext()) goto _L2; else goto _L1
_L1:
        String s2;
        String s3;
        String s4;
        int j = cursor.getColumnIndex("_ID");
        s2 = cursor.getString(j);
        int k = cursor.getColumnIndex("thread_id");
        s3 = cursor.getString(k);
        int l = cursor.getColumnIndex("address");
        s4 = cursor.getString(l);
        if (s4 == null) goto _L4; else goto _L3
_L3:
        if (s4.isEmpty()) goto _L5; else goto _L4
_L4:
        if (s4 == null)
            break MISSING_BLOCK_LABEL_198;
        if (s4.contains("@"))
            s4 = PhoneNumberUtils.extractNetworkPortion(s4);
        String s5;
        String s6;
        ContactController contactcontroller2;
        Context context3;
        ContactController contactcontroller = ContactController.getContactController();
        Context context1 = context;
        s5 = contactcontroller.getContactInfoFromPhone(s4, context1)[0];
        ContactController contactcontroller1 = ContactController.getContactController();
        Context context2 = context;
        s6 = contactcontroller1.getContactInfoFromPhone(s4, context2)[2];
        contactcontroller2 = ContactController.getContactController();
        context3 = context;
        Exception exception1;
        int i1;
        int j1;
        String s7;
        int k1;
        int l1;
        int i2;
        long l2;
        MessageDetail messagedetail;
        boolean flag;
        if (contactcontroller2.isPriviledgeContact(s4, context3))
            i1 = 1;
        else
            i1 = 0;
        j1 = cursor.getColumnIndex("body");
        s7 = cursor.getString(j1);
        k1 = cursor.getColumnIndex("read");
        l1 = cursor.getInt(k1);
        i2 = cursor.getColumnIndex("date");
        l2 = cursor.getLong(i2);
        messagedetail = new MessageDetail();
        if (s6 == null)
            s6 = null;
        messagedetail.contactID = s6;
        messagedetail.receivedTime = l2 / 1000L;
        if (s5 == null)
            break MISSING_BLOCK_LABEL_403;
        if (!"Unknown".equals(s5) && !"".equals(s5))
            break MISSING_BLOCK_LABEL_426;
        s5 = (new StringBuilder()).append("").append(s4).toString();
        messagedetail.senderName = s5;
        messagedetail.message = s7;
        if (l1 == 0)
            flag = false;
        else
            flag = true;
        messagedetail.isRead = flag;
        messagedetail.itemID = Integer.parseInt(s3);
        messagedetail.recordID = Integer.parseInt(s2);
        messagedetail.privileged = i1;
        messagedetail.senderNumber = s4;
        messagedetail.direction = i;
        if (s4 == null)
            break MISSING_BLOCK_LABEL_570;
        String s8 = Constants.UNKNOWN_NUMBER;
        if (!s4.equals(s8))
        {
            String s9 = Constants.PRIVATE_NUMBER;
            if (!s4.equals(s9))
            {
                String s10 = Constants.PAYPHONE_NUMBER;
                if (!s4.equals(s10))
                    break MISSING_BLOCK_LABEL_570;
            }
        }
        messagedetail.senderNumber = "";
        messagedetail.senderName = "Unknown";
        Log.d("CommHubController", "-------SMS details------");
        Log.d("CommHubController", (new StringBuilder()).append(" contactID=").append(messagedetail.contactID).append(" receivedTime=").append(messagedetail.receivedTime).append(" SenderName=").append(messagedetail.senderName).append(" Message=").append(messagedetail.message).toString());
        Log.d("CommHubController", (new StringBuilder()).append(" isRead=").append(messagedetail.isRead).append(" itemID=").append(messagedetail.itemID).append(" recordID=").append(messagedetail.recordID).append(" privileged=").append(messagedetail.privileged).toString());
        arraylist.add(messagedetail);
          goto _L5
        exception1;
        Log.d("CommHubController", exception1.toString());
        exception1.printStackTrace();
        if (cursor != null && !cursor.isClosed())
            cursor.close();
_L7:
        return;
_L2:
        if (cursor == null || cursor.isClosed()) goto _L7; else goto _L6
_L6:
        cursor.close();
        return;
        Exception exception;
        exception;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    private boolean writeCommHubToFile(String s, long l)
    {
        BufferedWriter bufferedwriter;
        FileWriter filewriter;
        File file;
        File file1;
        Log.d("CommHubController", "Writing Comm Hub JSON data to file");
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
        File file3 = new File(file2, (new StringBuilder()).append("Phub.Phone.RecentComms_").append(l).append(".jsn").toString());
        FileWriter filewriter1 = new FileWriter(file3);
        BufferedWriter bufferedwriter1 = new BufferedWriter(filewriter1);
        file = file3;
        filewriter = filewriter1;
        bufferedwriter = bufferedwriter1;
_L4:
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_178;
        bufferedwriter.write(s);
        bufferedwriter.newLine();
        bufferedwriter.flush();
        bufferedwriter.close();
        Log.e("CommHubController", "Called file nulling writeCommHubToFile() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_196;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_206;
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
        FileWriter filewriter2 = new FileWriter((new StringBuilder()).append(file2).append("/").append("Phub.Phone.RecentComms").append("_").append(l).append(".jsn").toString(), false);
        BufferedWriter bufferedwriter2 = new BufferedWriter(filewriter2);
        filewriter = filewriter2;
        bufferedwriter = bufferedwriter2;
        file = null;
          goto _L4
        Exception exception3;
        exception3;
        Log.e("CommHubController", "Exception while nulling writeCommHubToFile() #2");
        exception3.printStackTrace();
          goto _L5
        IOException ioexception4;
        ioexception4;
_L12:
        try
        {
            Log.e("CommHubController", "Called file nulling writeCommHubToFile() #2");
        }
        catch (Exception exception)
        {
            Log.e("CommHubController", "Exception while nulling writeCommHubToFile() #2");
            exception.printStackTrace();
            return false;
        }
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_358;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_368;
        filewriter.close();
        if (file == null);
        flag = false;
        if (file1 == null) goto _L7; else goto _L6
_L6:
        return false;
        Exception exception1;
        exception1;
_L11:
        Log.e("CommHubController", "Called file nulling writeCommHubToFile() #2");
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_420;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_430;
        filewriter.close();
        if (file == null);
        if (file1 == null);
_L9:
        throw exception1;
        Exception exception2;
        exception2;
        Log.e("CommHubController", "Exception while nulling writeCommHubToFile() #2");
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

    public JSONObject createCommHubJson()
    {
        ArrayList arraylist;
        JSONObject jsonobject;
        arraylist = new ArrayList();
        jsonobject = new JSONObject();
        JSONObject jsonobject1;
        arraylist = fillCallLogDetails(arraylist);
        arraylist = fillMessageDetails(arraylist);
        jsonobject1 = arrangeDataInJSON(arraylist);
        jsonobject = jsonobject1;
        if (arraylist != null)
            arraylist.clear();
_L2:
        return jsonobject;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        Log.d("CommHubController", (new StringBuilder()).append("Exception ").append(exception1).toString());
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        arraylist.clear();
        return jsonobject;
        Exception exception;
        exception;
        if (arraylist != null)
            arraylist.clear();
        throw exception;
    }

    public void createJSONFile()
    {
        this;
        JVM INSTR monitorenter ;
        JSONObject jsonobject;
        File file;
        File file1;
        jsonobject = createCommHubJson();
        Log.d("CommHubController", (new StringBuilder()).append("storeCommHubToFile() called: \n").append(jsonobject.toString()).toString());
        file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        file1 = new File((new StringBuilder()).append(file).append("/").append("Phub.Phone.RecentComms").append("_").append(getSequence()).append(".jsn").toString());
        if (!file.exists()) goto _L2; else goto _L1
_L1:
        boolean flag = file1.exists();
        if (!flag) goto _L2; else goto _L3
_L3:
        long l1;
        long l2;
        createTempStoreFile(jsonobject.toString());
        l1 = Utils.getCheckSum((new StringBuilder()).append("Phub.Phone.RecentComms_").append(getSequence()).append(".jsn").toString());
        l2 = Utils.getCheckSum("Phub.Phone.RecentComms_Temp.jsn");
        Log.d("CommHubController", (new StringBuilder()).append("currentChecksum = ").append(l1).append(" tempChecksum = ").append(l2).toString());
        if (l1 != l2) goto _L5; else goto _L4
_L4:
        Log.d("CommHubController", " Comm Hub Data did not change");
_L8:
        if (!bCommHubStoreUpdateCalled) goto _L7; else goto _L6
_L6:
        Log.d("CommHubController", "Comm Hub update has been called. Comm Hub Store Creation again");
        bCommHubStoreUpdateCalled = false;
        createJSONFile();
_L9:
        this;
        JVM INSTR monitorexit ;
        return;
_L5:
        Log.d("CommHubController", " Comm Hub Data is been changed.Update the sequence.Write the new file to SD card");
        if (writeCommHubToFile(jsonobject.toString(), l2))
        {
            if (getSequence() != 0L)
                Utils.deleteOldStoreFile(file1.getAbsolutePath());
            setSequence(l2);
            sendCommHubStoreUpdateInd();
        }
          goto _L8
        Exception exception2;
        exception2;
        exception2.printStackTrace();
          goto _L9
        Exception exception1;
        exception1;
        exception1.printStackTrace();
          goto _L9
        Exception exception;
        exception;
        throw exception;
_L7:
        bCommHubStoreCreation = false;
          goto _L9
_L2:
label0:
        {
            Log.d("CommHubController", "File not Found. ");
            createTempStoreFile(jsonobject.toString());
            long l = Utils.getCheckSum("Phub.Phone.RecentComms_Temp.jsn");
            if (writeCommHubToFile(jsonobject.toString(), l))
            {
                if (getSequence() != 0L && getSequence() != l)
                    Utils.deleteOldStoreFile(file1.getAbsolutePath());
                setSequence(l);
                sendCommHubStoreUpdateInd();
            }
            if (!bCommHubStoreUpdateCalled)
                break label0;
            Log.d("CommHubController", "Comm Hub update has been called. Comm Hub Store Creation again");
            bCommHubStoreUpdateCalled = false;
            createJSONFile();
        }
          goto _L9
        bCommHubStoreCreation = false;
          goto _L9
    }

    public ArrayList fillCallLogDetails(ArrayList arraylist)
    {
        this;
        JVM INSTR monitorenter ;
        PhubPreference phubpreference = PhubPreference.getPhubPreference(context);
        int i;
        i = 0;
        if (phubpreference == null)
            break MISSING_BLOCK_LABEL_52;
        int j = PhubPreference.getPhubPreference(context).getInt("CALL_HISTORY", 0);
        Constants.setCommsHistoryValue();
        i = ((Integer)Constants.commsHistoryValue.get(j)).intValue();
        Cursor cursor = null;
        String s = Build.MANUFACTURER;
        String as[] = {
            "_id", "number", "numbertype", "type", "name", "date", "duration"
        };
        String s1 = "";
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        cursor = null;
        if (connectionfactory == null)
            break MISSING_BLOCK_LABEL_167;
        Context context1 = ConnectionFactory.getConnectionFactory().getContext();
        cursor = null;
        if (context1 == null)
            break MISSING_BLOCK_LABEL_167;
        s1 = (new StringBuilder()).append(" LIMIT ").append(i).toString();
        String s2 = (new StringBuilder()).append("date DESC").append(s1).toString();
        if (s == null) goto _L2; else goto _L1
_L1:
        if (!s.contains("samsung")) goto _L2; else goto _L3
_L3:
        cursor = context.getContentResolver().query(android.provider.CallLog.Calls.CONTENT_URI, null, null, null, s2);
_L11:
        if (!cursor.moveToNext()) goto _L5; else goto _L4
_L4:
        if (s == null) goto _L7; else goto _L6
_L6:
        boolean flag = s.contains("samsung");
        if (!flag) goto _L7; else goto _L8
_L8:
        if (cursor.getColumnIndex("logtype") == -1) goto _L10; else goto _L9
_L9:
        int j3;
        int i3 = cursor.getColumnIndex("logtype");
        j3 = cursor.getInt(i3);
        if (j3 == 300 || j3 == 200) goto _L11; else goto _L10
_L10:
        if (cursor.getColumnIndex("messageid") == -1) goto _L7; else goto _L12
_L12:
        String s9;
        int k2 = cursor.getColumnIndex("messageid");
        s9 = cursor.getString(k2);
        if (s9 != null) goto _L11; else goto _L7
_L7:
        int i1;
        JSONObject jsonobject = new JSONObject();
        int k = cursor.getColumnIndex("_id");
        jsonobject.put("RecordId", Integer.parseInt(cursor.getString(k)));
        int l = cursor.getColumnIndex("type");
        i1 = cursor.getInt(l);
        String s3 = null;
        i1;
        JVM INSTR tableswitch 1 3: default 983
    //                   1 927
    //                   2 1006
    //                   3 1014;
           goto _L13 _L14 _L15 _L16
_L28:
        String s4;
        String s5;
        String s6;
        int j1 = cursor.getColumnIndex("number");
        s4 = cursor.getString(j1);
        s5 = ContactController.getContactController().getContactInfoFromPhone(s4, context)[0];
        s6 = ContactController.getContactController().getContactInfoFromPhone(s4, context)[2];
        String s7 = "Other";
        int l1;
        int k1 = cursor.getColumnIndex("numbertype");
        l1 = cursor.getInt(k1);
        Exception exception;
        Exception exception1;
        Exception exception2;
        int i2;
        long l2;
        int j2;
        long l3;
        String s8;
        CallLogDetail calllogdetail;
        Exception exception3;
        boolean flag1;
        Exception exception4;
        if (l1 == 1)
            s7 = "Home";
        else
        if (l1 == 2)
            s7 = "Mobile";
        else
        if (l1 == 3)
            s7 = "Work";
        i2 = cursor.getColumnIndex("date");
        l2 = cursor.getLong(i2);
        j2 = cursor.getColumnIndex("duration");
        l3 = cursor.getLong(j2);
        s8 = Utils.getFormattedNumber(s4);
        if (s5 == null) goto _L18; else goto _L17
_L17:
        if (!"Unknown".equals(s5) && !"".equals(s5)) goto _L19; else goto _L18
_L18:
        s5 = (new StringBuilder()).append("").append(s8).toString();
_L19:
        if (s8.equals(Constants.UNKNOWN_NUMBER) || s8.equals(Constants.PRIVATE_NUMBER) || s8.equals(Constants.PAYPHONE_NUMBER))
        {
            s8 = "";
            s5 = "Unknown";
        }
        calllogdetail = new CallLogDetail();
        calllogdetail.receivedTime = l2 / 1000L;
        if (s6 == null)
            s6 = null;
        calllogdetail.contactID = s6;
        calllogdetail.callerId = s8;
        calllogdetail.name = s5;
        calllogdetail.direction = s3;
        calllogdetail.duration = l3;
        calllogdetail.phoneType = s7;
        if (i1 == 3)
            flag1 = true;
        else
            flag1 = false;
        calllogdetail.isMissedCall = flag1;
        arraylist.add(calllogdetail);
          goto _L11
        exception3;
        exception3.printStackTrace();
          goto _L11
        exception2;
_L26:
        exception2.printStackTrace();
        if (cursor == null)
            break MISSING_BLOCK_LABEL_828;
        if (!cursor.isClosed())
            cursor.close();
_L23:
        this;
        JVM INSTR monitorexit ;
        return arraylist;
_L2:
        cursor = context.getContentResolver().query(android.provider.CallLog.Calls.CONTENT_URI, as, null, null, s2);
          goto _L11
        exception4;
        Log.e("CommHubController", (new StringBuilder()).append("Exception inside logtype check and message id check for Samsung devices").append(exception4.toString()).toString());
        exception4.printStackTrace();
          goto _L7
        exception1;
_L25:
        if (cursor == null) goto _L21; else goto _L20
_L20:
        if (!cursor.isClosed())
            cursor.close();
_L21:
        throw exception1;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L14:
        s3 = "Incoming";
          goto _L13
_L5:
        cursor.close();
        if (cursor == null) goto _L23; else goto _L22
_L22:
        if (cursor.isClosed()) goto _L23; else goto _L24
_L24:
        cursor.close();
          goto _L23
        exception1;
          goto _L25
        exception2;
        cursor = null;
          goto _L26
_L13:
        if (s3 != null || i1 != 10) goto _L28; else goto _L27
_L27:
        s3 = "Incoming";
        i1 = 3;
          goto _L28
_L15:
        s3 = "Outgoing";
          goto _L13
_L16:
        s3 = "Incoming";
          goto _L13
    }

    public long getSequence()
    {
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            long l = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("stores_pref", 0).getLong(COMM_HUB_SEQUENCE, 0L);
            Log.d("CommHubController", (new StringBuilder()).append("GET sequence:  ").append(l).toString());
            return l;
        } else
        {
            return -1L;
        }
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
    }

    public void sendCommHubStoreUpdateInd()
    {
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("store", "Phub.Phone.RecentComms");
            jsonobject.put("sequence", getSequence());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("CommHubController", "Sending SyncStoreUpdatedInd to WD for CommHub");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 9, 10, jsonobject, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
                Log.d("CommHubController", "SyncStoreUpdatedInd sent to WD");
                Log.d("CommHubController", jsonobject.toString());
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("CommHubController", (new StringBuilder()).append("Exception in sendCommHubStoreUpdateInd(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void setSequence(long l)
    {
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("stores_pref", 0).edit();
            editor.putLong(COMM_HUB_SEQUENCE, l);
            Log.d("CommHubController", (new StringBuilder()).append("Set sequence:  ").append(l).toString());
            editor.commit();
        }
    }

    public void storeCommHubToFile()
    {
        try
        {
            (new Thread() {

                final CommHubController this$0;

                public void run()
                {
                    createJSONFile();
                }

            
            {
                this$0 = CommHubController.this;
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

}
