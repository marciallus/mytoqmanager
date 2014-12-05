// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.Context;
import android.graphics.Bitmap;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            IAmbientInfo

public interface IAmbientDisplay
{

    public abstract Context getContext();

    public abstract IAmbientInfo retreiveDataFromStream(String s, IAmbientInfo iambientinfo, String s1);

    public abstract byte[] writeBitmapinIMGFormat(Bitmap bitmap, boolean flag);

    public abstract Bitmap writeClockDataOntoBitmap(IAmbientInfo iambientinfo)
        throws Exception;

    public abstract Bitmap writeDataOntoBitmap(IAmbientInfo iambientinfo)
        throws Exception;
}
