// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;


public class Transform
{

    private static final String CDATA_EMBEDED_END = "]]>]]&gt;<![CDATA[";
    private static final String CDATA_END = "]]>";
    private static final int CDATA_END_LEN = "]]>".length();
    private static final String CDATA_PSEUDO_END = "]]&gt;";
    private static final String CDATA_START = "<![CDATA[";


    public static void appendEscapingCDATA(StringBuffer stringbuffer, String s)
    {
        int j;
label0:
        {
            if (s != null)
            {
                int i = s.indexOf("]]>");
                if (i < 0)
                {
                    stringbuffer.append(s);
                } else
                {
                    j = 0;
                    do
                    {
                        if (i <= -1)
                            break label0;
                        stringbuffer.append(s.substring(j, i));
                        stringbuffer.append("]]>]]&gt;<![CDATA[");
                        j = i + CDATA_END_LEN;
                        if (j >= s.length())
                            break;
                        i = s.indexOf("]]>", j);
                    } while (true);
                }
            }
            return;
        }
        stringbuffer.append(s.substring(j));
    }

    public static String escapeTags(String s)
    {
        if (s != null && s.length() != 0 && (s.indexOf('"') != -1 || s.indexOf('&') != -1 || s.indexOf('<') != -1 || s.indexOf('>') != -1))
        {
            StringBuffer stringbuffer = new StringBuffer(6 + s.length());
            int i = s.length();
            for (int j = 0; j < i; j++)
            {
                char c = s.charAt(j);
                if (c > '>')
                {
                    stringbuffer.append(c);
                    continue;
                }
                if (c == '<')
                {
                    stringbuffer.append("&lt;");
                    continue;
                }
                if (c == '>')
                {
                    stringbuffer.append("&gt;");
                    continue;
                }
                if (c == '&')
                {
                    stringbuffer.append("&amp;");
                    continue;
                }
                if (c == '"')
                    stringbuffer.append("&quot;");
                else
                    stringbuffer.append(c);
            }

            return stringbuffer.toString();
        } else
        {
            return s;
        }
    }

}
