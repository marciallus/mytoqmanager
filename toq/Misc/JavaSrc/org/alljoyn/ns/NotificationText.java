// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns;


// Referenced classes of package org.alljoyn.ns:
//            NotificationServiceException

public class NotificationText
{

    private String language;
    private String text;


    public NotificationText(String s, String s1)
        throws NotificationServiceException
    {
        setLanguage(s);
        setText(s1);
    }

    public String getLanguage()
    {
        return language;
    }

    public String getText()
    {
        return text;
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

    public void setText(String s)
        throws NotificationServiceException
    {
        if (s != null && s.length() != 0)
        {
            text = s;
            return;
        } else
        {
            throw new NotificationServiceException("Text is undefined");
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("NotificationText [language='").append(language).append("', text='").append(text).append("']").toString();
    }
}
