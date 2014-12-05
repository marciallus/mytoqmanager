// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.controller;

import com.qualcomm.toq.base.handler.IConnectionHandler;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.earpiece.handler.EPConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;

// Referenced classes of package com.qualcomm.toq.base.controller:
//            IController

public abstract class DefaultController
    implements IController
{

    public int appID;


    public int getAppID()
    {
        return appID;
    }

    public abstract void handleConnHandlerMessage(int i, int j, Object obj, int k, int l);

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        Object obj1;
label0:
        {
            if (i == 0)
            {
                obj1 = ToqConnectionHandlerImpl.getConnectionHandler();
                break label0;
            }
            if (i != 1)
            {
                obj1 = null;
                if (i != 2)
                    break label0;
            }
            obj1 = EPConnectionHandlerImpl.getConnectionHandler();
        }
        if (obj1 != null)
        {
            Log.d("BTConnectionListener", "DefaultController: sendControllerMessageData() called");
            ((IConnectionHandler) (obj1)).handleControllerData(i, j, k, obj, l, i1);
        }
    }

    public void setAppID(int i)
    {
        appID = i;
    }
}
