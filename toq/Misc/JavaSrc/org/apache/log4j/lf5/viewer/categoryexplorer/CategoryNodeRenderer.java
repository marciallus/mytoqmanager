// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;

import java.awt.*;
import javax.swing.*;
import javax.swing.tree.DefaultTreeCellRenderer;

// Referenced classes of package org.apache.log4j.lf5.viewer.categoryexplorer:
//            CategoryNode

public class CategoryNodeRenderer extends DefaultTreeCellRenderer
{

    public static final Color FATAL_CHILDREN = new Color(189, 113, 0);
    protected static ImageIcon _sat = null;
    private static final long serialVersionUID = 0xac15cbf498d31018L;
    protected JCheckBox _checkBox;
    protected JPanel _panel;

    public CategoryNodeRenderer()
    {
        _checkBox = new JCheckBox();
        _panel = new JPanel();
        _panel.setBackground(UIManager.getColor("Tree.textBackground"));
        if (_sat == null)
            _sat = new ImageIcon(getClass().getResource("/org/apache/log4j/lf5/viewer/images/channelexplorer_satellite.gif"));
        setOpaque(false);
        _checkBox.setOpaque(false);
        _panel.setOpaque(false);
        _panel.setLayout(new FlowLayout(0, 0, 0));
        _panel.add(_checkBox);
        _panel.add(this);
        setOpenIcon(_sat);
        setClosedIcon(_sat);
        setLeafIcon(_sat);
    }

    protected String buildToolTip(CategoryNode categorynode)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(categorynode.getTitle()).append(" contains a total of ");
        stringbuffer.append(categorynode.getTotalNumberOfRecords());
        stringbuffer.append(" LogRecords.");
        stringbuffer.append(" Right-click for more info.");
        return stringbuffer.toString();
    }

    public Dimension getCheckBoxOffset()
    {
        return new Dimension(0, 0);
    }

    public Component getTreeCellRendererComponent(JTree jtree, Object obj, boolean flag, boolean flag1, boolean flag2, int i, boolean flag3)
    {
        CategoryNode categorynode = (CategoryNode)obj;
        super.getTreeCellRendererComponent(jtree, obj, flag, flag1, flag2, i, flag3);
        if (i == 0)
        {
            _checkBox.setVisible(false);
        } else
        {
            _checkBox.setVisible(true);
            _checkBox.setSelected(categorynode.isSelected());
        }
        String s = buildToolTip(categorynode);
        _panel.setToolTipText(s);
        if (categorynode.hasFatalChildren())
            setForeground(FATAL_CHILDREN);
        if (categorynode.hasFatalRecords())
            setForeground(Color.red);
        return _panel;
    }

}
