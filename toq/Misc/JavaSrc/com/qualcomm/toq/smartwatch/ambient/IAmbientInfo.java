// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;


public interface IAmbientInfo
{

    public abstract String getAppImageDestinationLocation();

    public abstract String getAppImageSourceLocation();

    public abstract String getDestinationLocation();

    public abstract String getPushImageType();

    public abstract String getSearchKeyText();

    public abstract String getSourceLocation();

    public abstract void setAppImageDestinationLocation(String s);

    public abstract void setAppImageSourceLocation(String s);

    public abstract void setDestinationLocation(String s);

    public abstract void setPushImageType(String s);

    public abstract void setSearchKeyText(String s);

    public abstract void setSourceLocation(String s);
}
