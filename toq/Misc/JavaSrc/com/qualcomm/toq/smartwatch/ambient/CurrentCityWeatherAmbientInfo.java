// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;


// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            WeatherAmbientInfo

public class CurrentCityWeatherAmbientInfo extends WeatherAmbientInfo
{

    private static final long serialVersionUID = 0x5cca313634416ff7L;
    private String clockZipDestinationLocation;
    private String clockZipSourceLocation;

    public CurrentCityWeatherAmbientInfo()
    {
        clockZipSourceLocation = null;
        clockZipDestinationLocation = null;
    }

    public String getClockZipDestinationLocation()
    {
        return clockZipDestinationLocation;
    }

    public String getClockZipSourceLocation()
    {
        return clockZipSourceLocation;
    }

    public void setClockZipDestinationLocation(String s)
    {
        clockZipDestinationLocation = s;
    }

    public void setClockZipSourceLocation(String s)
    {
        clockZipSourceLocation = s;
    }
}
