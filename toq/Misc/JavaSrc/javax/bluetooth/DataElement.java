// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;

import com.intel.bluetooth.Utils;
import java.util.Enumeration;
import java.util.Vector;

// Referenced classes of package javax.bluetooth:
//            UUID

public class DataElement
{

    public static final int BOOL = 40;
    public static final int DATALT = 56;
    public static final int DATSEQ = 48;
    public static final int INT_1 = 16;
    public static final int INT_16 = 20;
    public static final int INT_2 = 17;
    public static final int INT_4 = 18;
    public static final int INT_8 = 19;
    public static final int NULL = 0;
    public static final int STRING = 32;
    public static final int URL = 64;
    public static final int UUID = 24;
    public static final int U_INT_1 = 8;
    public static final int U_INT_16 = 12;
    public static final int U_INT_2 = 9;
    public static final int U_INT_4 = 10;
    public static final int U_INT_8 = 11;
    private Object value;
    private int valueType;

    public DataElement(int i)
    {
label0:
        {
            super();
            switch (i)
            {
            default:
                break label0;

            case 48: // '0'
            case 56: // '8'
                value = new Vector();
                break;

            case 0: // '\0'
                value = null;
                break;
            }
            valueType = i;
            return;
        }
        throw new IllegalArgumentException((new StringBuilder("valueType ")).append(typeToString(i)).append(" is not DATSEQ, DATALT or NULL").toString());
    }

    public DataElement(int i, long l)
    {
label0:
        {
label1:
            {
                super();
                switch (i)
                {
                case 11: // '\013'
                case 12: // '\f'
                case 13: // '\r'
                case 14: // '\016'
                case 15: // '\017'
                default:
                    break label0;

                case 18: // '\022'
                    if (l < 0xffffffff80000000L || l > 0x7fffffffL)
                        throw new IllegalArgumentException((new StringBuilder(String.valueOf(l))).append(" not INT_4").toString());
                    break;

                case 19: // '\023'
                    break;

                case 17: // '\021'
                    if (l < -32768L || l > 32767L)
                        throw new IllegalArgumentException((new StringBuilder(String.valueOf(l))).append(" not INT_2").toString());
                    break;

                case 16: // '\020'
                    if (l < -128L || l > 127L)
                        throw new IllegalArgumentException((new StringBuilder(String.valueOf(l))).append(" not INT_1").toString());
                    break;

                case 10: // '\n'
                    if (l < 0L || l > 0xffffffffL)
                        throw new IllegalArgumentException((new StringBuilder(String.valueOf(l))).append(" not U_INT_4").toString());
                    break;

                case 9: // '\t'
                    if (l < 0L || l > 65535L)
                        throw new IllegalArgumentException((new StringBuilder(String.valueOf(l))).append(" not U_INT_2").toString());
                    break;

                case 8: // '\b'
                    if (l < 0L || l > 255L)
                        break label1;
                    break;
                }
                value = new Long(l);
                valueType = i;
                return;
            }
            throw new IllegalArgumentException((new StringBuilder(String.valueOf(l))).append(" not U_INT_1").toString());
        }
        throw new IllegalArgumentException((new StringBuilder("type ")).append(typeToString(i)).append(" can't be represented long").toString());
    }

    public DataElement(int i, Object obj)
    {
label0:
        {
            super();
            if (obj == null)
                throw new IllegalArgumentException("value param is null");
            switch (i)
            {
            default:
                break label0;

            case 12: // '\f'
            case 20: // '\024'
                if (!(obj instanceof byte[]) || ((byte[])obj).length != 16)
                    throw new IllegalArgumentException("value param should be byte[16]");
                break;

            case 11: // '\013'
                if (!(obj instanceof byte[]) || ((byte[])obj).length != 8)
                    throw new IllegalArgumentException("value param should be byte[8]");
                break;

            case 24: // '\030'
                if (!(obj instanceof UUID))
                    throw new IllegalArgumentException("value param should be UUID");
                break;

            case 32: // ' '
            case 64: // '@'
                if (!(obj instanceof String))
                    throw new IllegalArgumentException("value param should be String");
                break;
            }
            value = obj;
            valueType = i;
            return;
        }
        throw new IllegalArgumentException((new StringBuilder("type ")).append(typeToString(i)).append(" can't be represented by Object").toString());
    }

    public DataElement(boolean flag)
    {
        Boolean boolean1;
        if (flag)
            boolean1 = Boolean.TRUE;
        else
            boolean1 = Boolean.FALSE;
        value = boolean1;
        valueType = 40;
    }

