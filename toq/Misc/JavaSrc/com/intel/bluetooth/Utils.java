// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.*;
import java.util.Enumeration;
import java.util.Vector;
import javax.bluetooth.UUID;

// Referenced classes of package com.intel.bluetooth:
//            MicroeditionConnector, UtilsJavaSE

public abstract class Utils
{
    static class TimerThread extends Thread
    {

        long delay;
        Runnable run;

        public void run()
        {
            try
            {
                Thread.sleep(delay);
                run.run();
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                return;
            }
        }

        public TimerThread(long l, Runnable runnable)
        {
            delay = l;
            run = runnable;
        }
    }


    private static final String blueCoveImplPackage = getPackage(com/intel/bluetooth/MicroeditionConnector.getName());

    private Utils()
    {
    }

    public static String UUIDByteArrayToString(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
                return stringbuffer.toString();
            stringbuffer.append(Integer.toHexString(0xf & abyte0[i] >> 4));
            stringbuffer.append(Integer.toHexString(0xf & abyte0[i]));
            i++;
        } while (true);
    }

    static long UUIDTo32Bit(UUID uuid)
    {
        if (uuid != null)
        {
            String s = uuid.toString().toUpperCase();
            int i = s.indexOf("00001000800000805F9B34FB");
            if (i != -1 && i + "00001000800000805F9B34FB".length() == s.length())
                return Long.parseLong(s.substring(0, i), 16);
        }
        return -1L;
    }

    public static byte[] UUIDToByteArray(String s)
    {
        byte abyte0[] = new byte[16];
        if (s.indexOf('-') != -1)
            throw new NumberFormatException((new StringBuilder("The '-' character is not allowed in UUID: ")).append(s).toString());
        int i = 0;
        do
        {
            if (i >= 16)
                return abyte0;
            abyte0[i] = (byte)Integer.parseInt(s.substring(i * 2, 2 + i * 2), 16);
            i++;
        } while (true);
    }

    static byte[] UUIDToByteArray(UUID uuid)
    {
        return UUIDToByteArray(uuid.toString());
    }

    public static Vector clone(Enumeration enumeration)
    {
        Vector vector = new Vector();
        do
        {
            if (!enumeration.hasMoreElements())
                return vector;
            vector.addElement(enumeration.nextElement());
        } while (true);
    }

    public static byte[] clone(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        } else
        {
            int i = abyte0.length;
            byte abyte1[] = new byte[i];
            System.arraycopy(abyte0, 0, abyte1, 0, i);
            return abyte1;
        }
    }

    static byte[] getASCIIBytes(String s)
    {
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes("US-ASCII");
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return s.getBytes();
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return s.getBytes();
        }
        return abyte0;
    }

    private static String getPackage(String s)
    {
        int i = s.lastIndexOf('.');
        if (i == -1)
            return "";
        else
            return s.substring(0, i);
    }

    static String getResourceProperty(Class class1, String s)
    {
        String s1;
        int i;
        String s2;
        try
        {
            s1 = loadString(class1.getResourceAsStream((new StringBuilder("/")).append(s).toString()));
        }
        catch (Throwable throwable)
        {
            return null;
        }
        if (s1 == null)
            break MISSING_BLOCK_LABEL_56;
        i = s1.indexOf('\n');
        if (i == -1)
            break MISSING_BLOCK_LABEL_56;
        s2 = s1.substring(0, i - 1);
        s1 = s2;
        return s1;
    }

    static byte[] getUTF8Bytes(String s)
    {
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes("UTF-8");
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return s.getBytes();
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return s.getBytes();
        }
        return abyte0;
    }

    static boolean is32Bit(UUID uuid)
    {
        return UUIDTo32Bit(uuid) != -1L;
    }

    public static void isLegalAPICall(Vector vector)
        throws Error
    {
        UtilsJavaSE.StackTraceLocation stacktracelocation = UtilsJavaSE.getLocation(vector);
        if (stacktracelocation != null && !stacktracelocation.className.startsWith("javax.bluetooth.") && !stacktracelocation.className.startsWith((new StringBuilder(String.valueOf(blueCoveImplPackage))).append(".").toString()))
            throw new Error("Illegal use of the JSR-82 API");
        else
            return;
    }

    static boolean isStringSet(String s)
    {
        return s != null && s.length() > 0;
    }

    static void j2meUsagePatternDellay()
    {
        try
        {
            Thread.sleep(100L);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
    }

    static String loadString(InputStream inputstream)
    {
        if (inputstream == null)
            return null;
        String s;
        try
        {
            byte abyte0[] = new byte[256];
            s = new String(abyte0, 0, inputstream.read(abyte0));
        }
        catch (IOException ioexception1)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception2)
            {
                return null;
            }
            return null;
        }
        Exception exception;
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception3) { }
        return s;
        exception;
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception) { }
        throw exception;
    }

    static String newStringASCII(byte abyte0[])
    {
        String s;
        try
        {
            s = new String(abyte0, "US-ASCII");
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return new String(abyte0);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return new String(abyte0);
        }
        return s;
    }

    static String newStringUTF8(byte abyte0[])
    {
        String s;
        try
        {
            s = new String(abyte0, "UTF-8");
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return new String(abyte0);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return new String(abyte0);
        }
        return s;
    }

    static TimerThread schedule(long l, Runnable runnable)
    {
        TimerThread timerthread = new TimerThread(l, runnable);
        UtilsJavaSE.threadSetDaemon(timerthread);
        timerthread.start();
        return timerthread;
    }

    public static int securityOpt(boolean flag, boolean flag1)
    {
        byte byte0;
        if (flag)
        {
            if (flag1)
                byte0 = 2;
            else
                return 1;
        } else
        {
            byte0 = 0;
            if (flag1)
                throw new IllegalArgumentException("Illegal encrypt configuration");
        }
        return byte0;
    }

    public static String toHexString(long l)
    {
        StringBuffer stringbuffer = new StringBuffer();
        String s = Integer.toHexString((int)l);
        if (l > 0xffffffffL)
        {
            stringbuffer.append(Integer.toHexString((int)(l >> 32)));
            for (int i = s.length(); i < 8; i++)
                stringbuffer.append('0');

        }
        stringbuffer.append(s);
        return stringbuffer.toString();
    }

    static Object[] vector2toArray(Vector vector, Object aobj[])
    {
        vector.copyInto(aobj);
        return aobj;
    }

}
