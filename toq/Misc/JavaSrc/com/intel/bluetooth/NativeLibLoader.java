// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.*;
import java.lang.reflect.Field;
import java.util.Hashtable;

// Referenced classes of package com.intel.bluetooth:
//            DebugLog, BlueCoveImpl, UtilsJavaSE, IBMJ9Helper, 
//            UtilsStringTokenizer

public abstract class NativeLibLoader
{
    private static class LibState
    {

        boolean libraryAvailable;
        StringBuffer loadErrors;
        boolean triedToLoadAlredy;

        private LibState()
        {
            triedToLoadAlredy = false;
            libraryAvailable = false;
            loadErrors = new StringBuffer();
        }

        LibState(LibState libstate)
        {
            this();
        }
    }


    static final int OS_ANDROID_1_X = 5;
    static final int OS_ANDROID_2_X = 6;
    static final int OS_LINUX = 1;
    static final int OS_MAC_OS_X = 4;
    static final int OS_UNSUPPORTED = -1;
    static final int OS_WINDOWS = 2;
    static final int OS_WINDOWS_CE = 3;
    private static Object bluecoveDllDir = null;
    private static Hashtable libsState = new Hashtable();
    private static int os = 0;

    private NativeLibLoader()
    {
    }

    private static boolean copy2File(InputStream inputstream, File file)
    {
        FileOutputStream fileoutputstream = null;
        FileOutputStream fileoutputstream1 = new FileOutputStream(file);
        byte abyte0[] = new byte[1000];
_L1:
        int i = inputstream.read(abyte0);
        Throwable throwable;
label0:
        {
            {
                if (i >= 0)
                    break label0;
                boolean flag;
                IOException ioexception1;
                if (fileoutputstream1 != null)
                    try
                    {
                        fileoutputstream1.close();
                    }
                    catch (IOException ioexception2) { }
                flag = true;
            }
            return flag;
        }
        fileoutputstream1.write(abyte0, 0, i);
          goto _L1
        throwable;
        fileoutputstream = fileoutputstream1;
_L5:
        DebugLog.debug("Can't create temp file ", throwable);
        System.err.println((new StringBuilder("Can't create temp file ")).append(file.getAbsolutePath()).toString());
        flag = false;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception1)
            {
                return false;
            }
            return false;
        } else
        {
            break MISSING_BLOCK_LABEL_42;
        }
        Exception exception;
        exception;
_L3:
        if (fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception) { }
        throw exception;
        exception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L3; else goto _L2
