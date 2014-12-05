// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;

import java.lang.reflect.Method;
import java.util.*;
import org.alljoyn.bus.annotation.AccessPermission;
import org.alljoyn.bus.annotation.BusAnnotation;
import org.alljoyn.bus.annotation.BusAnnotations;
import org.alljoyn.bus.annotation.BusInterface;
import org.alljoyn.bus.annotation.BusMethod;
import org.alljoyn.bus.annotation.BusProperty;
import org.alljoyn.bus.annotation.BusSignal;
import org.alljoyn.bus.annotation.Secure;

// Referenced classes of package org.alljoyn.bus:
//            AnnotationBusException, Status, Signature, BusAttachment

class InterfaceDescription
{
    private class Property
    {

        public TreeMap annotations;
        public Method get;
        public String name;
        public Method set;
        public String signature;
        final InterfaceDescription this$0;

        public Property(String s, String s1, TreeMap treemap)
        {
            this$0 = InterfaceDescription.this;
            super();
            name = s;
            signature = s1;
            annotations = treemap;
        }
    }


    private static final int AJ_IFC_SECURITY_INHERIT = 0;
    private static final int AJ_IFC_SECURITY_OFF = 2;
    private static final int AJ_IFC_SECURITY_REQUIRED = 1;
    private static final int INVALID = 0;
    private static final int METHOD_CALL = 1;
    private static final int READ = 1;
    private static final int RW = 3;
    private static final int SIGNAL = 4;
    private static final int WRITE = 2;
    private long handle;
    private List members;
    private Map properties;

    public InterfaceDescription()
    {
        members = new ArrayList();
        properties = new HashMap();
    }

    private native void activate();

    private native Status addAnnotation(String s, String s1);

    private native Status addMember(int i, String s, String s1, String s2, int j, String s3);

    private native Status addMemberAnnotation(String s, String s1, String s2);

