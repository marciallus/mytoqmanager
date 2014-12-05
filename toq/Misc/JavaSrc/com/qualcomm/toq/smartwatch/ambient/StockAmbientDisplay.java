// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import com.qualcomm.toq.base.utils.*;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            DefaultAmbientDisplay, StockAmbientInfo, IAmbientInfo

public class StockAmbientDisplay extends DefaultAmbientDisplay
{

    private static final String TAG = "StockAmbientDisplay";
    private Resources mResources;


    private Resources getResourceObject()
    {
        return getContext().getResources();
    }

    public IAmbientInfo retreiveDataFromStream(String s, IAmbientInfo iambientinfo, String s1)
    {
        StockAmbientInfo stockambientinfo = (StockAmbientInfo)iambientinfo;
        JSONObject jsonobject = new JSONObject(s);
        if (jsonobject == null)
            break MISSING_BLOCK_LABEL_216;
        JSONObject jsonobject1 = jsonobject.getJSONObject("QuoteResponse");
        if (jsonobject1 == null)
            break MISSING_BLOCK_LABEL_216;
        JSONObject jsonobject2;
        String s2;
        jsonobject2 = jsonobject1.getJSONArray("QuoteData").getJSONObject(0).getJSONObject("All");
        s2 = jsonobject2.getString("lastTrade");
        Log.d("StockAmbientDisplay", (new StringBuilder()).append("last value = ").append(s2).toString());
        if (s2 == null)
            break MISSING_BLOCK_LABEL_124;
        stockambientinfo.setLastValue(s2);
        Log.d("StockAmbientDisplay", (new StringBuilder()).append("Last").append(s2).toString());
        String s3;
        s3 = jsonobject2.getString("changeClose");
        Log.d("StockAmbientDisplay", (new StringBuilder()).append("change value = ").append(s3).toString());
        if (s3 == null)
            break MISSING_BLOCK_LABEL_170;
        stockambientinfo.setChange(s3);
        String s4;
        s4 = jsonobject2.getString("changeClosePercentage");
        Log.d("StockAmbientDisplay", (new StringBuilder()).append("perChange value = ").append(s4).toString());
        if (s4 != null)
            try
            {
                stockambientinfo.setPercentageChange(s4);
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
        if (stockambientinfo.getLastValue() == null || stockambientinfo.getPercentageChange() == null || stockambientinfo.getChange() == null || "".equals(stockambientinfo.getChange()) || "".equals(stockambientinfo.getLastValue()) || "".equals(stockambientinfo.getPercentageChange()))
            stockambientinfo.setPushImageType("push_data_error_image");
        return stockambientinfo;
    }

    public Bitmap writeClockDataOntoBitmap(IAmbientInfo iambientinfo)
        throws Exception
    {
        String s;
        String s1;
        String s2;
        String s4;
        s = ((StockAmbientInfo)iambientinfo).getChange();
        if (s != null)
            s = s.trim();
        s1 = ((StockAmbientInfo)iambientinfo).getLastValue();
        if (s1 != null)
            s1 = s1.trim();
        s2 = ((StockAmbientInfo)iambientinfo).getPercentageChange();
        if (s2 != null)
            s2 = s2.trim();
        String s3 = ((StockAmbientInfo)iambientinfo).getCompanyName();
        if (s3 != null)
            s3.trim();
        s4 = ((StockAmbientInfo)iambientinfo).getCompanySymbol();
        if (s4 != null)
            s4 = s4.trim();
        mResources = getResourceObject();
        if (mResources == null) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = BitmapFactory.decodeResource(mResources, 0x7f020125).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        if (!"push_offline_image".equals(((StockAmbientInfo)iambientinfo).getPushImageType())) goto _L4; else goto _L3
_L3:
        if (s2 == null || s1 == null || s == null || "".equals(s))
        {
            s1 = "-- --";
            s2 = "";
            s = "";
        }
_L14:
        Paint paint;
        Canvas canvas;
        paint = new Paint();
        canvas = new Canvas(bitmap);
        if (canvas == null) goto _L6; else goto _L5
_L5:
        Paint paint3;
        String s6;
        if (paint != null)
        {
            paint.setStyle(android.graphics.Paint.Style.FILL);
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            paint.setTextSize(52F);
            paint.setTypeface(ToqData.getInstance().getQcomRegularTypeFace());
            paint.setAntiAlias(true);
            paint.setColor(-1);
            paint.setColor(-1);
            Paint paint1;
            Paint paint2;
            String s7;
            if (s4 != null)
            {
                if (s4.length() > 6)
                    s4 = (new StringBuilder()).append(s4.substring(0, 6)).append("..").toString();
                canvas.drawText(s4, 20F, 97F - paint.descent(), paint);
            } else
            {
                Log.e("StockAmbientDisplay", "companySymbol is null");
            }
        }
        paint1 = new Paint();
        if (paint1 != null)
        {
            paint1.setStyle(android.graphics.Paint.Style.FILL);
            paint1.setTextAlign(android.graphics.Paint.Align.LEFT);
            paint1.setTextSize(36F);
            paint1.setTypeface(ToqData.getInstance().getQcomSemiboldTypeFace());
            paint1.setAntiAlias(true);
            paint1.setColor(-1);
            paint1.setColor(-1);
            if (s1 != null)
            {
                if (!s1.contains("--") && !"".equals(s1))
                    s1 = Utils.getCommaSeparatedText(s1);
                canvas.drawText(s1, 20F, 138F - paint1.descent(), paint1);
            } else
            {
                Log.e("StockAmbientDisplay", "last is null");
            }
        }
        paint2 = new Paint();
        if (paint2 == null) goto _L6; else goto _L7
_L7:
        paint2.setStyle(android.graphics.Paint.Style.FILL);
        paint2.setTextAlign(android.graphics.Paint.Align.LEFT);
        paint2.setTextSize(23F);
        paint2.setTypeface(ToqData.getInstance().getQcomSemiboldTypeFace());
        paint2.setAntiAlias(true);
        paint3 = new Paint();
        paint3.setStyle(android.graphics.Paint.Style.FILL);
        paint2.setColor(-1);
        if (s == null || s2 == null) goto _L6; else goto _L8
_L8:
        if ("".equals(s) || "".equals(s2)) goto _L6; else goto _L9
_L9:
        if (Float.valueOf(s).floatValue() < 0.0F) goto _L11; else goto _L10
_L10:
        s7 = Utils.removePositivePrefix(s2);
        s6 = (new StringBuilder()).append(s7).append("%").toString();
        canvas.drawBitmap(BitmapFactory.decodeResource(mResources, 0x7f0200dd).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 20F, 153F, paint3);
_L12:
        canvas.drawText(s6, 54F, 179F - paint2.descent(), paint2);
        paint2.setTextAlign(android.graphics.Paint.Align.RIGHT);
        canvas.drawText(s, 277F, 179F - paint2.descent(), paint2);
_L6:
        return bitmap;
_L4:
        if ("push_data_error_image".equals(((StockAmbientInfo)iambientinfo).getPushImageType()) && (s2 == null || s1 == null || s == null || "".equals(s)))
        {
            s1 = "-- --";
            s2 = "";
            s = "";
        }
        continue; /* Loop/switch isn't completed */
_L11:
        try
        {
            String s5 = Utils.removeNegativePrefix(s2);
            s6 = (new StringBuilder()).append(s5).append("%").toString();
            canvas.drawBitmap(BitmapFactory.decodeResource(mResources, 0x7f0200db).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 20F, 153F, paint3);
        }
        catch (NumberFormatException numberformatexception)
        {
            Log.e("StockAmbientDisplay", (new StringBuilder()).append("Unable to retreive percentage change as value is empty or not a number").append(numberformatexception).toString());
            return bitmap;
        }
          goto _L12
_L2:
        Log.e("StockAmbientDisplay", "Context is null, not able to write data on bitmap");
        return null;
        if (true) goto _L14; else goto _L13
_L13:
    }

    public Bitmap writeClockDataOntoBitmap(IAmbientInfo iambientinfo, int i)
        throws Exception
    {
        String s;
        String s1;
        String s2;
        String s4;
        s = ((StockAmbientInfo)iambientinfo).getChange();
        if (s != null)
            s = s.trim();
        s1 = ((StockAmbientInfo)iambientinfo).getLastValue();
        if (s1 != null)
            s1 = s1.trim();
        s2 = ((StockAmbientInfo)iambientinfo).getPercentageChange();
        if (s2 != null)
            s2 = s2.trim();
        String s3 = ((StockAmbientInfo)iambientinfo).getCompanyName();
        if (s3 != null)
            s3.trim();
        s4 = ((StockAmbientInfo)iambientinfo).getCompanySymbol();
        if (s4 != null)
            s4 = s4.trim();
        mResources = getResourceObject();
        if (mResources == null) goto _L2; else goto _L1
_L1:
        Paint paint;
        Canvas canvas;
        Paint paint2;
        Paint paint3;
        String s6;
        String s7;
        Bitmap bitmap3;
        int j;
        Bitmap bitmap;
        String s8;
        String s9;
        if (i == 0)
            j = 0x7f020125;
        else
            j = 0x7f020126;
        bitmap = BitmapFactory.decodeResource(mResources, j).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        if (!"push_offline_image".equals(((StockAmbientInfo)iambientinfo).getPushImageType())) goto _L4; else goto _L3
_L3:
        if (s2 == null || s1 == null || s == null || "".equals(s))
        {
            s1 = "-- --";
            s2 = "";
            s = "";
        }
_L20:
        paint = new Paint();
        canvas = new Canvas(bitmap);
        if (canvas == null) goto _L6; else goto _L5
_L5:
        Paint paint1;
        if (paint != null)
        {
            paint.setStyle(android.graphics.Paint.Style.FILL);
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            paint.setTextSize(52F);
            paint.setTypeface(ToqData.getInstance().getQcomRegularTypeFace());
            paint.setAntiAlias(true);
            paint.setColor(-1);
            if (i == 0)
                paint.setColor(-1);
            else
                paint.setColor(0xff000000);
            if (s4 != null)
            {
                if (s4.length() > 6)
                    s4 = (new StringBuilder()).append(s4.substring(0, 6)).append("..").toString();
                canvas.drawText(s4, 20F, 97F - paint.descent(), paint);
            } else
            {
                Log.e("StockAmbientDisplay", "companySymbol is null");
            }
        }
        paint1 = new Paint();
        if (paint1 != null)
        {
            paint1.setStyle(android.graphics.Paint.Style.FILL);
            paint1.setTextAlign(android.graphics.Paint.Align.LEFT);
            paint1.setTextSize(36F);
            paint1.setTypeface(ToqData.getInstance().getQcomSemiboldTypeFace());
            paint1.setAntiAlias(true);
            paint1.setColor(-1);
            if (i == 0)
                paint1.setColor(-1);
            else
                paint1.setColor(0xff000000);
            if (s1 != null)
            {
                if (!s1.contains("--") && !"".equals(s1))
                    s1 = Utils.getCommaSeparatedText(s1);
                canvas.drawText(s1, 20F, 138F - paint1.descent(), paint1);
            } else
            {
                Log.e("StockAmbientDisplay", "last is null");
            }
        }
        paint2 = new Paint();
        if (paint2 == null) goto _L6; else goto _L7
_L7:
        paint2.setStyle(android.graphics.Paint.Style.FILL);
        paint2.setTextAlign(android.graphics.Paint.Align.LEFT);
        paint2.setTextSize(24F);
        paint2.setTypeface(ToqData.getInstance().getQcomSemiboldTypeFace());
        paint2.setAntiAlias(true);
        paint3 = new Paint();
        paint3.setStyle(android.graphics.Paint.Style.FILL);
        if (i == 0)
            paint2.setColor(-1);
        else
            paint2.setColor(0xff000000);
        if (s == null || s2 == null) goto _L6; else goto _L8
_L8:
        if ("".equals(s) || "".equals(s2)) goto _L6; else goto _L9
_L9:
        if (Float.valueOf(s).floatValue() < 0.0F) goto _L11; else goto _L10
_L10:
        s9 = s2.replaceAll("[+]", "");
        s6 = (new StringBuilder()).append(s9).append("%").toString();
        if (i != 0) goto _L13; else goto _L12
_L12:
        bitmap3 = BitmapFactory.decodeResource(mResources, 0x7f0200dd).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
_L14:
        canvas.drawBitmap(bitmap3, 20F, 153F, paint3);
        s7 = "+ ";
_L17:
        Bitmap bitmap1;
        Bitmap bitmap2;
        try
        {
            canvas.drawText(s6, 54F, 179F - paint2.descent(), paint2);
            paint2.setTextAlign(android.graphics.Paint.Align.RIGHT);
            s8 = s.replaceAll("[+-]", "");
            canvas.drawText((new StringBuilder()).append(s7).append(s8).toString(), 277F, 179F - paint2.descent(), paint2);
        }
        catch (NumberFormatException numberformatexception)
        {
            Log.e("StockAmbientDisplay", (new StringBuilder()).append("Unable to retreive percentage change as value is empty or not a number").append(numberformatexception).toString());
        }
_L6:
        if (bitmap != null)
        {
            Log.d("StockAmbientDisplay", (new StringBuilder()).append(" Has Alpha ").append(bitmap.hasAlpha()).toString());
            Log.d("StockAmbientDisplay", "Bitmap is not null");
        }
        return bitmap;
_L4:
        if ("push_data_error_image".equals(((StockAmbientInfo)iambientinfo).getPushImageType()) && (s2 == null || s1 == null || s == null || "".equals(s)))
        {
            s1 = "-- --";
            s2 = "";
            s = "";
        }
        continue; /* Loop/switch isn't completed */
_L13:
        bitmap3 = BitmapFactory.decodeResource(mResources, 0x7f0200dc).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
          goto _L14
_L11:
        String s5 = s2.replaceAll("[-]", "");
        s6 = (new StringBuilder()).append(s5).append("%").toString();
        if (i != 0) goto _L16; else goto _L15
_L15:
        bitmap1 = BitmapFactory.decodeResource(mResources, 0x7f0200db).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
_L18:
        canvas.drawBitmap(bitmap1, 20F, 153F, paint3);
        s7 = "- ";
          goto _L17
_L16:
        bitmap2 = BitmapFactory.decodeResource(mResources, 0x7f0200da).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        bitmap1 = bitmap2;
          goto _L18
_L2:
        Log.e("StockAmbientDisplay", "Context is null, not able to write data on bitmap");
        return null;
        if (true) goto _L20; else goto _L19
_L19:
    }

    public Bitmap writeDataOntoBitmap(IAmbientInfo iambientinfo)
        throws Exception
    {
        String s;
        String s1;
        String s2;
        String s4;
        s = ((StockAmbientInfo)iambientinfo).getChange();
        if (s != null)
            s = s.trim();
        s1 = ((StockAmbientInfo)iambientinfo).getLastValue();
        if (s1 != null)
            s1 = s1.trim();
        s2 = ((StockAmbientInfo)iambientinfo).getPercentageChange();
        if (s2 != null)
            s2 = s2.trim();
        String s3 = ((StockAmbientInfo)iambientinfo).getCompanyName();
        if (s3 != null)
            s3.trim();
        s4 = ((StockAmbientInfo)iambientinfo).getCompanySymbol();
        if (s4 != null)
            s4 = s4.trim();
        mResources = getResourceObject();
        if (mResources == null) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = Bitmap.createBitmap(276, 123, android.graphics.Bitmap.Config.ARGB_8888);
        if (!"push_offline_image".equals(((StockAmbientInfo)iambientinfo).getPushImageType())) goto _L4; else goto _L3
_L3:
        if (s2 == null || s1 == null || s == null || "".equals(s))
        {
            s1 = "--";
            s = "--";
            s2 = "--";
        }
_L15:
        Paint paint;
        Canvas canvas;
        paint = new Paint();
        canvas = new Canvas(bitmap);
        if (canvas == null) goto _L6; else goto _L5
_L5:
        Paint paint2;
        Paint paint5;
        Paint paint6;
        Paint paint1 = new Paint();
        paint1.setStyle(android.graphics.Paint.Style.FILL);
        paint1.setColor(-1);
        canvas.drawRect(0.0F, 0.0F, 276F, 120F, paint1);
        if (paint != null)
        {
            paint.setStyle(android.graphics.Paint.Style.FILL);
            paint.setColor(mResources.getColor(0x7f070005));
            paint.setTextSize(36F);
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            paint.setTypeface(ToqData.getInstance().getQcomSemiboldTypeFace());
            paint.setAntiAlias(true);
            Paint paint4;
            android.graphics.Bitmap.Config config;
            android.graphics.BitmapFactory.Options options;
            String s7;
            if (s4 != null)
            {
                if (s4.length() > 7)
                    s4 = (new StringBuilder()).append(s4.substring(0, 7)).append("..").toString();
                canvas.drawText(s4, 16F, 43F, paint);
            } else
            {
                Log.e("StockAmbientDisplay", "companySymbol is null");
            }
        }
        paint2 = new Paint();
        if (paint2 == null) goto _L8; else goto _L7
_L7:
        paint2.setStyle(android.graphics.Paint.Style.FILL);
        paint2.setColor(-1);
        paint2.setTextSize(26F);
        paint2.setTypeface(ToqData.getInstance().getQcomRegularTypeFace());
        paint2.setAntiAlias(true);
        paint2.setTextAlign(android.graphics.Paint.Align.LEFT);
        paint5 = new Paint();
        paint5.setStyle(android.graphics.Paint.Style.FILL);
        if (s == null) goto _L10; else goto _L9
_L9:
        try
        {
            paint6 = new Paint();
        }
        catch (NumberFormatException numberformatexception)
        {
            Log.e("StockAmbientDisplay", (new StringBuilder()).append("Unable to retreive percentage change as value is empty or not a number").append(numberformatexception).toString());
            throw numberformatexception;
        }
        if (paint6 == null) goto _L10; else goto _L11
_L11:
        paint6.setStyle(android.graphics.Paint.Style.FILL);
        paint6.setColor(mResources.getColor(0x7f070001));
        if (s.contains("--") || "".equals(s) || Float.valueOf(s).floatValue() < 0.0F) goto _L13; else goto _L12
_L12:
        paint6.setColor(mResources.getColor(0x7f070001));
        canvas.drawBitmap(BitmapFactory.decodeResource(mResources, 0x7f020127).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 223F, 15F, paint5);
        s7 = s.replaceAll("[+]", "");
        paint2.setColor(mResources.getColor(0x7f070008));
        canvas.drawRect(6F, 82F, 270F, 114F, paint6);
        canvas.drawText("+", 16F, 105F, paint2);
        paint2.setColor(-1);
        canvas.drawText(s7, 31F, 105F, paint2);
_L10:
        if (s1 != null)
        {
            paint2.setColor(0xff000000);
            paint2.setTextSize(29F);
            if (!s1.contains("--") && !"".equals(s1))
                s1 = Utils.getCommaSeparatedText(s1);
            canvas.drawText(s1, 16F, 75F, paint2);
        }
_L8:
        Paint paint3 = new Paint();
        if (paint3 != null)
        {
            paint3.setStyle(android.graphics.Paint.Style.FILL);
            paint3.setColor(-1);
            paint3.setTextSize(26F);
            paint3.setTextAlign(android.graphics.Paint.Align.RIGHT);
            paint3.setTypeface(ToqData.getInstance().getQcomRegularTypeFace());
            paint3.setAntiAlias(true);
            Log.d("StockAmbientDisplay", (new StringBuilder()).append("Per change val : ").append(s2).toString());
            if (s2 != null && s != null && !"--".equals(s2) && !"--".equals(s) && !"".equals(s2) && !"".equals(s))
            {
                String s5 = s2.replaceAll("[+-]", "");
                String s6;
                if (Float.valueOf(s).floatValue() >= 0.0F)
                {
                    paint3.setColor(mResources.getColor(0x7f070008));
                    canvas.drawText("%", 260F, 104F, paint3);
                    paint3.setColor(-1);
                    canvas.drawText(s5, 240F, 105F, paint3);
                } else
                if (Float.valueOf(s).floatValue() < 0.0F)
                {
                    paint3.setColor(mResources.getColor(0x7f070009));
                    canvas.drawText("%", 260F, 104F, paint3);
                    paint3.setColor(-1);
                    canvas.drawText(s5, 240F, 105F, paint3);
                }
            } else
            {
                canvas.drawText("--", 260F, 105F, paint3);
            }
        }
        paint4 = new Paint();
        if (paint4 != null)
        {
            paint4.setStyle(android.graphics.Paint.Style.FILL);
            paint4.setAntiAlias(true);
            paint4.setColor(mResources.getColor(0x7f070006));
            canvas.drawRect(0.0F, 120F, 276F, 123F, paint4);
        }
_L6:
        config = android.graphics.Bitmap.Config.ARGB_8888;
        options = new android.graphics.BitmapFactory.Options();
        options.inPreferredConfig = config;
        options.inDither = false;
        if (bitmap != null)
        {
            Log.d("StockAmbientDisplay", (new StringBuilder()).append(" Has Alpha ").append(bitmap.hasAlpha()).toString());
            Log.d("StockAmbientDisplay", "Bitmap is not null");
        }
        return bitmap;
_L4:
        if ("push_data_error_image".equals(((StockAmbientInfo)iambientinfo).getPushImageType()) && (s2 == null || s1 == null || s == null || "".equals(s)))
        {
            s1 = "--";
            s = "--";
            s2 = "--";
        }
        continue; /* Loop/switch isn't completed */
_L13:
        if (!s.contains("--") && !"".equals(s) && Float.valueOf(s).floatValue() < 0.0F)
        {
            paint6.setColor(mResources.getColor(0x7f070002));
            canvas.drawBitmap(BitmapFactory.decodeResource(mResources, 0x7f020128).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 223F, 15F, paint5);
            s6 = s.replaceAll("[-]", "");
            paint2.setColor(mResources.getColor(0x7f070009));
            canvas.drawRect(6F, 82F, 270F, 114F, paint6);
            canvas.drawText("-", 16F, 105F, paint2);
            paint2.setColor(-1);
            canvas.drawText(s6, 31F, 105F, paint2);
            continue; /* Loop/switch isn't completed */
        }
        paint6.setColor(mResources.getColor(0x7f070001));
        canvas.drawBitmap(BitmapFactory.decodeResource(mResources, 0x7f020127).copy(android.graphics.Bitmap.Config.ARGB_8888, true), 223F, 15F, paint5);
        canvas.drawRect(6F, 82F, 270F, 114F, paint6);
        canvas.drawText(s, 16F, 105F, paint2);
        if (true) goto _L10; else goto _L2
_L2:
        Log.e("StockAmbientDisplay", "Context is null, not able to write data on bitmap");
        return null;
        if (true) goto _L15; else goto _L14
_L14:
    }
}
