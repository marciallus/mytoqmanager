// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;

import java.awt.AWTEventMulticaster;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Enumeration;
import javax.swing.SwingUtilities;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreePath;
import org.apache.log4j.lf5.LogRecord;

// Referenced classes of package org.apache.log4j.lf5.viewer.categoryexplorer:
//            CategoryNode, CategoryPath, CategoryElement

public class CategoryExplorerModel extends DefaultTreeModel
{

    private static final long serialVersionUID = 0xd09f6f82f2a80ae3L;
    protected ActionEvent _event;
    protected ActionListener _listener;
    protected boolean _renderFatal;

    public CategoryExplorerModel(CategoryNode categorynode)
    {
        super(categorynode);
        _renderFatal = true;
        _listener = null;
        _event = new ActionEvent(this, 1001, "Nodes Selection changed");
    }

    public void addActionListener(ActionListener actionlistener)
    {
        this;
        JVM INSTR monitorenter ;
        _listener = AWTEventMulticaster.add(_listener, actionlistener);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public CategoryNode addCategory(CategoryPath categorypath)
    {
        CategoryNode categorynode = (CategoryNode)getRoot();
        for (int i = 0; i < categorypath.size(); i++)
        {
            CategoryElement categoryelement = categorypath.categoryElementAt(i);
            Enumeration enumeration = categorynode.children();
            boolean flag1;
            do
            {
                boolean flag = enumeration.hasMoreElements();
                flag1 = false;
                if (!flag)
                    break;
                CategoryNode categorynode2 = (CategoryNode)enumeration.nextElement();
                if (!categorynode2.getTitle().toLowerCase().equals(categoryelement.getTitle().toLowerCase()))
                    continue;
                flag1 = true;
                categorynode = categorynode2;
                break;
            } while (true);
            if (!flag1)
            {
                CategoryNode categorynode1 = new CategoryNode(categoryelement.getTitle());
                insertNodeInto(categorynode1, categorynode, categorynode.getChildCount());
                refresh(categorynode1);
                categorynode = categorynode1;
            }
        }

        return categorynode;
    }

    public void addLogRecord(LogRecord logrecord)
    {
        CategoryPath categorypath = new CategoryPath(logrecord.getCategory());
        addCategory(categorypath);
        CategoryNode categorynode = getCategoryNode(categorypath);
        categorynode.addRecord();
        if (_renderFatal && logrecord.isFatal())
        {
            javax.swing.tree.TreeNode atreenode[] = getPathToRoot(categorynode);
            int i = atreenode.length;
            for (int j = 1; j < i - 1; j++)
            {
                CategoryNode categorynode1 = (CategoryNode)atreenode[j];
                categorynode1.setHasFatalChildren(true);
                nodeChanged(categorynode1);
            }

            categorynode.setHasFatalRecords(true);
            nodeChanged(categorynode);
        }
    }

    public CategoryNode getCategoryNode(String s)
    {
        return getCategoryNode(new CategoryPath(s));
    }

    public CategoryNode getCategoryNode(CategoryPath categorypath)
    {
        CategoryNode categorynode = (CategoryNode)getRoot();
        for (int i = 0; i < categorypath.size(); i++)
        {
            CategoryElement categoryelement = categorypath.categoryElementAt(i);
            Enumeration enumeration = categorynode.children();
            boolean flag1;
            do
            {
                boolean flag = enumeration.hasMoreElements();
                flag1 = false;
                if (!flag)
                    break;
                CategoryNode categorynode1 = (CategoryNode)enumeration.nextElement();
                if (!categorynode1.getTitle().toLowerCase().equals(categoryelement.getTitle().toLowerCase()))
                    continue;
                flag1 = true;
                categorynode = categorynode1;
                break;
            } while (true);
            if (!flag1)
                return null;
        }

        return categorynode;
    }

    public CategoryNode getRootCategoryNode()
    {
        return (CategoryNode)getRoot();
    }

    public TreePath getTreePathToRoot(CategoryNode categorynode)
    {
        if (categorynode == null)
            return null;
        else
            return new TreePath(getPathToRoot(categorynode));
    }

    public boolean isCategoryPathActive(CategoryPath categorypath)
    {
        CategoryNode categorynode = (CategoryNode)getRoot();
        boolean flag = false;
        int i = 0;
        do
        {
            if (i >= categorypath.size())
                break;
            CategoryElement categoryelement = categorypath.categoryElementAt(i);
            Enumeration enumeration = categorynode.children();
            boolean flag2;
            do
            {
                boolean flag1 = enumeration.hasMoreElements();
                flag = false;
                flag2 = false;
                if (!flag1)
                    break;
                CategoryNode categorynode1 = (CategoryNode)enumeration.nextElement();
                if (!categorynode1.getTitle().toLowerCase().equals(categoryelement.getTitle().toLowerCase()))
                    continue;
                flag2 = true;
                categorynode = categorynode1;
                boolean flag3 = categorynode.isSelected();
                flag = false;
                if (flag3)
                    flag = true;
                break;
            } while (true);
            if (flag && flag2)
                i++;
            else
                return false;
        } while (true);
        return flag;
    }

    protected void notifyActionListeners()
    {
        if (_listener != null)
            _listener.actionPerformed(_event);
    }

    protected void refresh(final CategoryNode node)
    {
        SwingUtilities.invokeLater(new _cls1());
    }

    public void removeActionListener(ActionListener actionlistener)
    {
        this;
        JVM INSTR monitorenter ;
        _listener = AWTEventMulticaster.remove(_listener, actionlistener);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void resetAllNodeCounts()
    {
        CategoryNode categorynode;
        for (Enumeration enumeration = getRootCategoryNode().depthFirstEnumeration(); enumeration.hasMoreElements(); nodeChanged(categorynode))
        {
            categorynode = (CategoryNode)enumeration.nextElement();
            categorynode.resetNumberOfContainedRecords();
        }

    }

    public void setDescendantSelection(CategoryNode categorynode, boolean flag)
    {
        Enumeration enumeration = categorynode.depthFirstEnumeration();
        do
        {
            if (!enumeration.hasMoreElements())
                break;
            CategoryNode categorynode1 = (CategoryNode)enumeration.nextElement();
            if (categorynode1.isSelected() != flag)
            {
                categorynode1.setSelected(flag);
                nodeChanged(categorynode1);
            }
        } while (true);
        notifyActionListeners();
    }

    public void setParentSelection(CategoryNode categorynode, boolean flag)
    {
        javax.swing.tree.TreeNode atreenode[] = getPathToRoot(categorynode);
        int i = atreenode.length;
        for (int j = 1; j < i; j++)
        {
            CategoryNode categorynode1 = (CategoryNode)atreenode[j];
            if (categorynode1.isSelected() != flag)
            {
                categorynode1.setSelected(flag);
                nodeChanged(categorynode1);
            }
        }

        notifyActionListeners();
    }

    public void update(CategoryNode categorynode, boolean flag)
    {
        if (categorynode.isSelected() == flag)
            return;
        if (flag)
        {
            setParentSelection(categorynode, true);
            return;
        } else
        {
            setDescendantSelection(categorynode, false);
            return;
        }
    }

    private class _cls1
        implements Runnable
    {

        private final CategoryExplorerModel this$0;
        private final CategoryNode val$node;

        public void run()
        {
            nodeChanged(node);
        }

        _cls1()
        {
            this$0 = CategoryExplorerModel.this;
            node = categorynode;
            super();
        }
    }

}
