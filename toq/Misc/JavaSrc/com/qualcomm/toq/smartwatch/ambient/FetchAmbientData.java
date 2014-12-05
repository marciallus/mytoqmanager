// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.Utils;
import java.io.IOException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            WeatherAmbientDisplay, WeatherAmbientInfo, StockAmbientDisplay, StockAmbientInfo, 
//            DefaultAmbientDisplay, IAmbientDisplay

public class FetchAmbientData
{

    private static final String TAG = "DemoFetchAmbientData";
    private IAmbientDisplay mAmbientDisplay;

    private FetchAmbientData()
    {
    }

    public static FetchAmbientData getInstance()
    {
        return new FetchAmbientData();
    }

    private void processRequest(String s, DefaultAmbientDisplay defaultambientdisplay, DefaultHttpClient defaulthttpclient, String s1)
    {
        Log.d("DemoFetchAmbientData", (new StringBuilder()).append("URL->").append(s).toString());
        String s2;
        if (s != null)
        {
            HttpGet httpget = new HttpGet(s);
            if (s.contains("https://api.etrade.com"))
                httpget.addHeader("ConsumerKey", "f9269f0dbe43320e8143305cd0afdcfa");
            BasicResponseHandler basicresponsehandler = new BasicResponseHandler();
            s2 = null;
            if (defaulthttpclient != null)
            {
                s2 = null;
                if (httpget != null)
                {
                    s2 = null;
                    if (basicresponsehandler != null)
                        try
                        {
                            s2 = (String)defaulthttpclient.execute(httpget, basicresponsehandler);
                            Log.d("DemoFetchAmbientData", (new StringBuilder()).append("Response").append(s2).toString());
                        }
                        catch (ClientProtocolException clientprotocolexception)
                        {
                            Log.e("DemoFetchAmbientData", (new StringBuilder()).append("ClientProtocolException").append(clientprotocolexception).toString());
                            setDataErrorIndication();
                        }
                        catch (IOException ioexception)
                        {
                            Log.e("DemoFetchAmbientData", (new StringBuilder()).append("IOException").append(ioexception).toString());
                            setDataErrorIndication();
                        }
                        catch (Exception exception)
                        {
                            setDataErrorIndication();
                        }
                }
            }
        } else
        {
            Log.e("DemoFetchAmbientData", "URL is null");
            s2 = null;
        }
        if (s2 != null)
        {
            mAmbientDisplay = updateAmbientDisplay(defaultambientdisplay, s2, s1);
            return;
        } else
        {
            setDataErrorIndication();
            return;
        }
    }

    private void setDataErrorIndication()
    {
        if (mAmbientDisplay != null)
            if (mAmbientDisplay instanceof WeatherAmbientDisplay)
                ((WeatherAmbientInfo)((WeatherAmbientDisplay)mAmbientDisplay).getAmbientInfo()).setPushImageType("push_data_error_image");
            else
            if (mAmbientDisplay instanceof StockAmbientDisplay)
            {
                ((StockAmbientInfo)((StockAmbientDisplay)mAmbientDisplay).getAmbientInfo()).setPushImageType("push_data_error_image");
                return;
            }
    }

    private IAmbientDisplay updateAmbientDisplay(IAmbientDisplay iambientdisplay, String s, String s1)
    {
        if (iambientdisplay instanceof StockAmbientDisplay)
        {
            StockAmbientDisplay stockambientdisplay = (StockAmbientDisplay)iambientdisplay;
            stockambientdisplay.setAmbientInfo((StockAmbientInfo)stockambientdisplay.retreiveDataFromStream(s, stockambientdisplay.getAmbientInfo(), s1));
            return stockambientdisplay;
        }
        if (iambientdisplay instanceof WeatherAmbientDisplay)
        {
            WeatherAmbientDisplay weatherambientdisplay = (WeatherAmbientDisplay)iambientdisplay;
            weatherambientdisplay.setAmbientInfo((WeatherAmbientInfo)weatherambientdisplay.retreiveDataFromStream(s, weatherambientdisplay.getAmbientInfo(), s1));
            return weatherambientdisplay;
        } else
        {
            return null;
        }
    }

    public IAmbientDisplay getUpdatedAmbientDisplay(IAmbientDisplay iambientdisplay)
        throws Exception
    {
        mAmbientDisplay = iambientdisplay;
        DefaultAmbientDisplay defaultambientdisplay = (DefaultAmbientDisplay)mAmbientDisplay;
        if (Utils.isNetworkConnectivityAvailable(defaultambientdisplay.getContext()))
        {
            BasicHttpParams basichttpparams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basichttpparams, 5000);
            HttpConnectionParams.setSoTimeout(basichttpparams, 5000);
            DefaultHttpClient defaulthttpclient = new DefaultHttpClient(basichttpparams);
            if (mAmbientDisplay instanceof StockAmbientDisplay)
                processRequest(defaultambientdisplay.getUrl(), defaultambientdisplay, defaulthttpclient, "GOOG_STOCK_TYPE");
            else
            if (mAmbientDisplay instanceof WeatherAmbientDisplay)
            {
                processRequest(defaultambientdisplay.getUrl(), defaultambientdisplay, defaulthttpclient, "WEATHER_HOUR_TEMPARATURE");
                processRequest(((WeatherAmbientDisplay)defaultambientdisplay).getForecastUrl(), defaultambientdisplay, defaulthttpclient, "WEATHER_MIN_MAX_TEMPARATURE");
            }
            defaulthttpclient.getConnectionManager().shutdown();
        }
        return mAmbientDisplay;
    }
}
