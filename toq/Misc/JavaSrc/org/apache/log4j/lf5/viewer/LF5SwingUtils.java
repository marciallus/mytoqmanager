// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.awt.Adjustable;
import javax.swing.*;
import javax.swing.table.TableModel;

// Referenced classes of package org.apache.log4j.lf5.viewer:
//            TrackingAdjustmentListener

public class LF5SwingUtils
{


    protected static boolean contains(int i, TableModel tablemodel)
    {
        return tablemodel != null && i >= 0 && i < tablemodel.getRowCount();
    }

    public static void makeScrollBarTrack(Adjustable adjustable)
    {
        if (adjustable == null)
        {
            return;
        } else
        {
            adjustable.addAdjustmentListener(new TrackingAdjustmentListener());
            return;
        }
    }

    public static void makeVerticalScrollBarTrack(JScrollPane jscrollpane)
    {
        if (jscrollpane == null)
        {
            return;
        } else
        {
            makeScrollBarTrack(jscrollpane.getVerticalScrollBar());
            return;
        }
    }

    protected static void moveAdjustable(int i, Adjustable adjustable)
    {
        if (adjustable == null)
        {
            return;
        } else
        {
            adjustable.setValue(i);
            return;
        }
    }

    protected static void repaintLater(final JComponent component)
    {
        SwingUtilities.invokeLater(new _cls1());
    }

    public static void selectRow(int i, JTable jtable, JScrollPane jscrollpane)
    {
        if (jtable != null && jscrollpane != null && contains(i, jtable.getModel()))
        {
            moveAdjustable(i * jtable.getRowHeight(), jscrollpane.getVerticalScrollBar());
            selectRow(i, jtable.getSelectionModel());
            repaintLater(jtable);
            return;
        } else
        {
            return;
        }
    }

    protected static void selectRow(int i, ListSelectionModel listselectionmodel)
    {
        if (listselectionmodel == null)
        {
            return;
        } else
        {
            listselectionmodel.setSelectionInterval(i, i);
            return;
        }
    }

    private class _cls1
        implements Runnable
    {

        private final JComponent val$component;

        public void run()
        {
            component.repaint();
        }

        _cls1()
        {
            component = jcomponent;
            super();
        }
    }

}
