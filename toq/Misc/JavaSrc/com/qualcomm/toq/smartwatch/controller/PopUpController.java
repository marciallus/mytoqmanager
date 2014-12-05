// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.alljoyn.demo.DemoAllJoynNotificationController;
import java.util.*;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            CalendarController

public class PopUpController extends DefaultController
{
    public class Popup
    {

        private int controllerID;
        private int destAdd;
        private int endPointType;
        private int messageType;
        private JSONObject popupReq;
        private int srcAdd;
        final PopUpController this$0;
        private int transactionID;

        public int getControllerID()
        {
            return controllerID;
        }

        public int getDestAdd()
        {
            return destAdd;
        }

        public int getEndPointType()
        {
            return endPointType;
        }

        public int getMessageType()
        {
            return messageType;
        }

        public JSONObject getPopupReq()
        {
            return popupReq;
        }

        public int getSrcAdd()
        {
            return srcAdd;
        }

        public int getTransactionID()
        {
            return transactionID;
        }


        public Popup(int i, JSONObject jsonobject, int j, int k, int l, int i1, 
                int j1)
        {
            this$0 = PopUpController.this;
            super();
            controllerID = i;
            popupReq = jsonobject;
            transactionID = j;
            endPointType = k;
            srcAdd = l;
            destAdd = i1;
            messageType = j1;
        }
    }


    static final String TAG = "PopUpController";
    public static final String appName = "POPUP_CONTROLLER";
    private static PopUpController mInstance = null;
    private HashMap popupControllerIdMap;
    private LinkedList popupList;
    private Timer popupTimer;
    private HashMap popupTransIDTimeMap;
    private HashMap transIDControllerIdMap;

    public PopUpController()
    {
        popupControllerIdMap = null;
        transIDControllerIdMap = null;
        popupTransIDTimeMap = null;
        popupList = null;
        popupTimer = null;
        if (popupControllerIdMap == null)
            popupControllerIdMap = new HashMap();
        if (transIDControllerIdMap == null)
            transIDControllerIdMap = new HashMap();
        if (popupTransIDTimeMap == null)
            popupTransIDTimeMap = new HashMap();
        if (popupList == null)
            popupList = new LinkedList();
    }

