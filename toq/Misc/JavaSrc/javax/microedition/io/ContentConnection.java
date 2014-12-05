// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.microedition.io;


// Referenced classes of package javax.microedition.io:
//            StreamConnection

public interface ContentConnection
    extends StreamConnection
{

    public abstract String getEncoding();

    public abstract long getLength();

    public abstract String getType();
}
