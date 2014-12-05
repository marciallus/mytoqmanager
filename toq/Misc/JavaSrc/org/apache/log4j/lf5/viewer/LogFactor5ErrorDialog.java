// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.awt.*;
import javax.swing.*;

// Referenced classes of package org.apache.log4j.lf5.viewer:
//            LogFactor5Dialog

public class LogFactor5ErrorDialog extends LogFactor5Dialog
{

    public LogFactor5ErrorDialog(JFrame jframe, String s)
    {
        super(jframe, "Error", true);
        JButton jbutton = new JButton("Ok");
        jbutton.addActionListener(new _cls1());
        JPanel jpanel = new JPanel();
        jpanel.setLayout(new FlowLayout());
        jpanel.add(jbutton);
        JPanel jpanel1 = new JPanel();
        jpanel1.setLayout(new GridBagLayout());
        wrapStringOnPanel(s, jpanel1);
        getContentPane().add(jpanel1, "Center");
        getContentPane().add(jpanel, "South");
        show();
    }

    private class _cls1
        implements ActionListener
    {

        private final LogFactor5ErrorDialog this$0;

        public void actionPerformed(ActionEvent actionevent)
        {
            hide();
        }

        _cls1()
        {
            this$0 = LogFactor5ErrorDialog.this;
            super();
        }
    }

}
