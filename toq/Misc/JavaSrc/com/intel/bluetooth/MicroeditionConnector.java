// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import com.intel.bluetooth.gcf.socket.ServerSocketConnection;
import com.intel.bluetooth.gcf.socket.SocketConnection;
import com.intel.bluetooth.obex.OBEXClientSessionImpl;
import com.intel.bluetooth.obex.OBEXConnectionParams;
import com.intel.bluetooth.obex.OBEXSessionNotifierImpl;
import java.io.*;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.Hashtable;
import javax.bluetooth.BluetoothConnectionException;
import javax.bluetooth.UUID;
import javax.microedition.io.*;

// Referenced classes of package com.intel.bluetooth:
//            DebugLog, BlueCoveImpl, UtilsStringTokenizer, BluetoothConnectionNotifierParams, 
//            BluetoothStack, BluetoothRFCommConnectionNotifier, BluetoothConnectionParams, RemoteDeviceHelper, 
//            BluetoothRFCommClientConnection, BluetoothL2CAPConnectionNotifier, BluetoothL2CAPClientConnection

public abstract class MicroeditionConnector
{

    private static final String ANDROID = "android";
    private static final String AUTHENTICATE = "authenticate";
    private static final String AUTHORIZE = "authorize";
    private static final String ENCRYPT = "encrypt";
    private static final String EXT_BLUECOVE_L2CAP_PSM = "bluecovepsm";
    private static final String MASTER = "master";
    private static final String NAME = "name";
    public static final int READ = 1;
    public static final int READ_WRITE = 3;
    private static final String RECEIVE_MTU = "receivemtu";
    private static final String TRANSMIT_MTU = "transmitmtu";
    public static final int WRITE = 2;
    private static Hashtable cliParams;
    private static Hashtable cliParamsL2CAP;
    private static Hashtable srvParams;
    private static Hashtable srvParamsL2CAP;
    private static Hashtable suportScheme;

    private MicroeditionConnector()
    {
    }

    static void copyAll(Hashtable hashtable, Hashtable hashtable1)
    {
        Enumeration enumeration = hashtable1.keys();
        do
        {
            if (!enumeration.hasMoreElements())
                return;
            Object obj = enumeration.nextElement();
            hashtable.put(obj, hashtable1.get(obj));
        } while (true);
    }

    public static Connection open(String s)
        throws IOException
    {
        return openImpl(s, 3, false, true);
    }

    public static Connection open(String s, int i)
        throws IOException
    {
        return openImpl(s, i, false, true);
    }

    public static Connection open(String s, int i, boolean flag)
        throws IOException
    {
        return openImpl(s, i, flag, true);
    }

    public static DataInputStream openDataInputStream(String s)
        throws IOException
    {
        return new DataInputStream(openInputStream(s));
    }

    public static DataOutputStream openDataOutputStream(String s)
        throws IOException
    {
        return new DataOutputStream(openOutputStream(s));
    }

