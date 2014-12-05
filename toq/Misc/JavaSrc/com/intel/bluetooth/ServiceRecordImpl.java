// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.*;
import java.util.Enumeration;
import java.util.Hashtable;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothConsts, BlueCoveImpl, DebugLog, SDPInputStream, 
//            BluetoothStack, NotSupportedRuntimeException, SDPOutputStream

class ServiceRecordImpl
    implements ServiceRecord
{

    protected boolean attributeUpdated;
    Hashtable attributes;
    private BluetoothStack bluetoothStack;
    private RemoteDevice device;
    int deviceServiceClasses;
    int deviceServiceClassesRegistered;
    private long handle;

    ServiceRecordImpl(BluetoothStack bluetoothstack, RemoteDevice remotedevice, long l)
    {
        bluetoothStack = bluetoothstack;
        device = remotedevice;
        handle = l;
        deviceServiceClassesRegistered = 0;
        attributes = new Hashtable();
    }

    DataElement clone(DataElement dataelement)
    {
        int i = dataelement.getDataType();
        DataElement dataelement1 = null;
        switch (i)
        {
        case 48: // '0'
        case 56: // '8'
            dataelement1 = new DataElement(dataelement.getDataType());
            for (Enumeration enumeration = (Enumeration)dataelement.getValue(); enumeration.hasMoreElements(); dataelement1.addElement(clone((DataElement)enumeration.nextElement())));
            // fall through

        default:
            return dataelement1;

        case 40: // '('
            return new DataElement(dataelement.getBoolean());

        case 0: // '\0'
            return new DataElement(dataelement.getDataType());

        case 12: // '\f'
        case 19: // '\023'
        case 20: // '\024'
        case 24: // '\030'
        case 32: // ' '
        case 64: // '@'
            return new DataElement(dataelement.getDataType(), dataelement.getValue());

        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 16: // '\020'
        case 17: // '\021'
        case 18: // '\022'
            return new DataElement(dataelement.getDataType(), dataelement.getLong());
        }
    }

    public int[] getAttributeIDs()
    {
        int ai[] = new int[attributes.size()];
        int i = 0;
        Enumeration enumeration = attributes.keys();
        do
        {
            if (!enumeration.hasMoreElements())
                return ai;
            int j = i + 1;
            ai[i] = ((Integer)enumeration.nextElement()).intValue();
            i = j;
        } while (true);
    }

    public DataElement getAttributeValue(int i)
    {
        if (i >= 0 && i <= 65535)
            return (DataElement)attributes.get(new Integer(i));
        else
            throw new IllegalArgumentException();
    }

    int getChannel(UUID uuid)
    {
        int i;
        DataElement dataelement;
        i = -1;
        dataelement = getAttributeValue(4);
        if (dataelement == null || dataelement.getDataType() != 48) goto _L2; else goto _L1
_L1:
        Enumeration enumeration = (Enumeration)dataelement.getValue();
_L4:
        Enumeration enumeration1;
        Object obj;
        do
        {
            DataElement dataelement2;
            do
            {
                do
                {
                    DataElement dataelement1;
                    do
                    {
                        if (!enumeration.hasMoreElements())
                            return i;
                        dataelement1 = (DataElement)enumeration.nextElement();
                    } while (dataelement1.getDataType() != 48);
                    enumeration1 = (Enumeration)dataelement1.getValue();
                } while (!enumeration1.hasMoreElements());
                dataelement2 = (DataElement)enumeration1.nextElement();
            } while (dataelement2.getDataType() != 24);
            obj = dataelement2.getValue();
        } while (!enumeration1.hasMoreElements() || !uuid.equals(obj));
        DataElement dataelement3 = (DataElement)enumeration1.nextElement();
        switch (dataelement3.getDataType())
        {
        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 16: // '\020'
        case 17: // '\021'
        case 18: // '\022'
        case 19: // '\023'
            i = (int)dataelement3.getLong();
            break;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        return -1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String getConnectionURL(int i, boolean flag)
    {
        int j;
        StringBuffer stringbuffer;
        int k;
        Object obj1;
        j = -1;
        DataElement dataelement = getAttributeValue(4);
        if (dataelement == null || dataelement.getDataType() != 48)
            return null;
        boolean flag1 = false;
        boolean flag2 = false;
        boolean flag3 = false;
        Enumeration enumeration = (Enumeration)dataelement.getValue();
        do
        {
            if (!enumeration.hasMoreElements())
            {
                if (j == -1)
                    return null;
                break;
            }
            DataElement dataelement1 = (DataElement)enumeration.nextElement();
            if (dataelement1.getDataType() == 48)
            {
                Enumeration enumeration1 = (Enumeration)dataelement1.getValue();
                if (enumeration1.hasMoreElements())
                {
                    DataElement dataelement2 = (DataElement)enumeration1.nextElement();
                    if (dataelement2.getDataType() == 24)
                    {
                        Object obj = dataelement2.getValue();
                        if (BluetoothConsts.OBEX_PROTOCOL_UUID.equals(obj))
                        {
                            flag3 = true;
                            flag1 = false;
                            flag2 = false;
                        } else
                        if (enumeration1.hasMoreElements() && BluetoothConsts.RFCOMM_PROTOCOL_UUID.equals(obj))
                        {
                            DataElement dataelement4 = (DataElement)enumeration1.nextElement();
                            switch (dataelement4.getDataType())
                            {
                            case 8: // '\b'
                            case 9: // '\t'
                            case 10: // '\n'
                            case 16: // '\020'
                            case 17: // '\021'
                            case 18: // '\022'
                            case 19: // '\023'
                                long l1 = dataelement4.getLong();
                                if (l1 >= 1L && l1 <= 30L)
                                {
                                    j = (int)l1;
                                    flag2 = true;
                                    flag1 = false;
                                }
                                break;
                            }
                        } else
                        if (enumeration1.hasMoreElements() && BluetoothConsts.L2CAP_PROTOCOL_UUID.equals(obj))
                        {
                            DataElement dataelement3 = (DataElement)enumeration1.nextElement();
                            switch (dataelement3.getDataType())
                            {
                            case 8: // '\b'
                            case 9: // '\t'
                            case 10: // '\n'
                            case 16: // '\020'
                            case 17: // '\021'
                            case 18: // '\022'
                            case 19: // '\023'
                                long l = dataelement3.getLong();
                                if (l >= 5L && l <= 65535L)
                                {
                                    j = (int)l;
                                    flag1 = true;
                                }
                                break;
                            }
                        }
                    }
                }
            }
        } while (true);
        stringbuffer = new StringBuffer();
        String s;
        if (flag3)
            stringbuffer.append("btgoep");
        else
        if (flag2)
            stringbuffer.append("btspp");
        else
        if (flag1)
            stringbuffer.append("btl2cap");
        else
            return null;
        stringbuffer.append("://");
        if (device != null) goto _L2; else goto _L1
_L1:
        obj1 = BlueCoveImpl.getCurrentThreadBluetoothStackID();
        BlueCoveImpl.setThreadBluetoothStack(bluetoothStack);
        stringbuffer.append(LocalDevice.getLocalDevice().getBluetoothAddress());
        Exception exception;
        if (obj1 != null)
            try
            {
                BlueCoveImpl.setThreadBluetoothStackID(obj1);
            }
            catch (BluetoothStateException bluetoothstateexception)
            {
                DebugLog.error("can't read LocalAddress", bluetoothstateexception);
                stringbuffer.append("localhost");
            }
_L13:
        stringbuffer.append(":");
        if (!flag1) goto _L4; else goto _L3
_L3:
        s = Integer.toHexString(j);
        k = s.length();
_L14:
        if (k < 4) goto _L6; else goto _L5
_L5:
        stringbuffer.append(s);
_L15:
        i;
        JVM INSTR tableswitch 0 2: default 572
    //                   0 689
    //                   1 715
    //                   2 726;
           goto _L7 _L8 _L9 _L10
_L7:
        throw new IllegalArgumentException();
        exception;
        if (obj1 == null) goto _L12; else goto _L11
_L11:
        BlueCoveImpl.setThreadBluetoothStackID(obj1);
_L12:
        throw exception;
_L2:
        stringbuffer.append(getHostDevice().getBluetoothAddress());
          goto _L13
_L6:
        stringbuffer.append('0');
        k++;
          goto _L14
_L4:
        stringbuffer.append(j);
          goto _L15
_L8:
        stringbuffer.append(";authenticate=false;encrypt=false");
_L16:
        if (flag)
            stringbuffer.append(";master=true");
        else
            stringbuffer.append(";master=false");
        return stringbuffer.toString();
_L9:
        stringbuffer.append(";authenticate=true;encrypt=false");
          goto _L16
_L10:
        stringbuffer.append(";authenticate=true;encrypt=true");
          goto _L16
    }

    long getHandle()
    {
        return handle;
    }

    public RemoteDevice getHostDevice()
    {
        return device;
    }

    boolean hasProtocolClassUUID(UUID uuid)
    {
label0:
        {
            DataElement dataelement = getAttributeValue(4);
            if (dataelement == null || dataelement.getDataType() != 48)
                break label0;
            Enumeration enumeration = (Enumeration)dataelement.getValue();
            DataElement dataelement2;
            do
            {
                Enumeration enumeration1;
                do
                {
                    DataElement dataelement1;
                    do
                    {
                        if (!enumeration.hasMoreElements())
                            break label0;
                        dataelement1 = (DataElement)enumeration.nextElement();
                    } while (dataelement1.getDataType() != 48);
                    enumeration1 = (Enumeration)dataelement1.getValue();
                } while (!enumeration1.hasMoreElements());
                dataelement2 = (DataElement)enumeration1.nextElement();
            } while (dataelement2.getDataType() != 24 || !uuid.equals(dataelement2.getValue()));
            return true;
        }
        return false;
    }

    boolean hasServiceClassUUID(UUID uuid)
    {
        DataElement dataelement = getAttributeValue(1);
        if (dataelement != null && dataelement.getDataType() == 48 && dataelement.getSize() != 0)
        {
            Object obj = dataelement.getValue();
            if (obj != null && (obj instanceof Enumeration))
            {
                Enumeration enumeration = (Enumeration)obj;
                DataElement dataelement1;
                do
                {
                    Object obj1;
                    do
                    {
                        if (!enumeration.hasMoreElements())
                            return false;
                        obj1 = enumeration.nextElement();
                        if (obj1 instanceof DataElement)
                            break;
                        DebugLog.debug((new StringBuilder("Bogus element in DATSEQ, ")).append(obj.getClass().getName()).toString());
                    } while (true);
                    dataelement1 = (DataElement)obj1;
                } while (dataelement1.getDataType() != 24 || !uuid.equals(dataelement1.getValue()));
                return true;
            }
            DebugLog.debug("Bogus Value in DATSEQ");
            if (obj != null)
                DebugLog.error((new StringBuilder("DATSEQ class ")).append(obj.getClass().getName()).toString());
            return false;
        } else
        {
            return false;
        }
    }

    void loadByteArray(byte abyte0[])
        throws IOException
    {
        DataElement dataelement = (new SDPInputStream(new ByteArrayInputStream(abyte0))).readElement();
        if (dataelement.getDataType() != 48)
            throw new IOException((new StringBuilder("DATSEQ expected instead of ")).append(dataelement.getDataType()).toString());
        Enumeration enumeration = (Enumeration)dataelement.getValue();
        do
        {
            if (!enumeration.hasMoreElements())
                return;
            DataElement dataelement1 = (DataElement)enumeration.nextElement();
            if (dataelement1.getDataType() != 9)
                throw new IOException((new StringBuilder("U_INT_2 expected instead of ")).append(dataelement1.getDataType()).toString());
            DataElement dataelement2 = (DataElement)enumeration.nextElement();
            populateAttributeValue((int)dataelement1.getLong(), dataelement2);
        } while (true);
    }

    void populateAttributeValue(int i, DataElement dataelement)
    {
        if (i >= 0 && i <= 65535)
        {
            if (dataelement == null)
            {
                attributes.remove(new Integer(i));
                return;
            } else
            {
                attributes.put(new Integer(i), dataelement);
                return;
            }
        } else
        {
            throw new IllegalArgumentException();
        }
    }

    void populateL2CAPAttributes(int i, int j, UUID uuid, String s)
    {
        populateAttributeValue(0, new DataElement(10, i));
        DataElement dataelement = new DataElement(48);
        dataelement.addElement(new DataElement(24, uuid));
        populateAttributeValue(1, dataelement);
        DataElement dataelement1 = new DataElement(48);
        DataElement dataelement2 = new DataElement(48);
        dataelement2.addElement(new DataElement(24, BluetoothConsts.L2CAP_PROTOCOL_UUID));
        dataelement2.addElement(new DataElement(9, j));
        dataelement1.addElement(dataelement2);
        populateAttributeValue(4, dataelement1);
        if (s != null)
            populateAttributeValue(256, new DataElement(32, s));
    }

    void populateRFCOMMAttributes(long l, int i, UUID uuid, String s, boolean flag)
    {
        populateAttributeValue(0, new DataElement(10, l));
        DataElement dataelement = new DataElement(48);
        dataelement.addElement(new DataElement(24, uuid));
        if (!flag)
            dataelement.addElement(new DataElement(24, BluetoothConsts.SERIAL_PORT_UUID));
        populateAttributeValue(1, dataelement);
        DataElement dataelement1 = new DataElement(48);
        DataElement dataelement2 = new DataElement(48);
        dataelement2.addElement(new DataElement(24, BluetoothConsts.L2CAP_PROTOCOL_UUID));
        dataelement1.addElement(dataelement2);
        DataElement dataelement3 = new DataElement(48);
        dataelement3.addElement(new DataElement(24, BluetoothConsts.RFCOMM_PROTOCOL_UUID));
        dataelement3.addElement(new DataElement(8, i));
        dataelement1.addElement(dataelement3);
        if (flag)
        {
            DataElement dataelement4 = new DataElement(48);
            dataelement4.addElement(new DataElement(24, BluetoothConsts.OBEX_PROTOCOL_UUID));
            dataelement1.addElement(dataelement4);
        }
        populateAttributeValue(4, dataelement1);
        if (s != null)
            populateAttributeValue(256, new DataElement(32, s));
    }

    public boolean populateRecord(int ai[])
        throws IOException
    {
        if (device == null)
            throw new RuntimeException("This is local device service record");
        if (ai == null)
            throw new NullPointerException("attrIDs is null");
        if (ai.length == 0)
            throw new IllegalArgumentException();
        int i = 0;
        do
        {
label0:
            {
                if (i < ai.length)
                    break label0;
                int ai1[] = new int[ai.length];
                System.arraycopy(ai, 0, ai1, 0, ai.length);
                int j = 0;
                do
                {
                    if (j >= ai1.length)
                    {
                        int i1 = 0;
                        do
                        {
                            if (i1 >= -1 + ai1.length)
                            {
                                DebugLog.debug0x("srvRec query for attr", ai1[-1 + ai1.length]);
                                return bluetoothStack.populateServicesRecordAttributeValues(this, ai1);
                            }
                            if (ai1[i1] == ai1[i1 + 1])
                                throw new IllegalArgumentException();
                            DebugLog.debug0x("srvRec query for attr", ai1[i1]);
                            i1++;
                        } while (true);
                    }
                    int k = 0;
                    do
                    {
label1:
                        {
                            if (k < -1 + (ai1.length - j))
                                break label1;
                            j++;
                        }
                        if (true)
                            break;
                        if (ai1[k] > ai1[k + 1])
                        {
                            int l = ai1[k];
                            ai1[k] = ai1[k + 1];
                            ai1[k + 1] = l;
                        }
                        k++;
                    } while (true);
                } while (true);
            }
            if (ai[i] >= 0 && ai[i] <= 65535)
                i++;
            else
                throw new IllegalArgumentException();
        } while (true);
    }

    public boolean setAttributeValue(int i, DataElement dataelement)
    {
        if (device != null)
            throw new IllegalArgumentException();
        if (i >= 0 && i <= 65535)
        {
            if (i == 0)
                throw new IllegalArgumentException();
            attributeUpdated = true;
            if (dataelement == null)
            {
                return attributes.remove(new Integer(i)) != null;
            } else
            {
                attributes.put(new Integer(i), dataelement);
                return true;
            }
        } else
        {
            throw new IllegalArgumentException();
        }
    }

    public void setDeviceServiceClasses(int i)
    {
        if (device != null)
            throw new RuntimeException("Service record obtained from a remote device");
        if ((0xff002003 & i) != 0)
            throw new IllegalArgumentException();
        if ((i & 0x1ffc) != 0)
            throw new IllegalArgumentException();
        if ((4 & bluetoothStack.getFeatureSet()) == 0)
        {
            throw new NotSupportedRuntimeException(bluetoothStack.getStackID());
        } else
        {
            deviceServiceClasses = i;
            return;
        }
    }

    void setHandle(long l)
    {
        handle = l;
    }

    byte[] toByteArray()
        throws IOException
    {
        DataElement dataelement = new DataElement(48);
        int ai[] = new int[attributes.size()];
        int i = 0;
        Enumeration enumeration = attributes.keys();
        do
        {
label0:
            {
                if (enumeration.hasMoreElements())
                    break label0;
                int j = 0;
                do
                {
                    if (j >= ai.length)
                    {
                        int i1 = 0;
                        do
                        {
                            if (i1 >= ai.length)
                            {
                                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                                (new SDPOutputStream(bytearrayoutputstream)).writeElement(dataelement);
                                return bytearrayoutputstream.toByteArray();
                            }
                            int j1 = ai[i1];
                            dataelement.addElement(new DataElement(9, j1));
                            dataelement.addElement(getAttributeValue(j1));
                            i1++;
                        } while (true);
                    }
                    int k = 0;
                    do
                    {
label1:
                        {
                            if (k < -1 + (ai.length - j))
                                break label1;
                            j++;
                        }
                        if (true)
                            break;
                        if (ai[k] > ai[k + 1])
                        {
                            int l = ai[k];
                            ai[k] = ai[k + 1];
                            ai[k + 1] = l;
                        }
                        k++;
                    } while (true);
                } while (true);
            }
            ai[i] = ((Integer)enumeration.nextElement()).intValue();
            i++;
        } while (true);
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer("{\n");
        Enumeration enumeration = attributes.keys();
        do
        {
            if (!enumeration.hasMoreElements())
            {
                stringbuffer.append("}");
                return stringbuffer.toString();
            }
            Integer integer = (Integer)enumeration.nextElement();
            stringbuffer.append("0x");
            stringbuffer.append(Integer.toHexString(integer.intValue()));
            stringbuffer.append(":\n\t");
            stringbuffer.append((DataElement)attributes.get(integer));
            stringbuffer.append("\n");
        } while (true);
    }
}
