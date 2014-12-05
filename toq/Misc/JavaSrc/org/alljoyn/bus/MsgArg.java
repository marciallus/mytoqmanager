// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;

import java.lang.reflect.*;
import java.util.*;

// Referenced classes of package org.alljoyn.bus:
//            BusException, MarshalBusException, Signature, Variant

final class MsgArg
{

    private static final int ALLJOYN_ARRAY = 97;
    private static final int ALLJOYN_BOOLEAN = 98;
    private static final int ALLJOYN_BOOLEAN_ARRAY = 25185;
    private static final int ALLJOYN_BYTE = 121;
    private static final int ALLJOYN_BYTE_ARRAY = 31073;
    private static final int ALLJOYN_DICT_ENTRY = 101;
    private static final int ALLJOYN_DICT_ENTRY_CLOSE = 125;
    private static final int ALLJOYN_DICT_ENTRY_OPEN = 123;
    private static final int ALLJOYN_DOUBLE = 100;
    private static final int ALLJOYN_DOUBLE_ARRAY = 25697;
    private static final int ALLJOYN_INT16 = 110;
    private static final int ALLJOYN_INT16_ARRAY = 28257;
    private static final int ALLJOYN_INT32 = 105;
    private static final int ALLJOYN_INT32_ARRAY = 26977;
    private static final int ALLJOYN_INT64 = 120;
    private static final int ALLJOYN_INT64_ARRAY = 30817;
    private static final int ALLJOYN_INVALID = 0;
    private static final int ALLJOYN_OBJECT_PATH = 111;
    private static final int ALLJOYN_SIGNATURE = 103;
    private static final int ALLJOYN_STRING = 115;
    private static final int ALLJOYN_STRUCT = 114;
    private static final int ALLJOYN_STRUCT_CLOSE = 41;
    private static final int ALLJOYN_STRUCT_OPEN = 40;
    private static final int ALLJOYN_UINT16 = 113;
    private static final int ALLJOYN_UINT16_ARRAY = 29025;
    private static final int ALLJOYN_UINT32 = 117;
    private static final int ALLJOYN_UINT32_ARRAY = 30049;
    private static final int ALLJOYN_UINT64 = 116;
    private static final int ALLJOYN_UINT64_ARRAY = 29793;
    private static final int ALLJOYN_VARIANT = 118;

    private MsgArg()
    {
    }

    public static native boolean getBool(long l);

    public static native boolean[] getBoolArray(long l);

    public static native byte getByte(long l);

    public static native byte[] getByteArray(long l);

    public static native double getDouble(long l);

    public static native double[] getDoubleArray(long l);

    public static native String getElemSig(long l);

    public static native long getElement(long l, int i);

