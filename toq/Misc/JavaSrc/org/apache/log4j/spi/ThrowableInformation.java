// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;

import java.io.Serializable;
import org.apache.log4j.Category;
import org.apache.log4j.DefaultThrowableRenderer;

// Referenced classes of package org.apache.log4j.spi:
//            ThrowableRendererSupport, ThrowableRenderer

public class ThrowableInformation
    implements Serializable
{

    static final long serialVersionUID = 0xbe18fee081720f51L;
    private transient Category category;
    private String rep[];
    private transient Throwable throwable;

    public ThrowableInformation(Throwable throwable1)
    {
        throwable = throwable1;
    }

    public ThrowableInformation(Throwable throwable1, Category category1)
    {
        throwable = throwable1;
        category = category1;
    }

    public ThrowableInformation(String as[])
    {
        if (as != null)
            rep = (String[])(String[])as.clone();
    }

    public Throwable getThrowable()
    {
        return throwable;
    }

    public String[] getThrowableStrRep()
    {
        this;
        JVM INSTR monitorenter ;
        Category category1;
        if (rep != null)
            break MISSING_BLOCK_LABEL_73;
        category1 = category;
        ThrowableRenderer throwablerenderer;
        throwablerenderer = null;
        if (category1 == null)
            break MISSING_BLOCK_LABEL_57;
        LoggerRepository loggerrepository;
        boolean flag;
        loggerrepository = category.getLoggerRepository();
        flag = loggerrepository instanceof ThrowableRendererSupport;
        throwablerenderer = null;
        if (!flag)
            break MISSING_BLOCK_LABEL_57;
        throwablerenderer = ((ThrowableRendererSupport)loggerrepository).getThrowableRenderer();
        if (throwablerenderer != null)
            break MISSING_BLOCK_LABEL_91;
        rep = DefaultThrowableRenderer.render(throwable);
_L1:
        String as[] = (String[])(String[])rep.clone();
        this;
        JVM INSTR monitorexit ;
        return as;
        rep = throwablerenderer.doRender(throwable);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }
}
