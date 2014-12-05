// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.chainsaw;

import java.awt.Container;
import java.awt.Dimension;
import java.io.IOException;
import java.util.Properties;
import javax.swing.*;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

// Referenced classes of package org.apache.log4j.chainsaw:
//            MyTableModel, LoadXMLAction, ExitAction, ControlPanel, 
//            DetailPanel, LoggingReceiver

public class Main extends JFrame
{

    private static final int DEFAULT_PORT = 4445;
    private static final Logger LOG;
    public static final String PORT_PROP_NAME = "chainsaw.port";
    static Class class$org$apache$log4j$chainsaw$Main;

    private Main()
    {
        super("CHAINSAW - Log4J Log Viewer");
        MyTableModel mytablemodel = new MyTableModel();
        JMenuBar jmenubar = new JMenuBar();
        setJMenuBar(jmenubar);
        JMenu jmenu = new JMenu("File");
        jmenubar.add(jmenu);
        JMenuItem jmenuitem1;
        ControlPanel controlpanel;
        JTable jtable;
        JScrollPane jscrollpane;
        DetailPanel detailpanel;
        JSplitPane jsplitpane;
        try
        {
            LoadXMLAction loadxmlaction = new LoadXMLAction(this, mytablemodel);
            JMenuItem jmenuitem = new JMenuItem("Load file...");
            jmenu.add(jmenuitem);
            jmenuitem.addActionListener(loadxmlaction);
        }
        catch (NoClassDefFoundError noclassdeffounderror)
        {
            LOG.info("Missing classes for XML parser", noclassdeffounderror);
            JOptionPane.showMessageDialog(this, "XML parser not in classpath - unable to load XML events.", "CHAINSAW", 0);
        }
        catch (Exception exception)
        {
            LOG.info("Unable to create the action to load XML files", exception);
            JOptionPane.showMessageDialog(this, "Unable to create a XML parser - unable to load XML events.", "CHAINSAW", 0);
        }
        jmenuitem1 = new JMenuItem("Exit");
        jmenu.add(jmenuitem1);
        jmenuitem1.addActionListener(ExitAction.INSTANCE);
        controlpanel = new ControlPanel(mytablemodel);
        getContentPane().add(controlpanel, "North");
        jtable = new JTable(mytablemodel);
        jtable.setSelectionMode(0);
        jscrollpane = new JScrollPane(jtable);
        jscrollpane.setBorder(BorderFactory.createTitledBorder("Events: "));
        jscrollpane.setPreferredSize(new Dimension(900, 300));
        detailpanel = new DetailPanel(jtable, mytablemodel);
        detailpanel.setPreferredSize(new Dimension(900, 300));
        jsplitpane = new JSplitPane(0, jscrollpane, detailpanel);
        getContentPane().add(jsplitpane, "Center");
        addWindowListener(new _cls1());
        pack();
        setVisible(true);
        setupReceiver(mytablemodel);
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

    private static void initLog4J()
    {
        Properties properties = new Properties();
        properties.setProperty("log4j.rootLogger", "DEBUG, A1");
        properties.setProperty("log4j.appender.A1", "org.apache.log4j.ConsoleAppender");
        properties.setProperty("log4j.appender.A1.layout", "org.apache.log4j.TTCCLayout");
        PropertyConfigurator.configure(properties);
    }

    public static void main(String args[])
    {
        initLog4J();
        new Main();
    }

    private void setupReceiver(MyTableModel mytablemodel)
    {
        int i;
        String s;
        i = 4445;
        s = System.getProperty("chainsaw.port");
        if (s == null)
            break MISSING_BLOCK_LABEL_23;
        int j = Integer.parseInt(s);
        i = j;
_L1:
        NumberFormatException numberformatexception;
        try
        {
            (new LoggingReceiver(mytablemodel, i)).start();
            return;
        }
        catch (IOException ioexception)
        {
            LOG.fatal("Unable to connect to socket server, quiting", ioexception);
        }
        break MISSING_BLOCK_LABEL_123;
        numberformatexception;
        LOG.fatal("Unable to parse chainsaw.port property with value " + s + ".");
        JOptionPane.showMessageDialog(this, "Unable to parse port number from '" + s + "', quitting.", "CHAINSAW", 0);
        System.exit(1);
          goto _L1
        JOptionPane.showMessageDialog(this, "Unable to create socket on port " + i + ", quitting.", "CHAINSAW", 0);
        System.exit(1);
        return;
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$chainsaw$Main == null)
        {
            class1 = _mthclass$("org.apache.log4j.chainsaw.Main");
            class$org$apache$log4j$chainsaw$Main = class1;
        } else
        {
            class1 = class$org$apache$log4j$chainsaw$Main;
        }
        LOG = Logger.getLogger(class1);
    }

    private class _cls1 extends WindowAdapter
    {

        private final Main this$0;

        public void windowClosing(WindowEvent windowevent)
        {
            ExitAction.INSTANCE.actionPerformed(null);
        }

        _cls1()
        {
            this$0 = Main.this;
            super();
        }
    }

}
