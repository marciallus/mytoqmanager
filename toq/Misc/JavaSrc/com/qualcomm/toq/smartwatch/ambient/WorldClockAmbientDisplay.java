// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ToqData;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.util.ArrayList;
import java.util.Locale;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            DefaultAmbientDisplay, WeatherAmbientInfo, CityClockImageRepo, IAmbientInfo

public class WorldClockAmbientDisplay extends DefaultAmbientDisplay
{

    private static final String TAG = "WorldClockAmbientDisplay";
    private static final int WEATHER_HOUR_TEMP_BITMAP_HEIGHT = 37;
    private static final int WEATHER_HOUR_TEMP_BITMAP_WIDTH = 59;
    public static ArrayList mWC_WeatherConditionDarkImages = new ArrayList();
    public static ArrayList mWC_WeatherConditionImages = new ArrayList();
    public static ArrayList mWeatherIcons = new ArrayList();
    private Resources mResources;


    private Resources getResourceObject()
    {
        return getContext().getResources();
    }

    private void setWeatherConditions()
    {
        mResources = getResourceObject();
        mWeatherIcons.clear();
        mWeatherIcons.add(Integer.valueOf(1));
        mWeatherIcons.add(Integer.valueOf(2));
        mWeatherIcons.add(Integer.valueOf(3));
        mWeatherIcons.add(Integer.valueOf(4));
        mWeatherIcons.add(Integer.valueOf(5));
        mWeatherIcons.add(Integer.valueOf(6));
        mWeatherIcons.add(Integer.valueOf(7));
        mWeatherIcons.add(Integer.valueOf(8));
        mWeatherIcons.add(Integer.valueOf(11));
        mWeatherIcons.add(Integer.valueOf(12));
        mWeatherIcons.add(Integer.valueOf(13));
        mWeatherIcons.add(Integer.valueOf(14));
        mWeatherIcons.add(Integer.valueOf(15));
        mWeatherIcons.add(Integer.valueOf(16));
        mWeatherIcons.add(Integer.valueOf(17));
        mWeatherIcons.add(Integer.valueOf(18));
        mWeatherIcons.add(Integer.valueOf(19));
        mWeatherIcons.add(Integer.valueOf(20));
        mWeatherIcons.add(Integer.valueOf(21));
        mWeatherIcons.add(Integer.valueOf(22));
        mWeatherIcons.add(Integer.valueOf(23));
        mWeatherIcons.add(Integer.valueOf(24));
        mWeatherIcons.add(Integer.valueOf(25));
        mWeatherIcons.add(Integer.valueOf(26));
        mWeatherIcons.add(Integer.valueOf(29));
        mWeatherIcons.add(Integer.valueOf(30));
        mWeatherIcons.add(Integer.valueOf(31));
        mWeatherIcons.add(Integer.valueOf(32));
        mWeatherIcons.add(Integer.valueOf(33));
        mWeatherIcons.add(Integer.valueOf(34));
        mWeatherIcons.add(Integer.valueOf(35));
        mWeatherIcons.add(Integer.valueOf(36));
        mWeatherIcons.add(Integer.valueOf(37));
        mWeatherIcons.add(Integer.valueOf(38));
        mWeatherIcons.add(Integer.valueOf(39));
        mWeatherIcons.add(Integer.valueOf(40));
        mWeatherIcons.add(Integer.valueOf(41));
        mWeatherIcons.add(Integer.valueOf(42));
        mWeatherIcons.add(Integer.valueOf(43));
        mWeatherIcons.add(Integer.valueOf(44));
        mWC_WeatherConditionImages.clear();
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020171));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02017a));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020185));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02018b));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02018c));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02018d));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02018e));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02018f));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020168));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020169));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02016a));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02016b));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02016c));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02016d));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02016e));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02016f));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020170));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020172));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020173));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020174));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020175));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020176));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020177));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020178));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020179));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02017b));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02017c));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02017d));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02017e));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02017f));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020180));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020181));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020182));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020183));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020184));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020186));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020187));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020188));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020189));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02018a));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020168));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f020185));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02016c));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02016f));
        mWC_WeatherConditionImages.add(Integer.valueOf(0x7f02016c));
        mWC_WeatherConditionDarkImages.clear();
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020149));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020152));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02015d));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020163));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020164));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020165));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020166));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020167));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020140));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020141));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020142));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020143));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020144));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020145));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020146));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020147));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020148));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02014a));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02014b));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02014c));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02014d));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02014e));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02014f));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020150));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020151));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020153));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020154));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020155));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020156));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020157));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020158));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020159));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02015a));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02015b));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02015c));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02015e));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02015f));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020160));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020161));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020162));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020140));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f02015d));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020144));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020147));
        mWC_WeatherConditionDarkImages.add(Integer.valueOf(0x7f020144));
    }

    public CityClockImageRepo createWorldClockBitmaps(IAmbientInfo iambientinfo)
    {
        this;
        JVM INSTR monitorenter ;
        WeatherAmbientInfo weatherambientinfo;
        Log.e("WorldClockAmbientDisplay", "createWorldClockBitmaps");
        weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
        CityClockImageRepo cityclockimagerepo = null;
        if (weatherambientinfo == null) goto _L2; else goto _L1
_L1:
        String s;
        setWeatherConditions();
        s = weatherambientinfo.getWeatherCondition();
        if (s == null)
            break MISSING_BLOCK_LABEL_49;
        s = s.trim().toLowerCase(Locale.US);
        String s1;
        Paint paint;
        s1 = (new StringBuilder()).append(AndroidUtils.getWeatherTemperatureBasedOnUnit(weatherambientinfo.getHourTemp())).append("\260").toString();
        cityclockimagerepo = new CityClockImageRepo(2);
        mResources = getResourceObject();
        paint = new Paint();
        if (paint == null)
            break MISSING_BLOCK_LABEL_149;
        paint.setStyle(android.graphics.Paint.Style.FILL);
        paint.setTypeface(ToqData.getInstance().getQcomSemiboldTypeFace());
        paint.setTextSize(26F);
        paint.setTextAlign(android.graphics.Paint.Align.LEFT);
        paint.setAntiAlias(true);
        int i = 0;
_L24:
        if (i >= 2) goto _L2; else goto _L3
_L3:
        Log.e("WorldClockAmbientDisplay", (new StringBuilder()).append("createWorldClockBitmaps i=").append(i).toString());
        if (i != 0) goto _L5; else goto _L4
_L4:
        Log.e("WorldClockAmbientDisplay", "Setting Dark WORLD_CLOCK_IMAGE Images");
        if (!"push_online_image".equals(weatherambientinfo.getPushImageType()))
            s1 = "--";
        if (mWeatherIcons == null) goto _L7; else goto _L6
_L6:
        int j;
        Integer integer = Integer.valueOf(((WeatherAmbientInfo)iambientinfo).getIconNumber());
        j = mWeatherIcons.indexOf(integer);
        Log.d("WorldClockAmbientDisplay", (new StringBuilder()).append("Icon Number (Image Index) ").append(j).toString());
        Log.d("WorldClockAmbientDisplay", (new StringBuilder()).append("image index=").append(j).toString());
        if (mWC_WeatherConditionDarkImages == null) goto _L7; else goto _L8
_L8:
        Log.d("WorldClockAmbientDisplay", "In WORLD_CLOCK_IMAGE Weather conditions");
        if (j == -1) goto _L10; else goto _L9
_L9:
        if (j < mWC_WeatherConditionDarkImages.size()) goto _L11; else goto _L10
_L10:
        Bitmap bitmap1;
        bitmap1 = BitmapFactory.decodeResource(mResources, 0x7f02001d).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        Log.d("WorldClockAmbientDisplay", (new StringBuilder()).append("Dark image not found using default image index=").append(j).toString());
_L13:
        cityclockimagerepo.getWeatherConditionImage()[i] = bitmap1;
_L7:
        Bitmap bitmap;
        Canvas canvas;
        Log.d("WorldClockAmbientDisplay", " WORLD img creation ");
        bitmap = Bitmap.createBitmap(59, 37, android.graphics.Bitmap.Config.ARGB_8888);
        canvas = new Canvas(bitmap);
        paint.setColor(0xff000000);
        Log.d("WorldClockAmbientDisplay", (new StringBuilder()).append(" WORLD img currentTemp=").append(s1).append(" weatherCondition=").append(s).append(" weatherTempCanvas =").append(canvas).toString());
        if (s1 == null || canvas == null || paint == null)
            break MISSING_BLOCK_LABEL_505;
        Log.d("WorldClockAmbientDisplay", " WORLD dark img creation draw text");
        canvas.drawText(s1, 8F, 22F, paint);
        Log.e("WorldClockAmbientDisplay", "World clock dark updated repo");
        cityclockimagerepo.getWeatherHourTempImage()[i] = bitmap;
          goto _L12
_L11:
        bitmap1 = BitmapFactory.decodeResource(mResources, ((Integer)mWC_WeatherConditionDarkImages.get(j)).intValue()).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
          goto _L13
_L5:
        if (i != 1) goto _L12; else goto _L14
_L14:
        Log.e("WorldClockAmbientDisplay", "Setting White WORLD_CLOCK_IMAGE Images");
        if (mWeatherIcons == null) goto _L16; else goto _L15
_L15:
        int k;
        Integer integer1 = Integer.valueOf(((WeatherAmbientInfo)iambientinfo).getIconNumber());
        k = mWeatherIcons.indexOf(integer1);
        Log.d("WorldClockAmbientDisplay", (new StringBuilder()).append("Icon Number (Image Index) ").append(k).toString());
        Log.e("WorldClockAmbientDisplay", (new StringBuilder()).append("World clock imageIndex=").append(k).toString());
        if (mWC_WeatherConditionImages == null) goto _L16; else goto _L17
_L17:
        Log.d("WorldClockAmbientDisplay", "In WORLD_CLOCK_IMAGE Weather conditions");
        if (k == -1) goto _L19; else goto _L18
_L18:
        if (k < mWC_WeatherConditionImages.size()) goto _L20; else goto _L19
_L19:
        Bitmap bitmap3;
        bitmap3 = BitmapFactory.decodeResource(mResources, 0x7f0201bd).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        Log.d("WorldClockAmbientDisplay", (new StringBuilder()).append("White image not found using default image index=").append(k).toString());
_L21:
        Log.e("WorldClockAmbientDisplay", "World clock white updated repo");
        cityclockimagerepo.getWeatherConditionImage()[i] = bitmap3;
_L16:
        Bitmap bitmap2;
        Canvas canvas1;
        bitmap2 = Bitmap.createBitmap(59, 37, android.graphics.Bitmap.Config.ARGB_8888);
        canvas1 = new Canvas(bitmap2);
        paint.setColor(-1);
        if (s1 == null || canvas1 == null || paint == null)
            break MISSING_BLOCK_LABEL_814;
        Log.d("WorldClockAmbientDisplay", " WORLD white img creation draw text");
        canvas1.drawText(s1, 8F, 22F, paint);
        Log.d("WorldClockAmbientDisplay", " WORLD white update repo2 =");
        cityclockimagerepo.getWeatherHourTempImage()[i] = bitmap2;
          goto _L12
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        CityClockImageRepo cityclockimagerepo1 = null;
_L22:
        this;
        JVM INSTR monitorexit ;
        return cityclockimagerepo1;
_L20:
        Bitmap bitmap4 = BitmapFactory.decodeResource(mResources, ((Integer)mWC_WeatherConditionImages.get(k)).intValue()).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        bitmap3 = bitmap4;
          goto _L21
_L2:
        cityclockimagerepo1 = cityclockimagerepo;
          goto _L22
        Exception exception;
        exception;
        throw exception;
_L12:
        i++;
        if (true) goto _L24; else goto _L23
_L23:
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

}
