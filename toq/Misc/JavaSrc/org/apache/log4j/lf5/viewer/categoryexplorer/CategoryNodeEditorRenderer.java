// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;

import java.awt.Component;
import javax.swing.JCheckBox;
import javax.swing.JTree;

// Referenced classes of package org.apache.log4j.lf5.viewer.categoryexplorer:
//            CategoryNodeRenderer

public class CategoryNodeEditorRenderer extends CategoryNodeRenderer
{

    private static final long serialVersionUID = 0xab6ae76e6b4cd21aL;


    public JCheckBox getCheckBox()
    {
        return _checkBox;
    }

    public Component getTreeCellRendererComponent(JTree jtree, Object obj, boolean flag, boolean flag1, boolean flag2, int i, boolean flag3)
    {
        return super.getTreeCellRendererComponent(jtree, obj, flag, flag1, flag2, i, flag3);
    }
}
