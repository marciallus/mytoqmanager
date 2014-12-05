// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.event.MouseEvent;
import java.util.EventObject;
import javax.swing.Icon;
import javax.swing.JTree;
import javax.swing.tree.DefaultTreeCellEditor;
import javax.swing.tree.TreePath;

// Referenced classes of package org.apache.log4j.lf5.viewer.categoryexplorer:
//            CategoryNodeRenderer, CategoryNode, CategoryNodeEditor

public class CategoryImmediateEditor extends DefaultTreeCellEditor
{

    protected Icon editingIcon;
    private CategoryNodeRenderer renderer;

    public CategoryImmediateEditor(JTree jtree, CategoryNodeRenderer categorynoderenderer, CategoryNodeEditor categorynodeeditor)
    {
        super(jtree, categorynoderenderer, categorynodeeditor);
        editingIcon = null;
        renderer = categorynoderenderer;
        categorynoderenderer.setIcon(null);
        categorynoderenderer.setLeafIcon(null);
        categorynoderenderer.setOpenIcon(null);
        categorynoderenderer.setClosedIcon(null);
        super.editingIcon = null;
    }

    protected boolean canEditImmediately(EventObject eventobject)
    {
        boolean flag = eventobject instanceof MouseEvent;
        boolean flag1 = false;
        if (flag)
            flag1 = inCheckBoxHitRegion((MouseEvent)eventobject);
        return flag1;
    }

    protected void determineOffset(JTree jtree, Object obj, boolean flag, boolean flag1, boolean flag2, int i)
    {
        offset = 0;
    }

    public boolean inCheckBoxHitRegion(MouseEvent mouseevent)
    {
        TreePath treepath = tree.getPathForLocation(mouseevent.getX(), mouseevent.getY());
        if (treepath == null)
        {
            return false;
        } else
        {
            CategoryNode _tmp = (CategoryNode)treepath.getLastPathComponent();
            Rectangle rectangle = tree.getRowBounds(lastRow);
            Dimension dimension = renderer.getCheckBoxOffset();
            rectangle.translate(offset + dimension.width, dimension.height);
            rectangle.contains(mouseevent.getPoint());
            return true;
        }
    }

    public boolean shouldSelectCell(EventObject eventobject)
    {
        boolean flag = eventobject instanceof MouseEvent;
        boolean flag1 = false;
        if (flag)
        {
            MouseEvent mouseevent = (MouseEvent)eventobject;
            flag1 = ((CategoryNode)tree.getPathForLocation(mouseevent.getX(), mouseevent.getY()).getLastPathComponent()).isLeaf();
        }
        return flag1;
    }
}
