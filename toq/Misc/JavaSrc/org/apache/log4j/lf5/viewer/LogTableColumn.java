// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.io.Serializable;
import java.util.*;

// Referenced classes of package org.apache.log4j.lf5.viewer:
//            LogTableColumnFormatException

public class LogTableColumn
    implements Serializable
{

    public static final LogTableColumn CATEGORY;
    public static final LogTableColumn DATE;
    public static final LogTableColumn LEVEL;
    public static final LogTableColumn LOCATION;
    public static final LogTableColumn MESSAGE;
    public static final LogTableColumn MESSAGE_NUM;
    public static final LogTableColumn NDC;
    public static final LogTableColumn THREAD;
    public static final LogTableColumn THROWN;
    private static LogTableColumn _log4JColumns[];
    private static Map _logTableColumnMap;
    private static final long serialVersionUID = 0xc4a9354ff856ae1dL;
    protected String _label;

    public LogTableColumn(String s)
    {
        _label = s;
    }

    public static LogTableColumn[] getLogTableColumnArray()
    {
        return _log4JColumns;
    }

    public static List getLogTableColumns()
    {
        return Arrays.asList(_log4JColumns);
    }

    public static LogTableColumn valueOf(String s)
        throws LogTableColumnFormatException
    {
        LogTableColumn logtablecolumn = null;
        if (s != null)
        {
            s = s.trim();
            logtablecolumn = (LogTableColumn)_logTableColumnMap.get(s);
        }
        if (logtablecolumn == null)
        {
            StringBuffer stringbuffer = new StringBuffer();
            stringbuffer.append("Error while trying to parse (" + s + ") into");
            stringbuffer.append(" a LogTableColumn.");
            throw new LogTableColumnFormatException(stringbuffer.toString());
        } else
        {
            return logtablecolumn;
        }
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof LogTableColumn;
        boolean flag1 = false;
        if (flag)
        {
            String s = getLabel();
            String s1 = ((LogTableColumn)obj).getLabel();
            flag1 = false;
            if (s == s1)
                flag1 = true;
        }
        return flag1;
    }

    public String getLabel()
    {
        return _label;
    }

    public int hashCode()
    {
        return _label.hashCode();
    }

    public String toString()
    {
        return _label;
    }

    static 
    {
        DATE = new LogTableColumn("Date");
        THREAD = new LogTableColumn("Thread");
        MESSAGE_NUM = new LogTableColumn("Message #");
        LEVEL = new LogTableColumn("Level");
        NDC = new LogTableColumn("NDC");
        CATEGORY = new LogTableColumn("Category");
        MESSAGE = new LogTableColumn("Message");
        LOCATION = new LogTableColumn("Location");
        THROWN = new LogTableColumn("Thrown");
        LogTableColumn alogtablecolumn[] = new LogTableColumn[9];
        alogtablecolumn[0] = DATE;
        alogtablecolumn[1] = THREAD;
        alogtablecolumn[2] = MESSAGE_NUM;
        alogtablecolumn[3] = LEVEL;
        alogtablecolumn[4] = NDC;
        alogtablecolumn[5] = CATEGORY;
        alogtablecolumn[6] = MESSAGE;
        alogtablecolumn[7] = LOCATION;
        alogtablecolumn[8] = THROWN;
        _log4JColumns = alogtablecolumn;
        _logTableColumnMap = new HashMap();
        for (int i = 0; i < _log4JColumns.length; i++)
            _logTableColumnMap.put(_log4JColumns[i].getLabel(), _log4JColumns[i]);

    }
}
