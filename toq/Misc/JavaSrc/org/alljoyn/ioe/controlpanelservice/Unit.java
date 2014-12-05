// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice;

import android.util.Log;
import java.util.*;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.ProxyBusObject;
import org.alljoyn.ioe.controlpanelservice.communication.ConnectionManager;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.HTTPControl;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice:
//            ControlPanelException, ControllableDevice, ControlPanelCollection

public class Unit
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/Unit.getSimpleName()).toString();
    private ControllableDevice device;
    private String httpControlObjPath;
    private Map panelCollections;
    private ProxyBusObject proxyObj;
    private HTTPControl remoteControl;
    private String unitId;
    private Short version;

    public Unit(ControllableDevice controllabledevice, String s)
    {
        device = controllabledevice;
        unitId = s;
        panelCollections = new HashMap();
    }

    private void setRemoteController()
        throws ControlPanelException
    {
        short word0;
        if (proxyObj != null && device.getSender().equals(proxyObj.getBusName()))
            return;
        if (proxyObj != null)
            proxyObj.release();
        Integer integer = device.getSessionId();
        if (integer == null)
            throw new ControlPanelException("Session is not established");
        proxyObj = ConnectionManager.getInstance().getProxyObject(device.getSender(), httpControlObjPath, integer.intValue(), new Class[] {
            org/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl
        });
        remoteControl = (HTTPControl)proxyObj.getInterface(org/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl);
        try
        {
            word0 = remoteControl.getVersion();
            Log.d(TAG, (new StringBuilder()).append("Version check for HTTP Protocol, my protocol version is: '1' the remote device version is: '").append(word0).append("'").toString());
        }
        catch (BusException busexception)
        {
            proxyObj = null;
            remoteControl = null;
            throw new ControlPanelException((new StringBuilder()).append("Failed to call getVersion() for HTTPProtocol, objPath: '").append(httpControlObjPath).append("', Error: '").append(busexception.getMessage()).append("'").toString());
        }
        if (word0 <= 1)
            break MISSING_BLOCK_LABEL_250;
        throw new ControlPanelException((new StringBuilder()).append("Incompatible HTTPProtocol version, my protocol version is: '1' the remote device version is: '").append(word0).append("'").toString());
        version = Short.valueOf(word0);
        return;
    }

    ControlPanelCollection createControlPanelCollection(String s, String s1)
        throws ControlPanelException
    {
        ControlPanelCollection controlpanelcollection = (ControlPanelCollection)panelCollections.get(s1);
        if (controlpanelcollection == null)
        {
            Log.i(TAG, (new StringBuilder()).append("Received a new ControlPanelCollection Name: '").append(s1).append("' objPath: '").append(s).append("', creating...").toString());
            controlpanelcollection = new ControlPanelCollection(device, this, s1, s);
            panelCollections.put(s1, controlpanelcollection);
        } else
        {
            Log.d(TAG, (new StringBuilder()).append("Received a known ControlPanelCollection Name: '").append(s1).append("' objPath: '").append(s).append("'").toString());
        }
        Integer integer = device.getSessionId();
        if (integer != null && controlpanelcollection.getControlPanels().size() == 0)
        {
            Log.d(TAG, (new StringBuilder()).append("The session with the remote device has been previously established , sid: '").append(integer).append("', filling the new collection").toString());
            controlpanelcollection.retrievePanels();
        }
        return controlpanelcollection;
    }

    void fillControlPanelCollections()
        throws ControlPanelException
    {
        for (Iterator iterator = panelCollections.values().iterator(); iterator.hasNext(); ((ControlPanelCollection)iterator.next()).retrievePanels());
    }

    public Collection getControlPanelCollection()
    {
        return Collections.unmodifiableCollection(panelCollections.values());
    }

    public ControllableDevice getDevice()
    {
        return device;
    }

    public Short getHttpControlVersion()
        throws ControlPanelException
    {
        if (httpControlObjPath == null)
        {
            return null;
        } else
        {
            setRemoteController();
            return version;
        }
    }

    public String getHttpIfaceObjPath()
    {
        return httpControlObjPath;
    }

    public String getRootURL()
        throws ControlPanelException
    {
        if (httpControlObjPath == null)
            return null;
        setRemoteController();
        String s;
        try
        {
            s = remoteControl.GetRootURL();
        }
        catch (BusException busexception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to receive the Root URL, Error: '").append(busexception.getMessage()).append("'").toString());
        }
        return s;
    }

    public String getUnitId()
    {
        return unitId;
    }

    public void release()
    {
        Log.d(TAG, (new StringBuilder()).append("Cleaning the Unit name: '").append(unitId).append("'").toString());
        if (proxyObj != null)
            proxyObj.release();
        remoteControl = null;
        version = null;
        for (Iterator iterator = panelCollections.values().iterator(); iterator.hasNext(); ((ControlPanelCollection)iterator.next()).release());
        panelCollections.clear();
    }

    void setHttpControlObjPath(String s)
    {
        httpControlObjPath = s;
    }

}
