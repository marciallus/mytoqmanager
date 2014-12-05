// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;

import java.awt.event.MouseEvent;
import javax.swing.JTree;
import javax.swing.tree.TreePath;

// Referenced classes of package org.apache.log4j.lf5.viewer.categoryexplorer:
//            CategoryExplorerModel, CategoryNode, CategoryNodeRenderer, CategoryNodeEditor, 
//            CategoryImmediateEditor

public class CategoryExplorerTree extends JTree
{

    private static final long serialVersionUID = 0x6ff11a69406207b8L;
    protected CategoryExplorerModel _model;
    protected boolean _rootAlreadyExpanded;

    public CategoryExplorerTree()
    {
        _rootAlreadyExpanded = false;
        _model = new CategoryExplorerModel(new CategoryNode("Categories"));
        setModel(_model);
        init();
    }

    public CategoryExplorerTree(CategoryExplorerModel categoryexplorermodel)
    {
        super(categoryexplorermodel);
        _rootAlreadyExpanded = false;
        _model = categoryexplorermodel;
        init();
    }

    protected void ensureRootExpansion()
    {
        _model.addTreeModelListener(new _cls1());
    }

    protected void expandRootNode()
    {
        if (_rootAlreadyExpanded)
        {
            return;
        } else
        {
            _rootAlreadyExpanded = true;
            expandPath(new TreePath(_model.getRootCategoryNode().getPath()));
            return;
        }
    }

    public CategoryExplorerModel getExplorerModel()
    {
        return _model;
    }

    public String getToolTipText(MouseEvent mouseevent)
    {
        String s;
        try
        {
            s = super.getToolTipText(mouseevent);
        }
        catch (Exception exception)
        {
            return "";
        }
        return s;
    }

    protected void init()
    {
        putClientProperty("JTree.lineStyle", "Angled");
        CategoryNodeRenderer categorynoderenderer = new CategoryNodeRenderer();
        setEditable(true);
        setCellRenderer(categorynoderenderer);
        CategoryNodeEditor categorynodeeditor = new CategoryNodeEditor(_model);
        setCellEditor(new CategoryImmediateEditor(this, new CategoryNodeRenderer(), categorynodeeditor));
        setShowsRootHandles(true);
        setToolTipText("");
        ensureRootExpansion();
    }

    private class _cls1 extends TreeModelAdapter
    {

        private final CategoryExplorerTree this$0;

        public void treeNodesInserted(TreeModelEvent treemodelevent)
        {
            expandRootNode();
        }

        _cls1()
        {
            this$0 = CategoryExplorerTree.this;
            super();
        }
    }

}
