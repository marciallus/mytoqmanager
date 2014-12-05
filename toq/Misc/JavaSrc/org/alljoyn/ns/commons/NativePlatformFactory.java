// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.commons;


// Referenced classes of package org.alljoyn.ns.commons:
//            NativePlatformFactoryException, NativePlatform

public class NativePlatformFactory
{
    private static final class OSPlatform extends Enum
    {

        private static final OSPlatform $VALUES[];
        public static final OSPlatform ANDROID;
        public static final OSPlatform LINUX;
        public static final OSPlatform WINDOWS;
        public final String CLASS_NAME;
        public final String NAME;

        public static OSPlatform valueOf(String s)
        {
            return (OSPlatform)Enum.valueOf(org/alljoyn/ns/commons/NativePlatformFactory$OSPlatform, s);
        }

        public static OSPlatform[] values()
        {
            return (OSPlatform[])$VALUES.clone();
        }

        static 
        {
            WINDOWS = new OSPlatform("WINDOWS", 0, "Windows", "");
            ANDROID = new OSPlatform("ANDROID", 1, "Android", "org.alljoyn.ns.nativeplatform.NativePlatformAndroid");
            LINUX = new OSPlatform("LINUX", 2, "Linux", "");
            OSPlatform aosplatform[] = new OSPlatform[3];
            aosplatform[0] = WINDOWS;
            aosplatform[1] = ANDROID;
            aosplatform[2] = LINUX;
            $VALUES = aosplatform;
        }

        private OSPlatform(String s, int i, String s1, String s2)
        {
            super(s, i);
            NAME = s1;
            CLASS_NAME = s2;
        }
    }


    private static volatile NativePlatform nativePlatform = null;
    private static String osPlatform;
    private static String vmVendor;

    private NativePlatformFactory()
    {
    }

    private static NativePlatform getClassInstance(String s)
        throws NativePlatformFactoryException
    {
        NativePlatform nativeplatform;
        try
        {
            nativeplatform = (NativePlatform)Class.forName(s).newInstance();
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new NativePlatformFactoryException((new StringBuilder()).append("Failed to load class: '").append(s).append("'").toString(), classnotfoundexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new NativePlatformFactoryException(illegalaccessexception);
        }
        catch (InstantiationException instantiationexception)
        {
            throw new NativePlatformFactoryException(instantiationexception);
        }
        return nativeplatform;
    }

    public static NativePlatform getPlatformObject()
        throws NativePlatformFactoryException
    {
        OSPlatform osplatform;
        if (nativePlatform != null)
            return nativePlatform;
        osplatform = identifyPlatform();
        if (osplatform == null || osplatform.CLASS_NAME.isEmpty())
            throw new NativePlatformFactoryException((new StringBuilder()).append("Failed to find NativePlatform class for os: '").append(osplatform).append("', vmVendor: '").append(vmVendor).append("'").toString());
        org/alljoyn/ns/commons/NativePlatformFactory;
        JVM INSTR monitorenter ;
        if (nativePlatform == null)
            nativePlatform = getClassInstance(osplatform.CLASS_NAME);
        org/alljoyn/ns/commons/NativePlatformFactory;
        JVM INSTR monitorexit ;
        return nativePlatform;
        Exception exception;
        exception;
        org/alljoyn/ns/commons/NativePlatformFactory;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static OSPlatform identifyPlatform()
    {
        osPlatform = System.getProperty("os.name", "");
        vmVendor = System.getProperty("java.vm.vendor", "");
        if (!osPlatform.isEmpty())
        {
            if (osPlatform.indexOf(OSPlatform.WINDOWS.NAME) > -1)
                return OSPlatform.WINDOWS;
            if (osPlatform.indexOf(OSPlatform.LINUX.NAME) > -1)
                if (!vmVendor.isEmpty() && vmVendor.indexOf(OSPlatform.ANDROID.NAME) > -1)
                    return OSPlatform.ANDROID;
                else
                    return OSPlatform.LINUX;
        }
        return null;
    }

}
