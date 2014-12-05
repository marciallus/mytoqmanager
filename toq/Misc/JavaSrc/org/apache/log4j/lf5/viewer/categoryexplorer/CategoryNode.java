// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;

import java.util.Enumeration;
import javax.swing.tree.DefaultMutableTreeNode;

public class CategoryNode extends DefaultMutableTreeNode
{

    private static final long serialVersionUID = 0x52b29a36eefed5e7L;
    protected boolean _hasFatalChildren;
    protected boolean _hasFatalRecords;
    protected int _numberOfContainedRecords;
    protected int _numberOfRecordsFromChildren;
    protected boolean _selected;

    public CategoryNode(String s)
    {
        _selected = true;
        _numberOfContainedRecords = 0;
        _numberOfRecordsFromChildren = 0;
        _hasFatalChildren = false;
        _hasFatalRecords = false;
        setUserObject(s);
    }

    public void addRecord()
    {
        _numberOfContainedRecords = 1 + _numberOfContainedRecords;
        addRecordToParent();
    }

    protected void addRecordFromChild()
    {
        _numberOfRecordsFromChildren = 1 + _numberOfRecordsFromChildren;
        addRecordToParent();
    }

    protected void addRecordToParent()
    {
        javax.swing.tree.TreeNode treenode = getParent();
        if (treenode == null)
        {
            return;
        } else
        {
            ((CategoryNode)treenode).addRecordFromChild();
            return;
        }
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof CategoryNode)
        {
            CategoryNode categorynode = (CategoryNode)obj;
            if (getTitle().toLowerCase().equals(categorynode.getTitle().toLowerCase()))
                return true;
        }
        return false;
    }

    public int getNumberOfContainedRecords()
    {
        return _numberOfContainedRecords;
    }

    protected int getNumberOfRecordsFromChildren()
    {
        return _numberOfRecordsFromChildren;
    }

    public String getTitle()
    {
        return (String)getUserObject();
    }

    protected int getTotalNumberOfRecords()
    {
        return getNumberOfRecordsFromChildren() + getNumberOfContainedRecords();
    }

    public boolean hasFatalChildren()
    {
        return _hasFatalChildren;
    }

    public boolean hasFatalRecords()
    {
        return _hasFatalRecords;
    }

    public int hashCode()
    {
        return getTitle().hashCode();
    }

    public boolean isSelected()
    {
        return _selected;
    }

    public void resetNumberOfContainedRecords()
    {
        _numberOfContainedRecords = 0;
        _numberOfRecordsFromChildren = 0;
        _hasFatalRecords = false;
        _hasFatalChildren = false;
    }

    public void setAllDescendantsDeSelected()
    {
        CategoryNode categorynode;
        for (Enumeration enumeration = children(); enumeration.hasMoreElements(); categorynode.setAllDescendantsDeSelected())
        {
            categorynode = (CategoryNode)enumeration.nextElement();
            categorynode.setSelected(false);
        }

    }

    public void setAllDescendantsSelected()
    {
        CategoryNode categorynode;
        for (Enumeration enumeration = children(); enumeration.hasMoreElements(); categorynode.setAllDescendantsSelected())
        {
            categorynode = (CategoryNode)enumeration.nextElement();
            categorynode.setSelected(true);
        }

    }

    public void setHasFatalChildren(boolean flag)
    {
        _hasFatalChildren = flag;
    }

    public void setHasFatalRecords(boolean flag)
    {
        _hasFatalRecords = flag;
    }

    public void setSelected(boolean flag)
    {
        if (flag != _selected)
            _selected = flag;
    }

    public String toString()
    {
        return getTitle();
    }
}