    private static Enum getEnumObject(Type type, int i)
        throws BusException
    {
        boolean flag = type instanceof Class;
        Enum enum = null;
        if (flag)
        {
            Class class1 = (Class)type;
            boolean flag1 = class1.isEnum();
            enum = null;
            if (flag1)
                try
                {
                    enum = (Enum)((Object[])(Object[])class1.getMethod("values", new Class[0]).invoke(null, new Object[0]))[i];
                }
                catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception)
                {
                    throw new BusException((new StringBuilder()).append("failed to get ").append(class1).append(" for value ").append(i).toString(), arrayindexoutofboundsexception);
                }
                catch (NoSuchMethodException nosuchmethodexception)
                {
                    throw new BusException((new StringBuilder()).append("failed to get ").append(class1).append(" for value ").append(i).toString(), nosuchmethodexception);
                }
                catch (IllegalAccessException illegalaccessexception)
                {
                    throw new BusException((new StringBuilder()).append("failed to get ").append(class1).append(" for value ").append(i).toString(), illegalaccessexception);
                }
                catch (InvocationTargetException invocationtargetexception)
                {
                    throw new BusException((new StringBuilder()).append("failed to get ").append(class1).append(" for value ").append(i).toString(), invocationtargetexception);
                }
        }
        return enum;
    }

    private static int getEnumValue(Object obj)
        throws BusException
    {
        int i;
        Class class1;
        i = 0;
        if (obj == null)
            break MISSING_BLOCK_LABEL_182;
        class1 = obj.getClass();
        if (!class1.isEnum())
            break MISSING_BLOCK_LABEL_182;
        Object aobj[];
        aobj = (Object[])(Object[])class1.getMethod("values", new Class[0]).invoke(null, new Object[0]);
        break MISSING_BLOCK_LABEL_44;
        return -1;
        do
        {
            if (i < aobj.length)
            {
                if (aobj[i].equals(obj))
                    return i;
            } else
            {
                try
                {
                    throw new BusException((new StringBuilder()).append("failed to get ordinal value for ").append(obj).toString());
                }
                catch (NoSuchMethodException nosuchmethodexception)
                {
                    throw new BusException((new StringBuilder()).append("failed to get ordinal value for ").append(obj).toString(), nosuchmethodexception);
                }
                catch (IllegalAccessException illegalaccessexception)
                {
                    throw new BusException((new StringBuilder()).append("failed to get ordinal value for ").append(obj).toString(), illegalaccessexception);
                }
                catch (InvocationTargetException invocationtargetexception)
                {
                    throw new BusException((new StringBuilder()).append("failed to get ordinal value for ").append(obj).toString(), invocationtargetexception);
                }
            }
            i++;
        } while (true);
    }

    public static native short getInt16(long l);

    public static native short[] getInt16Array(long l);

    public static native int getInt32(long l);

    public static native int[] getInt32Array(long l);

    public static native long getInt64(long l);

    public static native long[] getInt64Array(long l);

    public static native long getKey(long l);

    public static native long getMember(long l, int i);

    public static native int getNumElements(long l);

    public static native int getNumMembers(long l);

    public static native String getObjPath(long l);

    public static native String getSignature(long l);

    public static native String getSignature(long al[]);

    public static native String getString(long l);

    public static native int getTypeId(long l);

    public static native short getUint16(long l);

    public static native short[] getUint16Array(long l);

    public static native int getUint32(long l);

    public static native int[] getUint32Array(long l);

    public static native long getUint64(long l);

    public static native long[] getUint64Array(long l);

    public static native long getVal(long l);

    public static void marshal(long l, String s, Object obj)
        throws BusException
    {
        int i = 0;
        int j = getEnumValue(obj);
        s.charAt(0);
        JVM INSTR lookupswitch 16: default 152
    //                   40: 748
    //                   97: 445
    //                   98: 280
    //                   100: 383
    //                   103: 397
    //                   105: 324
    //                   110: 294
    //                   111: 397
    //                   113: 294
    //                   115: 397
    //                   116: 353
    //                   117: 324
    //                   118: 864
    //                   120: 353
    //                   121: 246
    //                   123: 915;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L6 _L8 _L6 _L9 _L7 _L10 _L9 _L11 _L12
_L1:
        Throwable throwable;
        Throwable throwable1;
        throw new MarshalBusException((new StringBuilder()).append("unimplemented '").append(s).append("'").toString());
_L42:
        Object aobj2[];
        StringBuilder stringbuilder = (new StringBuilder()).append("cannot marshal ");
        Object obj1;
        java.util.Map.Entry entry;
        String as[];
        Variant variant;
        Object aobj[];
        String as1[];
        int k;
        char c;
        Object aobj1[];
        String s1;
        Object aobj3[];
        byte byte0;
        if (obj == null)
            obj1 = "null";
        else
            obj1 = obj.getClass();
        throw new MarshalBusException(stringbuilder.append(obj1).append(" into '").append(s).append("'").toString(), throwable1);
_L11:
        if (j != -1)
        {
            byte0 = (byte)j;
            try
            {
                set(l, s, byte0);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Throwable throwable)
            {
                throwable1 = throwable;
            }
            continue; /* Loop/switch isn't completed */
        }
        set(l, s, ((Number)obj).byteValue());
        return;
_L4:
        set(l, s, ((Boolean)obj).booleanValue());
        return;
_L8:
        if (j == -1) goto _L14; else goto _L13
_L13:
        set(l, s, (short)j);
        return;
_L14:
        set(l, s, ((Number)obj).shortValue());
        return;
_L7:
        if (j == -1) goto _L16; else goto _L15
_L15:
        set(l, s, j);
        return;
_L16:
        set(l, s, ((Number)obj).intValue());
        return;
_L9:
        if (j == -1) goto _L18; else goto _L17
_L17:
        set(l, s, j);
        return;
_L18:
        set(l, s, ((Number)obj).longValue());
        return;
_L5:
        set(l, s, ((Number)obj).doubleValue());
        return;
_L6:
        if (obj != null) goto _L20; else goto _L19
_L19:
        throw new MarshalBusException((new StringBuilder()).append("cannot marshal null into '").append(s).append("'").toString());
_L20:
        set(l, s, (String)obj);
        return;
_L3:
        if (obj != null) goto _L22; else goto _L21
_L21:
        throw new MarshalBusException((new StringBuilder()).append("cannot marshal null into '").append(s).append("'").toString());
_L22:
        c = s.charAt(1);
        if ('{' != c) goto _L24; else goto _L23
_L23:
        aobj1 = ((Map)obj).entrySet().toArray();
        aobj2 = aobj1;
_L40:
        c;
        JVM INSTR lookupswitch 9: default 600
    //                   98: 673
    //                   100: 733
    //                   105: 703
    //                   110: 688
    //                   113: 688
    //                   116: 718
    //                   117: 703
    //                   120: 718
    //                   121: 658;
           goto _L25 _L26 _L27 _L28 _L29 _L29 _L30 _L28 _L30 _L31
_L25:
        s1 = s.substring(1);
        aobj3 = (Object[])(Object[])aobj2;
        setArray(l, s1, aobj3.length);
_L32:
        if (i >= getNumElements(l))
            break; /* Loop/switch isn't completed */
        marshal(getElement(l, i), s1, aobj3[i]);
        i++;
          goto _L32
_L31:
        try
        {
            set(l, s, (byte[])(byte[])aobj2);
            return;
        }
        catch (Throwable throwable2)
        {
            obj = ((Object) (aobj2));
            throwable1 = throwable2;
        }
        continue; /* Loop/switch isn't completed */
_L26:
        set(l, s, (boolean[])(boolean[])aobj2);
        return;
_L29:
        set(l, s, (short[])(short[])aobj2);
        return;
_L28:
        set(l, s, (int[])(int[])aobj2);
        return;
_L30:
        set(l, s, (long[])(long[])aobj2);
        return;
_L27:
        set(l, s, (double[])(double[])aobj2);
        return;
_L2:
        aobj = Signature.structArgs(obj);
        as1 = Signature.split(s.substring(1, -1 + s.length()));
        if (as1 != null) goto _L34; else goto _L33
_L33:
        throw new MarshalBusException((new StringBuilder()).append("cannot marshal ").append(obj.getClass()).append(" into '").append(s).append("'").toString());
_L34:
        setStruct(l, as1.length);
        k = 0;
_L36:
        if (k >= getNumMembers(l))
            break; /* Loop/switch isn't completed */
        marshal(getMember(l, k), as1[k], aobj[k]);
        k++;
        if (true) goto _L36; else goto _L35
_L35:
        break; /* Loop/switch isn't completed */
_L10:
        variant = (Variant)obj;
        if (variant.getMsgArg() != 0L)
        {
            setVariant(l, s, variant.getMsgArg());
            return;
        }
        setVariant(l);
        marshal(getVal(l), variant.getSignature(), variant.getValue());
        return;
_L12:
        entry = (java.util.Map.Entry)obj;
        as = Signature.split(s.substring(1, -1 + s.length()));
        if (as != null) goto _L38; else goto _L37
_L37:
        throw new MarshalBusException((new StringBuilder()).append("cannot marshal ").append(obj.getClass()).append(" into '").append(s).append("'").toString());
_L38:
        setDictEntry(l);
        marshal(getKey(l), as[0], entry.getKey());
        marshal(getVal(l), as[1], entry.getValue());
        return;
_L24:
        aobj2 = ((Object []) (obj));
        if (true) goto _L40; else goto _L39
_L39:
        return;
        if (true) goto _L42; else goto _L41
_L41:
    }

    public static void marshal(long l, String s, Object aobj[])
        throws BusException
    {
        int i = 0;
        String as[] = Signature.split(s);
        if (as == null)
            throw new MarshalBusException((new StringBuilder()).append("cannot marshal args into '").append(s).append("', bad signature").toString());
        int j;
        if (aobj == null)
            j = 0;
        else
            j = aobj.length;
        setStruct(l, j);
        for (; i < getNumMembers(l); i++)
            marshal(getMember(l, i), as[i], aobj[i]);

    }

    public static native long set(long l, String s, byte byte0)
        throws BusException;

    public static native long set(long l, String s, double d)
        throws BusException;

    public static native long set(long l, String s, int i)
        throws BusException;

    public static native long set(long l, String s, long l1)
        throws BusException;

    public static native long set(long l, String s, String s1)
        throws BusException;

    public static native long set(long l, String s, short word0)
        throws BusException;

    public static native long set(long l, String s, boolean flag)
        throws BusException;

    public static native long set(long l, String s, byte abyte0[])
        throws BusException;

    public static native long set(long l, String s, double ad[])
        throws BusException;

    public static native long set(long l, String s, int ai[])
        throws BusException;

    public static native long set(long l, String s, long al[])
        throws BusException;

    public static native long set(long l, String s, short aword0[])
        throws BusException;

    public static native long set(long l, String s, boolean aflag[])
        throws BusException;

    public static native long setArray(long l, String s, int i)
        throws BusException;

    public static native long setDictEntry(long l)
        throws BusException;

    public static native long setStruct(long l, int i)
        throws BusException;

    public static native long setVariant(long l)
        throws BusException;

    public static native long setVariant(long l, String s, long l1)
        throws BusException;

    public static Object unmarshal(long l, Type type)
        throws MarshalBusException
    {
        getTypeId(l);
        JVM INSTR lookupswitch 24: default 208
    //                   97: 298
    //                   98: 569
    //                   100: 610
    //                   103: 713
    //                   105: 651
    //                   110: 623
    //                   111: 708
    //                   113: 884
    //                   114: 723
    //                   115: 718
    //                   116: 940
    //                   117: 912
    //                   118: 969
    //                   120: 679
    //                   121: 582
    //                   25185: 577
    //                   25697: 618
    //                   26977: 674
    //                   28257: 646
    //                   29025: 907
    //                   29793: 964
    //                   30049: 935
    //                   30817: 703
    //                   31073: 605;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25
_L1:
        Throwable throwable;
        throw new MarshalBusException((new StringBuilder()).append("unimplemented '").append(getSignature(new long[] {
            l
        })).append("'").toString());
_L2:
        if (getElemSig(l).charAt(0) != '{') goto _L27; else goto _L26
_L26:
        Object obj6 = ((ParameterizedType)type).getRawType();
        Object obj;
        int k;
        if (obj6 == java/util/Map)
            obj6 = java/util/HashMap;
        try
        {
            obj = ((Class)obj6).newInstance();
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            throw new MarshalBusException((new StringBuilder()).append("cannot marshal '").append(getSignature(new long[] {
                l
            })).append("' into ").append(type).toString(), throwable);
        }
        k = 0;
_L29:
        if (k >= getNumElements(l))
            break; /* Loop/switch isn't completed */
        long l1 = getElement(l, k);
        Type atype1[] = ((ParameterizedType)type).getActualTypeArguments();
        ((Map)obj).put(unmarshal(getKey(l1), atype1[0]), unmarshal(getVal(l1), atype1[1]));
        k++;
        if (true) goto _L29; else goto _L28
_L27:
        if (!(type instanceof GenericArrayType)) goto _L31; else goto _L30
_L30:
        Object obj2 = ((GenericArrayType)type).getGenericComponentType();
_L48:
        if (!(obj2 instanceof ParameterizedType)) goto _L33; else goto _L32
_L32:
        Object obj5 = ((ParameterizedType)obj2).getRawType();
        if (obj5 == java/util/Map)
            obj5 = java/util/HashMap;
        Class class1 = (Class)obj5;
_L37:
        Object obj3 = Array.newInstance(class1, getNumElements(l));
        int j = 0;
_L38:
        if (j >= getNumElements(l)) goto _L35; else goto _L34
_L34:
        Object obj4;
        obj4 = unmarshal(getElement(l, j), ((Type) (obj2)));
        if (!class1.isInstance(obj4))
            throw new IllegalArgumentException("argument type mismatch");
          goto _L36
_L31:
        obj2 = ((Class)type).getComponentType();
        continue; /* Loop/switch isn't completed */
_L33:
        class1 = (Class)obj2;
          goto _L37
_L36:
        Array.set(obj3, j, obj4);
        j++;
          goto _L38
_L3:
        return Boolean.valueOf(getBool(l));
_L17:
        return getBoolArray(l);
_L16:
        obj = getEnumObject(type, getByte(l));
        if (obj != null) goto _L28; else goto _L39
_L39:
        return Byte.valueOf(getByte(l));
_L25:
        return getByteArray(l);
_L4:
        return Double.valueOf(getDouble(l));
_L18:
        return getDoubleArray(l);
_L7:
        obj = getEnumObject(type, getInt16(l));
        if (obj != null) goto _L28; else goto _L40
_L40:
        return Short.valueOf(getInt16(l));
_L20:
        return getInt16Array(l);
_L6:
        obj = getEnumObject(type, getInt32(l));
        if (obj != null) goto _L28; else goto _L41
_L41:
        return Integer.valueOf(getInt32(l));
_L19:
        return getInt32Array(l);
_L15:
        obj = getEnumObject(type, (int)getInt64(l));
        if (obj != null) goto _L28; else goto _L42
_L42:
        return Long.valueOf(getInt64(l));
_L24:
        return getInt64Array(l);
_L8:
        return getObjPath(l);
_L5:
        return getSignature(l);
_L11:
        return getString(l);
_L10:
        Type atype[];
        Field afield[];
        atype = Signature.structTypes((Class)type);
        if (atype.length != getNumMembers(l))
            throw new MarshalBusException((new StringBuilder()).append("cannot marshal '").append(getSignature(new long[] {
                l
            })).append("' with ").append(getNumMembers(l)).append(" members into ").append(type).append(" with ").append(atype.length).append(" fields").toString());
        obj = ((Class)type).newInstance();
        afield = Signature.structFields((Class)type);
        int i = 0;
_L43:
        if (i >= getNumMembers(l))
            break; /* Loop/switch isn't completed */
        Object obj1 = unmarshal(getMember(l, i), atype[i]);
        afield[i].set(obj, obj1);
        i++;
        if (true) goto _L43; else goto _L28
_L9:
        obj = getEnumObject(type, getUint16(l));
        if (obj != null) goto _L28; else goto _L44
_L44:
        return Short.valueOf(getUint16(l));
_L21:
        return getUint16Array(l);
_L13:
        obj = getEnumObject(type, getUint32(l));
        if (obj != null) goto _L28; else goto _L45
_L45:
        return Integer.valueOf(getUint32(l));
_L23:
        return getUint32Array(l);
_L12:
        obj = getEnumObject(type, (int)getUint64(l));
        if (obj != null) goto _L28; else goto _L46
_L46:
        return Long.valueOf(getUint64(l));
_L22:
        return getUint64Array(l);
_L14:
        Variant variant;
        variant = new Variant();
        variant.setMsgArg(l);
        return variant;
_L35:
        obj = obj3;
_L28:
        return obj;
        if (true) goto _L48; else goto _L47
_L47:
    }

    public static Object[] unmarshal(Method method, long l)
        throws MarshalBusException
    {
        Type atype[] = method.getGenericParameterTypes();
        int i = getNumMembers(l);
        if (atype.length != i)
            throw new MarshalBusException((new StringBuilder()).append("cannot marshal ").append(i).append(" args into ").append(atype.length).append(" parameters").toString());
        Object aobj[] = new Object[i];
        for (int j = 0; j < i; j++)
            aobj[j] = unmarshal(getMember(l, j), atype[j]);

        return aobj;
    }
}
