// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns;


// Referenced classes of package org.alljoyn.ns:
//            NotificationServiceException

public class RichAudioUrl
{

    private String language;
    private String url;


    public RichAudioUrl(String s, String s1)
        throws NotificationServiceException
    {
        setLanguage(s);
        setUrl(s1);
    }

    public String getLanguage()
    {
        return language;
    }

    public String getUrl()
    {
        return url;
    }

    public void setLanguage(String s)
        throws NotificationServiceException
    {
        if (s != null && s.length() != 0)
        {
            language = s;
            return;
        } else
        {
            throw new NotificationServiceException("Language is undefined");
        }
    }

    public void setUrl(String s)
        throws NotificationServiceException
    {
        if (s != null && s.length() != 0)
        {
            url = s;
            return;
        } else
        {
            throw new NotificationServiceException("audio url is undefined");
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("RichAudioUrl [language= '").append(language).append("', url='").append(url).append("']").toString();
    }
}
