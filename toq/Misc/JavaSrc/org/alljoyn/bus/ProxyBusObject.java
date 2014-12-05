// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;

import java.lang.reflect.*;
import java.util.*;
import org.alljoyn.bus.annotation.BusProperty;
import org.alljoyn.bus.ifaces.Properties;

// Referenced classes of package org.alljoyn.bus:
//            BusException, AnnotationBusException, InterfaceDescription, Status, 
//            Variant, BusAttachment, MarshalBusException

public class ProxyBusObject
{
    private class Handler
        implements InvocationHandler
    {

        private Map invocationCache;
        final ProxyBusObject this$0;

        public Object invoke(Object obj, Method method, Object aobj[])
            throws BusException
        {
            Invocation invocation1;
label0:
            {
                String s;
label1:
                {
                    List list;
                    Invocation invocation4;
label2:
                    {
                        s = method.getName();
                        list = (List)invocationCache.get(s);
                        if (list == null)
                            break label1;
                        if (list.size() == 1)
                        {
                            invocation1 = (Invocation)list.get(0);
                            break label0;
                        }
                        for (Iterator iterator = list.iterator(); iterator.hasNext();)
                        {
                            invocation4 = (Invocation)iterator.next();
                            if (method.equals(invocation4.method))
                                break label2;
                        }

                        invocation4 = null;
                    }
                    if (invocation4 == null)
                    {
                        Invocation invocation5 = new Invocation(method);
                        list.add(invocation5);
                        invocation1 = invocation5;
                    } else
                    {
                        invocation1 = invocation4;
                    }
                    break label0;
                }
                ArrayList arraylist = new ArrayList();
                Class aclass[] = obj.getClass().getInterfaces();
                int i = aclass.length;
                Invocation invocation = null;
                int j = 0;
                do
                {
                    if (j >= i)
                        break;
                    Method amethod[] = aclass[j].getMethods();
                    int k = amethod.length;
                    int l = 0;
                    Invocation invocation2;
                    Invocation invocation3;
                    for (invocation2 = invocation; l < k; invocation2 = invocation3)
                    {
label3:
                        {
                            Method method1 = amethod[l];
                            if (s.equals(method1.getName()))
                            {
                                invocation3 = new Invocation(method1);
                                arraylist.add(invocation3);
                                if (method.equals(invocation3.method))
                                    break label3;
                            }
                            invocation3 = invocation2;
                        }
                        l++;
                    }

                    j++;
                    invocation = invocation2;
                } while (true);
                if (invocation == null)
                    throw new BusException((new StringBuilder()).append("No such method: ").append(method).toString());
                invocationCache.put(s, arraylist);
                invocation1 = invocation;
            }
            Object obj1;
            Class class1;
            boolean flag1;
label4:
            {
                if (invocation1.isMethod)
                    obj1 = methodCall(bus, invocation1.interfaceName, invocation1.methodName, invocation1.inputSig, invocation1.genericReturnType, aobj, replyTimeoutMsecs, flags);
                else
                if (invocation1.isGet)
                {
                    obj1 = getProperty(bus, invocation1.interfaceName, invocation1.methodName).getObject(invocation1.genericReturnType);
                } else
                {
                    setProperty(bus, invocation1.interfaceName, invocation1.methodName, invocation1.outSig, aobj[0]);
                    obj1 = null;
                }
                class1 = invocation1.returnType;
                if (obj1 == null)
                {
                    if (class1.isPrimitive() && !class1.isAssignableFrom(Void.TYPE))
                        flag1 = true;
                    else
                        flag1 = false;
                    break label4;
                }
                if (class1.isPrimitive())
                {
                    if ((!class1.isAssignableFrom(Byte.TYPE) || (obj1 instanceof Byte)) && (!class1.isAssignableFrom(Short.TYPE) || (obj1 instanceof Short)) && (!class1.isAssignableFrom(Integer.TYPE) || (obj1 instanceof Integer)) && (!class1.isAssignableFrom(Long.TYPE) || (obj1 instanceof Long)) && (!class1.isAssignableFrom(Double.TYPE) || (obj1 instanceof Double)))
                    {
                        boolean flag2 = class1.isAssignableFrom(Boolean.TYPE);
                        flag1 = false;
                        if (!flag2)
                            break label4;
                        boolean flag3 = obj1 instanceof Boolean;
                        flag1 = false;
                        if (flag3)
                            break label4;
                    }
                    flag1 = true;
                } else
                {
                    boolean flag = class1.isAssignableFrom(obj1.getClass());
                    flag1 = false;
                    if (!flag)
                        flag1 = true;
                }
            }
            if (flag1)
                throw new MarshalBusException((new StringBuilder()).append("cannot marshal '").append(invocation1.outSig).append("' into ").append(class1).toString());
            else
                return obj1;
        }

        public Handler()
        {
            this$0 = ProxyBusObject.this;
            super();
            invocationCache = new HashMap();
        }
    }

