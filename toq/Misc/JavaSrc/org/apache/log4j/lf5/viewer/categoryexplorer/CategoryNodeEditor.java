// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;

import java.awt.Component;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.swing.*;
import javax.swing.tree.TreePath;

// Referenced classes of package org.apache.log4j.lf5.viewer.categoryexplorer:
//            CategoryAbstractCellEditor, CategoryNodeEditorRenderer, CategoryNode, CategoryExplorerModel

public class CategoryNodeEditor extends CategoryAbstractCellEditor
{

    protected CategoryExplorerModel _categoryModel;
    protected JCheckBox _checkBox;
    protected CategoryNode _lastEditedNode;
    protected CategoryNodeEditorRenderer _renderer;
    protected JTree _tree;

    public CategoryNodeEditor(CategoryExplorerModel categoryexplorermodel)
    {
        _renderer = new CategoryNodeEditorRenderer();
        _checkBox = _renderer.getCheckBox();
        _categoryModel = categoryexplorermodel;
        _checkBox.addActionListener(new _cls1());
        _renderer.addMouseListener(new _cls2());
    }

    protected void collapse(CategoryNode categorynode)
    {
        _tree.collapsePath(getTreePath(categorynode));
    }

    protected void collapseDescendants(CategoryNode categorynode)
    {
        for (Enumeration enumeration = categorynode.depthFirstEnumeration(); enumeration.hasMoreElements(); collapse((CategoryNode)enumeration.nextElement()));
    }

    protected JMenuItem createCollapseMenuItem(final CategoryNode node)
    {
        JMenuItem jmenuitem = new JMenuItem("Collapse All Descendant Categories");
        jmenuitem.addActionListener(new _cls7());
        return jmenuitem;
    }

    protected JMenuItem createExpandMenuItem(final CategoryNode node)
    {
        JMenuItem jmenuitem = new JMenuItem("Expand All Descendant Categories");
        jmenuitem.addActionListener(new _cls6());
        return jmenuitem;
    }

    protected JMenuItem createPropertiesMenuItem(final CategoryNode node)
    {
        JMenuItem jmenuitem = new JMenuItem("Properties");
        jmenuitem.addActionListener(new _cls3());
        return jmenuitem;
    }

    protected JMenuItem createRemoveMenuItem()
    {
        JMenuItem jmenuitem = new JMenuItem("Remove All Empty Categories");
        jmenuitem.addActionListener(new _cls8());
        return jmenuitem;
    }

    protected JMenuItem createSelectDescendantsMenuItem(final CategoryNode node)
    {
        JMenuItem jmenuitem = new JMenuItem("Select All Descendant Categories");
        jmenuitem.addActionListener(new _cls4());
        return jmenuitem;
    }

    protected JMenuItem createUnselectDescendantsMenuItem(final CategoryNode node)
    {
        JMenuItem jmenuitem = new JMenuItem("Deselect All Descendant Categories");
        jmenuitem.addActionListener(new _cls5());
        return jmenuitem;
    }

    protected void expand(CategoryNode categorynode)
    {
        _tree.expandPath(getTreePath(categorynode));
    }

    protected void expandDescendants(CategoryNode categorynode)
    {
        for (Enumeration enumeration = categorynode.depthFirstEnumeration(); enumeration.hasMoreElements(); expand((CategoryNode)enumeration.nextElement()));
    }

    public Object getCellEditorValue()
    {
        return _lastEditedNode.getUserObject();
    }

