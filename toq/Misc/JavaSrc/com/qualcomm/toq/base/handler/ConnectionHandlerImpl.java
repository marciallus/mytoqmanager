// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.handler;

import android.content.Context;
import android.content.Intent;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.controller.IController;
import com.qualcomm.toq.base.controller.TFTPController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.message.Message;
import com.qualcomm.toq.base.utils.*;
import java.util.HashMap;

// Referenced classes of package com.qualcomm.toq.base.handler:
//            IConnectionHandler, MessageHandler

public class ConnectionHandlerImpl
    implements IConnectionHandler
{

    private static final String TAG = "ConnectionHandlerImpl";
    private IConnectionManager connManager;
    HashMap endPointStateMap;
    private Intent lastSentBroadcastIntent;

    public ConnectionHandlerImpl()
    {
        endPointStateMap = new HashMap();
    }

    private IEndPoint getEndPoint(int i)
    {
        return ConnectionFactory.getConnectionFactory().getEndPoint(i);
    }

    private void setLastSentBroadcastIntent(Intent intent)
    {
        lastSentBroadcastIntent = intent;
    }

    public IConnectionManager getConnManager()
    {
        return connManager;
    }

    public IController getController(int i, int j)
    {
        Log.d("ConnectionHandlerImpl", (new StringBuilder()).append("Dest appID = ").append(i).toString());
        TFTPController tftpcontroller = null;
        if (i == 15)
            tftpcontroller = TFTPController.getTFTPController(j);
        return tftpcontroller;
    }

    public Intent getLastSentBroadcastIntent()
    {
        return lastSentBroadcastIntent;
    }

    public byte[] getPackedMessage(Message message)
    {
        return MessageHandler.getMessageHandler().packMessage(message);
    }

    public Message getParsedMessage(byte abyte0[])
    {
        if (abyte0 != null)
            return MessageHandler.getMessageHandler().unpackMessage(abyte0);
        else
            return null;
    }

    public int getState(int i)
    {
        if (endPointStateMap.containsKey(Integer.valueOf(i)))
            return ((Integer)endPointStateMap.get(Integer.valueOf(i))).intValue();
        else
            return 0;
    }

    public void handleControllerData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getConnManager() != null)
        {
            byte abyte0[] = getPackedMessage(new Message(j, k, obj, l, i1));
            if (endPointStateMap.containsKey(Integer.valueOf(i)) && ((Integer)endPointStateMap.get(Integer.valueOf(i))).intValue() == 3)
            {
                Log.d("BTConnectionListener", "ConnectionHandlerImpl: handleControllerData()");
                ConnectionFactory.getConnectionFactory().getConnManager().handleConnHandlerData(getEndPoint(i), abyte0);
                return;
            }
        } else
        {
            Log.d("ConnectionHandlerImpl", "handleControllerData(): Object Null");
        }
    }

    public void handleMessage(byte abyte0[], IEndPoint iendpoint)
    {
        Message message = MessageHandler.getMessageHandler().unpackMessage(abyte0);
        if (message != null)
        {
            Log.d("ConnectionHandlerImpl", (new StringBuilder()).append("handleMessage srcAdd appID = :").append(message.srcAdd).append("   destAdd appID = :").append(message.destAdd).toString());
            IController icontroller = getController(message.destAdd, iendpoint.getType());
            Log.d("ConnectionHandlerImpl", (new StringBuilder()).append("Incoming Payload=:").append(message.payload).toString());
            if (icontroller != null)
            {
                icontroller.handleConnHandlerMessage(message.destAdd, message.messageType, message.payload, message.transactionId, iendpoint.getType());
                if (!ProjectConfig.getProjectConfig().getConnectionType().equals("BLUETOOTH"));
                return;
            } else
            {
                Utils.updateStatus("ConnectionHandlerImpl", "EPMessage:Message is not intended for Phone. Neglecting!!!! \nClosing the connection.", iendpoint.getType(), 1, (byte)7);
                BTConnectionManager.getConnectionManager(ToqApplication.getAppContext()).resetEndPointConnection(iendpoint.getType(), false);
                return;
            }
        } else
        {
            Log.d("ConnectionHandlerImpl", "In handleMessage() message is null");
            return;
        }
    }

    protected void initMgr()
    {
    }

    public void setConnManager(IConnectionManager iconnectionmanager)
    {
        connManager = iconnectionmanager;
    }

    public void updateState(int i, int j)
    {
        endPointStateMap.put(Integer.valueOf(i), Integer.valueOf(j));
        IEndPoint iendpoint = getEndPoint(i);
        Context context = ConnectionFactory.getConnectionFactory().getContext();
        Log.d("ConnectionHandlerImpl", "Checking for Endpoint");
        if (iendpoint != null)
        {
            Log.d("ConnectionHandlerImpl", (new StringBuilder()).append("Endpoint is Present and not null: ").append(iendpoint.getName()).append("   state: ").append(j).toString());
            String s = iendpoint.getName();
            String s1 = iendpoint.getAddress();
            Intent intent = new Intent(Constants.ACTION_CONNECTION_STATE_CHANGE);
            intent.putExtra("state", j);
            intent.putExtra("endpointname", s);
            intent.putExtra("endpointaddress", s1);
            intent.putExtra("endpointtype", i);
            Log.d("ConnectionHandlerImpl", "Sending Broad cast for State Update");
            setLastSentBroadcastIntent(intent);
            context.sendBroadcast(intent);
            Log.d("ConnectionHandlerImpl", (new StringBuilder()).append("updateState").append(j).toString());
        }
    }
}
