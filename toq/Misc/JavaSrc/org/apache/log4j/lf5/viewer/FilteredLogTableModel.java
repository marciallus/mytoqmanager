// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.util.*;
import javax.swing.table.AbstractTableModel;
import org.apache.log4j.lf5.*;

public class FilteredLogTableModel extends AbstractTableModel
{

    protected List _allRecords;
    protected String _colNames[] = {
        "Date", "Thread", "Message #", "Level", "NDC", "Category", "Message", "Location", "Thrown"
    };
    protected LogRecordFilter _filter;
    protected List _filteredRecords;
    protected int _maxNumberOfLogRecords;

    public FilteredLogTableModel()
    {
        _filter = new PassingLogRecordFilter();
        _allRecords = new ArrayList();
        _maxNumberOfLogRecords = 5000;
    }

    private int numberOfRecordsToTrim()
    {
        return _allRecords.size() - _maxNumberOfLogRecords;
    }

    public boolean addLogRecord(LogRecord logrecord)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        _allRecords.add(logrecord);
        flag = _filter.passes(logrecord);
        if (flag) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        getFilteredRecords().add(logrecord);
        fireTableRowsInserted(getRowCount(), getRowCount());
        trimRecords();
        flag1 = true;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        _allRecords.clear();
        _filteredRecords.clear();
        fireTableDataChanged();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected List createFilteredRecordsList()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = _allRecords.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            LogRecord logrecord = (LogRecord)iterator.next();
            if (_filter.passes(logrecord))
                arraylist.add(logrecord);
        } while (true);
        return arraylist;
    }

    public void fastRefresh()
    {
        this;
        JVM INSTR monitorenter ;
        _filteredRecords.remove(0);
        fireTableRowsDeleted(0, 0);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected Object getColumn(int i, LogRecord logrecord)
    {
        if (logrecord == null)
            return "NULL Column";
        String s = (new Date(logrecord.getMillis())).toString();
        switch (i)
        {
        case 8: // '\b'
            return logrecord.getThrownStackTrace();

        case 7: // '\007'
            return logrecord.getLocation();

        case 6: // '\006'
            return logrecord.getMessage();

        case 5: // '\005'
            return logrecord.getCategory();

        case 4: // '\004'
            return logrecord.getNDC();

        case 3: // '\003'
            return logrecord.getLevel();

        case 2: // '\002'
            return new Long(logrecord.getSequenceNumber());

        case 1: // '\001'
            return logrecord.getThreadDescription();

        case 0: // '\0'
            return s + " (" + logrecord.getMillis() + ")";
        }
        throw new IllegalArgumentException("The column number " + i + "must be between 0 and 8");
    }

    public int getColumnCount()
    {
        return _colNames.length;
    }

    public String getColumnName(int i)
    {
        return _colNames[i];
    }

    protected LogRecord getFilteredRecord(int i)
    {
        List list = getFilteredRecords();
        int j = list.size();
        if (i < j)
            return (LogRecord)list.get(i);
        else
            return (LogRecord)list.get(j - 1);
    }

    protected List getFilteredRecords()
    {
        if (_filteredRecords == null)
            refresh();
        return _filteredRecords;
    }

    public LogRecordFilter getLogRecordFilter()
    {
        return _filter;
    }

    public int getRowCount()
    {
        return getFilteredRecords().size();
    }

    public int getTotalRowCount()
    {
        return _allRecords.size();
    }

    public Object getValueAt(int i, int j)
    {
        return getColumn(j, getFilteredRecord(i));
    }

    protected boolean needsTrimming()
    {
        return _allRecords.size() > _maxNumberOfLogRecords;
    }

    public void refresh()
    {
        this;
        JVM INSTR monitorenter ;
        _filteredRecords = createFilteredRecordsList();
        fireTableDataChanged();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setLogRecordFilter(LogRecordFilter logrecordfilter)
    {
        _filter = logrecordfilter;
    }

    public void setMaxNumberOfLogRecords(int i)
    {
        if (i > 0)
            _maxNumberOfLogRecords = i;
    }

    protected void trimOldestRecords()
    {
        List list = _allRecords;
        list;
        JVM INSTR monitorenter ;
        int i = numberOfRecordsToTrim();
        if (i <= 1)
            break MISSING_BLOCK_LABEL_40;
        _allRecords.subList(0, i).clear();
        refresh();
_L2:
        list;
        JVM INSTR monitorexit ;
        return;
        _allRecords.remove(0);
        fastRefresh();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void trimRecords()
    {
        if (needsTrimming())
            trimOldestRecords();
    }
}
