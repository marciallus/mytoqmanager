// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.Context;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.Utils;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.io.File;
import java.util.ArrayList;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            ContactController, SMSController, AgendaController, CommHubController

public class StorageServiceController extends DefaultController
{

    private static final String TAG = "StorageServiceController";
    public static final String appName = "STORAGE_SERVICE_CONTROLLER";
    private static StorageServiceController mInstance = null;
    private ArrayList availableStoresData;

    private StorageServiceController()
    {
        availableStoresData = new ArrayList();
        availableStoresData.add("Phub.Phone.Contacts");
        availableStoresData.add("Phub.Phone.Settings.QuickReply");
        availableStoresData.add("Phub.Phone.Agenda");
        availableStoresData.add("Phub.Phone.RecentComms");
        availableStoresData.add("Phub.Phone.*");
    }

    private long getSequence(String s)
    {
        long l = 0L;
        if (s.equals("Phub.Phone.Contacts"))
            l = ContactController.getContactController().getSequence();
        else
        if (s.equals("Phub.Phone.Settings.QuickReply"))
            l = SMSController.getSMSController().getQuickReplySequence();
        else
        if (s.equals("Phub.Phone.Agenda"))
            l = AgendaController.getAgendaController().getSequence();
        else
        if (s.equals("Phub.Phone.RecentComms"))
            l = CommHubController.getCommHubController().getSequence();
        if (l == 0L)
            l = 1L;
        return l;
    }

    public static StorageServiceController getStorageServiceController()
    {
        if (mInstance == null)
            mInstance = new StorageServiceController();
        return mInstance;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        j;
        JVM INSTR tableswitch 0 1: default 24
    //                   0 25
    //                   1 739;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        String s9;
        JSONObject jsonobject12;
        JSONObject jsonobject9 = (JSONObject)obj;
        s9 = null;
        JSONException jsonexception3;
        JSONArray jsonarray2;
        JSONObject jsonobject14;
        JSONObject jsonobject15;
        JSONObject jsonobject16;
        JSONObject jsonobject17;
        try
        {
            s9 = jsonobject9.getString("store");
            Log.d("StorageServiceController", (new StringBuilder()).append("SyncGetStoreStateReq  store name is =  ").append(s9).toString());
            Log.printUsageLog("StorageServiceController", (new StringBuilder()).append("Received SyncGetStoreStateReq from WD for store ").append(s9).toString());
        }
        catch (JSONException jsonexception1)
        {
            jsonexception1.printStackTrace();
        }
        if (s9 == null) goto _L1; else goto _L4
_L4:
        if (!availableStoresData.contains(s9)) goto _L6; else goto _L5
_L5:
        jsonobject12 = new JSONObject();
        if (!s9.contains("Phub.Phone.*")) goto _L8; else goto _L7
_L7:
        jsonobject12.put("result", 0);
        jsonobject12.put("description", "Found all Stores");
        jsonarray2 = new JSONArray();
        jsonobject14 = new JSONObject();
        jsonobject15 = new JSONObject();
        jsonobject16 = new JSONObject();
        jsonobject17 = new JSONObject();
        jsonobject14.put("store", "Phub.Phone.Contacts");
        jsonobject14.put("sequence", getSequence("Phub.Phone.Contacts"));
        jsonarray2.put(jsonobject14);
        jsonobject15.put("store", "Phub.Phone.Settings.QuickReply");
        jsonobject15.put("sequence", getSequence("Phub.Phone.Settings.QuickReply"));
        jsonarray2.put(jsonobject15);
        jsonobject16.put("store", "Phub.Phone.Agenda");
        jsonobject16.put("sequence", getSequence("Phub.Phone.Agenda"));
        jsonarray2.put(jsonobject16);
        jsonobject17.put("store", "Phub.Phone.RecentComms");
        jsonobject17.put("sequence", getSequence("Phub.Phone.RecentComms"));
        jsonarray2.put(jsonobject16);
        jsonobject12.put("stores", jsonarray2);
_L9:
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("StorageServiceController", (new StringBuilder()).append("Sending SyncGetStoreStateResp to WD for store ").append(s9).toString());
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 9, 10, jsonobject12, 16384, k);
            Log.d("StorageServiceController", "SyncGetStoreStateResp sent to WD");
            Log.d("StorageServiceController", jsonobject12.toString());
            return;
        }
          goto _L1
_L8:
        try
        {
            jsonobject12.put("result", 0);
            jsonobject12.put("description", (new StringBuilder()).append("Found the store ").append(s9).toString());
            JSONArray jsonarray1 = new JSONArray();
            JSONObject jsonobject13 = new JSONObject();
            jsonobject13.put("store", s9);
            jsonobject13.put("sequence", getSequence(s9));
            jsonarray1.put(jsonobject13);
            jsonobject12.put("stores", jsonarray1);
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception3)
        {
            Log.d("StorageServiceController", jsonexception3.toString());
            jsonexception3.printStackTrace();
            return;
        }
          goto _L9
