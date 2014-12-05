// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.awt.Container;
import java.awt.FlowLayout;
import javax.swing.*;

// Referenced classes of package org.apache.log4j.lf5.viewer:
//            LogFactor5Dialog

public class LogFactor5InputDialog extends LogFactor5Dialog
{

    public static final int SIZE = 30;
    private JTextField _textField;

    public LogFactor5InputDialog(JFrame jframe, String s, String s1)
    {
        this(jframe, s, s1, 30);
    }

    public LogFactor5InputDialog(JFrame jframe, String s, String s1, int i)
    {
        super(jframe, s, true);
        JPanel jpanel = new JPanel();
        jpanel.setLayout(new FlowLayout());
        JPanel jpanel1 = new JPanel();
        jpanel1.setLayout(new FlowLayout());
        jpanel1.add(new JLabel(s1));
        _textField = new JTextField(i);
        jpanel1.add(_textField);
        addKeyListener(new _cls1());
        JButton jbutton = new JButton("Ok");
        jbutton.addActionListener(new _cls2());
        JButton jbutton1 = new JButton("Cancel");
        jbutton1.addActionListener(new _cls3());
        jpanel.add(jbutton);
        jpanel.add(jbutton1);
        getContentPane().add(jpanel1, "Center");
        getContentPane().add(jpanel, "South");
        pack();
        centerWindow(this);
        show();
    }

    public String getText()
    {
        String s = _textField.getText();
        if (s != null && s.trim().length() == 0)
            s = null;
        return s;
    }


    private class _cls1 extends KeyAdapter
    {

        private final LogFactor5InputDialog this$0;

        public void keyPressed(KeyEvent keyevent)
        {
            if (keyevent.getKeyCode() == 10)
                hide();
        }

        _cls1()
        {
            this$0 = LogFactor5InputDialog.this;
            super();
        }
    }


    private class _cls2
        implements ActionListener
    {

        private final LogFactor5InputDialog this$0;

        public void actionPerformed(ActionEvent actionevent)
        {
            hide();
        }

        _cls2()
        {
            this$0 = LogFactor5InputDialog.this;
            super();
        }
    }


    private class _cls3
        implements ActionListener
    {

        private final LogFactor5InputDialog this$0;

        public void actionPerformed(ActionEvent actionevent)
        {
            hide();
            _textField.setText("");
        }

        _cls3()
        {
            this$0 = LogFactor5InputDialog.this;
            super();
        }
    }

}
