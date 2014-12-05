// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


// Referenced classes of package org.alljoyn.bus:
//            BusException, Variant, MsgArg

public class VariantUtil
{


    public static String getSignature(Variant variant)
        throws BusException
    {
        long al[] = new long[1];
        al[0] = variant.getMsgArg();
        return MsgArg.getSignature(al);
    }
}