_L6:
        JSONObject jsonobject10 = new JSONObject();
        try
        {
            jsonobject10.put("result", 1);
            jsonobject10.put("description", (new StringBuilder()).append(s9).append(" not found").toString());
            JSONArray jsonarray = new JSONArray();
            JSONObject jsonobject11 = new JSONObject();
            jsonobject11.put("store", s9);
            jsonobject11.put("sequence", -1);
            jsonarray.put(jsonobject11);
            jsonobject10.put("stores", jsonarray);
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("StorageServiceController", (new StringBuilder()).append("Sending SyncGetStoreStateResp to WD for ").append(s9).toString());
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 9, 10, jsonobject10, 16384, k);
                Log.d("StorageServiceController", (new StringBuilder()).append("Store Not found payload = ").append(jsonobject10.toString()).toString());
                return;
            }
        }
        catch (JSONException jsonexception2)
        {
            jsonexception2.printStackTrace();
            return;
        }
          goto _L1
_L3:
        JSONObject jsonobject;
        Log.d("StorageServiceController", "recieved SyncUpdateStoreReq");
        jsonobject = (JSONObject)obj;
        String s;
        s = jsonobject.getString("store");
        Log.printUsageLog("StorageServiceController", (new StringBuilder()).append("Received SyncUpdateStoreReq from WD for store ").append(s).toString());
        Log.d("StorageServiceController", (new StringBuilder()).append("to be updated store name is =  ").append(s).toString());
        if (!s.contains("Phub.Phone.Contacts")) goto _L11; else goto _L10
_L10:
        if (ContactController.getContactController() == null) goto _L13; else goto _L12
_L12:
        JSONException jsonexception;
        JSONObject jsonobject7 = new JSONObject();
        jsonobject7.put("result", 0);
        jsonobject7.put("description", "Update contact store request received");
        jsonobject7.put("store", s);
        jsonobject7.put("sequence", getSequence(s));
        jsonobject7.put("transfer_mode", "OPP");
        JSONObject jsonobject8 = new JSONObject();
        jsonobject8.put("filename", (new StringBuilder()).append("Phub.Phone.Contacts_").append(getSequence(s)).append(".jsn").toString());
        jsonobject8.put("checksum", Utils.getCheckSum((new StringBuilder()).append("Phub.Phone.Contacts_").append(getSequence(s)).append(".jsn").toString()));
        jsonobject7.put("OPP", jsonobject8);
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("StorageServiceController", (new StringBuilder()).append("Sending SyncUpdateStoreResp to WD for store ").append(s).toString());
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 9, 10, jsonobject7, 16385, k);
            Log.d("StorageServiceController", "SyncUpdateStoreResp sent to WD");
            Log.d("StorageServiceController", jsonobject7.toString());
            String s7 = (new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").append("/").toString();
            String s8 = (new StringBuilder()).append("Phub.Phone.Contacts_").append(getSequence(s)).append(".jsn").toString();
            Log.d("StorageServiceController", (new StringBuilder()).append("sending ").append(s8).append(" to transfer over BTOBextClient").toString());
            AndroidUtils.sendStoreFile(s7, s8);
            return;
        }
        try
        {
            Log.d("StorageServiceController", "getWdEndPoint() is Null");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return;
        }
_L13:
        Log.d("StorageServiceController", "ContactController is Null");
        return;
_L11:
        if (!s.contains("Phub.Phone.Settings.QuickReply")) goto _L15; else goto _L14
_L14:
        if (SMSController.getSMSController() == null) goto _L17; else goto _L16