    private class Handler.Invocation
    {

        public Type genericReturnType;
        public String inputSig;
        public String interfaceName;
        public boolean isGet;
        public boolean isMethod;
        public Method method;
        public String methodName;
        public String outSig;
        public Class returnType;
        final Handler this$1;

        public Handler.Invocation(Method method1)
            throws BusException
        {
            this$1 = Handler.this;
            super();
            method = method1;
            if (method1.getAnnotation(org/alljoyn/bus/annotation/BusProperty) != null)
            {
                isGet = method1.getName().startsWith("get");
                outSig = InterfaceDescription.getPropertySig(method1);
            } else
            {
                isMethod = true;
                outSig = InterfaceDescription.getOutSig(method1);
                inputSig = InterfaceDescription.getInputSig(method1);
            }
            interfaceName = InterfaceDescription.getName(method1.getDeclaringClass());
            methodName = InterfaceDescription.getName(method1);
            genericReturnType = method1.getGenericReturnType();
            returnType = method1.getReturnType();
        }
    }


    private static final int AUTO_START = 2;
    private static final int ENCRYPTED = 128;
    private BusAttachment bus;
    private Method busConnectionLost;
    private String busName;
    private int flags;
    private long handle;
    private String objPath;
    private Object proxy;
    private int replyTimeoutMsecs;

    protected ProxyBusObject(BusAttachment busattachment, String s, String s1, int i, Class aclass[])
    {
        this(busattachment, s, s1, i, aclass, false);
    }

    protected ProxyBusObject(BusAttachment busattachment, String s, String s1, int i, Class aclass[], boolean flag)
    {
        bus = busattachment;
        busName = s;
        objPath = s1;
        flags = 0;
        create(busattachment, s, s1, i, flag);
        replyTimeoutMsecs = 25000;
        proxy = Proxy.newProxyInstance(aclass[0].getClassLoader(), aclass, new Handler());
        try
        {
            busConnectionLost = getClass().getDeclaredMethod("busConnectionLost", new Class[] {
                java/lang/String
            });
            busConnectionLost.setAccessible(true);
            return;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return;
        }
    }

    private int addInterface(String s)
        throws AnnotationBusException
    {
        Class aclass[] = proxy.getClass().getInterfaces();
        int i = aclass.length;
        for (int j = 0; j < i; j++)
        {
            Class class1 = aclass[j];
            if (s.equals(InterfaceDescription.getName(class1)))
                return (new InterfaceDescription()).create(bus, class1).getErrorCode();
        }

        return Status.BUS_NO_SUCH_INTERFACE.getErrorCode();
    }

    private native void create(BusAttachment busattachment, String s, String s1, int i, boolean flag);

    private synchronized native void destroy();

    private native Map getAllProperties(BusAttachment busattachment, Type type, String s)
        throws BusException;

    private native Variant getProperty(BusAttachment busattachment, String s, String s1)
        throws BusException;

    private native boolean isProxyBusObjectSecure();

    private native Object methodCall(BusAttachment busattachment, String s, String s1, String s2, Type type, Object aobj[], int i, 
            int j)
        throws BusException;

    private native void setProperty(BusAttachment busattachment, String s, String s1, String s2, Object obj)
        throws BusException;

    protected void finalize()
        throws Throwable
    {
        destroy();
        super.finalize();
        return;
        Exception exception;
        exception;
        super.finalize();
        throw exception;
    }

    public Map getAllProperties(Class class1)
        throws BusException
    {
        Map map;
        try
        {
            Type type = org/alljoyn/bus/ifaces/Properties.getMethod("GetAll", new Class[] {
                java/lang/String
            }).getGenericReturnType();
            map = getAllProperties(bus, type, InterfaceDescription.getName(class1));
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
        return map;
    }

    public String getBusName()
    {
        return busName;
    }

    public Object getInterface(Class class1)
    {
        return proxy;
    }

    public String getObjPath()
    {
        return objPath;
    }

    public Variant getProperty(Class class1, String s)
        throws BusException
    {
        return getProperty(bus, InterfaceDescription.getName(class1), s);
    }

    public boolean isSecure()
    {
        return isProxyBusObjectSecure();
    }

    public void release()
    {
        destroy();
    }

    public void setAutoStart(boolean flag)
    {
        int i;
        if (flag)
            i = 2 | flags;
        else
            i = -3 & flags;
        flags = i;
    }

    public void setProperty(Class class1, String s, Variant variant)
        throws BusException
    {
        setProperty(bus, InterfaceDescription.getName(class1), s, variant.getSignature(), variant.getValue());
    }

    public void setReplyTimeout(int i)
    {
        replyTimeoutMsecs = i;
    }






}
