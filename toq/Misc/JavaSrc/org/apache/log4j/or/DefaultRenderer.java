// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.or;


// Referenced classes of package org.apache.log4j.or:
//            ObjectRenderer

class DefaultRenderer
    implements ObjectRenderer
{


    public String doRender(Object obj)
    {
        String s;
        try
        {
            s = obj.toString();
        }
        catch (Exception exception)
        {
            return exception.toString();
        }
        return s;
    }
}
