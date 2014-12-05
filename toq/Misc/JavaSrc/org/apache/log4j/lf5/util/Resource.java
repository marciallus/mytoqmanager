// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.util;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;

// Referenced classes of package org.apache.log4j.lf5.util:
//            ResourceUtils

public class Resource
{

    protected String _name;


    public Resource(String s)
    {
        _name = s;
    }

    public InputStream getInputStream()
    {
        return ResourceUtils.getResourceAsStream(this, this);
    }

    public InputStreamReader getInputStreamReader()
    {
        InputStream inputstream = ResourceUtils.getResourceAsStream(this, this);
        if (inputstream == null)
            return null;
        else
            return new InputStreamReader(inputstream);
    }

    public String getName()
    {
        return _name;
    }

    public URL getURL()
    {
        return ResourceUtils.getResourceAsURL(this, this);
    }

    public void setName(String s)
    {
        _name = s;
    }
}