    public static PopUpController getPopUpController()
    {
        if (mInstance == null)
            mInstance = new PopUpController();
        return mInstance;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    protected void checkPendingPopupRequest()
    {
        Log.d("PopUpController", "checkPendingPopupRequest() called");
        if (popupList != null && !popupList.isEmpty())
        {
            if (popupTransIDTimeMap != null && !popupTransIDTimeMap.isEmpty() && popupList != null && !popupList.isEmpty() && popupList.getFirst() != null && popupTransIDTimeMap.get(Integer.valueOf(((Popup)popupList.getFirst()).getTransactionID())) != null && System.currentTimeMillis() - ((Long)popupTransIDTimeMap.get(Integer.valueOf(((Popup)popupList.getFirst()).getTransactionID()))).longValue() > 10000L)
            {
                Log.e("PopUpController", (new StringBuilder()).append("CreatePopupReq timed out to receive CreatePopupResp for Transaction ID: ").append(((Popup)popupList.getFirst()).getTransactionID()).toString());
                popupList.removeFirst();
                if (popupList != null && !popupList.isEmpty())
                {
                    Popup popup = (Popup)popupList.getFirst();
                    if (popup != null)
                    {
                        popupTransIDTimeMap.put(Integer.valueOf(popup.getTransactionID()), Long.valueOf(System.currentTimeMillis()));
                        Log.d("PopUpController", (new StringBuilder()).append("sendControllerMessageData() is called 2: srcAdd = ").append(popup.getSrcAdd()).append(" destAdd = ").append(popup.getDestAdd()).append(" messageType = ").append(popup.getMessageType()).toString());
                        Log.d("PopUpController", (new StringBuilder()).append("CalendarCreatePopupReq sent to WD with payload 2: ").append(popup.getPopupReq()).append(" transaction ID: ").append(popup.getTransactionID()).toString());
                        super.sendControllerMessageData(popup.getEndPointType(), popup.getSrcAdd(), popup.getDestAdd(), popup.getPopupReq(), popup.getMessageType(), popup.getTransactionID());
                        return;
                    }
                } else
                if (popupTimer != null)
                {
                    popupTimer.cancel();
                    popupTimer = null;
                    Log.d("PopUpController", "Popup State Timer cancelled 3");
                    return;
                }
            }
        } else
        {
            Log.e("PopUpController", "No Pending Popup Requests");
            if (popupTimer != null)
            {
                popupTimer.cancel();
                popupTimer = null;
                Log.d("PopUpController", "Popup State Timer cancelled 2");
            }
        }
    }

    public boolean controllerIdExists(int i)
    {
        if (popupControllerIdMap != null && !popupControllerIdMap.isEmpty())
        {
            Iterator iterator = popupControllerIdMap.keySet().iterator();
            if (iterator.hasNext())
            {
                Integer integer = (Integer)iterator.next();
                if (((Integer)popupControllerIdMap.get(integer)).intValue() == i)
                {
                    Log.d("PopUpController", "**popID Exists**");
                    return true;
                } else
                {
                    return false;
                }
            } else
            {
                return false;
            }
        } else
        {
            return false;
        }
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        JSONObject jsonobject;
        jsonobject = (JSONObject)obj;
        Log.d("PopUpController", (new StringBuilder()).append("handleConnHandlerMessage function of PopUpController called, messageType = ").append(j).append(" jsonPayload = ").append(jsonobject.toString()).append(" transaction ID = ").append(k).toString());
        j;
        JVM INSTR lookupswitch 4: default 96
    //                   16384: 97
    //                   16385: 558
    //                   16386: 840
    //                   32768: 596;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        Log.printUsageLog("PopUpController", "Received CreatePopupResp from WD");
        Log.d("PopUpController", (new StringBuilder()).append("CreatePopupResp received = ").append(jsonobject.toString()).toString());
        try
        {
            if (popupList == null || popupList.isEmpty())
            {
                Log.e("PopUpController", "Recieved CreatePopupResp, but popupList is null or empty");
                return;
            }
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
            Log.d("PopUpController", (new StringBuilder()).append("Exception in CreatePopupResp: ").append(exception1.toString()).toString());
            return;
        }
        if (((Popup)popupList.getFirst()).transactionID != k) goto _L1; else goto _L6
_L6:
        ((Popup)popupList.getFirst()).getControllerID();
        JVM INSTR lookupswitch 2: default 252
    //                   9: 460
    //                   20: 509;
           goto _L7 _L8 _L9
_L7:
        if (popupList == null || popupList.isEmpty()) goto _L1; else goto _L10
_L10:
        popupTransIDTimeMap.put(Integer.valueOf(((Popup)popupList.getFirst()).getTransactionID()), Long.valueOf(System.currentTimeMillis()));
        Log.d("PopUpController", (new StringBuilder()).append("sendControllerMessageData() is called 3: srcAdd = ").append(((Popup)popupList.getFirst()).getSrcAdd()).append(" destAdd = ").append(((Popup)popupList.getFirst()).getDestAdd()).append(" messageType = ").append(((Popup)popupList.getFirst()).getMessageType()).toString());
        super.sendControllerMessageData(((Popup)popupList.getFirst()).getEndPointType(), ((Popup)popupList.getFirst()).getSrcAdd(), ((Popup)popupList.getFirst()).getDestAdd(), ((Popup)popupList.getFirst()).getPopupReq(), ((Popup)popupList.getFirst()).getMessageType(), ((Popup)popupList.getFirst()).getTransactionID());
        return;
_L8:
        popupControllerIdMap.put(Integer.valueOf(jsonobject.getInt("popup_id")), Integer.valueOf(9));
        popupList.removeFirst();
        CalendarController.getCalendarController().handleConnHandlerMessage(i, 13, jsonobject, k, l);
          goto _L7
_L9:
        popupControllerIdMap.put(Integer.valueOf(jsonobject.getInt("popup_id")), Integer.valueOf(20));
        popupList.removeFirst();
        DemoAllJoynNotificationController.getController().handleConnHandlerMessage(i, 23, jsonobject, k, l);
          goto _L7
          goto _L1
_L3:
        Log.printUsageLog("PopUpController", "Received UpdatePopupResp from WD");
        Log.d("PopUpController", (new StringBuilder()).append("UpdatePopupResp received = ").append(jsonobject.toString()).toString());
        return;
_L5:
        Log.printUsageLog("PopUpController", "Received PopupInd from WD");
        Log.d("PopUpController", (new StringBuilder()).append("PopupInd received, payload = ").append(jsonobject.toString()).toString());
        try
        {
            Log.d("PopUpController", (new StringBuilder()).append("popupID = ").append(jsonobject.getInt("popup_id")).toString());
            if (!popupControllerIdMap.containsKey(Integer.valueOf(jsonobject.getInt("popup_id"))))
            {
                Log.e("PopUpController", "PopupId id is not present");
                return;
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.d("PopUpController", (new StringBuilder()).append("Exception PopupInd: ").append(exception.toString()).toString());
            return;
        }
        int i1;
        i1 = ((Integer)popupControllerIdMap.get(Integer.valueOf(jsonobject.getInt("popup_id")))).intValue();
        Log.d("PopUpController", (new StringBuilder()).append("PopupInd received for ControllerId = ").append(i1).toString());
        i1;
        JVM INSTR lookupswitch 2: default 878
    //                   9: 808
    //                   20: 824;
           goto _L11 _L12 _L13
_L12:
        CalendarController.getCalendarController().handleConnHandlerMessage(i, 16, jsonobject, k, l);
        return;
_L13:
        DemoAllJoynNotificationController.getController().handleConnHandlerMessage(i, 26, jsonobject, k, l);
        return;
_L4:
        Log.printUsageLog("PopUpController", "Received DestroyPopupResp from WD");
        Log.d("PopUpController", (new StringBuilder()).append("Received DestroyPopupResp = ").append(jsonobject.toString()).toString());
        return;
_L11:
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        Log.d("PopUpController", "sendControllerMessageData() called");
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(i) != 1) goto _L2; else goto _L1
_L1:
        Popup popup = null;
        l;
        JVM INSTR lookupswitch 2: default 52
    //                   10: 297
    //                   20: 331;
           goto _L3 _L4 _L5
_L3:
        if (popupList == null || popup == null) goto _L7; else goto _L6
_L6:
        if (!popupList.isEmpty()) goto _L9; else goto _L8
_L8:
        Log.d("PopUpController", "Add Popup to first popupList queue");
        popupList.addFirst(popup);
        try
        {
            if (popupTimer != null)
            {
                popupTimer.cancel();
                popupTimer = null;
                Log.d("PopUpController", "Popup State Timer cancelled 1");
            }
            popupTimer = new Timer();
            popupTimer.scheduleAtFixedRate(new TimerTask() {

                final PopUpController this$0;

                public void run()
                {
                    checkPendingPopupRequest();
                }

            
            {
                this$0 = PopUpController.this;
                super();
            }
            }
, 10000L, 10000L);
            Log.d("PopUpController", (new StringBuilder()).append("Popup createPopupReq Timer created with transaction Id = ").append(popup.getTransactionID()).toString());
        }
        catch (Exception exception) { }
        popupTransIDTimeMap.put(Integer.valueOf(popup.getTransactionID()), Long.valueOf(System.currentTimeMillis()));
        Log.d("PopUpController", (new StringBuilder()).append("CalendarCreatePopupReq sent to WD with payload: ").append(obj.toString()).append(" transactionId: ").append(i1).toString());
        Log.d("PopUpController", (new StringBuilder()).append("sendControllerMessageData() is called 1: srcAdd = ").append(j).append(" destAdd = ").append(k).append(" messageType = ").append(0).toString());
        super.sendControllerMessageData(i, j, k, obj, 0, i1);
_L2:
        return;
_L4:
        Log.printUsageLog("PopUpController", "Sending CalendarCreatePopupReq to WD");
        popup = new Popup(9, (JSONObject)obj, i1, i, j, k, 0);
        continue; /* Loop/switch isn't completed */
_L5:
        Log.printUsageLog("PopUpController", "Sending AJNotificationCreatePopupReq to WD");
        popup = new Popup(20, (JSONObject)obj, i1, i, j, k, 0);
        continue; /* Loop/switch isn't completed */
_L9:
        if (popup == null) goto _L2; else goto _L10
_L10:
        Log.d("PopUpController", "Add Popup to last popupList queue");
        popupList.addLast(popup);
        return;
_L7:
        Log.e("PopUpController", "popupList is NULL");
        return;
        if (true) goto _L3; else goto _L11
_L11:
    }

    public void unMapPopup(int i, int j)
    {
        if (popupControllerIdMap.containsKey(Integer.valueOf(j)))
        {
            int k = ((Integer)popupControllerIdMap.get(Integer.valueOf(j))).intValue();
            popupControllerIdMap.remove(Integer.valueOf(j));
            Log.d("PopUpController", (new StringBuilder()).append("popID: ").append(j).append("controllerId: ").append(k).append(" removed").toString());
            return;
        }
        try
        {
            Iterator iterator = popupControllerIdMap.keySet().iterator();
            Integer integer;
            do
            {
                if (!iterator.hasNext())
                    break MISSING_BLOCK_LABEL_204;
                integer = (Integer)iterator.next();
            } while (((Integer)popupControllerIdMap.get(integer)).intValue() != i);
            popupControllerIdMap.remove(integer);
            Log.d("PopUpController", (new StringBuilder()).append("popID: ").append(j).append("controllerId: ").append(i).append(" removed").toString());
            return;
        }
        catch (Exception exception)
        {
            Log.e("PopUpController", "Exception in unMapPopup()");
        }
    }

    public void unMapPopupAll()
    {
        try
        {
            if (popupControllerIdMap != null && !popupControllerIdMap.isEmpty())
                popupControllerIdMap.clear();
            if (popupTransIDTimeMap != null && !popupTransIDTimeMap.isEmpty())
                popupTransIDTimeMap.clear();
            if (transIDControllerIdMap != null && !transIDControllerIdMap.isEmpty())
                transIDControllerIdMap.clear();
            if (popupList != null && !popupList.isEmpty())
                popupList.clear();
            if (popupTimer != null)
            {
                popupTimer.cancel();
                popupTimer = null;
                Log.d("PopUpController", "Popup State Timer cancelled 4");
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("PopUpController", "Exception in unMapPopupAll()");
        }
    }

}
