// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.chainsaw;

import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import javax.swing.*;
import javax.swing.text.Document;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;

// Referenced classes of package org.apache.log4j.chainsaw:
//            MyTableModel, ExitAction

class ControlPanel extends JPanel
{

    private static final Logger LOG;
    static Class class$org$apache$log4j$chainsaw$ControlPanel;

    ControlPanel(final MyTableModel aModel)
    {
        setBorder(BorderFactory.createTitledBorder("Controls: "));
        GridBagLayout gridbaglayout = new GridBagLayout();
        GridBagConstraints gridbagconstraints = new GridBagConstraints();
        setLayout(gridbaglayout);
        gridbagconstraints.ipadx = 5;
        gridbagconstraints.ipady = 5;
        gridbagconstraints.gridx = 0;
        gridbagconstraints.anchor = 13;
        gridbagconstraints.gridy = 0;
        JLabel jlabel = new JLabel("Filter Level:");
        gridbaglayout.setConstraints(jlabel, gridbagconstraints);
        add(jlabel);
        gridbagconstraints.gridy = 1 + gridbagconstraints.gridy;
        JLabel jlabel1 = new JLabel("Filter Thread:");
        gridbaglayout.setConstraints(jlabel1, gridbagconstraints);
        add(jlabel1);
        gridbagconstraints.gridy = 1 + gridbagconstraints.gridy;
        JLabel jlabel2 = new JLabel("Filter Logger:");
        gridbaglayout.setConstraints(jlabel2, gridbagconstraints);
        add(jlabel2);
        gridbagconstraints.gridy = 1 + gridbagconstraints.gridy;
        JLabel jlabel3 = new JLabel("Filter NDC:");
        gridbaglayout.setConstraints(jlabel3, gridbagconstraints);
        add(jlabel3);
        gridbagconstraints.gridy = 1 + gridbagconstraints.gridy;
        JLabel jlabel4 = new JLabel("Filter Message:");
        gridbaglayout.setConstraints(jlabel4, gridbagconstraints);
        add(jlabel4);
        gridbagconstraints.weightx = 1.0D;
        gridbagconstraints.gridx = 1;
        gridbagconstraints.anchor = 17;
        gridbagconstraints.gridy = 0;
        Level alevel[] = new Level[6];
        alevel[0] = Level.FATAL;
        alevel[1] = Level.ERROR;
        alevel[2] = Level.WARN;
        alevel[3] = Level.INFO;
        alevel[4] = Level.DEBUG;
        alevel[5] = Level.TRACE;
        final JComboBox priorities = new JComboBox(alevel);
        Level level = alevel[-1 + alevel.length];
        priorities.setSelectedItem(level);
        aModel.setPriorityFilter(level);
        gridbaglayout.setConstraints(priorities, gridbagconstraints);
        add(priorities);
        priorities.setEditable(false);
        _cls1 _lcls1 = new _cls1();
        priorities.addActionListener(_lcls1);
        gridbagconstraints.fill = 2;
        gridbagconstraints.gridy = 1 + gridbagconstraints.gridy;
        final JTextField threadField = new JTextField("");
        Document document = threadField.getDocument();
        _cls2 _lcls2 = new _cls2();
        document.addDocumentListener(_lcls2);
        gridbaglayout.setConstraints(threadField, gridbagconstraints);
        add(threadField);
        gridbagconstraints.gridy = 1 + gridbagconstraints.gridy;
        final JTextField catField = new JTextField("");
        Document document1 = catField.getDocument();
        _cls3 _lcls3 = new _cls3();
        document1.addDocumentListener(_lcls3);
        gridbaglayout.setConstraints(catField, gridbagconstraints);
        add(catField);
        gridbagconstraints.gridy = 1 + gridbagconstraints.gridy;
        final JTextField ndcField = new JTextField("");
        Document document2 = ndcField.getDocument();
        _cls4 _lcls4 = new _cls4();
        document2.addDocumentListener(_lcls4);
        gridbaglayout.setConstraints(ndcField, gridbagconstraints);
        add(ndcField);
        gridbagconstraints.gridy = 1 + gridbagconstraints.gridy;
        final JTextField msgField = new JTextField("");
        Document document3 = msgField.getDocument();
        _cls5 _lcls5 = new _cls5();
        document3.addDocumentListener(_lcls5);
        gridbaglayout.setConstraints(msgField, gridbagconstraints);
        add(msgField);
        gridbagconstraints.weightx = 0.0D;
        gridbagconstraints.fill = 2;
        gridbagconstraints.anchor = 13;
        gridbagconstraints.gridx = 2;
        gridbagconstraints.gridy = 0;
        JButton jbutton = new JButton("Exit");
        jbutton.setMnemonic('x');
        jbutton.addActionListener(ExitAction.INSTANCE);
        gridbaglayout.setConstraints(jbutton, gridbagconstraints);
        add(jbutton);
        gridbagconstraints.gridy = 1 + gridbagconstraints.gridy;
        JButton jbutton1 = new JButton("Clear");
        jbutton1.setMnemonic('c');
        _cls6 _lcls6 = new _cls6();
        jbutton1.addActionListener(_lcls6);
        gridbaglayout.setConstraints(jbutton1, gridbagconstraints);
        add(jbutton1);
        gridbagconstraints.gridy = 1 + gridbagconstraints.gridy;
        final JButton toggleButton = new JButton("Pause");
        toggleButton.setMnemonic('p');
        _cls7 _lcls7 = new _cls7();
        toggleButton.addActionListener(_lcls7);
        gridbaglayout.setConstraints(toggleButton, gridbagconstraints);
        add(toggleButton);
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$chainsaw$ControlPanel == null)
        {
            class1 = _mthclass$("org.apache.log4j.chainsaw.ControlPanel");
            class$org$apache$log4j$chainsaw$ControlPanel = class1;
        } else
        {
            class1 = class$org$apache$log4j$chainsaw$ControlPanel;
        }
        LOG = Logger.getLogger(class1);
    }

    private class _cls1
        implements ActionListener
    {

        private final ControlPanel this$0;
        private final MyTableModel val$aModel;
        private final JComboBox val$priorities;

        public void actionPerformed(ActionEvent actionevent)
        {
            aModel.setPriorityFilter((Priority)priorities.getSelectedItem());
        }

        _cls1()
        {
            this$0 = ControlPanel.this;
            aModel = mytablemodel;
            priorities = jcombobox;
            super();
        }
    }


    private class _cls2
        implements DocumentListener
    {

        private final ControlPanel this$0;
        private final MyTableModel val$aModel;
        private final JTextField val$threadField;

        public void changedUpdate(DocumentEvent documentevent)
        {
            aModel.setThreadFilter(threadField.getText());
        }

        public void insertUpdate(DocumentEvent documentevent)
        {
            aModel.setThreadFilter(threadField.getText());
        }

        public void removeUpdate(DocumentEvent documentevent)
        {
            aModel.setThreadFilter(threadField.getText());
        }

        _cls2()
        {
            this$0 = ControlPanel.this;
            aModel = mytablemodel;
            threadField = jtextfield;
            super();
        }
    }


    private class _cls3
        implements DocumentListener
    {

        private final ControlPanel this$0;
        private final MyTableModel val$aModel;
        private final JTextField val$catField;

        public void changedUpdate(DocumentEvent documentevent)
        {
            aModel.setCategoryFilter(catField.getText());
        }

        public void insertUpdate(DocumentEvent documentevent)
        {
            aModel.setCategoryFilter(catField.getText());
        }

        public void removeUpdate(DocumentEvent documentevent)
        {
            aModel.setCategoryFilter(catField.getText());
        }

        _cls3()
        {
            this$0 = ControlPanel.this;
            aModel = mytablemodel;
            catField = jtextfield;
            super();
        }
    }


    private class _cls4
        implements DocumentListener
    {

        private final ControlPanel this$0;
        private final MyTableModel val$aModel;
        private final JTextField val$ndcField;

        public void changedUpdate(DocumentEvent documentevent)
        {
            aModel.setNDCFilter(ndcField.getText());
        }

        public void insertUpdate(DocumentEvent documentevent)
        {
            aModel.setNDCFilter(ndcField.getText());
        }

        public void removeUpdate(DocumentEvent documentevent)
        {
            aModel.setNDCFilter(ndcField.getText());
        }

        _cls4()
        {
            this$0 = ControlPanel.this;
            aModel = mytablemodel;
            ndcField = jtextfield;
            super();
        }
    }


    private class _cls5
        implements DocumentListener
    {

        private final ControlPanel this$0;
        private final MyTableModel val$aModel;
        private final JTextField val$msgField;

        public void changedUpdate(DocumentEvent documentevent)
        {
            aModel.setMessageFilter(msgField.getText());
        }

        public void insertUpdate(DocumentEvent documentevent)
        {
            aModel.setMessageFilter(msgField.getText());
        }

        public void removeUpdate(DocumentEvent documentevent)
        {
            aModel.setMessageFilter(msgField.getText());
        }

        _cls5()
        {
            this$0 = ControlPanel.this;
            aModel = mytablemodel;
            msgField = jtextfield;
            super();
        }
    }


    private class _cls6
        implements ActionListener
    {

        private final ControlPanel this$0;
        private final MyTableModel val$aModel;

        public void actionPerformed(ActionEvent actionevent)
        {
            aModel.clear();
        }

        _cls6()
        {
            this$0 = ControlPanel.this;
            aModel = mytablemodel;
            super();
        }
    }


    private class _cls7
        implements ActionListener
    {

        private final ControlPanel this$0;
        private final MyTableModel val$aModel;
        private final JButton val$toggleButton;

        public void actionPerformed(ActionEvent actionevent)
        {
            aModel.toggle();
            JButton jbutton = toggleButton;
            String s;
            if (aModel.isPaused())
                s = "Resume";
            else
                s = "Pause";
            jbutton.setText(s);
        }

        _cls7()
        {
            this$0 = ControlPanel.this;
            aModel = mytablemodel;
            toggleButton = jbutton;
            super();
        }
    }

}
