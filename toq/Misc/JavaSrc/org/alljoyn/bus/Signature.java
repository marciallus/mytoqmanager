// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;

import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import org.alljoyn.bus.annotation.Position;

// Referenced classes of package org.alljoyn.bus:
//            AnnotationBusException, Variant, BusException

final class Signature
{

    private Signature()
    {
    }

    private static String classTypeSig(Class class1, String s)
        throws AnnotationBusException
    {
        if (!java/lang/Void.isAssignableFrom(class1) && !Void.TYPE.isAssignableFrom(class1))
        {
            if (!java/lang/Byte.isAssignableFrom(class1) && !Byte.TYPE.isAssignableFrom(class1))
            {
                if (!java/lang/Boolean.isAssignableFrom(class1) && !Boolean.TYPE.isAssignableFrom(class1))
                {
                    if (!java/lang/Short.isAssignableFrom(class1) && !Short.TYPE.isAssignableFrom(class1))
                    {
                        if (!java/lang/Integer.isAssignableFrom(class1) && !Integer.TYPE.isAssignableFrom(class1))
                        {
                            if (!java/lang/Long.isAssignableFrom(class1) && !Long.TYPE.isAssignableFrom(class1))
                            {
                                if (!java/lang/Double.isAssignableFrom(class1) && !Double.TYPE.isAssignableFrom(class1))
                                {
                                    if (java/lang/String.isAssignableFrom(class1))
                                    {
                                        if (s == null)
                                            return "s";
                                    } else
                                    if (org/alljoyn/bus/Variant.isAssignableFrom(class1))
                                    {
                                        if (s == null)
                                            return "v";
                                    } else
                                    {
                                        if (class1.isArray())
                                        {
                                            String s2;
                                            if (s == null)
                                                s2 = "a";
                                            else
                                                s2 = s.substring(0, 1);
                                            StringBuilder stringbuilder = (new StringBuilder()).append(s2);
                                            Class class2 = class1.getComponentType();
                                            String s3;
                                            if (s == null)
                                                s3 = null;
                                            else
                                                s3 = s.substring(1);
                                            return stringbuilder.append(typeSig(class2, s3)).toString();
                                        }
                                        if (class1.isEnum() && s == null)
                                            throw new AnnotationBusException((new StringBuilder()).append("enum type ").append(class1).append(" is missing annotation").toString());
                                        if (s == null || "r".equals(s))
                                        {
                                            String s1 = typeSig(structTypes(class1), structSig(class1));
                                            if (s1.length() == 0)
                                                throw new AnnotationBusException((new StringBuilder()).append("cannot determine signature for ").append(class1).toString());
                                            else
                                                return (new StringBuilder()).append("(").append(s1).append(")").toString();
                                        }
                                    }
                                } else
                                if (s == null)
                                    return "d";
                            } else
                            if (s == null)
                                return "x";
                        } else
                        if (s == null)
                            return "i";
                    } else
                    if (s == null)
                        return "n";
                } else
                if (s == null)
                    return "b";
            } else
            if (s == null)
                return "y";
        } else
        {
            s = "";
        }
        return s;
    }

