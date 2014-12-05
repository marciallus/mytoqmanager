// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.awt.*;
import javax.swing.JFrame;
import javax.swing.JPanel;

// Referenced classes of package org.apache.log4j.lf5.viewer:
//            LogFactor5Dialog

public class LogFactor5LoadingDialog extends LogFactor5Dialog
{

    public LogFactor5LoadingDialog(JFrame jframe, String s)
    {
        super(jframe, "LogFactor5", false);
        JPanel jpanel = new JPanel();
        jpanel.setLayout(new FlowLayout());
        JPanel jpanel1 = new JPanel();
        jpanel1.setLayout(new GridBagLayout());
        wrapStringOnPanel(s, jpanel1);
        getContentPane().add(jpanel1, "Center");
        getContentPane().add(jpanel, "South");
        show();
    }
}
