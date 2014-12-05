// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.*;
import com.qualcomm.toq.base.utils.ToqData;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            DefaultAmbientDisplay, IAmbientInfo

public class AmbientNotificationDisplay extends DefaultAmbientDisplay
{

    private static final String TIMESTAMP_PREFIX = "Last updated: Today ";
    private Context mContext;
    private SharedPreferences mPrefs;
    private Resources mResources;

    public AmbientNotificationDisplay(Context context)
    {
        mContext = context;
        mPrefs = context.getSharedPreferences("ambient__pref", 0);
    }

    public IAmbientInfo retreiveDataFromStream(String s, IAmbientInfo iambientinfo, String s1)
    {
        return null;
    }

    public Bitmap writeClockDataOntoBitmap(IAmbientInfo iambientinfo)
        throws Exception
    {
        return null;
    }

    public Bitmap writeDataOntoBitmap(IAmbientInfo iambientinfo)
        throws Exception
    {
        return null;
    }

    public Bitmap writeTimeStampOnBitmap(boolean flag, String s)
    {
        mResources = mContext.getResources();
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat simpledateformat = new SimpleDateFormat("hh:mm", Locale.US);
        int i = calendar.get(9);
        StringBuilder stringbuilder = (new StringBuilder()).append(simpledateformat.format(calendar.getTime())).append(" ");
        String s1;
        if (i == 0)
            s1 = "AM";
        else
            s1 = "PM";
        String s2 = stringbuilder.append(s1).toString();
        String s3 = (new StringBuilder()).append("UPDATED: TODAY ").append(s2).toString();
        Paint paint = new Paint();
        paint.setColor(0xff000000);
        paint.setStyle(android.graphics.Paint.Style.FILL);
        paint.setTextAlign(android.graphics.Paint.Align.CENTER);
        paint.setAntiAlias(true);
        paint.setTypeface(ToqData.getInstance().getQcomSemiboldTypeFace());
        paint.setTextSize(23F);
        Paint paint1 = new Paint();
        paint1.setStyle(android.graphics.Paint.Style.FILL);
        paint1.setAntiAlias(true);
        Bitmap bitmap = Bitmap.createBitmap(276, 70, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        canvas.drawText(s3, 138F, 27F, paint);
        if ("weather".equals(s))
        {
            String s5 = (new StringBuilder()).append("Last updated: Today ").append(s2).toString();
            canvas.drawBitmap(BitmapFactory.decodeResource(mResources, 0x7f0200f0).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 22F, 39F, paint1);
            if (mPrefs != null)
            {
                android.content.SharedPreferences.Editor editor1 = mPrefs.edit();
                editor1.putString("weather_update_timestamp", s5);
                editor1.commit();
            }
        } else
        if ("stock".equals(s))
        {
            String s4 = (new StringBuilder()).append("Last updated: Today ").append(s2).toString();
            canvas.drawBitmap(BitmapFactory.decodeResource(mResources, 0x7f0200f1).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 30F, 39F, paint1);
            if (mPrefs != null)
            {
                android.content.SharedPreferences.Editor editor = mPrefs.edit();
                editor.putString("stock_update_timestamp", s4);
                editor.commit();
                return bitmap;
            }
        }
        return bitmap;
    }
}