    private static Connection openImpl(String s, int i, boolean flag, boolean flag1)
        throws IOException
    {
        Hashtable hashtable;
        String s1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        BluetoothStack bluetoothstack;
        String s2;
        boolean flag5;
        String s3;
        Hashtable hashtable1;
        UtilsStringTokenizer utilsstringtokenizer;
        DebugLog.debug("connecting", s);
        hashtable = new Hashtable();
        int j = s.indexOf("://");
        if (j == -1)
            throw new ConnectionNotFoundException(s);
        s1 = s.substring(0, j);
        if (!suportScheme.containsKey(s1))
            throw new ConnectionNotFoundException(s1);
        int k;
        if (!s1.equals("btspp") && !s1.equals("btgoep") && !s1.equals("btl2cap"))
            flag2 = false;
        else
            flag2 = true;
        flag3 = s1.equals("btl2cap");
        flag4 = s1.equals("tcpobex");
        bluetoothstack = null;
        if (flag2)
            bluetoothstack = BlueCoveImpl.instance().getBluetoothStack();
        k = s.indexOf(':', 3 + s1.length());
        if (k <= -1) goto _L2; else goto _L1
_L1:
        s2 = s.substring(3 + s1.length(), k);
        flag5 = s2.equals("localhost");
        String s5;
        if (flag4)
        {
            hashtable1 = new Hashtable();
            if (s2.length() == 0)
                flag5 = true;
            else
                flag5 = false;
        } else
        if (flag3)
        {
            if (flag5)
                hashtable1 = srvParamsL2CAP;
            else
                hashtable1 = cliParamsL2CAP;
        } else
        if (flag5)
            hashtable1 = srvParams;
        else
            hashtable1 = cliParams;
        s5 = s.substring(k + 1);
        utilsstringtokenizer = new UtilsStringTokenizer(s5, ";");
        if (utilsstringtokenizer.hasMoreTokens())
            s3 = utilsstringtokenizer.nextToken();
        else
            s3 = s5;
_L35:
        if (utilsstringtokenizer.hasMoreTokens()) goto _L4; else goto _L3
_L3:
        if (flag4 && (s3 == null || s3.length() == 0))
            s3 = String.valueOf(650);
        if (s2 == null || s3 == null)
            throw new IllegalArgumentException();
        break; /* Loop/switch isn't completed */
_L4:
        String s6 = utilsstringtokenizer.nextToken();
        int k2 = s6.indexOf('=');
        if (k2 > -1)
        {
            String s7 = s6.substring(0, k2);
            String s8 = s6.substring(k2 + 1);
            String s9 = validParamName(hashtable1, s7);
            if (s9 != null)
            {
                String s10 = (String)hashtable.get(s9);
                if (s10 != null && !s10.equals(s8))
                    throw new IllegalArgumentException((new StringBuilder("duplicate param [")).append(s7).append("] value [").append(s8).append("]").toString());
                hashtable.put(s9, s8);
            } else
            {
                throw new IllegalArgumentException((new StringBuilder("invalid param [")).append(s7).append("] value [").append(s8).append("]").toString());
            }
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("invalid param [")).append(s6).append("]").toString());
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (flag4)
        {
            s2 = s.substring(3 + s1.length());
            if (s2.length() == 0)
                flag5 = true;
            else
                flag5 = false;
            s3 = null;
        } else
        {
            throw new IllegalArgumentException(s.substring(3 + s1.length()));
        }
        if (true) goto _L3; else goto _L5
_L5:
        boolean flag6 = hashtable.containsKey("android");
        if (!flag5) goto _L7; else goto _L6
_L6:
        BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams;
        String s4;
        if (!flag1)
            throw new IllegalArgumentException("Can't use server connection URL");
        if (hashtable.get("name") == null)
            hashtable.put("name", "BlueCove");
        else
        if (flag2)
            validateBluetoothServiceName((String)hashtable.get("name"));
        bluetoothconnectionnotifierparams = null;
        if (!flag2) goto _L9; else goto _L8
_L8:
        bluetoothconnectionnotifierparams = new BluetoothConnectionNotifierParams(new UUID(s3, false), paramBoolean(hashtable, "authenticate"), paramBoolean(hashtable, "encrypt"), paramBoolean(hashtable, "authorize"), (String)hashtable.get("name"), paramBoolean(hashtable, "master"));
        bluetoothconnectionnotifierparams.timeouts = flag;
        if (!bluetoothconnectionnotifierparams.encrypt || bluetoothconnectionnotifierparams.authenticate) goto _L11; else goto _L10
_L10:
        if (hashtable.get("authenticate") != null) goto _L13; else goto _L12
_L12:
        bluetoothconnectionnotifierparams.authenticate = true;
_L11:
        if (!bluetoothconnectionnotifierparams.authorize || bluetoothconnectionnotifierparams.authenticate) goto _L15; else goto _L14
_L14:
        if (hashtable.get("authenticate") != null) goto _L17; else goto _L16
_L16:
        bluetoothconnectionnotifierparams.authenticate = true;
_L15:
        if (flag3)
        {
            s4 = (String)hashtable.get("bluecovepsm");
            if (s4 != null)
                break MISSING_BLOCK_LABEL_833;
        }
          goto _L9
_L13:
        throw new BluetoothConnectionException(6, "encryption requires authentication");
_L17:
        throw new BluetoothConnectionException(6, "authorization requires authentication");
        int l;
        BluetoothConnectionParams bluetoothconnectionparams;
        if ((0x10 & bluetoothstack.getFeatureSet()) == 0)
            throw new IllegalArgumentException("bluecovepsm extension not supported on this stack");
        int j2 = Integer.parseInt(s4, 16);
        validateL2CAPPSM(j2, s4);
        bluetoothconnectionnotifierparams.bluecove_ext_psm = j2;
        l = 0;
        bluetoothconnectionparams = null;
          goto _L18
_L7:
        if (!flag6)
        {
            byte byte0;
            int i2;
            if (flag3)
                byte0 = 16;
            else
                byte0 = 10;
            try
            {
                i2 = Integer.parseInt(s3, byte0);
            }
            catch (NumberFormatException numberformatexception2)
            {
                throw new IllegalArgumentException((new StringBuilder("channel ")).append(s3).toString());
            }
            l = i2;
            if (l < 0)
                throw new IllegalArgumentException((new StringBuilder("channel ")).append(s3).toString());
        } else
        {
            l = 0;
        }
        if (!flag2) goto _L20; else goto _L19
_L19:
        if (flag6) goto _L22; else goto _L21
_L21:
        if (!flag3) goto _L24; else goto _L23
_L23:
        validateL2CAPPSM(l, s3);
_L30:
        bluetoothconnectionparams = new BluetoothConnectionParams(RemoteDeviceHelper.getAddress(s2), l, paramBoolean(hashtable, "authenticate"), paramBoolean(hashtable, "encrypt"));
_L31:
        bluetoothconnectionparams.timeouts = flag;
        if (!bluetoothconnectionparams.encrypt || bluetoothconnectionparams.authenticate) goto _L26; else goto _L25
_L25:
        if (hashtable.get("authenticate") != null) goto _L28; else goto _L27
_L27:
        bluetoothconnectionparams.authenticate = true;
_L26:
        bluetoothconnectionparams.timeout = BlueCoveImpl.getConfigProperty("bluecove.connect.timeout", 0x1d4c0);
        bluetoothconnectionnotifierparams = null;
        continue; /* Loop/switch isn't completed */
_L24:
        if (l >= 1 && l <= 30) goto _L30; else goto _L29
_L29:
        throw new IllegalArgumentException((new StringBuilder("RFCOMM channel ")).append(s3).toString());
_L22:
        Class class1 = Class.forName("com.intel.bluetooth.AndroidBluetoothConnectionParams");
        Class aclass[] = new Class[3];
        aclass[0] = Long.TYPE;
        aclass[1] = Boolean.TYPE;
        aclass[2] = Boolean.TYPE;
        Constructor constructor = class1.getConstructor(aclass);
        Object aobj[] = new Object[3];
        aobj[0] = Long.valueOf(RemoteDeviceHelper.getAddress(s2));
        aobj[1] = Boolean.valueOf(paramBoolean(hashtable, "authenticate"));
        aobj[2] = Boolean.valueOf(paramBoolean(hashtable, "encrypt"));
        bluetoothconnectionparams = (BluetoothConnectionParams)constructor.newInstance(aobj);
        bluetoothconnectionparams.getClass().getMethod("setServiceUUID", new Class[] {
            java/lang/String
        }).invoke(bluetoothconnectionparams, new Object[] {
            s3
        });
          goto _L31
        Exception exception;
        exception;
_L32:
        throw new BluetoothConnectionException(4, exception.toString());
_L28:
        throw new BluetoothConnectionException(6, "encryption requires authentication");
_L18:
        OBEXConnectionParams obexconnectionparams;
label0:
        {
            if (!s1.equals("tcpobex"))
            {
                boolean flag7 = s1.equals("btgoep");
                obexconnectionparams = null;
                if (!flag7)
                    break label0;
            }
            obexconnectionparams = new OBEXConnectionParams();
            obexconnectionparams.timeouts = flag;
            int i1 = BlueCoveImpl.getConfigProperty("bluecove.obex.timeout", 0x1d4c0);
            obexconnectionparams.timeout = i1;
            int j1 = BlueCoveImpl.getConfigProperty("bluecove.obex.mtu", 1024);
            obexconnectionparams.mtu = j1;
        }
        if (s1.equals("btspp"))
            if (flag5)
                return new BluetoothRFCommConnectionNotifier(bluetoothstack, bluetoothconnectionnotifierparams);
            else
                return new BluetoothRFCommClientConnection(bluetoothstack, bluetoothconnectionparams);
        if (s1.equals("btgoep"))
            if (flag5)
            {
                bluetoothconnectionnotifierparams.obex = true;
                return new OBEXSessionNotifierImpl(new BluetoothRFCommConnectionNotifier(bluetoothstack, bluetoothconnectionnotifierparams), obexconnectionparams);
            } else
            {
                return new OBEXClientSessionImpl(new BluetoothRFCommClientConnection(bluetoothstack, bluetoothconnectionparams), obexconnectionparams);
            }
        if (s1.equals("btl2cap"))
            if (flag5)
                return new BluetoothL2CAPConnectionNotifier(bluetoothstack, bluetoothconnectionnotifierparams, paramL2CAPMTU(hashtable, "receivemtu"), paramL2CAPMTU(hashtable, "transmitmtu"));
            else
                return new BluetoothL2CAPClientConnection(bluetoothstack, bluetoothconnectionparams, paramL2CAPMTU(hashtable, "receivemtu"), paramL2CAPMTU(hashtable, "transmitmtu"));
        if (s1.equals("tcpobex"))
            if (flag5)
            {
                int l1;
                try
                {
                    l1 = Integer.parseInt(s3);
                }
                catch (NumberFormatException numberformatexception1)
                {
                    throw new IllegalArgumentException((new StringBuilder("port ")).append(s3).toString());
                }
                return new OBEXSessionNotifierImpl(new ServerSocketConnection(l1), obexconnectionparams);
            } else
            {
                return new OBEXClientSessionImpl(new SocketConnection(s2, l), obexconnectionparams);
            }
        if (s1.equals("socket"))
        {
            if (flag5)
            {
                int k1;
                try
                {
                    k1 = Integer.parseInt(s3);
                }
                catch (NumberFormatException numberformatexception)
                {
                    throw new IllegalArgumentException((new StringBuilder("port ")).append(s3).toString());
                }
                return new ServerSocketConnection(k1);
            } else
            {
                return new SocketConnection(s2, l);
            }
        } else
        {
            throw new ConnectionNotFoundException((new StringBuilder("scheme [")).append(s1).append("]").toString());
        }
        exception;
        if (true) goto _L32; else goto _L20
_L20:
        bluetoothconnectionnotifierparams = null;
        bluetoothconnectionparams = null;
        continue; /* Loop/switch isn't completed */
_L9:
        bluetoothconnectionparams = null;
        l = 0;
        if (true) goto _L18; else goto _L33
_L33:
        if (true) goto _L35; else goto _L34
_L34:
    }

    public static InputStream openInputStream(String s)
        throws IOException
    {
        InputConnection inputconnection = (InputConnection)openImpl(s, 1, false, false);
        InputStream inputstream = inputconnection.openInputStream();
        inputconnection.close();
        return inputstream;
        Exception exception;
        exception;
        inputconnection.close();
        throw exception;
    }

    public static OutputStream openOutputStream(String s)
        throws IOException
    {
        OutputConnection outputconnection = (OutputConnection)openImpl(s, 2, false, false);
        OutputStream outputstream = outputconnection.openOutputStream();
        outputconnection.close();
        return outputstream;
        Exception exception;
        exception;
        outputconnection.close();
        throw exception;
    }

    private static boolean paramBoolean(Hashtable hashtable, String s)
    {
        String s1 = (String)hashtable.get(s);
        if (s1 != null)
        {
            if ("true".equals(s1))
                return true;
            if (!"false".equals(s1))
                throw new IllegalArgumentException((new StringBuilder("invalid param value ")).append(s).append("=").append(s1).toString());
        }
        return false;
    }

    private static int paramL2CAPMTU(Hashtable hashtable, String s)
    {
        String s1 = (String)hashtable.get(s);
        if (s1 != null) goto _L2; else goto _L1
_L1:
        if (!s.equals("transmitmtu")) goto _L4; else goto _L3
_L3:
        int i = -1;
_L6:
        return i;
_L4:
        return 672;
_L2:
        boolean flag;
        try
        {
            i = Integer.parseInt(s1);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new IllegalArgumentException((new StringBuilder("invalid MTU value ")).append(s1).toString());
        }
        if (i >= 48) goto _L6; else goto _L5
_L5:
        if (i <= 0 || i >= 48)
            break MISSING_BLOCK_LABEL_99;
        flag = s.equals("transmitmtu");
        if (flag)
            return 48;
        throw new IllegalArgumentException((new StringBuilder("invalid MTU param value ")).append(s).append("=").append(s1).toString());
    }

    static String validParamName(Hashtable hashtable, String s)
    {
        String s1 = (String)hashtable.get(s.toLowerCase());
        if (s1 != null)
            return s1;
        if ("android".equals(s))
            return "android";
        else
            return null;
    }

    private static void validateBluetoothServiceName(String s)
    {
        if (s.length() == 0)
            throw new IllegalArgumentException("zero length service name");
        int i = 0;
        do
        {
            if (i >= s.length())
                return;
            char c = s.charAt(i);
            if ((c < 'A' || c > 'Z') && (c < 'a' || c > 'z') && (c < '0' || c > '9') && " -_".indexOf(c) == -1)
                throw new IllegalArgumentException((new StringBuilder("Illegal character '")).append(c).append("' in service name").toString());
            i++;
        } while (true);
    }

    private static void validateL2CAPPSM(int i, String s)
        throws IllegalArgumentException
    {
        if (i >= 5 && i <= 65535)
        {
            if (i < 4097 && !BlueCoveImpl.getConfigProperty("bluecove.jsr82.psm_minimum_off", false))
                throw new IllegalArgumentException((new StringBuilder("PCM ")).append(s).append(", PCM values restricted by JSR-82 to minimum ").append(4097).append(", see BlueCoveConfigProperties.PROPERTY_JSR_82_PSM_MINIMUM_OFF").toString());
            if ((i & 0x100) != 0)
                throw new IllegalArgumentException((new StringBuilder("9th bit set in PCM ")).append(s).toString());
            if ((byte)(i & 0xff) % 2 == 0)
                throw new IllegalArgumentException((new StringBuilder("PSM value ")).append(s).append(" least significant byte must be odd").toString());
            if ((byte)((0xff00 & i) >> 8) % 2 == 1)
                throw new IllegalArgumentException((new StringBuilder("PSM value ")).append(s).append(" most significant byte must be even").toString());
            else
                return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("PCM ")).append(s).toString());
        }
    }

    static 
    {
        suportScheme = new Hashtable();
        srvParams = new Hashtable();
        cliParams = new Hashtable();
        cliParamsL2CAP = new Hashtable();
        srvParamsL2CAP = new Hashtable();
        cliParams.put("authenticate", "authenticate");
        cliParams.put("encrypt", "encrypt");
        cliParams.put("master", "master");
        copyAll(srvParams, cliParams);
        srvParams.put("authorize", "authorize");
        srvParams.put("name", "name");
        copyAll(cliParamsL2CAP, cliParams);
        cliParamsL2CAP.put("receivemtu", "receivemtu");
        cliParamsL2CAP.put("transmitmtu", "transmitmtu");
        copyAll(srvParamsL2CAP, cliParamsL2CAP);
        srvParamsL2CAP.put("authorize", "authorize");
        srvParamsL2CAP.put("name", "name");
        srvParamsL2CAP.put("bluecovepsm", "bluecovepsm");
        suportScheme.put("btspp", Boolean.TRUE);
        suportScheme.put("btgoep", Boolean.TRUE);
        suportScheme.put("tcpobex", Boolean.TRUE);
        suportScheme.put("btl2cap", Boolean.TRUE);
        suportScheme.put("socket", Boolean.TRUE);
    }
}
