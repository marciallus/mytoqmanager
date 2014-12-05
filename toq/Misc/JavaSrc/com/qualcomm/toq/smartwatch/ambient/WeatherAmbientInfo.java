// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.utils.Log;
import java.io.Serializable;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            IAmbientInfo, CurrentCityWeatherAmbientInfo

public class WeatherAmbientInfo
    implements IAmbientInfo, Serializable
{

    private static final String TAG = "WeatherAmbientInfo";
    protected static final long serialVersionUID = 0x77bed5938b1fa6e4L;
    protected String appImageDestinationLocation;
    protected String appImageSourceLocation;
    protected String cityName;
    protected String countryName;
    protected String destinationLocation;
    protected String gmtOffset;
    protected int hourTemp;
    protected int iconNumber;
    protected String key;
    protected int maxTemp;
    protected int minTemp;
    protected String pushImageType;
    protected String searchKeyText;
    protected String sourceLocation;
    protected String stateName;
    protected String weatherCondition;
    protected String worldClockWeatherImgPath;
    protected String worldCockFolderPath;
    protected String worldCockTempImgPath;

    public WeatherAmbientInfo()
    {
        weatherCondition = null;
        cityName = null;
        stateName = null;
        countryName = null;
        sourceLocation = null;
        destinationLocation = null;
        appImageSourceLocation = null;
        appImageDestinationLocation = null;
        key = null;
        searchKeyText = null;
        pushImageType = null;
        gmtOffset = null;
        worldCockFolderPath = null;
        worldCockTempImgPath = null;
        worldClockWeatherImgPath = null;
        iconNumber = -1;
    }

    public boolean equals(Object obj)
    {
label0:
        {
label1:
            {
label2:
                {
                    if (this != obj)
                    {
                        if (obj == null)
                            return false;
                        if (!(obj instanceof WeatherAmbientInfo))
                            return false;
                        WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)obj;
                        if (weatherambientinfo instanceof CurrentCityWeatherAmbientInfo)
                            Log.d("WeatherAmbientInfo", "Equals getting called for Current City");
                        Log.d("WeatherAmbientInfo", (new StringBuilder()).append("City Name").append(cityName).toString());
                        if (maxTemp != weatherambientinfo.maxTemp)
                        {
                            Log.d("WeatherAmbientInfo", (new StringBuilder()).append("Max Temp is not same this.maxTemp").append(maxTemp).append("compareWeatherAmbientInfo.maxTemp").append(weatherambientinfo.maxTemp).toString());
                            return false;
                        }
                        if (minTemp != weatherambientinfo.minTemp)
                        {
                            Log.d("WeatherAmbientInfo", (new StringBuilder()).append("Min Temp is not same this.minTemp").append(minTemp).append("compareWeatherAmbientInfo.minTemp").append(weatherambientinfo.minTemp).toString());
                            return false;
                        }
                        if (hourTemp != weatherambientinfo.hourTemp)
                        {
                            Log.d("WeatherAmbientInfo", (new StringBuilder()).append("Hour Temp is not same this.hourTemp").append(hourTemp).append("compareWeatherAmbientInfo.hourTemp").append(weatherambientinfo.hourTemp).toString());
                            return false;
                        }
                        if (weatherCondition != null && weatherambientinfo.weatherCondition == null || weatherCondition == null && weatherambientinfo.weatherCondition != null)
                            break label0;
                        if (weatherCondition != null && !weatherCondition.equals(weatherambientinfo.weatherCondition))
                        {
                            Log.d("WeatherAmbientInfo", (new StringBuilder()).append("Weather Condition is not same this.weatherCondition").append(weatherCondition).append("compareWeatherAmbientInfo.weatherCondition").append(weatherambientinfo.weatherCondition).toString());
                            return false;
                        }
                        if (cityName != null && weatherambientinfo.cityName == null || cityName == null && weatherambientinfo.cityName != null)
                            break label1;
                        if (cityName != null && !cityName.equals(weatherambientinfo.cityName))
                        {
                            Log.d("WeatherAmbientInfo", (new StringBuilder()).append("City Name is not same this.cityName").append(cityName).append("compareWeatherAmbientInfo.cityName").append(weatherambientinfo.cityName).toString());
                            return false;
                        }
                        if (pushImageType == null && weatherambientinfo.pushImageType != null || pushImageType != null && weatherambientinfo.pushImageType == null)
                            break label2;
                        if (pushImageType != null && !pushImageType.equals(weatherambientinfo.pushImageType))
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

    public String getAppImageDestinationLocation()
    {
        return appImageDestinationLocation;
    }

    public String getAppImageSourceLocation()
    {
        return appImageSourceLocation;
    }

    public String getCityName()
    {
        return cityName;
    }

    public String getCountryName()
    {
        return countryName;
    }

    public String getDestinationLocation()
    {
        Log.d("WeatherAmbientInfo", (new StringBuilder()).append("getDestinationLocation() Weather: ").append(destinationLocation).toString());
        return destinationLocation;
    }

    public String getGmtOffset()
    {
        return gmtOffset;
    }

    public int getHourTemp()
    {
        return hourTemp;
    }

    public int getIconNumber()
    {
        return iconNumber;
    }

    public String getKey()
    {
        return key;
    }

    public int getMaxTemp()
    {
        return maxTemp;
    }

    public int getMinTemp()
    {
        return minTemp;
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

    public String getStateName()
    {
        return stateName;
    }

    public String getWeatherCondition()
    {
        return weatherCondition;
    }

    public String getWorldClockCityFolderPath()
    {
        return worldCockFolderPath;
    }

    public String getWorldClockTempImgPath()
    {
        return worldCockTempImgPath;
    }

    public String getWorldClockWeatherImgPath()
    {
        return worldClockWeatherImgPath;
    }

    public int hashCode()
    {
        return 31 + cityName.hashCode();
    }

    public void setAppImageDestinationLocation(String s)
    {
        appImageDestinationLocation = s;
    }

    public void setAppImageSourceLocation(String s)
    {
        appImageSourceLocation = s;
    }

    public void setCityName(String s)
    {
        cityName = s;
    }

    public void setCountryName(String s)
    {
        countryName = s;
    }

    public void setDestinationLocation(String s)
    {
        destinationLocation = s;
        Log.d("WeatherAmbientInfo", (new StringBuilder()).append("setDestinationLocation() Weather: ").append(destinationLocation).toString());
    }

    public void setGmtOffset(String s)
    {
        gmtOffset = s;
    }

    public void setHourTemp(int i)
    {
        hourTemp = i;
    }

    public void setIconNumber(int i)
    {
        iconNumber = i;
    }

    public void setKey(String s)
    {
        key = s;
    }

    public void setMaxTemp(int i)
    {
        maxTemp = i;
    }

    public void setMinTemp(int i)
    {
        minTemp = i;
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

    public void setStateName(String s)
    {
        stateName = s;
    }

    public void setWeatherCondition(String s)
    {
        weatherCondition = s;
    }

    public void setWorldClockCityFolderPath(String s)
    {
        worldCockFolderPath = s;
    }

    public void setWorldClockTempImgPath(String s)
    {
        worldCockTempImgPath = s;
    }

    public void setWorldClockWeatherImgPath(String s)
    {
        worldClockWeatherImgPath = s;
    }
}
