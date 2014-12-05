// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

// Referenced classes of package org.alljoyn.bus:
//            BusException, MsgArg, AnnotationBusException, Signature, 
//            VariantTypeReference

public class Variant
{

    private long handle;
    private String signature;
    private Object value;


    public Variant(Object obj)
    {
        value = obj;
    }

    public Variant(Object obj, String s)
    {
        value = obj;
        signature = s;
    }

    private synchronized native void destroy();

    public boolean equals(Object obj)
    {
        boolean flag;
        try
        {
            flag = getObject(value.getClass()).equals(((Variant)obj).getObject(value.getClass()));
        }
        catch (BusException busexception)
        {
            return false;
        }
        catch (ClassCastException classcastexception)
        {
            return false;
        }
        return flag;
    }

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

    long getMsgArg()
    {
        return handle;
    }

    public Object getObject(Class class1)
        throws BusException
    {
        if (value == null)
            value = MsgArg.unmarshal(handle, class1);
        return value;
    }

    public Object getObject(Type type)
        throws BusException
    {
        if (value == null)
            value = MsgArg.unmarshal(handle, type);
        return value;
    }

    public Object getObject(VariantTypeReference varianttypereference)
        throws BusException
    {
        if (value == null)
        {
            Type type = varianttypereference.getClass().getGenericSuperclass();
            value = MsgArg.unmarshal(handle, ((ParameterizedType)type).getActualTypeArguments()[0]);
        }
        return value;
    }

    public String getSignature()
        throws AnnotationBusException
    {
        if (value != null)
            return Signature.typeSig(value.getClass(), signature);
        if (handle != 0L)
        {
            long al[] = new long[1];
            al[0] = handle;
            return MsgArg.getSignature(al);
        } else
        {
            return null;
        }
    }

    Object getValue()
    {
        return value;
    }

    native void setMsgArg(long l);
}