    private static String typeToString(int i)
    {
        switch (i)
        {
        case 56: // '8'
            return "DATALT";

        case 40: // '('
            return "BOOL";

        case 48: // '0'
            return "DATSEQ";

        case 24: // '\030'
            return "UUID";

        case 32: // ' '
            return "STRING";

        case 64: // '@'
            return "URL";

        case 20: // '\024'
            return "INT_16";

        case 19: // '\023'
            return "INT_8";

        case 18: // '\022'
            return "INT_4";

        case 17: // '\021'
            return "INT_2";

        case 16: // '\020'
            return "INT_1";

        case 12: // '\f'
            return "U_INT_16";

        case 11: // '\013'
            return "U_INT_8";

        case 10: // '\n'
            return "U_INT_4";

        case 9: // '\t'
            return "U_INT_2";

        case 8: // '\b'
            return "U_INT_1";

        case 0: // '\0'
            return "NULL";
        }
        return (new StringBuilder("Unknown")).append(i).toString();
    }

    public void addElement(DataElement dataelement)
    {
        if (dataelement == null)
            throw new NullPointerException("elem param is null");
        switch (valueType)
        {
        case 48: // '0'
        case 56: // '8'
            ((Vector)value).addElement(dataelement);
            return;
        }
        throw new ClassCastException("DataType is not DATSEQ or DATALT");
    }

    public boolean getBoolean()
    {
        if (valueType == 40)
            return ((Boolean)value).booleanValue();
        else
            throw new ClassCastException("DataType is not BOOL");
    }

    public int getDataType()
    {
        return valueType;
    }

    public long getLong()
    {
        switch (valueType)
        {
        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 16: // '\020'
        case 17: // '\021'
        case 18: // '\022'
        case 19: // '\023'
            return ((Long)value).longValue();

        case 11: // '\013'
        case 12: // '\f'
        case 13: // '\r'
        case 14: // '\016'
        case 15: // '\017'
        default:
            throw new ClassCastException("DataType is not INT");
        }
    }

    public int getSize()
    {
        switch (valueType)
        {
        case 48: // '0'
        case 56: // '8'
            return ((Vector)value).size();
        }
        throw new ClassCastException("DataType is not DATSEQ or DATALT");
    }

    public Object getValue()
    {
        switch (valueType)
        {
        case 48: // '0'
        case 56: // '8'
            return ((Vector)value).elements();

        case 11: // '\013'
        case 12: // '\f'
        case 20: // '\024'
            return Utils.clone((byte[])value);

        case 24: // '\030'
        case 32: // ' '
        case 64: // '@'
            return value;
        }
        throw new ClassCastException("DataType is simple java type");
    }

    public void insertElementAt(DataElement dataelement, int i)
    {
        if (dataelement == null)
            throw new NullPointerException("elem param is null");
        switch (valueType)
        {
        case 48: // '0'
        case 56: // '8'
            ((Vector)value).insertElementAt(dataelement, i);
            return;
        }
        throw new ClassCastException("DataType is not DATSEQ or DATALT");
    }

    public boolean removeElement(DataElement dataelement)
    {
        if (dataelement == null)
            throw new NullPointerException("elem param is null");
        switch (valueType)
        {
        case 48: // '0'
        case 56: // '8'
            return ((Vector)value).removeElement(dataelement);
        }
        throw new ClassCastException("DataType is not DATSEQ or DATALT");
    }

    public String toString()
    {
        switch (valueType)
        {
        case 56: // '8'
            StringBuffer stringbuffer2 = new StringBuffer("DATALT {\n");
            Enumeration enumeration1 = ((Vector)value).elements();
            do
            {
                if (!enumeration1.hasMoreElements())
                {
                    stringbuffer2.append("}");
                    return stringbuffer2.toString();
                }
                stringbuffer2.append(enumeration1.nextElement());
                stringbuffer2.append("\n");
            } while (true);

        case 48: // '0'
            StringBuffer stringbuffer1 = new StringBuffer("DATSEQ {\n");
            Enumeration enumeration = ((Vector)value).elements();
            do
            {
                if (!enumeration.hasMoreElements())
                {
                    stringbuffer1.append("}");
                    return stringbuffer1.toString();
                }
                stringbuffer1.append(enumeration.nextElement());
                stringbuffer1.append("\n");
            } while (true);

        case 11: // '\013'
        case 12: // '\f'
        case 20: // '\024'
            byte abyte0[] = (byte[])value;
            StringBuffer stringbuffer = new StringBuffer();
            stringbuffer.append(typeToString(valueType)).append(" ");
            int i = 0;
            do
            {
                if (i >= abyte0.length)
                    return stringbuffer.toString();
                stringbuffer.append(Integer.toHexString(0xf & abyte0[i] >> 4));
                stringbuffer.append(Integer.toHexString(0xf & abyte0[i]));
                i++;
            } while (true);

        case 24: // '\030'
        case 32: // ' '
        case 40: // '('
        case 64: // '@'
            return (new StringBuilder(String.valueOf(typeToString(valueType)))).append(" ").append(value.toString()).toString();

        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 16: // '\020'
        case 17: // '\021'
        case 18: // '\022'
        case 19: // '\023'
            return (new StringBuilder(String.valueOf(typeToString(valueType)))).append(" 0x").append(Utils.toHexString(((Long)value).longValue())).toString();
        }
        return (new StringBuilder("Unknown")).append(valueType).toString();
    }
}