    private Status addMembers(Class class1)
        throws AnnotationBusException
    {
        Iterator iterator = members.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            Method method = (Method)iterator.next();
            BusMethod busmethod = (BusMethod)method.getAnnotation(org/alljoyn/bus/annotation/BusMethod);
            BusSignal bussignal = (BusSignal)method.getAnnotation(org/alljoyn/bus/annotation/BusSignal);
            AccessPermission accesspermission = (AccessPermission)method.getAnnotation(org/alljoyn/bus/annotation/AccessPermission);
            byte byte0;
            int i;
            if (busmethod != null)
            {
                byte0 = 1;
                i = busmethod.annotation();
            } else
            if (bussignal != null)
            {
                i = bussignal.annotation();
                byte0 = 4;
            } else
            {
                byte0 = 0;
                i = 0;
            }
            if (byte0 != 0)
            {
                String s = null;
                if (accesspermission != null)
                    s = accesspermission.value();
                String s1 = getName(method);
                Status status = addMember(byte0, s1, getInputSig(method), getOutSig(method), i, s);
                if (status != Status.OK)
                    return status;
                BusAnnotations busannotations = (BusAnnotations)method.getAnnotation(org/alljoyn/bus/annotation/BusAnnotations);
                if (busannotations != null)
                {
                    BusAnnotation abusannotation[] = busannotations.value();
                    int j = abusannotation.length;
                    int k = 0;
                    while (k < j) 
                    {
                        BusAnnotation busannotation = abusannotation[k];
                        addMemberAnnotation(s1, busannotation.name(), busannotation.value());
                        k++;
                    }
                }
            }
        } while (true);
        return Status.OK;
    }

    private Status addProperties(Class class1)
        throws AnnotationBusException
    {
        for (Iterator iterator = properties.values().iterator(); iterator.hasNext();)
        {
            Property property = (Property)iterator.next();
            boolean flag;
            if (property.get != null)
                flag = true;
            else
                flag = false;
            byte byte0;
            if (property.set != null)
                byte0 = 2;
            else
                byte0 = 0;
            int i = flag | byte0;
            Status status = addProperty(property.name, property.signature, i);
            if (status != Status.OK)
                return status;
            Iterator iterator1 = property.annotations.entrySet().iterator();
            while (iterator1.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
                addPropertyAnnotation(property.name, (String)entry.getKey(), (String)entry.getValue());
            }
        }

        return Status.OK;
    }

    private native Status addProperty(String s, String s1, int i);

    private native Status addPropertyAnnotation(String s, String s1, String s2);

    private native Status create(BusAttachment busattachment, String s, int i, int j, int k);

    public static Status create(BusAttachment busattachment, Class aclass[], List list)
        throws AnnotationBusException
    {
        int i = aclass.length;
        for (int j = 0; j < i; j++)
        {
            Class class1 = aclass[j];
            if ("org.freedesktop.DBus.Properties".equals(getName(class1)) || class1.getAnnotation(org/alljoyn/bus/annotation/BusInterface) == null)
                continue;
            InterfaceDescription interfacedescription = new InterfaceDescription();
            Status status = interfacedescription.create(busattachment, class1);
            if (status != Status.OK)
                return status;
            list.add(interfacedescription);
        }

        return Status.OK;
    }

    public static String getInputSig(Method method)
        throws AnnotationBusException
    {
        BusMethod busmethod = (BusMethod)method.getAnnotation(org/alljoyn/bus/annotation/BusMethod);
        if (busmethod != null && busmethod.signature().length() > 0)
            return Signature.typeSig(method.getGenericParameterTypes(), busmethod.signature());
        BusSignal bussignal = (BusSignal)method.getAnnotation(org/alljoyn/bus/annotation/BusSignal);
        if (bussignal != null && bussignal.signature().length() > 0)
            return Signature.typeSig(method.getGenericParameterTypes(), bussignal.signature());
        else
            return Signature.typeSig(method.getGenericParameterTypes(), null);
    }

    private Method getMember(String s)
    {
        for (Iterator iterator = members.iterator(); iterator.hasNext();)
        {
            Method method = (Method)iterator.next();
            if (getName(method).equals(s))
                return method;
        }

        return null;
    }

    private Status getMembers(Class class1)
        throws AnnotationBusException
    {
        Method amethod[] = class1.getMethods();
        int i = amethod.length;
        for (int j = 0; j < i; j++)
        {
            Method method = amethod[j];
            if (method.getAnnotation(org/alljoyn/bus/annotation/BusMethod) != null)
            {
                members.add(method);
                continue;
            }
            if (method.getAnnotation(org/alljoyn/bus/annotation/BusSignal) != null)
                members.add(method);
        }

        return Status.OK;
    }

    public static String getName(Class class1)
    {
        BusInterface businterface = (BusInterface)class1.getAnnotation(org/alljoyn/bus/annotation/BusInterface);
        if (businterface != null && businterface.name().length() > 0)
            return businterface.name();
        else
            return class1.getName();
    }

    public static String getName(Method method)
    {
        BusMethod busmethod = (BusMethod)method.getAnnotation(org/alljoyn/bus/annotation/BusMethod);
        if (busmethod != null && busmethod.name().length() > 0)
            return busmethod.name();
        BusSignal bussignal = (BusSignal)method.getAnnotation(org/alljoyn/bus/annotation/BusSignal);
        if (bussignal != null && bussignal.name().length() > 0)
            return bussignal.name();
        BusProperty busproperty = (BusProperty)method.getAnnotation(org/alljoyn/bus/annotation/BusProperty);
        if (busproperty != null)
        {
            if (busproperty.name().length() > 0)
                return busproperty.name();
            else
                return method.getName().substring(3);
        } else
        {
            return method.getName();
        }
    }

    public static String getOutSig(Method method)
        throws AnnotationBusException
    {
        BusMethod busmethod = (BusMethod)method.getAnnotation(org/alljoyn/bus/annotation/BusMethod);
        if (busmethod != null && busmethod.replySignature().length() > 0)
            return Signature.typeSig(method.getGenericReturnType(), busmethod.replySignature());
        BusSignal bussignal = (BusSignal)method.getAnnotation(org/alljoyn/bus/annotation/BusSignal);
        if (bussignal != null && bussignal.replySignature().length() > 0)
            return Signature.typeSig(method.getGenericReturnType(), bussignal.replySignature());
        else
            return Signature.typeSig(method.getGenericReturnType(), null);
    }

    private Status getProperties(Class class1)
        throws AnnotationBusException
    {
label0:
        {
            Method amethod[] = class1.getMethods();
            int i = amethod.length;
            int j = 0;
            do
            {
                if (j >= i)
                    break label0;
                Method method = amethod[j];
                if (method.getAnnotation(org/alljoyn/bus/annotation/BusProperty) != null)
                {
                    String s = getName(method);
                    Property property = (Property)properties.get(s);
                    BusAnnotations busannotations = (BusAnnotations)method.getAnnotation(org/alljoyn/bus/annotation/BusAnnotations);
                    TreeMap treemap = new TreeMap();
                    if (busannotations != null)
                    {
                        BusAnnotation abusannotation[] = busannotations.value();
                        int k = abusannotation.length;
                        for (int l = 0; l < k; l++)
                        {
                            BusAnnotation busannotation = abusannotation[l];
                            treemap.put(busannotation.name(), busannotation.value());
                        }

                    }
                    if (property == null)
                        property = new Property(s, getPropertySig(method), treemap);
                    else
                    if (!property.signature.equals(getPropertySig(method)))
                        return Status.BAD_ANNOTATION;
                    if (method.getName().startsWith("get"))
                    {
                        property.get = method;
                    } else
                    {
                        if (!method.getName().startsWith("set") || !method.getGenericReturnType().equals(Void.TYPE))
                            break;
                        property.set = method;
                    }
                    properties.put(s, property);
                }
                j++;
            } while (true);
            return Status.BAD_ANNOTATION;
        }
        return Status.OK;
    }

    private Method[] getProperty(String s)
    {
        for (Iterator iterator = properties.values().iterator(); iterator.hasNext();)
        {
            Property property = (Property)iterator.next();
            if (property.name.equals(s))
            {
                Method amethod[] = new Method[2];
                amethod[0] = property.get;
                amethod[1] = property.set;
                return amethod;
            }
        }

        return null;
    }

    public static String getPropertySig(Method method)
        throws AnnotationBusException
    {
        java.lang.reflect.Type type;
        if (method.getName().startsWith("get"))
            type = method.getGenericReturnType();
        else
        if (method.getName().startsWith("set"))
            type = method.getGenericParameterTypes()[0];
        else
            type = null;
        BusProperty busproperty = (BusProperty)method.getAnnotation(org/alljoyn/bus/annotation/BusProperty);
        if (busproperty != null && busproperty.signature().length() > 0)
            return Signature.typeSig(type, busproperty.signature());
        else
            return Signature.typeSig(type, null);
    }

    public Status create(BusAttachment busattachment, Class class1)
        throws AnnotationBusException
    {
        int i = 0;
        Status status = getProperties(class1);
        if (status == Status.OK)
        {
            status = getMembers(class1);
            if (status == Status.OK)
            {
                Secure secure = (Secure)class1.getAnnotation(org/alljoyn/bus/annotation/Secure);
                byte byte0;
                if (secure != null)
                {
                    if (secure.value().equals("required"))
                        byte0 = 1;
                    else
                    if (secure.value().equals("off"))
                        byte0 = 2;
                    else
                        byte0 = 0;
                } else
                {
                    byte0 = 0;
                }
                status = create(busattachment, getName(class1), byte0, properties.size(), members.size());
                if (status == Status.OK)
                {
                    status = addProperties(class1);
                    if (status == Status.OK)
                    {
                        status = addMembers(class1);
                        if (status == Status.OK)
                        {
                            BusAnnotations busannotations = (BusAnnotations)class1.getAnnotation(org/alljoyn/bus/annotation/BusAnnotations);
                            if (busannotations != null)
                            {
                                BusAnnotation abusannotation[] = busannotations.value();
                                for (int j = abusannotation.length; i < j; i++)
                                {
                                    BusAnnotation busannotation = abusannotation[i];
                                    addAnnotation(busannotation.name(), busannotation.value());
                                }

                            }
                            activate();
                            return Status.OK;
                        }
                    }
                }
            }
        }
        return status;
    }
}
