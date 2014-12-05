// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.ListSelectionModel;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.table.TableColumn;
import javax.swing.table.TableColumnModel;
import javax.swing.table.TableModel;
import org.apache.log4j.lf5.util.DateFormatManager;

// Referenced classes of package org.apache.log4j.lf5.viewer:
//            LogTableColumn, FilteredLogTableModel, LogTableRowRenderer

public class LogTable extends JTable
{
    class LogTableListSelectionListener
        implements ListSelectionListener
    {

        protected JTable _table;
        private final LogTable this$0;

        public void valueChanged(ListSelectionEvent listselectionevent)
        {
            if (!listselectionevent.getValueIsAdjusting())
            {
                ListSelectionModel listselectionmodel = (ListSelectionModel)listselectionevent.getSource();
                if (!listselectionmodel.isSelectionEmpty())
                {
                    StringBuffer stringbuffer = new StringBuffer();
                    int i = listselectionmodel.getMinSelectionIndex();
                    for (int j = 0; j < -1 + _numCols; j++)
                    {
                        String s = "";
                        Object obj1 = _table.getModel().getValueAt(i, j);
                        if (obj1 != null)
                            s = obj1.toString();
                        stringbuffer.append(_colNames[j] + ":");
                        stringbuffer.append("\t");
                        if (j == _colThread || j == _colMessage || j == _colLevel)
                            stringbuffer.append("\t");
                        if (j == _colDate || j == _colNDC)
                            stringbuffer.append("\t\t");
                        stringbuffer.append(s);
                        stringbuffer.append("\n");
                    }

                    stringbuffer.append(_colNames[-1 + _numCols] + ":\n");
                    Object obj = _table.getModel().getValueAt(i, -1 + _numCols);
                    if (obj != null)
                        stringbuffer.append(obj.toString());
                    _detailTextArea.setText(stringbuffer.toString());
                    return;
                }
            }
        }

        public LogTableListSelectionListener(JTable jtable)
        {
            this$0 = LogTable.this;
            super();
            _table = jtable;
        }
    }


    private static final long serialVersionUID = 0x438b5c25e8ea02aaL;
    protected int _colCategory;
    protected int _colDate;
    protected int _colLevel;
    protected int _colLocation;
    protected int _colMessage;
    protected int _colMessageNum;
    protected int _colNDC;
    protected LogTableColumn _colNames[];
    protected int _colThread;
    protected int _colThrown;
    protected int _colWidths[] = {
        40, 40, 40, 70, 70, 360, 440, 200, 60
    };
    protected DateFormatManager _dateFormatManager;
    protected JTextArea _detailTextArea;
    protected int _numCols;
    protected int _rowHeight;
    protected TableColumn _tableColumns[];

    public LogTable(JTextArea jtextarea)
    {
        _rowHeight = 30;
        _numCols = 9;
        _tableColumns = new TableColumn[_numCols];
        _colNames = LogTableColumn.getLogTableColumnArray();
        _colDate = 0;
        _colThread = 1;
        _colMessageNum = 2;
        _colLevel = 3;
        _colNDC = 4;
        _colCategory = 5;
        _colMessage = 6;
        _colLocation = 7;
        _colThrown = 8;
        _dateFormatManager = null;
        init();
        _detailTextArea = jtextarea;
        setModel(new FilteredLogTableModel());
        Enumeration enumeration = getColumnModel().getColumns();
        for (int i = 0; enumeration.hasMoreElements(); i++)
        {
            TableColumn tablecolumn = (TableColumn)enumeration.nextElement();
            tablecolumn.setCellRenderer(new LogTableRowRenderer());
            tablecolumn.setPreferredWidth(_colWidths[i]);
            _tableColumns[i] = tablecolumn;
        }

        getSelectionModel().addListSelectionListener(new LogTableListSelectionListener(this));
    }

    public void clearLogRecords()
    {
        this;
        JVM INSTR monitorenter ;
        getFilteredLogTableModel().clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected Vector getColumnNameAndNumber()
    {
        Vector vector = new Vector();
        for (int i = 0; i < _colNames.length; i++)
            vector.add(i, _colNames[i]);

        return vector;
    }

    public DateFormatManager getDateFormatManager()
    {
        return _dateFormatManager;
    }

    public FilteredLogTableModel getFilteredLogTableModel()
    {
        return (FilteredLogTableModel)getModel();
    }

    protected void init()
    {
        setRowHeight(_rowHeight);
        setSelectionMode(0);
    }

    public void setDateFormatManager(DateFormatManager dateformatmanager)
    {
        _dateFormatManager = dateformatmanager;
    }

    public void setDetailedView()
    {
        TableColumnModel tablecolumnmodel = getColumnModel();
        for (int i = 0; i < _numCols; i++)
            tablecolumnmodel.removeColumn(_tableColumns[i]);

        for (int j = 0; j < _numCols; j++)
            tablecolumnmodel.addColumn(_tableColumns[j]);

        sizeColumnsToFit(-1);
    }

    public void setFont(Font font)
    {
        super.setFont(font);
        Graphics g = getGraphics();
        if (g != null)
        {
            int i = g.getFontMetrics(font).getHeight();
            _rowHeight = i + i / 3;
            setRowHeight(_rowHeight);
        }
    }

    public void setView(java.util.List list)
    {
        TableColumnModel tablecolumnmodel = getColumnModel();
        for (int i = 0; i < _numCols; i++)
            tablecolumnmodel.removeColumn(_tableColumns[i]);

        Iterator iterator = list.iterator();
        Vector vector = getColumnNameAndNumber();
        for (; iterator.hasNext(); tablecolumnmodel.addColumn(_tableColumns[vector.indexOf(iterator.next())]));
        sizeColumnsToFit(-1);
    }
}
