// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus.annotation;

import java.lang.annotation.Annotation;

public interface AccessPermission
    extends Annotation
{

    public abstract String value();
}