    private static String genericArrayTypeSig(GenericArrayType genericarraytype, String s)
        throws AnnotationBusException
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("a");
        Type type = genericarraytype.getGenericComponentType();
        String s1;
        if (s == null)
            s1 = null;
        else
            s1 = s.substring(1);
        return stringbuilder.append(typeSig(type, s1)).toString();
    }

    private static String parameterizedTypeSig(ParameterizedType parameterizedtype, String s)
        throws AnnotationBusException
    {
        if (java/util/Map.isAssignableFrom((Class)parameterizedtype.getRawType()))
        {
            String s1 = "";
            Type atype[] = parameterizedtype.getActualTypeArguments();
            String as[];
            if (s != null)
                as = split(s.substring(2, -1 + s.length()));
            else
                as = null;
            for (int i = 0; i < atype.length; i++)
            {
                StringBuilder stringbuilder = (new StringBuilder()).append(s1);
                Type type = atype[i];
                String s2;
                if (as == null)
                    s2 = null;
                else
                    s2 = as[i];
                s1 = stringbuilder.append(typeSig(type, s2)).toString();
            }

            return (new StringBuilder()).append("a{").append(s1).append("}").toString();
        } else
        {
            throw new AnnotationBusException((new StringBuilder()).append("unsupported parameterized type ").append(parameterizedtype).toString());
        }
    }

    public static native String[] split(String s);

    public static Object[] structArgs(Object obj)
        throws IllegalAccessException, BusException
    {
        Class class1 = obj.getClass();
        Field afield[] = class1.getFields();
        Object aobj[] = new Object[afield.length];
        int i = afield.length;
        for (int j = 0; j < i; j++)
        {
            Field field = afield[j];
            Position position = (Position)field.getAnnotation(org/alljoyn/bus/annotation/Position);
            if (position == null)
                throw new BusException((new StringBuilder()).append("field ").append(field).append(" of ").append(class1).append(" does not annotate position").toString());
            aobj[position.value()] = field.get(obj);
        }

        return aobj;
    }

    public static Field[] structFields(Class class1)
        throws BusException
    {
        Field afield[] = class1.getFields();
        Field afield1[] = new Field[afield.length];
        int i = afield.length;
        for (int j = 0; j < i; j++)
        {
            Field field = afield[j];
            Position position = (Position)field.getAnnotation(org/alljoyn/bus/annotation/Position);
            if (position == null)
                throw new BusException((new StringBuilder()).append("field ").append(field).append(" of ").append(class1).append(" does not annotate position").toString());
            afield1[position.value()] = field;
        }

        return afield1;
    }

    public static String structSig(Class class1)
        throws AnnotationBusException
    {
        Field afield[] = class1.getFields();
        String as[] = new String[afield.length];
        int i = afield.length;
        for (int j = 0; j < i; j++)
        {
            Field field = afield[j];
            Position position = (Position)field.getAnnotation(org/alljoyn/bus/annotation/Position);
            if (position == null)
                throw new AnnotationBusException((new StringBuilder()).append("field ").append(field).append(" of ").append(class1).append(" does not annotate position").toString());
            org.alljoyn.bus.annotation.Signature signature = (org.alljoyn.bus.annotation.Signature)field.getAnnotation(org/alljoyn/bus/annotation/Signature);
            if (signature != null && !"r".equals(signature.value()))
                as[position.value()] = signature.value();
            else
                as[position.value()] = typeSig(field.getGenericType(), null);
        }

        StringBuilder stringbuilder = new StringBuilder();
        int k = as.length;
        for (int l = 0; l < k; l++)
            stringbuilder.append(as[l]);

        return stringbuilder.toString();
    }

    public static Type[] structTypes(Class class1)
        throws AnnotationBusException
    {
        Field afield[] = class1.getFields();
        Type atype[] = new Type[afield.length];
        int i = afield.length;
        for (int j = 0; j < i; j++)
        {
            Field field = afield[j];
            Position position = (Position)field.getAnnotation(org/alljoyn/bus/annotation/Position);
            if (position == null)
                throw new AnnotationBusException((new StringBuilder()).append("field ").append(field).append(" of ").append(class1).append(" does not annotate position").toString());
            atype[position.value()] = field.getGenericType();
        }

        return atype;
    }

    public static String typeSig(Type type, String s)
        throws AnnotationBusException
    {
        if (type instanceof ParameterizedType)
            return parameterizedTypeSig((ParameterizedType)type, s);
        if (type instanceof Class)
            return classTypeSig((Class)type, s);
        if (type instanceof GenericArrayType)
            return genericArrayTypeSig((GenericArrayType)type, s);
        else
            throw new AnnotationBusException((new StringBuilder()).append("cannot determine signature for ").append(type).toString());
    }

    public static String typeSig(Type atype[], String s)
        throws AnnotationBusException
    {
        String s1 = "";
        String as[] = split(s);
        for (int i = 0; i < atype.length; i++)
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(s1);
            Type type = atype[i];
            String s2;
            if (as == null)
                s2 = null;
            else
                s2 = as[i];
            s1 = stringbuilder.append(typeSig(type, s2)).toString();
        }

        return s1;
    }
}
