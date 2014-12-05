// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.jmx;

import java.lang.reflect.Method;

class MethodUnion
{

    Method readMethod;
    Method writeMethod;

    MethodUnion(Method method, Method method1)
    {
        readMethod = method;
        writeMethod = method1;
    }
}
