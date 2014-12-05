// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication;

import android.util.Log;
import java.lang.reflect.Method;
import org.alljoyn.bus.SessionOpts;
import org.alljoyn.bus.Variant;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ActionControlSuper;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.AlertDialogSuper;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ContainerSuper;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.Label;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ListPropertyControlSuper;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.NotificationAction;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.PropertyControlSuper;

public class CommunicationUtil
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil.getSimpleName()).toString();


    public static Method getActionMetadataChanged(String s)
    {
        Method method;
        try
        {
            method = org/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSuper.getMethod(s, new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Not found reflection of ").append(s).append(" method").toString());
            return null;
        }
        return method;
    }

    public static Method getAlertDialogMetadataChanged(String s)
    {
        Method method;
        try
        {
            method = org/alljoyn/ioe/controlpanelservice/communication/interfaces/AlertDialogSuper.getMethod(s, new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Not found reflection of ").append(s).append(" method").toString());
            return null;
        }
        return method;
    }

    public static Method getContainerMetadataChanged(String s)
    {
        Method method;
        try
        {
            method = org/alljoyn/ioe/controlpanelservice/communication/interfaces/ContainerSuper.getMethod(s, new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Not found reflection of ").append(s).append(" method").toString());
            return null;
        }
        return method;
    }

    public static transient int getInterfaceMask(String as[])
    {
        int i = 0;
        if (as == null)
            return 0;
        int j = as.length;
        for (int k = 0; k < j; k++)
        {
            String s = as[k];
            if (s.equals("org.alljoyn.ControlPanel.ControlPanel"))
            {
                i |= 1;
                continue;
            }
            if (s.equals("org.alljoyn.ControlPanel.HTTPControl"))
            {
                i |= 2;
                continue;
            }
            if (s.equals("org.alljoyn.ControlPanel.NotificationAction"))
                i |= 4;
        }

        return i;
    }

    public static Method getLabelWidgetMetadataChanged(String s)
    {
        Method method;
        try
        {
            method = org/alljoyn/ioe/controlpanelservice/communication/interfaces/Label.getMethod(s, new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Not found reflection of ").append(s).append(" method").toString());
            return null;
        }
        return method;
    }

    public static Method getListPropertyWidgetSignal(String s)
    {
        Method method;
        try
        {
            method = org/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper.getMethod(s, new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Not found reflection of ").append(s).append(" method").toString());
            return null;
        }
        return method;
    }

    public static Method getNotificationActionDismissSignal(String s)
    {
        Method method;
        try
        {
            method = org/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction.getMethod(s, new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Not found reflection of ").append(s).append(" method").toString());
            return null;
        }
        return method;
    }

    public static Method getPropertyMetadataChanged(String s)
    {
        Method method;
        try
        {
            method = org/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper.getMethod(s, new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Not found reflection of ").append(s).append(" method").toString());
            return null;
        }
        return method;
    }

    public static Method getPropertyValueChanged(String s)
    {
        Method method;
        try
        {
            method = org/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper.getMethod(s, new Class[] {
                org/alljoyn/bus/Variant
            });
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Not found reflection of ").append(s).append(" method").toString());
            return null;
        }
        return method;
    }

    public static SessionOpts getSessionOpts()
    {
        SessionOpts sessionopts = new SessionOpts();
        sessionopts.traffic = 1;
        sessionopts.isMultipoint = false;
        sessionopts.proximity = -1;
        sessionopts.transports = -129;
        return sessionopts;
    }

    public static boolean maskIncludes(int i, int j)
    {
        return (i & j) == j;
    }

    public static String[] parseObjPath(String s)
        throws ControlPanelException
    {
        String as[] = s.split("/");
        int i = as.length;
        if (i == 0)
            throw new ControlPanelException((new StringBuilder()).append("Received a broken object path: '").append(s).append("'").toString());
        String s1 = as[i - 1];
        String s2;
        if (i - 2 >= 0)
            s2 = as[i - 2];
        else
            s2 = "unknown";
        return (new String[] {
            s2, s1
        });
    }

}
