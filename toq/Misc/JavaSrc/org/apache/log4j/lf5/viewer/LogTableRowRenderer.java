// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.awt.Color;
import java.awt.Component;
import java.util.Map;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import org.apache.log4j.lf5.LogLevel;
import org.apache.log4j.lf5.LogRecord;

// Referenced classes of package org.apache.log4j.lf5.viewer:
//            FilteredLogTableModel

public class LogTableRowRenderer extends DefaultTableCellRenderer
{

    private static final long serialVersionUID = 0xc928f46617161e33L;
    protected Color _color;
    protected boolean _highlightFatal;

    public LogTableRowRenderer()
    {
        _highlightFatal = true;
        _color = new Color(230, 230, 230);
    }

    protected Color getLogLevelColor(LogLevel loglevel)
    {
        return (Color)LogLevel.getLogLevelColorMap().get(loglevel);
    }

    public Component getTableCellRendererComponent(JTable jtable, Object obj, boolean flag, boolean flag1, int i, int j)
    {
        if (i % 2 == 0)
            setBackground(_color);
        else
            setBackground(Color.white);
        setForeground(getLogLevelColor(((FilteredLogTableModel)jtable.getModel()).getFilteredRecord(i).getLevel()));
        return super.getTableCellRendererComponent(jtable, obj, flag, flag1, i, j);
    }
}
