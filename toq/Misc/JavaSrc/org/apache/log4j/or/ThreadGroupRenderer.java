// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.or;

import org.apache.log4j.Layout;

// Referenced classes of package org.apache.log4j.or:
//            ObjectRenderer

public class ThreadGroupRenderer
    implements ObjectRenderer
{


    public String doRender(Object obj)
    {
        if (obj instanceof ThreadGroup)
        {
            StringBuffer stringbuffer = new StringBuffer();
            ThreadGroup threadgroup = (ThreadGroup)obj;
            stringbuffer.append("java.lang.ThreadGroup[name=");
            stringbuffer.append(threadgroup.getName());
            stringbuffer.append(", maxpri=");
            stringbuffer.append(threadgroup.getMaxPriority());
            stringbuffer.append("]");
            Thread athread[] = new Thread[threadgroup.activeCount()];
            threadgroup.enumerate(athread);
            for (int i = 0; i < athread.length; i++)
            {
                stringbuffer.append(Layout.LINE_SEP);
                stringbuffer.append("   Thread=[");
                stringbuffer.append(athread[i].getName());
                stringbuffer.append(",");
                stringbuffer.append(athread[i].getPriority());
                stringbuffer.append(",");
                stringbuffer.append(athread[i].isDaemon());
                stringbuffer.append("]");
            }

            return stringbuffer.toString();
        }
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
