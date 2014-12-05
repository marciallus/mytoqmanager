// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common;

import org.alljoyn.bus.ErrorReplyBusException;

public class LanguageNotSupportedException extends ErrorReplyBusException
{

    private static final long serialVersionUID = 0x8ee5547b13a4538aL;

    public LanguageNotSupportedException()
    {
        super("org.alljoyn.Error.LanguageNotSupported", "The language specified is not supported");
    }
}
