// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication;

import android.util.Log;
import java.lang.reflect.*;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.communication:
//            TaskManager, ConnectionManager

public class UIWidgetSignalHandler
    implements InvocationHandler
{

    private static final String METADATA_CHANGED = "MetadataChanged";
    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler.getSimpleName()).toString();
    private String ifName;
    private Method method;
    private String objPath;
    private Object proxySignalReceiver;
    private Object signalReceiver;

    public UIWidgetSignalHandler(String s, Object obj, Method method1, String s1)
    {
        objPath = s;
        signalReceiver = obj;
        method = method1;
        ifName = s1;
    }

    private Object createProxySignalReceiver(Class aclass[])
    {
        return Proxy.newProxyInstance(aclass[0].getClassLoader(), aclass, this);
    }

    public Object invoke(Object obj, final Method method, final Object args[])
        throws Throwable
    {
        Runnable runnable = new Runnable() {

            final UIWidgetSignalHandler this$0;
            final Object val$args[];
            final Method val$method;

            public void run()
            {
                try
                {
                    method.invoke(signalReceiver, args);
                    return;
                }
                catch (Exception exception)
                {
                    Log.d(UIWidgetSignalHandler.TAG, (new StringBuilder()).append("Failed to invoke the method: '").append(method.getName()).append("', Error: '").append(exception.getMessage()).append("'").toString(), exception);
                }
            }

            
            {
                this$0 = UIWidgetSignalHandler.this;
                method = method1;
                args = aobj;
                super();
            }
        }
;
        if ("MetadataChanged".equals(method.getName()))
        {
            Log.d(TAG, "Received 'MetadataChanged' signal storing it in the queue for later execution");
            TaskManager.getInstance().enqueue(runnable);
        } else
        {
            Log.d(TAG, (new StringBuilder()).append("Received '").append(method.getName()).append("' signal passing it for execution").toString());
            TaskManager.getInstance().execute(runnable);
        }
        return null;
    }

    public void register()
        throws ControlPanelException
    {
        Class aclass[] = signalReceiver.getClass().getInterfaces();
        if (aclass.length == 0)
        {
            Log.e(TAG, "Received signalReceiver object doesn't implement any interface");
            throw new ControlPanelException("Received signalReceiver object doesn't implement any interface");
        } else
        {
            proxySignalReceiver = createProxySignalReceiver(aclass);
            ConnectionManager.getInstance().registerObjectAndSetSignalHandler(ifName, method.getName(), method, proxySignalReceiver, objPath, objPath);
            return;
        }
    }

    public void unregister()
        throws ControlPanelException
    {
        Log.v(TAG, (new StringBuilder()).append("Unregistering signal handler: '").append(method.getName()).append("', objPath: '").append(objPath).append("'").toString());
        ConnectionManager.getInstance().unregisterSignalHandler(proxySignalReceiver, method);
        signalReceiver = null;
        proxySignalReceiver = null;
    }



}