_L2:
        throwable;
        fileoutputstream = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static String createLinuxPackagePath(String s)
    {
        if (s.indexOf("64") != -1)
            return (new StringBuilder("/usr/lib64/bluecove/")).append(BlueCoveImpl.version).toString();
        else
            return (new StringBuilder("/usr/lib/bluecove/")).append(BlueCoveImpl.version).toString();
    }

    static String getLoadErrors(String s)
    {
        LibState libstate = (LibState)libsState.get(s);
        if (libstate != null && libstate.loadErrors != null)
            return libstate.loadErrors.toString();
        else
            return "";
    }

    static int getOS()
    {
        String s;
        if (os != 0)
            return os;
        s = System.getProperty("os.name");
        if (s != null) goto _L2; else goto _L1
_L1:
        DebugLog.fatal("Native Library not available on unknown platform");
        os = -1;
_L4:
        return os;
_L2:
        String s1;
        s1 = s.toLowerCase();
        if (s1.indexOf("windows") != -1)
        {
            if (s1.indexOf("ce") != -1)
                os = 3;
            else
                os = 2;
            continue; /* Loop/switch isn't completed */
        }
        if (s1.indexOf("mac os x") != -1)
        {
            os = 4;
            continue; /* Loop/switch isn't completed */
        }
        if (s1.indexOf("linux") == -1)
            break MISSING_BLOCK_LABEL_176;
        String s2 = System.getProperty("java.runtime.name");
        if (s2 == null || s2.toLowerCase().indexOf("android runtime") == -1)
            break MISSING_BLOCK_LABEL_169;
        Exception exception;
        if (Class.forName("android.os.Build$VERSION").getField("SDK_INT").getInt(null) >= 5)
        {
            Class.forName("com.intel.bluetooth.BluetoothStackAndroid");
            os = 6;
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            os = 5;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            os = 5;
        }
        continue; /* Loop/switch isn't completed */
        os = 1;
        continue; /* Loop/switch isn't completed */
        DebugLog.fatal((new StringBuilder("Native Library not available on platform ")).append(s1).toString());
        os = -1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static boolean isAvailable(String s)
    {
        return isAvailable(s, null);
    }

    static boolean isAvailable(String s, Class class1)
    {
        return isAvailable(s, class1, true);
    }

    static boolean isAvailable(String s, Class class1, boolean flag)
    {
        LibState libstate;
        String s3;
label0:
        {
label1:
            {
                libstate = (LibState)libsState.get(s);
                if (libstate == null)
                {
                    libstate = new LibState(null);
                    libsState.put(s, libstate);
                }
                if (libstate.triedToLoadAlredy)
                    return libstate.libraryAvailable;
                libstate.loadErrors = new StringBuffer();
                String s1 = s;
                String s2 = s1;
                s3 = System.getProperty("os.name");
                String s4 = System.getProperty("os.arch");
                String s5;
                if (s4 != null)
                    s5 = s4.toLowerCase();
                else
                    s5 = "";
                switch (getOS())
                {
                case 0: // '\0'
                default:
                    break label0;

                case -1: 
                    break label1;

                case 6: // '\006'
                    libstate.libraryAvailable = true;
                    break;

                case 5: // '\005'
                    s2 = (new StringBuilder("lib")).append(s2).append(".so").toString();
                    break;

                case 1: // '\001'
                    if (s5.indexOf("i386") == -1 && s5.length() != 0)
                        if (s5.indexOf("amd64") == -1 && s5.indexOf("x86_64") == -1)
                        {
                            if (s5.indexOf("x86") == -1)
                                s1 = (new StringBuilder(String.valueOf(s1))).append("_").append(s5).toString();
                        } else
                        {
                            s1 = (new StringBuilder(String.valueOf(s1))).append("_x64").toString();
                        }
                    String s8 = s1;
                    s2 = (new StringBuilder("lib")).append(s8).append(".so").toString();
                    break;

                case 4: // '\004'
                    s2 = (new StringBuilder("lib")).append(s2).append(".jnilib").toString();
                    break;

                case 2: // '\002'
                    if (s5.indexOf("amd64") != -1 || s5.indexOf("x86_64") != -1)
                    {
                        s1 = (new StringBuilder(String.valueOf(s1))).append("_x64").toString();
                        s2 = s1;
                    }
                    s2 = (new StringBuilder(String.valueOf(s2))).append(".dll").toString();
                    break;

                case 3: // '\003'
                    s1 = (new StringBuilder(String.valueOf(s1))).append("_ce").toString();
                    s2 = (new StringBuilder(String.valueOf(s1))).append(".dll").toString();
                    break;
                }
                String s6 = System.getProperty("bluecove.native.path");
                if (s6 != null && !UtilsJavaSE.ibmJ9midp)
                    libstate.libraryAvailable = tryloadPath(s6, s2, libstate.loadErrors);
                boolean flag1 = true;
                String s7 = System.getProperty("bluecove.native.resource");
                if (s7 != null && s7.equalsIgnoreCase("false") || getOS() == 5 || getOS() == 6)
                    flag1 = false;
                if (!libstate.libraryAvailable && flag1 && !UtilsJavaSE.ibmJ9midp)
                    libstate.libraryAvailable = loadAsSystemResource(s2, class1, libstate.loadErrors);
                if (!libstate.libraryAvailable && getOS() == 1 && !UtilsJavaSE.ibmJ9midp)
                    libstate.libraryAvailable = tryloadPath(createLinuxPackagePath(s5), s2, libstate.loadErrors);
                if (!libstate.libraryAvailable)
                    if (!UtilsJavaSE.ibmJ9midp)
                        libstate.libraryAvailable = tryload(s1, libstate.loadErrors);
                    else
                        libstate.libraryAvailable = tryloadIBMj9MIDP(s1);
                if (!libstate.libraryAvailable)
                {
                    if (flag)
                        System.err.println((new StringBuilder("Native Library ")).append(s1).append(" not available").toString());
                    DebugLog.debug("java.library.path", System.getProperty("java.library.path"));
                }
                libstate.triedToLoadAlredy = true;
                return libstate.libraryAvailable;
            }
            libstate.loadErrors.append((new StringBuilder("Native Library ")).append(s).append(" not available on [").append(s3).append("] platform").toString());
            DebugLog.fatal((new StringBuilder("Native Library ")).append(s).append(" not available on [").append(s3).append("] platform").toString());
            libstate.triedToLoadAlredy = true;
            libstate.libraryAvailable = false;
            return libstate.libraryAvailable;
        }
        libstate.loadErrors.append((new StringBuilder("Native Library ")).append(s).append(" not available on [").append(s3).append("] platform").toString());
        DebugLog.fatal((new StringBuilder("Native Library ")).append(s).append(" not available on platform ").append(s3).toString());
        libstate.triedToLoadAlredy = true;
        libstate.libraryAvailable = false;
        return libstate.libraryAvailable;
    }

    private static boolean loadAsSystemResource(String s, Class class1, StringBuffer stringbuffer)
    {
        ClassLoader classloader = null;
        if (class1 == null) goto _L2; else goto _L1
_L1:
        InputStream inputstream1;
        File file;
        Exception exception;
        try
        {
            classloader = class1.getClassLoader();
            DebugLog.debug("Use stack ClassLoader");
        }
        catch (Throwable throwable) { }
        if (classloader != null) goto _L4; else goto _L3
_L3:
        InputStream inputstream;
        InputStream inputstream2;
        ClassLoader classloader1;
        try
        {
            DebugLog.debug("Use System ClassLoader");
            inputstream2 = ClassLoader.getSystemResourceAsStream(s);
        }
        catch (Throwable throwable1)
        {
            DebugLog.error((new StringBuilder("Native Library ")).append(s).append(" is not a Resource !").toString());
            stringbuffer.append("\nresource not found ").append(s);
            return false;
        }
        inputstream1 = inputstream2;
        if (inputstream1 != null) goto _L6; else goto _L5
_L5:
        DebugLog.error((new StringBuilder("Native Library ")).append(s).append(" is not a Resource !").toString());
        stringbuffer.append("\nresource not found ").append(s);
_L8:
        return false;
_L2:
        classloader1 = com/intel/bluetooth/NativeLibLoader.getClassLoader();
        classloader = classloader1;
        continue; /* Loop/switch isn't completed */
_L4:
        inputstream = classloader.getResourceAsStream(s);
        inputstream1 = inputstream;
        break MISSING_BLOCK_LABEL_37;
_L6:
        file = makeTempName(s);
        if (copy2File(inputstream1, file))
            break MISSING_BLOCK_LABEL_201;
        stringbuffer.append("\ncan't create temp file");
        try
        {
            inputstream1.close();
        }
        catch (IOException ioexception2)
        {
            return false;
        }
        return false;
        exception;
        try
        {
            inputstream1.close();
        }
        catch (IOException ioexception) { }
        throw exception;
        try
        {
            inputstream1.close();
        }
        catch (IOException ioexception1) { }
        Throwable throwable3;
        try
        {
            file.deleteOnExit();
        }
        catch (Throwable throwable2) { }
        System.load(file.getAbsolutePath());
        DebugLog.debug("Library loaded from", file);
        return true;
        throwable3;
        DebugLog.fatal("Can't load library file ", throwable3);
        stringbuffer.append("\nload resource [").append(file.getAbsolutePath()).append("] ").append(throwable3.getMessage());
        if ((new File(file.getAbsolutePath())).canRead()) goto _L8; else goto _L7
_L7:
        DebugLog.fatal((new StringBuilder("File ")).append(file.getAbsolutePath()).append(" magicaly disappeared").toString());
        return false;
        if (true) goto _L10; else goto _L9
_L10:
        break MISSING_BLOCK_LABEL_17;
_L9:
    }

    private static File makeTempName(String s)
    {
        String s1;
        String s2;
        Object obj;
        int i;
        if (bluecoveDllDir != null)
        {
            File file = new File((File)bluecoveDllDir, s);
            DebugLog.debug("tmp file", file.getAbsolutePath());
            return file;
        }
        s1 = System.getProperty("java.io.tmpdir");
        if (s1 == null || s1.length() == 0)
            s1 = "temp";
        s2 = System.getProperty("user.name");
        obj = null;
        i = 0;
_L3:
        int j;
        if (i > 10)
        {
            DebugLog.debug((new StringBuilder("Can't create temporary dir ")).append(((File) (obj)).getAbsolutePath()).toString());
            return new File(s1, s);
        }
        StringBuilder stringbuilder = (new StringBuilder("bluecove_")).append(s2).append("_");
        j = i + 1;
        obj = new File(s1, stringbuilder.append(i).toString());
        if (!((File) (obj)).exists()) goto _L2; else goto _L1
_L1:
label0:
        {
            if (((File) (obj)).isDirectory())
                break label0;
            i = j;
        }
          goto _L3
        File afile[] = ((File) (obj)).listFiles();
        int k = 0;
_L5:
        int l = afile.length;
        if (k < l) goto _L4; else goto _L2
_L2:
        boolean flag;
        if (!((File) (obj)).exists() && !((File) (obj)).mkdirs())
        {
            DebugLog.debug("Can't create temporary dir ", ((File) (obj)).getAbsolutePath());
            i = j;
        } else
        {
label1:
            {
                File file1;
                Throwable throwable1;
                IOException ioexception;
                try
                {
                    ((File) (obj)).deleteOnExit();
                }
                catch (Throwable throwable) { }
                file1 = new File(((File) (obj)), s);
                if (!file1.exists() || file1.delete())
                    break label1;
                i = j;
            }
        }
          goto _L3
_L4:
        flag = afile[k].delete();
label2:
        {
            if (flag)
                break label2;
            i = j;
        }
          goto _L3
        k++;
          goto _L5
        if (file1.createNewFile())
            break MISSING_BLOCK_LABEL_351;
        DebugLog.debug("Can't create file in temporary dir ", file1.getAbsolutePath());
        i = j;
          goto _L3
        ioexception;
        DebugLog.debug("Can't create file in temporary dir ", file1.getAbsolutePath());
        i = j;
          goto _L3
        throwable1;
        bluecoveDllDir = obj;
        DebugLog.debug("set dll dir", ((File) (obj)).getAbsolutePath());
        return file1;
        Throwable throwable2;
        throwable2;
          goto _L2
    }

    private static boolean tryload(String s, StringBuffer stringbuffer)
    {
        try
        {
            System.loadLibrary(s);
            DebugLog.debug("Library loaded", s);
        }
        catch (Throwable throwable)
        {
            DebugLog.error((new StringBuilder("Library ")).append(s).append(" not loaded ").toString(), throwable);
            stringbuffer.append("\nload [").append(s).append("] ").append(throwable.getMessage());
            return false;
        }
        return true;
    }

    private static boolean tryloadFile(File file, String s, StringBuffer stringbuffer)
    {
        File file1 = new File(file, s);
        if (!file1.canRead())
        {
            DebugLog.debug((new StringBuilder("Native Library ")).append(file1.getAbsolutePath()).append(" not found").toString());
            return false;
        }
        try
        {
            System.load(file1.getAbsolutePath());
            DebugLog.debug("Library loaded", file1.getAbsolutePath());
        }
        catch (Throwable throwable)
        {
            DebugLog.error((new StringBuilder("Can't load library from path ")).append(file).toString(), throwable);
            stringbuffer.append("\nload [").append(file1.getAbsolutePath()).append("] ").append(throwable.getMessage());
            return false;
        }
        return true;
    }

    private static boolean tryloadIBMj9MIDP(String s)
    {
        try
        {
            IBMJ9Helper.loadLibrary(s);
            DebugLog.debug("Library loaded", s);
        }
        catch (Throwable throwable)
        {
            DebugLog.error((new StringBuilder("Library ")).append(s).append(" not loaded ").toString(), throwable);
            return false;
        }
        return true;
    }

    private static boolean tryloadPath(String s, String s1, StringBuffer stringbuffer)
    {
        UtilsStringTokenizer utilsstringtokenizer = new UtilsStringTokenizer(s, File.pathSeparator);
        File file;
        do
        {
            if (!utilsstringtokenizer.hasMoreTokens())
                return false;
            file = new File(utilsstringtokenizer.nextToken());
        } while (!file.isDirectory() || !tryloadFile(file, s1, stringbuffer));
        return true;
    }

    private static boolean tryloadPathIBMj9MIDP(String s, String s1)
    {
        try
        {
            IBMJ9Helper.loadLibrary((new StringBuilder(String.valueOf(s))).append("\\").append(s1).toString());
            DebugLog.debug("Library loaded", (new StringBuilder(String.valueOf(s))).append("\\").append(s1).toString());
        }
        catch (Throwable throwable)
        {
            DebugLog.error((new StringBuilder("Can't load library from path ")).append(s).append("\\").append(s1).toString(), throwable);
            return false;
        }
        return true;
    }

}
