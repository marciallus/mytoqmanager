// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.utils.Log;
import java.util.ArrayList;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            StockAmbientInfo, IAmbientInfo

public class StockDataParser
{


    public void parseAutocompleteResponse(String s, ArrayList arraylist)
    {
        JSONObject jsonobject;
        JSONObject jsonobject1;
        JSONArray jsonarray;
        int i;
        String s1;
        String s2;
        try
        {
            Log.i("Ambient", (new StringBuilder()).append("StockListActivityResponse data: ").append(s).toString());
            jsonobject = new JSONObject(s);
        }
        catch (JSONException jsonexception)
        {
            Log.e("Ambient", "StockListActivityCannot process JSON results", jsonexception);
            return;
        }
        if (jsonobject == null)
            break MISSING_BLOCK_LABEL_191;
        jsonobject1 = jsonobject.getJSONObject("LookupResponse");
        if (jsonobject1 == null)
            break MISSING_BLOCK_LABEL_191;
        jsonarray = jsonobject1.getJSONArray("Data");
        if (jsonarray == null || arraylist == null)
            break MISSING_BLOCK_LABEL_191;
        i = 0;
_L2:
        if (i >= jsonarray.length())
            break; /* Loop/switch isn't completed */
        s1 = jsonarray.getJSONObject(i).getString("symbol").replaceAll("[\\s%*!@$^()?,;=]", "");
        s2 = jsonarray.getJSONObject(i).getString("description");
        if (s2 == null)
            break MISSING_BLOCK_LABEL_131;
        s2 = s2.trim();
        arraylist.add((new StringBuilder()).append(s1).append(",").append(s2).toString());
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        Log.i("Ambient", (new StringBuilder()).append("StockListActivityFinal arrayList:").append(arraylist).toString());
    }

    public int parseStockDataStream(String s, IAmbientInfo iambientinfo)
    {
        byte byte0;
        StockAmbientInfo stockambientinfo;
        byte0 = -1;
        if (s == null || s.length() <= 0)
            break MISSING_BLOCK_LABEL_307;
        stockambientinfo = (StockAmbientInfo)iambientinfo;
        JSONObject jsonobject = new JSONObject(s);
        if (jsonobject == null)
            break MISSING_BLOCK_LABEL_237;
        JSONObject jsonobject1 = jsonobject.getJSONObject("QuoteResponse");
        if (jsonobject1 == null)
            break MISSING_BLOCK_LABEL_237;
        byte0 = 0;
        JSONObject jsonobject2;
        String s1;
        jsonobject2 = jsonobject1.getJSONArray("QuoteData").getJSONObject(0).getJSONObject("All");
        s1 = jsonobject2.getString("lastTrade");
        Log.d("Ambient", (new StringBuilder()).append("StockDataParser last value = ").append(s1).toString());
        byte0 = 0;
        if (s1 == null)
            break MISSING_BLOCK_LABEL_141;
        stockambientinfo.setLastValue(s1);
        Log.d("Ambient", (new StringBuilder()).append("Last").append(s1).toString());
        String s2;
        s2 = jsonobject2.getString("changeClose");
        Log.d("Ambient", (new StringBuilder()).append("StockDataParser change value = ").append(s2).toString());
        byte0 = 0;
        if (s2 == null)
            break MISSING_BLOCK_LABEL_189;
        stockambientinfo.setChange(s2);
        String s3;
        s3 = jsonobject2.getString("changeClosePercentage");
        Log.d("Ambient", (new StringBuilder()).append("StockDataParser perChange value = ").append(s3).toString());
        byte0 = 0;
        if (s3 != null)
            try
            {
                stockambientinfo.setPercentageChange(s3);
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
        if (stockambientinfo.getLastValue() == null || stockambientinfo.getPercentageChange() == null || stockambientinfo.getChange() == null || "".equals(stockambientinfo.getChange()) || "".equals(stockambientinfo.getLastValue()) || "".equals(stockambientinfo.getPercentageChange()))
            stockambientinfo.setPushImageType("push_data_error_image");
        return byte0;
    }
}
