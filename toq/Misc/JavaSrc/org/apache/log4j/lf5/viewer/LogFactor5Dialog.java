// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.awt.*;
import javax.swing.JDialog;
import javax.swing.JFrame;

public abstract class LogFactor5Dialog extends JDialog
{

    protected static final Font DISPLAY_FONT = new Font("Arial", 1, 12);

    protected LogFactor5Dialog(JFrame jframe, String s, boolean flag)
    {
        super(jframe, s, flag);
    }

    protected void centerWindow(Window window)
    {
        Dimension dimension = Toolkit.getDefaultToolkit().getScreenSize();
        if (dimension.width < window.getSize().width)
            window.setSize(dimension.width, window.getSize().height);
        if (dimension.height < window.getSize().height)
            window.setSize(window.getSize().width, dimension.height);
        window.setLocation((dimension.width - window.getSize().width) / 2, (dimension.height - window.getSize().height) / 2);
    }

    protected GridBagConstraints getDefaultConstraints()
    {
        GridBagConstraints gridbagconstraints = new GridBagConstraints();
        gridbagconstraints.weightx = 1.0D;
        gridbagconstraints.weighty = 1.0D;
        gridbagconstraints.gridheight = 1;
        gridbagconstraints.insets = new Insets(4, 4, 4, 4);
        gridbagconstraints.fill = 0;
        gridbagconstraints.anchor = 17;
        return gridbagconstraints;
    }

    protected void minimumSizeDialog(Component component, int i, int j)
    {
        if (component.getSize().width < i)
            component.setSize(i, component.getSize().height);
        if (component.getSize().height < j)
            component.setSize(component.getSize().width, j);
    }

    public void show()
    {
        pack();
        minimumSizeDialog(this, 200, 100);
        centerWindow(this);
        super.show();
    }

    protected void wrapStringOnPanel(String s, Container container)
    {
        GridBagConstraints gridbagconstraints = getDefaultConstraints();
        gridbagconstraints.gridwidth = 0;
        gridbagconstraints.insets = new Insets(0, 0, 0, 0);
        GridBagLayout gridbaglayout = (GridBagLayout)container.getLayout();
        Label label;
        for (; s.length() > 0; container.add(label))
        {
            int i = s.indexOf('\n');
            String s1;
            if (i >= 0)
            {
                s1 = s.substring(0, i);
                s = s.substring(i + 1);
            } else
            {
                s1 = s;
                s = "";
            }
            label = new Label(s1);
            label.setFont(DISPLAY_FONT);
            gridbaglayout.setConstraints(label, gridbagconstraints);
        }

    }

}
