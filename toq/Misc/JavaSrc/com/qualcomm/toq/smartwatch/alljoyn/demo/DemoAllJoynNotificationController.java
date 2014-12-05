// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.alljoyn.demo;

import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.alljoyn.AllJoynBusHandler;
import com.qualcomm.toq.smartwatch.controller.PopUpController;
import java.text.SimpleDateFormat;
import java.util.*;
import org.alljoyn.ioe.controlpanelservice.*;
import org.alljoyn.ioe.controlpanelservice.ui.*;
import org.alljoyn.ns.*;
import org.json.*;

public class DemoAllJoynNotificationController extends DefaultController
    implements ControlPanelEventsListener, NotificationReceiver
{
    private class ResponseData
        implements DeviceEventsListener
    {

        AlertDialogWidget alertDialogWidget;
        ControllableDevice controllableDevice;
        String deviceId;
        String deviceName;
        String msgText;
        Integer notificationId;
        String objectPath;
        boolean processed;
        String sender;
        final DemoAllJoynNotificationController this$0;
        String timeReceived;

        public void errorOccurred(ControllableDevice controllabledevice, String s)
        {
            Log.d("AllJoynNotificationController", (new StringBuilder()).append("ErrorOccured when trying to join since no session: ").append(s).toString());
            try
            {
                PopUpController.getPopUpController().sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 7, 8, createPopUp(deviceName, timeReceived, msgText, null), 20, ConnectionFactory.getConnectionFactory().createTransactionID());
                controllableDevice.endSession();
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }

        public void sessionEstablished(ControllableDevice controllabledevice, Collection collection)
        {
            boolean flag;
            Iterator iterator;
            flag = false;
            iterator = collection.iterator();
_L4:
            Iterator iterator1;
            if (!iterator.hasNext())
                break MISSING_BLOCK_LABEL_228;
            ControlPanelCollection controlpanelcollection = (ControlPanelCollection)iterator.next();
            Log.d("AllJoynNotificationController", "Found a control panel");
            iterator1 = controlpanelcollection.getControlPanels().iterator();
_L2:
            DeviceControlPanel devicecontrolpanel;
            if (!iterator1.hasNext())
                break; /* Loop/switch isn't completed */
            devicecontrolpanel = (DeviceControlPanel)iterator1.next();
            UIElement uielement = devicecontrolpanel.getRootElement(DemoAllJoynNotificationController.this);
            if (uielement == null)
            {
                UIElementType uielementtype;
                try
                {
                    Log.e("AllJoynNotificationController", "RootContainerElement wasn't created!!! Can't continue");
                    return;
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
                continue; /* Loop/switch isn't completed */
            }
            uielementtype = uielement.getElementType();
            Log.d("AllJoynNotificationController", (new StringBuilder()).append("Found root container of type: '").append(uielementtype).append("'").toString());
            if (uielementtype != UIElementType.ALERT_DIALOG)
                continue; /* Loop/switch isn't completed */
            alertDialogWidget = (AlertDialogWidget)uielement;
            if (!processed)
            {
                processed = true;
                PopUpController.getPopUpController().sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 7, 8, createPopUp(deviceName, timeReceived, msgText, this), 20, ConnectionFactory.getConnectionFactory().createTransactionID());
            }
            flag = true;
            if (true) goto _L2; else goto _L1
_L1:
            if (true) goto _L4; else goto _L3
_L3:
            if (!flag)
                PopUpController.getPopUpController().sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 7, 8, createPopUp(deviceName, timeReceived, msgText, null), 20, ConnectionFactory.getConnectionFactory().createTransactionID());
            return;
        }

        public void sessionLost(ControllableDevice controllabledevice)
        {
        }

        ResponseData(String s, String s1, String s2, String s3, String s4, String s5, 
                Integer integer)
        {
            this$0 = DemoAllJoynNotificationController.this;
            super();
            sender = s;
            deviceId = s1;
            deviceName = s2;
            objectPath = s3;
            msgText = s4;
            timeReceived = s5;
            notificationId = integer;
        }
    }


    public static final String TAG = "AllJoynNotificationController";
    private static DemoAllJoynNotificationController mInstance = null;
    private AllJoynBusHandler mBusHandler;
    private HashMap mResponseMap;

    public DemoAllJoynNotificationController()
    {
        mResponseMap = new HashMap();
        if (mBusHandler == null)
            mBusHandler = AllJoynBusHandler.getInstance();
    }

    public static DemoAllJoynNotificationController getController()
    {
        if (mInstance == null)
            mInstance = new DemoAllJoynNotificationController();
        return mInstance;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    public JSONObject createButtonWidgets(String s, String s1, int i, int j, int k, int l, boolean flag, 
            boolean flag1, String s2)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            JSONArray jsonarray = new JSONArray();
            jsonarray.put(i);
            jsonarray.put(j);
            jsonarray.put(k);
            jsonarray.put(l);
            jsonobject.put("position", jsonarray);
            jsonobject.put("type", "text_button");
            jsonobject.put("id", s);
            JSONObject jsonobject1 = new JSONObject();
            JSONArray jsonarray1 = new JSONArray();
            jsonarray1.put(-10);
            jsonarray1.put(20);
            jsonarray1.put(k - 5);
            jsonarray1.put(l - 5);
            jsonobject1.put("position", jsonarray1);
            jsonobject1.put("text", s1);
            jsonobject1.put("color", "#000000");
            JSONObject jsonobject2 = new JSONObject();
            jsonobject2.put("size", 32);
            jsonobject2.put("weight", "semibold");
            jsonobject1.put("font", jsonobject2);
            jsonobject.put("label", jsonobject1);
            JSONObject jsonobject3 = new JSONObject();
            jsonobject3.put("dismiss", flag1);
            jsonobject3.put("event_data", s2);
            jsonobject.put("onclick", jsonobject3);
            Log.d("AllJoynNotificationController", (new StringBuilder()).append("CreateButtonWidget : ").append(jsonobject.toString()).toString());
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

    public JSONObject createPopUp(String s, String s1, String s2, ResponseData responsedata)
    {
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1 = new JSONObject();
        JSONArray jsonarray;
        short word0;
        int i;
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
            jsonarray.put(createIconWidgets("anonymous", "notificationicon_alljoyn_ND.img", 23, 7, 73, 49));
            jsonarray.put(createTextWidgets("time", s1, 100, 28, 265, 54, "Helvetica", 26, "regular", "#0000ff", true));
            jsonarray.put(createTextWidgets("deviceName", s, 23, 74, 265, 110, "Helvetica", 36, "semibold", "#0000ff", true));
            jsonarray.put(createTextWidgets("title1", s2, 23, 119, 280, 329, "Helvetica", 26, "regular", "#000000", true));
        }
        catch (JSONException jsonexception1)
        {
            jsonexception1.printStackTrace();
            Log.i("AllJoynNotificationController", (new StringBuilder()).append(" AllJoynNotification: Exception: ").append(jsonexception1).toString());
            Log.i("AllJoynNotificationController", " AllJoynNotification: Return null????");
            return null;
        }
        if (responsedata == null) goto _L2; else goto _L1
_L1:
        word0 = responsedata.alertDialogWidget.getNumActions();
        i = 0;
_L3:
        if (i >= word0)
            break; /* Loop/switch isn't completed */
        jsonarray.put(createButtonWidgets(responsedata.notificationId.toString(), ((org.alljoyn.ioe.controlpanelservice.ui.AlertDialogWidget.DialogButton)responsedata.alertDialogWidget.getExecButtons().get(i)).getLabel(), 23, 335 + i * 70, 265, 400 + i * 70, true, true, (new StringBuilder()).append(responsedata.notificationId.toString()).append("|").append(i).toString()));
        i++;
        if (true) goto _L3; else goto _L2
_L2:
        jsonobject.put("widgets", jsonarray);
        Log.i("AllJoynNotificationController", (new StringBuilder()).append(" AllJoynNotification: createPopUP Payload : ").append(jsonobject).toString());
        return jsonobject;
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

    public void dismiss(int i, UUID uuid)
    {
    }

    public void errorOccurred(DeviceControlPanel devicecontrolpanel, String s)
    {
        Log.d("AllJoynNotificationController", "AllJoynNotificationController: CPS::errorOccured");
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        Log.d("AllJoynNotificationController", (new StringBuilder()).append("handleConnHandlerMessage called, command = ").append(j).toString());
        j;
        JVM INSTR tableswitch 23 26: default 56
    //                   23 57
    //                   24 85
    //                   25 540
    //                   26 113;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        Log.d("AllJoynNotificationController", (new StringBuilder()).append("Received AJNotificationCreatePopupResp = ").append(obj.toString()).toString());
        return;
_L3:
        Log.d("AllJoynNotificationController", (new StringBuilder()).append("Received AJNotificationUpdatePopupResp = ").append(obj.toString()).toString());
        return;
_L5:
        boolean flag;
        String s;
        int i1;
        flag = false;
        s = null;
        i1 = -1;
        Log.d("AllJoynNotificationController", (new StringBuilder()).append("Received AJNotificationPopupInd = ").append(obj.toString()).toString());
        JSONObject jsonobject = (JSONObject)obj;
        if (!jsonobject.has("event_data")) goto _L1; else goto _L6
_L6:
        String s1;
        final ResponseData responseData;
        s1 = jsonobject.getString("event_data").toString();
        Integer integer = Integer.valueOf(s1.substring(0, s1.indexOf('|')));
        responseData = (ResponseData)mResponseMap.get(integer);
        boolean flag1;
        if (responseData != null)
            try
            {
                (new Thread(new Runnable() {

                    final DemoAllJoynNotificationController this$0;
                    final int val$buttonIndex;
                    final ResponseData val$responseData;

                    public void run()
                    {
                        ((org.alljoyn.ioe.controlpanelservice.ui.AlertDialogWidget.DialogButton)responseData.alertDialogWidget.getExecButtons().get(buttonIndex)).exec();
                        mResponseMap.remove(responseData.notificationId);
                        responseData.controllableDevice.endSession();
                        return;
                        Exception exception3;
                        exception3;
                        exception3.printStackTrace();
                        responseData.controllableDevice.endSession();
                        return;
                        Exception exception2;
                        exception2;
                        responseData.controllableDevice.endSession();
                        throw exception2;
                    }

            
            {
                this$0 = DemoAllJoynNotificationController.this;
                responseData = responsedata;
                buttonIndex = i;
                super();
            }
                }
)).start();
            }
            catch (Exception exception)
            {
                Log.d("AllJoynNotificationController", exception.toString());
                exception.printStackTrace();
                return;
            }
        i1 = ((JSONObject)obj).getInt("popup_id");
        flag1 = ((JSONObject)obj).isNull("widget_id");
        s = null;
        if (flag1) goto _L8; else goto _L7
_L7:
        s = ((JSONObject)obj).getString("widget_id");
_L8:
        flag = ((JSONObject)obj).getBoolean("dismissed");
        Log.d("AllJoynNotificationController", (new StringBuilder()).append("widgetId = ").append(s).toString());
        Log.d("AllJoynNotificationController", (new StringBuilder()).append("dismissed = ").append(flag).toString());
_L11:
        if (s == null) goto _L10; else goto _L9
_L9:
        if (s.compareTo("dismiss_button") == 0)
        {
            Log.d("AllJoynNotificationController", "AJNotification Event Popup Dismissed");
            PopUpController.getPopUpController().unMapPopup(20, i1);
            return;
        }
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Log.e("AllJoynNotificationController", (new StringBuilder()).append("Exception in JSON Parsing: AJNotificationPopupInd, ").append(exception1.toString()).toString());
        exception1.printStackTrace();
          goto _L11
        if (s.compareTo("snooze_button") != 0) goto _L1; else goto _L12
_L12:
        Log.d("AllJoynNotificationController", "AJNotification Event Popup Dismissed");
        PopUpController.getPopUpController().unMapPopup(20, i1);
        return;
_L10:
        Log.d("AllJoynNotificationController", "widgetId is null");
        if (PopUpController.getPopUpController() == null || !flag) goto _L1; else goto _L13
_L13:
        Log.d("AllJoynNotificationController", (new StringBuilder()).append("AJNotification Event Dismiss PopupID: ").append(i1).toString());
        PopUpController.getPopUpController().unMapPopup(20, i1);
        return;
_L4:
        Log.d("AllJoynNotificationController", (new StringBuilder()).append("Received AJNotificationDestroyPopupResp = ").append(obj.toString()).toString());
        return;
    }

    public void metadataChanged(DeviceControlPanel devicecontrolpanel, UIElement uielement)
    {
        Log.d("AllJoynNotificationController", "AllJoynNotificationController: CPS::metadataChanged");
    }

    public void notificationActionDismiss(DeviceControlPanel devicecontrolpanel)
    {
        Log.d("AllJoynNotificationController", "AllJoynNotificationController: CPS::notificationActionDismiss");
    }

    public void receive(final Notification notification)
    {
        Log.d("AllJoynNotificationController", (new StringBuilder()).append("Received notification message : '").append(((NotificationText)notification.getText().get(0)).getText()).append("' going to show popup").toString());
        while (((NotificationText)notification.getText().get(0)).getText().contains("Scene has") || PopUpController.getPopUpController() == null || ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getEndPoint(0) == null || ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) != 1) 
            return;
        try
        {
            (new Thread(new Runnable() {

                final DemoAllJoynNotificationController this$0;
                final Notification val$notification;

                public void run()
                {
                    String s = notification.getSenderBusName();
                    String s1 = notification.getDeviceId();
                    String s2 = notification.getDeviceName();
                    String s3 = notification.getResponseObjectPath();
                    String s4 = ((NotificationText)notification.getText().get(0)).getText();
                    Integer integer = Integer.valueOf(notification.getMessageId());
                    SimpleDateFormat simpledateformat = new SimpleDateFormat("h:mm aa", Locale.US);
                    String s5 = simpledateformat.format(Calendar.getInstance().getTime());
                    if (s3 != null && !s3.isEmpty())
                    {
                        ResponseData responsedata = new ResponseData(s, s1, s2, s3, s4, s5, integer);
                        ResponseData responsedata1 = (ResponseData)mResponseMap.put(integer, responsedata);
                        if (responsedata1 != null)
                            responsedata1.controllableDevice.endSession();
                        try
                        {
                            ControllableDevice controllabledevice = ControlPanelService.getInstance().getControllableDevice(s1, s);
                            controllabledevice.addControlPanel(s3, new String[] {
                                "org.alljoyn.ControlPanel.ControlPanel"
                            });
                            responsedata.controllableDevice = controllabledevice;
                            controllabledevice.startSession(responsedata);
                            return;
                        }
                        catch (Exception exception1)
                        {
                            exception1.printStackTrace();
                            Log.d("AllJoynNotificationController", (new StringBuilder()).append("Exception: ").append(exception1).toString());
                            return;
                        }
                    } else
                    {
                        PopUpController.getPopUpController().sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 7, 8, createPopUp(s2, s5, s4, null), 20, ConnectionFactory.getConnectionFactory().createTransactionID());
                        return;
                    }
                }

            
            {
                this$0 = DemoAllJoynNotificationController.this;
                notification = notification1;
                super();
            }
            }
)).start();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void valueChanged(DeviceControlPanel devicecontrolpanel, UIElement uielement, Object obj)
    {
        Log.d("AllJoynNotificationController", "AllJoynNotificationController: CPS::valueChanged");
    }


}
