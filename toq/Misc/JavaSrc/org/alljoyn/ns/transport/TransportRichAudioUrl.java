// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport;

import org.alljoyn.ns.RichAudioUrl;

public class TransportRichAudioUrl
{

    public String language;
    public String url;


    public TransportRichAudioUrl(String s, String s1)
    {
        language = s;
        url = s1;
    }

    public static TransportRichAudioUrl buildInstance(RichAudioUrl richaudiourl)
    {
        return new TransportRichAudioUrl(richaudiourl.getLanguage(), richaudiourl.getUrl());
    }
}
