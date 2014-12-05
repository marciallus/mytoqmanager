// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.or;

import java.util.Hashtable;
import org.apache.log4j.helpers.*;
import org.apache.log4j.spi.RendererSupport;

// Referenced classes of package org.apache.log4j.or:
//            DefaultRenderer, ObjectRenderer

public class RendererMap
{

    static Class class$org$apache$log4j$or$ObjectRenderer;
    static ObjectRenderer defaultRenderer = new DefaultRenderer();
    Hashtable map;

    public RendererMap()
    {
        map = new Hashtable();
    }

    public static void addRenderer(RendererSupport renderersupport, String s, String s1)
    {
        LogLog.debug("Rendering class: [" + s1 + "], Rendered class: [" + s + "].");
        Class class1;
        ObjectRenderer objectrenderer;
        if (class$org$apache$log4j$or$ObjectRenderer == null)
        {
            class1 = _mthclass$("org.apache.log4j.or.ObjectRenderer");
            class$org$apache$log4j$or$ObjectRenderer = class1;
        } else
        {
            class1 = class$org$apache$log4j$or$ObjectRenderer;
        }
        objectrenderer = (ObjectRenderer)OptionConverter.instantiateByClassName(s1, class1, null);
        if (objectrenderer == null)
        {
            LogLog.error("Could not instantiate renderer [" + s1 + "].");
            return;
        }
        try
        {
            renderersupport.setRenderer(Loader.loadClass(s), objectrenderer);
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            LogLog.error("Could not find class [" + s + "].", classnotfoundexception);
        }
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    public void clear()
    {
        map.clear();
    }

    public String findAndRender(Object obj)
    {
        if (obj == null)
            return null;
        else
            return get(obj.getClass()).doRender(obj);
    }

    public ObjectRenderer get(Class class1)
    {
        for (Class class2 = class1; class2 != null; class2 = class2.getSuperclass())
        {
            ObjectRenderer objectrenderer = (ObjectRenderer)map.get(class2);
            if (objectrenderer != null)
                return objectrenderer;
            ObjectRenderer objectrenderer1 = searchInterfaces(class2);
            if (objectrenderer1 != null)
                return objectrenderer1;
        }

        return defaultRenderer;
    }

    public ObjectRenderer get(Object obj)
    {
        if (obj == null)
            return null;
        else
            return get(obj.getClass());
    }

    public ObjectRenderer getDefaultRenderer()
    {
        return defaultRenderer;
    }

    public void put(Class class1, ObjectRenderer objectrenderer)
    {
        map.put(class1, objectrenderer);
    }

    ObjectRenderer searchInterfaces(Class class1)
    {
        ObjectRenderer objectrenderer = (ObjectRenderer)map.get(class1);
        if (objectrenderer != null)
            return objectrenderer;
        Class aclass[] = class1.getInterfaces();
        for (int i = 0; i < aclass.length; i++)
        {
            ObjectRenderer objectrenderer1 = searchInterfaces(aclass[i]);
            if (objectrenderer1 != null)
                return objectrenderer1;
        }

        return null;
    }

}
