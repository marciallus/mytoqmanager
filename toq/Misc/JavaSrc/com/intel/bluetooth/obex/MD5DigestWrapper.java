// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class MD5DigestWrapper
{

    private MessageDigest md5impl;

    MD5DigestWrapper()
    {
        try
        {
            md5impl = MessageDigest.getInstance("MD5");
            return;
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception.getMessage());
        }
    }

    byte[] digest()
    {
        return md5impl.digest();
    }

    void update(byte abyte0[])
    {
        md5impl.update(abyte0);
    }
}