_L16:
        JSONObject jsonobject5;
        jsonobject5 = new JSONObject();
        jsonobject5.put("result", 0);
        jsonobject5.put("description", "Update Quick Reply store request received");
        jsonobject5.put("store", s);
        jsonobject5.put("sequence", getSequence(s));
        jsonobject5.put("transfer_mode", "OPP");
        JSONObject jsonobject6 = new JSONObject();
        jsonobject6.put("filename", (new StringBuilder()).append("Phub.Phone.Settings.QuickReply_").append(getSequence(s)).append(".jsn").toString());
        jsonobject6.put("checksum", Utils.getCheckSum((new StringBuilder()).append("Phub.Phone.Settings.QuickReply_").append(getSequence(s)).append(".jsn").toString()));
        jsonobject5.put("OPP", jsonobject6);
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null) goto _L19; else goto _L18
_L18:
        String s6;
        Log.printUsageLog("StorageServiceController", (new StringBuilder()).append("Sending SyncUpdateStoreResp to WD for store ").append(s).toString());
        sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 9, 10, jsonobject5, 16385, k);
        Log.d("StorageServiceController", "SyncUpdateStoreResp sent to WD");
        Log.d("StorageServiceController", jsonobject5.toString());
        String s5 = (new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").append("/").toString();
        s6 = (new StringBuilder()).append("Phub.Phone.Settings.QuickReply_").append(getSequence(s)).append(".jsn").toString();
        File file2 = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        File file3 = new File((new StringBuilder()).append(s5).append(s6).toString());
        if (file2.exists() && file3.exists())
        {
            AndroidUtils.sendStoreFile(s5, s6);
            Log.d("StorageServiceController", (new StringBuilder()).append("sending ").append(s6).append(" to transfer over BTOBextClient").toString());
            return;
        }
        SMSController.getSMSController().bSyncUpdateQuickReplyStoreReqFailed = true;
        Log.d("StorageServiceController", (new StringBuilder()).append("Not able to send ").append(s6).append(" for transfer over BTOBextClient").toString());
        return;
_L19:
        Log.d("StorageServiceController", "getWdEndPoint() is Null");
        return;
_L17:
        Log.d("StorageServiceController", "SMSController is Null");
        return;
_L15:
        if (!s.contains("Phub.Phone.Agenda")) goto _L21; else goto _L20
_L20:
        if (AgendaController.getAgendaController() == null) goto _L23; else goto _L22
_L22:
        JSONObject jsonobject3;
        jsonobject3 = new JSONObject();
        jsonobject3.put("result", 0);
        jsonobject3.put("description", "Update agenda store request received");
        jsonobject3.put("store", s);
        jsonobject3.put("sequence", getSequence(s));
        jsonobject3.put("transfer_mode", "OPP");
        JSONObject jsonobject4 = new JSONObject();
        jsonobject4.put("filename", (new StringBuilder()).append("Phub.Phone.Agenda_").append(getSequence(s)).append(".jsn").toString());
        jsonobject4.put("checksum", Utils.getCheckSum((new StringBuilder()).append("Phub.Phone.Agenda_").append(getSequence(s)).append(".jsn").toString()));
        jsonobject3.put("OPP", jsonobject4);
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null) goto _L25; else goto _L24
_L24:
        String s4;
        Log.printUsageLog("StorageServiceController", (new StringBuilder()).append("Sending SyncUpdateStoreResp to WD for store ").append(s).toString());
        sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 9, 10, jsonobject3, 16385, k);
        Log.d("StorageServiceController", "SyncUpdateStoreResp sent to WD");
        Log.d("StorageServiceController", jsonobject3.toString());
        String s3 = (new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").append("/").toString();
        s4 = (new StringBuilder()).append("Phub.Phone.Agenda_").append(getSequence(s)).append(".jsn").toString();
        File file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").toString());
        File file1 = new File((new StringBuilder()).append(s3).append(s4).toString());
        if (file.exists() && file1.exists())
        {
            AndroidUtils.sendStoreFile(s3, s4);
            Log.d("StorageServiceController", (new StringBuilder()).append("sending ").append(s4).append(" to transfer over BTOBextClient").toString());
            return;
        }
        AgendaController.getAgendaController().bSyncUpdateStoreReqFailed = true;
        Log.d("StorageServiceController", (new StringBuilder()).append("Not able to send ").append(s4).append(" for transfer over BTOBextClient").toString());
        return;
_L25:
        Log.d("StorageServiceController", "getWdEndPoint() is Null");
        return;
_L23:
        Log.d("StorageServiceController", "AgendaController is Null");
        return;
_L21:
        if (!s.contains("Phub.Phone.RecentComms")) goto _L27; else goto _L26
_L26:
        if (CommHubController.getCommHubController() == null) goto _L29; else goto _L28
_L28:
        JSONObject jsonobject1 = new JSONObject();
        jsonobject1.put("result", 0);
        jsonobject1.put("description", "Update Comm Hub store request received");
        jsonobject1.put("store", s);
        jsonobject1.put("sequence", getSequence(s));
        jsonobject1.put("transfer_mode", "OPP");
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("filename", (new StringBuilder()).append("Phub.Phone.RecentComms_").append(getSequence(s)).append(".jsn").toString());
        jsonobject2.put("checksum", Utils.getCheckSum((new StringBuilder()).append("Phub.Phone.RecentComms_").append(getSequence(s)).append(".jsn").toString()));
        jsonobject1.put("OPP", jsonobject2);
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("StorageServiceController", (new StringBuilder()).append("Sending SyncUpdateStoreResp to WD for store ").append(s).toString());
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 9, 10, jsonobject1, 16385, k);
            Log.d("StorageServiceController", "SyncUpdateStoreResp sent to WD");
            Log.d("StorageServiceController", jsonobject1.toString());
            String s1 = (new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir().getAbsoluteFile()).append("/PHUB_JSON").append("/").toString();
            String s2 = (new StringBuilder()).append("Phub.Phone.RecentComms_").append(getSequence(s)).append(".jsn").toString();
            AndroidUtils.sendStoreFile(s1, s2);
            Log.d("StorageServiceController", (new StringBuilder()).append("sending ").append(s2).append(" to transfer over BTOBextClient").toString());
            return;
        }
        Log.d("StorageServiceController", "getWdEndPoint() is Null");
        return;
_L29:
        Log.d("StorageServiceController", "CommHubController is Null");
        return;
_L27:
        Log.d("StorageServiceController", "Store Name didnot match the existing Stores");
        return;
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(i) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

}
