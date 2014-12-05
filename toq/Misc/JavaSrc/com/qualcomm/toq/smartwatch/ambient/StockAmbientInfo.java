// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.utils.Log;
import java.io.Serializable;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            IAmbientInfo

public class StockAmbientInfo
    implements IAmbientInfo, Serializable
{

    private static final String TAG = "StockAmbientInfo";
    private static final long serialVersionUID = 0xe1e4e8693f699357L;
    protected String appImageDestinationLocation;
    protected String appImageSourceLocation;
    private String change;
    private String companyName;
    private String companySymbol;
    private String darkImageDestinationLocation;
    private String darkImageSourceLocation;
    private String destinationLocation;
    private String lastValue;
    private String percentageChange;
    private String pushImageType;
    private String searchKeyText;
    private String sourceLocation;

    public StockAmbientInfo()
    {
        percentageChange = null;
        change = null;
        lastValue = null;
        companyName = null;
        companySymbol = null;
        sourceLocation = null;
        darkImageSourceLocation = null;
        destinationLocation = null;
        darkImageDestinationLocation = null;
        appImageSourceLocation = null;
        appImageDestinationLocation = null;
        searchKeyText = null;
        pushImageType = null;
    }

    public boolean equals(Object obj)
    {
label0:
        {
label1:
            {
label2:
                {
label3:
                    {
                        if (this != obj)
                        {
                            if (obj == null)
                                return false;
                            if (!(obj instanceof StockAmbientInfo))
                                return false;
                            StockAmbientInfo stockambientinfo = (StockAmbientInfo)obj;
                            if (percentageChange != null && stockambientinfo.percentageChange == null || percentageChange == null && stockambientinfo.percentageChange != null)
                                break label0;
                            if (lastValue != null && stockambientinfo.lastValue == null || lastValue == null && stockambientinfo.lastValue != null)
                                break label1;
                            if (change != null && stockambientinfo.change == null || change == null && stockambientinfo.change != null)
                                break label2;
                            if (percentageChange != null && !percentageChange.equals(stockambientinfo.percentageChange))
                                return false;
                            if (lastValue != null && !lastValue.equals(stockambientinfo.lastValue))
                                return false;
                            if (change != null && !change.equals(stockambientinfo.change))
                                return false;
                            if (companySymbol != null && !companySymbol.equals(stockambientinfo.companySymbol))
                                return false;
                            if (pushImageType == null && stockambientinfo.pushImageType != null || pushImageType != null && stockambientinfo.pushImageType == null)
                                break label3;
                            if (pushImageType != null && !pushImageType.equals(stockambientinfo.pushImageType))
                                return false;
                        }
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public String getAppImageDestinationLocation()
    {
        return appImageDestinationLocation;
    }

    public String getAppImageSourceLocation()
    {
        return appImageSourceLocation;
    }

    public String getChange()
    {
        return change;
    }

    public String getCompanyName()
    {
        return companyName;
    }

    public String getCompanySymbol()
    {
        return companySymbol;
    }

    public String getDarkImageDestinationLocation()
    {
        return darkImageDestinationLocation;
    }

    public String getDarkImageSourceLocation()
    {
        return darkImageSourceLocation;
    }

    public String getDestinationLocation()
    {
        Log.d("StockAmbientInfo", (new StringBuilder()).append("getDestinationLocation() Stock: ").append(destinationLocation).toString());
        return destinationLocation;
    }

    public String getLastValue()
    {
        return lastValue;
    }

    public String getPercentageChange()
    {
        return percentageChange;
    }

    public String getPushImageType()
    {
        return pushImageType;
    }

    public String getSearchKeyText()
    {
        return searchKeyText;
    }

    public String getSourceLocation()
    {
        return sourceLocation;
    }

    public int hashCode()
    {
        return 31 + companySymbol.hashCode();
    }

    public void setAppImageDestinationLocation(String s)
    {
        appImageDestinationLocation = s;
    }

    public void setAppImageSourceLocation(String s)
    {
        appImageSourceLocation = s;
    }

    public void setChange(String s)
    {
        change = s;
    }

    public void setCompanyName(String s)
    {
        companyName = s;
    }

    public void setCompanySymbol(String s)
    {
        companySymbol = s;
    }

    public void setDarkImageDestinationLocation(String s)
    {
        darkImageDestinationLocation = s;
    }

    public void setDarkImageSourceLocation(String s)
    {
        darkImageSourceLocation = s;
    }

    public void setDestinationLocation(String s)
    {
        destinationLocation = s;
        Log.d("StockAmbientInfo", (new StringBuilder()).append("setDestinationLocation() Stock: ").append(destinationLocation).toString());
    }

    public void setLastValue(String s)
    {
        lastValue = s;
    }

    public void setPercentageChange(String s)
    {
        percentageChange = s;
    }

    public void setPushImageType(String s)
    {
        pushImageType = s;
    }

    public void setSearchKeyText(String s)
    {
        searchKeyText = s;
    }

    public void setSourceLocation(String s)
    {
        sourceLocation = s;
    }
}