    protected Object getDisplayedProperties(CategoryNode categorynode)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("Category: " + categorynode.getTitle());
        if (categorynode.hasFatalRecords())
            arraylist.add("Contains at least one fatal LogRecord.");
        if (categorynode.hasFatalChildren())
            arraylist.add("Contains descendants with a fatal LogRecord.");
        arraylist.add("LogRecords in this category alone: " + categorynode.getNumberOfContainedRecords());
        arraylist.add("LogRecords in descendant categories: " + categorynode.getNumberOfRecordsFromChildren());
        arraylist.add("LogRecords in this category including descendants: " + categorynode.getTotalNumberOfRecords());
        return ((Object) (arraylist.toArray()));
    }

    public Component getTreeCellEditorComponent(JTree jtree, Object obj, boolean flag, boolean flag1, boolean flag2, int i)
    {
        _lastEditedNode = (CategoryNode)obj;
        _tree = jtree;
        return _renderer.getTreeCellRendererComponent(jtree, obj, flag, flag1, flag2, i, true);
    }

    protected TreePath getTreePath(CategoryNode categorynode)
    {
        return new TreePath(categorynode.getPath());
    }

    protected int removeUnusedNodes()
    {
        int i = 0;
        Enumeration enumeration = _categoryModel.getRootCategoryNode().depthFirstEnumeration();
        do
        {
            if (!enumeration.hasMoreElements())
                break;
            CategoryNode categorynode = (CategoryNode)enumeration.nextElement();
            if (categorynode.isLeaf() && categorynode.getNumberOfContainedRecords() == 0 && categorynode.getParent() != null)
            {
                _categoryModel.removeNodeFromParent(categorynode);
                i++;
            }
        } while (true);
        return i;
    }

    protected void showPopup(CategoryNode categorynode, int i, int j)
    {
        JPopupMenu jpopupmenu = new JPopupMenu();
        jpopupmenu.setSize(150, 400);
        if (categorynode.getParent() == null)
        {
            jpopupmenu.add(createRemoveMenuItem());
            jpopupmenu.addSeparator();
        }
        jpopupmenu.add(createSelectDescendantsMenuItem(categorynode));
        jpopupmenu.add(createUnselectDescendantsMenuItem(categorynode));
        jpopupmenu.addSeparator();
        jpopupmenu.add(createExpandMenuItem(categorynode));
        jpopupmenu.add(createCollapseMenuItem(categorynode));
        jpopupmenu.addSeparator();
        jpopupmenu.add(createPropertiesMenuItem(categorynode));
        jpopupmenu.show(_renderer, i, j);
    }

    protected void showPropertiesDialog(CategoryNode categorynode)
    {
        JOptionPane.showMessageDialog(_tree, getDisplayedProperties(categorynode), "Category Properties: " + categorynode.getTitle(), -1);
    }

    private class _cls1
        implements ActionListener
    {

        private final CategoryNodeEditor this$0;

        public void actionPerformed(ActionEvent actionevent)
        {
            _categoryModel.update(_lastEditedNode, _checkBox.isSelected());
            stopCellEditing();
        }

        _cls1()
        {
            this$0 = CategoryNodeEditor.this;
            super();
        }
    }


    private class _cls2 extends MouseAdapter
    {

        private final CategoryNodeEditor this$0;

        public void mousePressed(MouseEvent mouseevent)
        {
            if ((4 & mouseevent.getModifiers()) != 0)
                showPopup(_lastEditedNode, mouseevent.getX(), mouseevent.getY());
            stopCellEditing();
        }

        _cls2()
        {
            this$0 = CategoryNodeEditor.this;
            super();
        }
    }


    private class _cls7
        implements ActionListener
    {

        private final CategoryNodeEditor this$0;
        private final CategoryNode val$node;

        public void actionPerformed(ActionEvent actionevent)
        {
            collapseDescendants(node);
        }

        _cls7()
        {
            this$0 = CategoryNodeEditor.this;
            node = categorynode;
            super();
        }
    }


    private class _cls6
        implements ActionListener
    {

        private final CategoryNodeEditor this$0;
        private final CategoryNode val$node;

        public void actionPerformed(ActionEvent actionevent)
        {
            expandDescendants(node);
        }

        _cls6()
        {
            this$0 = CategoryNodeEditor.this;
            node = categorynode;
            super();
        }
    }


    private class _cls3
        implements ActionListener
    {

        private final CategoryNodeEditor this$0;
        private final CategoryNode val$node;

        public void actionPerformed(ActionEvent actionevent)
        {
            showPropertiesDialog(node);
        }

        _cls3()
        {
            this$0 = CategoryNodeEditor.this;
            node = categorynode;
            super();
        }
    }


    private class _cls8
        implements ActionListener
    {

        private final CategoryNodeEditor this$0;

        public void actionPerformed(ActionEvent actionevent)
        {
            while (removeUnusedNodes() > 0) ;
        }

        _cls8()
        {
            this$0 = CategoryNodeEditor.this;
            super();
        }
    }


    private class _cls4
        implements ActionListener
    {

        private final CategoryNodeEditor this$0;
        private final CategoryNode val$node;

        public void actionPerformed(ActionEvent actionevent)
        {
            _categoryModel.setDescendantSelection(node, true);
        }

        _cls4()
        {
            this$0 = CategoryNodeEditor.this;
            node = categorynode;
            super();
        }
    }


    private class _cls5
        implements ActionListener
    {

        private final CategoryNodeEditor this$0;
        private final CategoryNode val$node;

        public void actionPerformed(ActionEvent actionevent)
        {
            _categoryModel.setDescendantSelection(node, false);
        }

        _cls5()
        {
            this$0 = CategoryNodeEditor.this;
            node = categorynode;
            super();
        }
    }

}
