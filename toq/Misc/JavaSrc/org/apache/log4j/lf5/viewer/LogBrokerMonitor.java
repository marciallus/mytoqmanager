// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.JColorChooser;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRootPane;
import javax.swing.JScrollBar;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JTextArea;
import javax.swing.JToolBar;
import javax.swing.KeyStroke;
import javax.swing.ListSelectionModel;
import javax.swing.SwingUtilities;
import org.apache.log4j.lf5.LogLevel;
import org.apache.log4j.lf5.LogRecord;
import org.apache.log4j.lf5.LogRecordFilter;
import org.apache.log4j.lf5.util.DateFormatManager;
import org.apache.log4j.lf5.util.LogFileParser;
import org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel;
import org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree;
import org.apache.log4j.lf5.viewer.configure.ConfigurationManager;
import org.apache.log4j.lf5.viewer.configure.MRUFileManager;

// Referenced classes of package org.apache.log4j.lf5.viewer:
//            LogTableColumn, LogTable, FilteredLogTableModel, TrackingAdjustmentListener, 
//            LogFactor5ErrorDialog, LogFactor5InputDialog, LF5SwingUtils

public class LogBrokerMonitor
{
    class LogBrokerMonitorWindowAdaptor extends java.awt.event.WindowAdapter
    {

        protected LogBrokerMonitor _monitor;
        private final LogBrokerMonitor this$0;

        public void windowClosing(java.awt.event.WindowEvent windowevent)
        {
            _monitor.requestClose();
        }

        public LogBrokerMonitorWindowAdaptor(LogBrokerMonitor logbrokermonitor1)
        {
            this$0 = LogBrokerMonitor.this;
            super();
            _monitor = logbrokermonitor1;
        }
    }


    public static final String DETAILED_VIEW = "Detailed";
    protected String _NDCTextFilter;
    protected boolean _callSystemExitOnClose;
    protected CategoryExplorerTree _categoryExplorerTree;
    protected List _columns;
    protected ConfigurationManager _configurationManager;
    protected String _currentView;
    protected List _displayedLogBrokerProperties;
    protected File _fileLocation;
    protected String _fontName;
    protected int _fontSize;
    protected JComboBox _fontSizeCombo;
    protected boolean _isDisposed;
    protected java.awt.Dimension _lastTableViewportSize;
    protected LogLevel _leastSevereDisplayedLogLevel;
    protected List _levels;
    protected boolean _loadSystemFonts;
    protected Object _lock;
    protected Map _logLevelMenuItems;
    protected JFrame _logMonitorFrame;
    protected int _logMonitorFrameHeight;
    protected int _logMonitorFrameWidth;
    protected Map _logTableColumnMenuItems;
    protected JScrollPane _logTableScrollPane;
    protected MRUFileManager _mruFileManager;
    protected String _searchText;
    protected JLabel _statusLabel;
    protected LogTable _table;
    protected boolean _trackTableScrollPane;

    public LogBrokerMonitor(List list)
    {
        _logMonitorFrameWidth = 550;
        _logMonitorFrameHeight = 500;
        _NDCTextFilter = "";
        _leastSevereDisplayedLogLevel = LogLevel.DEBUG;
        _lock = new Object();
        _fontSize = 10;
        _fontName = "Dialog";
        _currentView = "Detailed";
        _loadSystemFonts = false;
        _trackTableScrollPane = true;
        _callSystemExitOnClose = false;
        _displayedLogBrokerProperties = new Vector();
        _logLevelMenuItems = new HashMap();
        _logTableColumnMenuItems = new HashMap();
        _levels = null;
        _columns = null;
        _isDisposed = false;
        _configurationManager = null;
        _mruFileManager = null;
        _fileLocation = null;
        _levels = list;
        _columns = LogTableColumn.getLogTableColumns();
        String s = System.getProperty("monitor.exit");
        if (s == null)
            s = "false";
        if (s.trim().toLowerCase().equals("true"))
            _callSystemExitOnClose = true;
        initComponents();
        _logMonitorFrame.addWindowListener(new LogBrokerMonitorWindowAdaptor(this));
    }

    public void addDisplayedProperty(Object obj)
    {
        _displayedLogBrokerProperties.add(obj);
    }

    public void addMessage(final LogRecord lr)
    {
        if (_isDisposed)
        {
            return;
        } else
        {
            SwingUtilities.invokeLater(new _cls2());
            return;
        }
    }

    protected void addTableModelProperties()
    {
        final FilteredLogTableModel model = _table.getFilteredLogTableModel();
        addDisplayedProperty(new _cls5());
        addDisplayedProperty(new _cls6());
    }

    protected void centerFrame(JFrame jframe)
    {
        java.awt.Dimension dimension = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        java.awt.Dimension dimension1 = jframe.getSize();
        jframe.setLocation((dimension.width - dimension1.width) / 2, (dimension.height - dimension1.height) / 2);
    }

    protected int changeFontSizeCombo(JComboBox jcombobox, int i)
    {
        int j = jcombobox.getItemCount();
        Object obj = jcombobox.getItemAt(0);
        int k = Integer.parseInt(String.valueOf(obj));
        for (int l = 0; l < j; l++)
        {
            Object obj1 = jcombobox.getItemAt(l);
            int i1 = Integer.parseInt(String.valueOf(obj1));
            if (k < i1 && i1 <= i)
            {
                k = i1;
                obj = obj1;
            }
        }

        jcombobox.setSelectedItem(obj);
        return k;
    }

    protected void clearDetailTextArea()
    {
        _table._detailTextArea.setText("");
    }

    protected void closeAfterConfirm()
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (!_callSystemExitOnClose)
        {
            stringbuffer.append("Are you sure you want to close the logging ");
            stringbuffer.append("console?\n");
            stringbuffer.append("(Note: This will not shut down the Virtual Machine,\n");
            stringbuffer.append("or the Swing event thread.)");
        } else
        {
            stringbuffer.append("Are you sure you want to exit?\n");
            stringbuffer.append("This will shut down the Virtual Machine.\n");
        }
        String s = "Are you sure you want to dispose of the Logging Console?";
        if (_callSystemExitOnClose)
            s = "Are you sure you want to exit?";
        if (JOptionPane.showConfirmDialog(_logMonitorFrame, stringbuffer.toString(), s, 2, 3, null) == 0)
            dispose();
    }

    protected JMenuItem createAllLogLevelsMenuItem()
    {
        JMenuItem jmenuitem = new JMenuItem("Show all LogLevels");
        jmenuitem.setMnemonic('s');
        jmenuitem.addActionListener(new _cls8());
        return jmenuitem;
    }

    protected JMenuItem createAllLogTableColumnsMenuItem()
    {
        JMenuItem jmenuitem = new JMenuItem("Show all Columns");
        jmenuitem.setMnemonic('s');
        jmenuitem.addActionListener(new _cls14());
        return jmenuitem;
    }

    protected JMenuItem createCloseMI()
    {
        JMenuItem jmenuitem = new JMenuItem("Close");
        jmenuitem.setMnemonic('c');
        jmenuitem.setAccelerator(KeyStroke.getKeyStroke("control Q"));
        jmenuitem.addActionListener(new _cls18());
        return jmenuitem;
    }

    protected JMenuItem createConfigureMaxRecords()
    {
        JMenuItem jmenuitem = new JMenuItem("Set Max Number of Records");
        jmenuitem.setMnemonic('m');
        jmenuitem.addActionListener(new _cls23());
        return jmenuitem;
    }

    protected JMenu createConfigureMenu()
    {
        JMenu jmenu = new JMenu("Configure");
        jmenu.setMnemonic('c');
        jmenu.add(createConfigureSave());
        jmenu.add(createConfigureReset());
        jmenu.add(createConfigureMaxRecords());
        return jmenu;
    }

    protected JMenuItem createConfigureReset()
    {
        JMenuItem jmenuitem = new JMenuItem("Reset");
        jmenuitem.setMnemonic('r');
        jmenuitem.addActionListener(new _cls22());
        return jmenuitem;
    }

    protected JMenuItem createConfigureSave()
    {
        JMenuItem jmenuitem = new JMenuItem("Save");
        jmenuitem.setMnemonic('s');
        jmenuitem.addActionListener(new _cls21());
        return jmenuitem;
    }

    protected JTextArea createDetailTextArea()
    {
        JTextArea jtextarea = new JTextArea();
        jtextarea.setFont(new java.awt.Font("Monospaced", 0, 14));
        jtextarea.setTabSize(3);
        jtextarea.setLineWrap(true);
        jtextarea.setWrapStyleWord(false);
        return jtextarea;
    }

    protected JMenuItem createEditFindMI()
    {
        JMenuItem jmenuitem = new JMenuItem("Find");
        jmenuitem.setMnemonic('f');
        jmenuitem.setAccelerator(KeyStroke.getKeyStroke("control F"));
        jmenuitem.addActionListener(new _cls26());
        return jmenuitem;
    }

    protected JMenuItem createEditFindNextMI()
    {
        JMenuItem jmenuitem = new JMenuItem("Find Next");
        jmenuitem.setMnemonic('n');
        jmenuitem.setAccelerator(KeyStroke.getKeyStroke("F3"));
        jmenuitem.addActionListener(new _cls25());
        return jmenuitem;
    }

    protected JMenu createEditMenu()
    {
        JMenu jmenu = new JMenu("Edit");
        jmenu.setMnemonic('e');
        jmenu.add(createEditFindMI());
        jmenu.add(createEditFindNextMI());
        jmenu.addSeparator();
        jmenu.add(createEditSortNDCMI());
        jmenu.add(createEditRestoreAllNDCMI());
        return jmenu;
    }

    protected JMenuItem createEditRestoreAllNDCMI()
    {
        JMenuItem jmenuitem = new JMenuItem("Restore all NDCs");
        jmenuitem.setMnemonic('r');
        jmenuitem.addActionListener(new _cls28());
        return jmenuitem;
    }

    protected JMenuItem createEditSortNDCMI()
    {
        JMenuItem jmenuitem = new JMenuItem("Sort by NDC");
        jmenuitem.setMnemonic('s');
        jmenuitem.addActionListener(new _cls27());
        return jmenuitem;
    }

    protected JMenuItem createExitMI()
    {
        JMenuItem jmenuitem = new JMenuItem("Exit");
        jmenuitem.setMnemonic('x');
        jmenuitem.addActionListener(new _cls20());
        return jmenuitem;
    }

    protected JMenu createFileMenu()
    {
        JMenu jmenu = new JMenu("File");
        jmenu.setMnemonic('f');
        jmenu.add(createOpenMI());
        jmenu.add(createOpenURLMI());
        jmenu.addSeparator();
        jmenu.add(createCloseMI());
        createMRUFileListMI(jmenu);
        jmenu.addSeparator();
        jmenu.add(createExitMI());
        return jmenu;
    }

    protected JMenu createHelpMenu()
    {
        JMenu jmenu = new JMenu("Help");
        jmenu.setMnemonic('h');
        jmenu.add(createHelpProperties());
        return jmenu;
    }

    protected JMenuItem createHelpProperties()
    {
        JMenuItem jmenuitem = new JMenuItem("LogFactor5 Properties");
        jmenuitem.setMnemonic('l');
        jmenuitem.addActionListener(new _cls24());
        return jmenuitem;
    }

    protected JMenu createLogLevelColorMenu()
    {
        JMenu jmenu = new JMenu("Configure LogLevel Colors");
        jmenu.setMnemonic('c');
        for (Iterator iterator = getLogLevels(); iterator.hasNext(); jmenu.add(createSubMenuItem((LogLevel)iterator.next())));
        return jmenu;
    }

    protected JComboBox createLogLevelCombo()
    {
        JComboBox jcombobox = new JComboBox();
        for (Iterator iterator = getLogLevels(); iterator.hasNext(); jcombobox.addItem(iterator.next()));
        jcombobox.setSelectedItem(_leastSevereDisplayedLogLevel);
        jcombobox.addActionListener(new _cls32());
        jcombobox.setMaximumSize(jcombobox.getPreferredSize());
        return jcombobox;
    }

    protected JMenu createLogLevelMenu()
    {
        JMenu jmenu = new JMenu("Log Level");
        jmenu.setMnemonic('l');
        for (Iterator iterator = getLogLevels(); iterator.hasNext(); jmenu.add(getMenuItem((LogLevel)iterator.next())));
        jmenu.addSeparator();
        jmenu.add(createAllLogLevelsMenuItem());
        jmenu.add(createNoLogLevelsMenuItem());
        jmenu.addSeparator();
        jmenu.add(createLogLevelColorMenu());
        jmenu.add(createResetLogLevelColorMenuItem());
        return jmenu;
    }

    protected LogRecordFilter createLogRecordFilter()
    {
        return new _cls3();
    }

    protected JCheckBoxMenuItem createLogTableColumnMenuItem(LogTableColumn logtablecolumn)
    {
        JCheckBoxMenuItem jcheckboxmenuitem = new JCheckBoxMenuItem(logtablecolumn.toString());
        jcheckboxmenuitem.setSelected(true);
        jcheckboxmenuitem.setMnemonic(logtablecolumn.toString().charAt(0));
        jcheckboxmenuitem.addActionListener(new _cls13());
        return jcheckboxmenuitem;
    }

    protected void createMRUFileListMI(JMenu jmenu)
    {
        String as[] = _mruFileManager.getMRUFileList();
        if (as != null)
        {
            jmenu.addSeparator();
            for (int i = 0; i < as.length; i++)
            {
                JMenuItem jmenuitem = new JMenuItem((i + 1) + " " + as[i]);
                jmenuitem.setMnemonic(i + 1);
                jmenuitem.addActionListener(new _cls19());
                jmenu.add(jmenuitem);
            }

        }
    }

    protected JMenuBar createMenuBar()
    {
        JMenuBar jmenubar = new JMenuBar();
        jmenubar.add(createFileMenu());
        jmenubar.add(createEditMenu());
        jmenubar.add(createLogLevelMenu());
        jmenubar.add(createViewMenu());
        jmenubar.add(createConfigureMenu());
        jmenubar.add(createHelpMenu());
        return jmenubar;
    }

    protected JCheckBoxMenuItem createMenuItem(LogLevel loglevel)
    {
        JCheckBoxMenuItem jcheckboxmenuitem = new JCheckBoxMenuItem(loglevel.toString());
        jcheckboxmenuitem.setSelected(true);
        jcheckboxmenuitem.setMnemonic(loglevel.toString().charAt(0));
        jcheckboxmenuitem.addActionListener(new _cls12());
        return jcheckboxmenuitem;
    }

    protected LogRecordFilter createNDCLogRecordFilter(String s)
    {
        _NDCTextFilter = s;
        return new _cls4();
    }

    protected JMenuItem createNoLogLevelsMenuItem()
    {
        JMenuItem jmenuitem = new JMenuItem("Hide all LogLevels");
        jmenuitem.setMnemonic('h');
        jmenuitem.addActionListener(new _cls9());
        return jmenuitem;
    }

    protected JMenuItem createNoLogTableColumnsMenuItem()
    {
        JMenuItem jmenuitem = new JMenuItem("Hide all Columns");
        jmenuitem.setMnemonic('h');
        jmenuitem.addActionListener(new _cls15());
        return jmenuitem;
    }

    protected JMenuItem createOpenMI()
    {
        JMenuItem jmenuitem = new JMenuItem("Open...");
        jmenuitem.setMnemonic('o');
        jmenuitem.addActionListener(new _cls16());
        return jmenuitem;
    }

    protected JMenuItem createOpenURLMI()
    {
        JMenuItem jmenuitem = new JMenuItem("Open URL...");
        jmenuitem.setMnemonic('u');
        jmenuitem.addActionListener(new _cls17());
        return jmenuitem;
    }

    protected JMenuItem createResetLogLevelColorMenuItem()
    {
        JMenuItem jmenuitem = new JMenuItem("Reset LogLevel Colors");
        jmenuitem.setMnemonic('r');
        jmenuitem.addActionListener(new _cls10());
        return jmenuitem;
    }

    protected JPanel createStatusArea()
    {
        JPanel jpanel = new JPanel();
        JLabel jlabel = new JLabel("No log records to display.");
        _statusLabel = jlabel;
        jlabel.setHorizontalAlignment(2);
        jpanel.setBorder(BorderFactory.createEtchedBorder());
        jpanel.setLayout(new java.awt.FlowLayout(0, 0, 0));
        jpanel.add(jlabel);
        return jpanel;
    }

    protected JMenuItem createSubMenuItem(final LogLevel logLevel)
    {
        final JMenuItem result = new JMenuItem(logLevel.toString());
        result.setMnemonic(logLevel.toString().charAt(0));
        result.addActionListener(new _cls11());
        return result;
    }

    protected JToolBar createToolBar()
    {
        JToolBar jtoolbar = new JToolBar();
        jtoolbar.putClientProperty("JToolBar.isRollover", Boolean.TRUE);
        JComboBox jcombobox = new JComboBox();
        JComboBox jcombobox1 = new JComboBox();
        _fontSizeCombo = jcombobox1;
        ClassLoader classloader = getClass().getClassLoader();
        if (classloader == null)
            classloader = ClassLoader.getSystemClassLoader();
        URL url = classloader.getResource("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");
        ImageIcon imageicon = null;
        if (url != null)
            imageicon = new ImageIcon(url);
        JButton jbutton = new JButton("Clear Log Table");
        if (imageicon != null)
            jbutton.setIcon(imageicon);
        jbutton.setToolTipText("Clear Log Table.");
        jbutton.addActionListener(new _cls29());
        java.awt.Toolkit toolkit = java.awt.Toolkit.getDefaultToolkit();
        String as[];
        if (_loadSystemFonts)
            as = java.awt.GraphicsEnvironment.getLocalGraphicsEnvironment().getAvailableFontFamilyNames();
        else
            as = toolkit.getFontList();
        for (int i = 0; i < as.length; i++)
            jcombobox.addItem(as[i]);

        jcombobox.setSelectedItem(_fontName);
        jcombobox.addActionListener(new _cls30());
        jcombobox1.addItem("8");
        jcombobox1.addItem("9");
        jcombobox1.addItem("10");
        jcombobox1.addItem("12");
        jcombobox1.addItem("14");
        jcombobox1.addItem("16");
        jcombobox1.addItem("18");
        jcombobox1.addItem("24");
        jcombobox1.setSelectedItem(String.valueOf(_fontSize));
        jcombobox1.addActionListener(new _cls31());
        jtoolbar.add(new JLabel(" Font: "));
        jtoolbar.add(jcombobox);
        jtoolbar.add(jcombobox1);
        jtoolbar.addSeparator();
        jtoolbar.addSeparator();
        jtoolbar.add(jbutton);
        jbutton.setAlignmentY(0.5F);
        jbutton.setAlignmentX(0.5F);
        jcombobox.setMaximumSize(jcombobox.getPreferredSize());
        jcombobox1.setMaximumSize(jcombobox1.getPreferredSize());
        return jtoolbar;
    }

    protected JMenu createViewMenu()
    {
        JMenu jmenu = new JMenu("View");
        jmenu.setMnemonic('v');
        for (Iterator iterator = getLogTableColumns(); iterator.hasNext(); jmenu.add(getLogTableColumnMenuItem((LogTableColumn)iterator.next())));
        jmenu.addSeparator();
        jmenu.add(createAllLogTableColumnsMenuItem());
        jmenu.add(createNoLogTableColumnsMenuItem());
        return jmenu;
    }

    public void dispose()
    {
        _logMonitorFrame.dispose();
        _isDisposed = true;
        if (_callSystemExitOnClose)
            System.exit(0);
    }

    protected int findRecord(int i, String s, List list)
    {
        int j;
        if (i < 0)
            j = 0;
        else
            j = i + 1;
        int k = list.size();
        for (int l = j; l < k; l++)
            if (matches((LogRecord)list.get(l), s))
                return l;

        int i1 = j;
        for (int j1 = 0; j1 < i1; j1++)
            if (matches((LogRecord)list.get(j1), s))
                return j1;

        return -1;
    }

    protected void findSearchText()
    {
        String s = _searchText;
        if (s != null && s.length() != 0)
        {
            selectRow(findRecord(getFirstSelectedRow(), s, _table.getFilteredLogTableModel().getFilteredRecords()));
            return;
        } else
        {
            return;
        }
    }

    public JFrame getBaseFrame()
    {
        return _logMonitorFrame;
    }

    public boolean getCallSystemExitOnClose()
    {
        return _callSystemExitOnClose;
    }

    public CategoryExplorerTree getCategoryExplorerTree()
    {
        return _categoryExplorerTree;
    }

    public DateFormatManager getDateFormatManager()
    {
        return _table.getDateFormatManager();
    }

    protected int getFirstSelectedRow()
    {
        return _table.getSelectionModel().getMinSelectionIndex();
    }

    public Map getLogLevelMenuItems()
    {
        return _logLevelMenuItems;
    }

    protected Iterator getLogLevels()
    {
        return _levels.iterator();
    }

    protected JCheckBoxMenuItem getLogTableColumnMenuItem(LogTableColumn logtablecolumn)
    {
        JCheckBoxMenuItem jcheckboxmenuitem = (JCheckBoxMenuItem)(JCheckBoxMenuItem)_logTableColumnMenuItems.get(logtablecolumn);
        if (jcheckboxmenuitem == null)
        {
            jcheckboxmenuitem = createLogTableColumnMenuItem(logtablecolumn);
            _logTableColumnMenuItems.put(logtablecolumn, jcheckboxmenuitem);
        }
        return jcheckboxmenuitem;
    }

    public Map getLogTableColumnMenuItems()
    {
        return _logTableColumnMenuItems;
    }

    protected Iterator getLogTableColumns()
    {
        return _columns.iterator();
    }

    protected JCheckBoxMenuItem getMenuItem(LogLevel loglevel)
    {
        JCheckBoxMenuItem jcheckboxmenuitem = (JCheckBoxMenuItem)(JCheckBoxMenuItem)_logLevelMenuItems.get(loglevel);
        if (jcheckboxmenuitem == null)
        {
            jcheckboxmenuitem = createMenuItem(loglevel);
            _logLevelMenuItems.put(loglevel, jcheckboxmenuitem);
        }
        return jcheckboxmenuitem;
    }

    public String getNDCTextFilter()
    {
        return _NDCTextFilter;
    }

    protected String getRecordsDisplayedMessage()
    {
        FilteredLogTableModel filteredlogtablemodel = _table.getFilteredLogTableModel();
        return getStatusText(filteredlogtablemodel.getRowCount(), filteredlogtablemodel.getTotalRowCount());
    }

    protected String getStatusText(int i, int j)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("Displaying: ");
        stringbuffer.append(i);
        stringbuffer.append(" records out of a total of: ");
        stringbuffer.append(j);
        stringbuffer.append(" records.");
        return stringbuffer.toString();
    }

    public JCheckBoxMenuItem getTableColumnMenuItem(LogTableColumn logtablecolumn)
    {
        return getLogTableColumnMenuItem(logtablecolumn);
    }

    public void hide()
    {
        _logMonitorFrame.setVisible(false);
    }

    protected void initComponents()
    {
        _logMonitorFrame = new JFrame("LogFactor5");
        _logMonitorFrame.setDefaultCloseOperation(0);
        URL url = getClass().getResource("/org/apache/log4j/lf5/viewer/images/lf5_small_icon.gif");
        if (url != null)
            _logMonitorFrame.setIconImage((new ImageIcon(url)).getImage());
        updateFrameSize();
        JTextArea jtextarea = createDetailTextArea();
        JScrollPane jscrollpane = new JScrollPane(jtextarea);
        _table = new LogTable(jtextarea);
        setView(_currentView, _table);
        _table.setFont(new java.awt.Font(_fontName, 0, _fontSize));
        _logTableScrollPane = new JScrollPane(_table);
        if (_trackTableScrollPane)
            _logTableScrollPane.getVerticalScrollBar().addAdjustmentListener(new TrackingAdjustmentListener());
        JSplitPane jsplitpane = new JSplitPane();
        jsplitpane.setOneTouchExpandable(true);
        jsplitpane.setOrientation(0);
        jsplitpane.setLeftComponent(_logTableScrollPane);
        jsplitpane.setRightComponent(jscrollpane);
        jsplitpane.setDividerLocation(350);
        _categoryExplorerTree = new CategoryExplorerTree();
        _table.getFilteredLogTableModel().setLogRecordFilter(createLogRecordFilter());
        JScrollPane jscrollpane1 = new JScrollPane(_categoryExplorerTree);
        jscrollpane1.setPreferredSize(new java.awt.Dimension(130, 400));
        _mruFileManager = new MRUFileManager();
        JSplitPane jsplitpane1 = new JSplitPane();
        jsplitpane1.setOneTouchExpandable(true);
        jsplitpane1.setRightComponent(jsplitpane);
        jsplitpane1.setLeftComponent(jscrollpane1);
        jsplitpane1.setDividerLocation(130);
        _logMonitorFrame.getRootPane().setJMenuBar(createMenuBar());
        _logMonitorFrame.getContentPane().add(jsplitpane1, "Center");
        _logMonitorFrame.getContentPane().add(createToolBar(), "North");
        _logMonitorFrame.getContentPane().add(createStatusArea(), "South");
        makeLogTableListenToCategoryExplorer();
        addTableModelProperties();
        _configurationManager = new ConfigurationManager(this, _table);
    }

    protected boolean loadLogFile(File file)
    {
        try
        {
            (new LogFileParser(file)).parse(this);
        }
        catch (IOException ioexception)
        {
            new LogFactor5ErrorDialog(getBaseFrame(), "Error reading " + file.getName());
            return false;
        }
        return true;
    }

    protected boolean loadLogFile(URL url)
    {
        try
        {
            (new LogFileParser(url.openStream())).parse(this);
        }
        catch (IOException ioexception)
        {
            new LogFactor5ErrorDialog(getBaseFrame(), "Error reading URL:" + url.getFile());
            return false;
        }
        return true;
    }

    protected void makeLogTableListenToCategoryExplorer()
    {
        _cls7 _lcls7 = new _cls7();
        _categoryExplorerTree.getExplorerModel().addActionListener(_lcls7);
    }

    protected boolean matches(LogRecord logrecord, String s)
    {
        String s1 = logrecord.getMessage();
        String s2 = logrecord.getNDC();
        return (s1 != null || s2 != null) && s != null && (s1.toLowerCase().indexOf(s.toLowerCase()) != -1 || s2.toLowerCase().indexOf(s.toLowerCase()) != -1);
    }

    protected void pause(int i)
    {
        long l = i;
        try
        {
            Thread.sleep(l);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
    }

    protected void refresh(JTextArea jtextarea)
    {
        String s = jtextarea.getText();
        jtextarea.setText("");
        jtextarea.setText(s);
    }

    protected void refreshDetailTextArea()
    {
        refresh(_table._detailTextArea);
    }

    protected void requestClose()
    {
        setCallSystemExitOnClose(false);
        closeAfterConfirm();
    }

    protected void requestExit()
    {
        _mruFileManager.save();
        setCallSystemExitOnClose(true);
        closeAfterConfirm();
    }

    protected void requestOpen()
    {
        JFileChooser jfilechooser;
        if (_fileLocation == null)
            jfilechooser = new JFileChooser();
        else
            jfilechooser = new JFileChooser(_fileLocation);
        if (jfilechooser.showOpenDialog(_logMonitorFrame) == 0)
        {
            File file = jfilechooser.getSelectedFile();
            if (loadLogFile(file))
            {
                _fileLocation = jfilechooser.getSelectedFile();
                _mruFileManager.set(file);
                updateMRUList();
            }
        }
    }

    protected void requestOpenMRU(java.awt.event.ActionEvent actionevent)
    {
        StringTokenizer stringtokenizer = new StringTokenizer(actionevent.getActionCommand());
        String s = stringtokenizer.nextToken().trim();
        String s1 = stringtokenizer.nextToken("\n");
        try
        {
            int i = -1 + Integer.parseInt(s);
            (new LogFileParser(_mruFileManager.getInputStream(i))).parse(this);
            _mruFileManager.moveToTop(i);
            updateMRUList();
            return;
        }
        catch (Exception exception)
        {
            new LogFactor5ErrorDialog(getBaseFrame(), "Unable to load file " + s1);
        }
    }

    protected void requestOpenURL()
    {
        String s;
        s = (new LogFactor5InputDialog(getBaseFrame(), "Open URL", "URL:")).getText();
        if (s == null)
            break MISSING_BLOCK_LABEL_86;
        if (s.indexOf("://") == -1)
            s = "http://" + s;
        URL url = new URL(s);
        if (loadLogFile(url))
        {
            _mruFileManager.set(url);
            updateMRUList();
        }
        return;
        MalformedURLException malformedurlexception;
        malformedurlexception;
        new LogFactor5ErrorDialog(getBaseFrame(), "Error reading URL.");
        return;
    }

    protected void resetConfiguration()
    {
        _configurationManager.reset();
    }

    protected void saveConfiguration()
    {
        _configurationManager.save();
    }

    protected void selectAllLogLevels(boolean flag)
    {
        for (Iterator iterator = getLogLevels(); iterator.hasNext(); getMenuItem((LogLevel)iterator.next()).setSelected(flag));
    }

    protected void selectAllLogTableColumns(boolean flag)
    {
        for (Iterator iterator = getLogTableColumns(); iterator.hasNext(); getLogTableColumnMenuItem((LogTableColumn)iterator.next()).setSelected(flag));
    }

    protected void selectRow(int i)
    {
        if (i == -1)
        {
            String s = _searchText + " not found.";
            JOptionPane.showMessageDialog(_logMonitorFrame, s, "Text not found", 1);
            return;
        } else
        {
            LF5SwingUtils.selectRow(i, _table, _logTableScrollPane);
            return;
        }
    }

    public void setCallSystemExitOnClose(boolean flag)
    {
        _callSystemExitOnClose = flag;
    }

    public void setDateFormatManager(DateFormatManager dateformatmanager)
    {
        _table.setDateFormatManager(dateformatmanager);
    }

    public void setFontSize(int i)
    {
        changeFontSizeCombo(_fontSizeCombo, i);
    }

    protected void setFontSize(java.awt.Component component, int i)
    {
        java.awt.Font font = component.getFont();
        component.setFont(new java.awt.Font(font.getFontName(), font.getStyle(), i));
    }

    protected void setFontSizeSilently(int i)
    {
        _fontSize = i;
        setFontSize(_table._detailTextArea, i);
        selectRow(0);
        setFontSize(_table, i);
    }

    public void setFrameSize(int i, int j)
    {
        java.awt.Dimension dimension = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        if (i > 0 && i < dimension.width)
            _logMonitorFrameWidth = i;
        if (j > 0 && j < dimension.height)
            _logMonitorFrameHeight = j;
        updateFrameSize();
    }

    protected void setLeastSevereDisplayedLogLevel(LogLevel loglevel)
    {
        if (loglevel != null && _leastSevereDisplayedLogLevel != loglevel)
        {
            _leastSevereDisplayedLogLevel = loglevel;
            _table.getFilteredLogTableModel().refresh();
            updateStatusLabel();
            return;
        } else
        {
            return;
        }
    }

    public void setMaxNumberOfLogRecords(int i)
    {
        _table.getFilteredLogTableModel().setMaxNumberOfLogRecords(i);
    }

    protected void setMaxRecordConfiguration()
    {
        String s;
        s = (new LogFactor5InputDialog(getBaseFrame(), "Set Max Number of Records", "", 10)).getText();
        if (s == null)
            break MISSING_BLOCK_LABEL_34;
        setMaxNumberOfLogRecords(Integer.parseInt(s));
        return;
        NumberFormatException numberformatexception;
        numberformatexception;
        new LogFactor5ErrorDialog(getBaseFrame(), "'" + s + "' is an invalid parameter.\nPlease try again.");
        setMaxRecordConfiguration();
        return;
    }

    public void setNDCLogRecordFilter(String s)
    {
        _table.getFilteredLogTableModel().setLogRecordFilter(createNDCLogRecordFilter(s));
    }

    protected void setNDCTextFilter(String s)
    {
        if (s == null)
        {
            _NDCTextFilter = "";
            return;
        } else
        {
            _NDCTextFilter = s;
            return;
        }
    }

    protected void setSearchText(String s)
    {
        _searchText = s;
    }

    public void setTitle(String s)
    {
        _logMonitorFrame.setTitle(s + " - LogFactor5");
    }

    protected void setView(String s, LogTable logtable)
    {
        if ("Detailed".equals(s))
        {
            logtable.setDetailedView();
            _currentView = s;
            return;
        } else
        {
            throw new IllegalArgumentException(s + "does not match a supported view.");
        }
    }

    public void show()
    {
        show(0);
    }

    public void show(final int delay)
    {
        if (_logMonitorFrame.isVisible())
        {
            return;
        } else
        {
            SwingUtilities.invokeLater(new _cls1());
            return;
        }
    }

    protected void showLogLevelColorChangeDialog(JMenuItem jmenuitem, LogLevel loglevel)
    {
        java.awt.Color color = JColorChooser.showDialog(_logMonitorFrame, "Choose LogLevel Color", jmenuitem.getForeground());
        if (color != null)
        {
            loglevel.setLogLevelColorMap(loglevel, color);
            _table.getFilteredLogTableModel().refresh();
        }
    }

    protected void showPropertiesDialog(String s)
    {
        JOptionPane.showMessageDialog(_logMonitorFrame, ((Object) (_displayedLogBrokerProperties.toArray())), s, -1);
    }

    protected void sortByNDC()
    {
        String s = _NDCTextFilter;
        if (s != null && s.length() != 0)
        {
            _table.getFilteredLogTableModel().setLogRecordFilter(createNDCLogRecordFilter(s));
            return;
        } else
        {
            return;
        }
    }

    protected void trackTableScrollPane()
    {
    }

    protected void updateFrameSize()
    {
        _logMonitorFrame.setSize(_logMonitorFrameWidth, _logMonitorFrameHeight);
        centerFrame(_logMonitorFrame);
    }

    protected void updateMRUList()
    {
        JMenu jmenu = _logMonitorFrame.getJMenuBar().getMenu(0);
        jmenu.removeAll();
        jmenu.add(createOpenMI());
        jmenu.add(createOpenURLMI());
        jmenu.addSeparator();
        jmenu.add(createCloseMI());
        createMRUFileListMI(jmenu);
        jmenu.addSeparator();
        jmenu.add(createExitMI());
    }

    protected void updateStatusLabel()
    {
        _statusLabel.setText(getRecordsDisplayedMessage());
    }

    protected List updateView()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = _columns.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            LogTableColumn logtablecolumn = (LogTableColumn)iterator.next();
            if (getLogTableColumnMenuItem(logtablecolumn).isSelected())
                arraylist.add(logtablecolumn);
        } while (true);
        return arraylist;
    }

    private class _cls2
        implements Runnable
    {

        private final LogBrokerMonitor this$0;
        private final LogRecord val$lr;

        public void run()
        {
            _categoryExplorerTree.getExplorerModel().addLogRecord(lr);
            _table.getFilteredLogTableModel().addLogRecord(lr);
            updateStatusLabel();
        }

        _cls2()
        {
            this$0 = LogBrokerMonitor.this;
            lr = logrecord;
            super();
        }
    }


    private class _cls5
    {

        private final LogBrokerMonitor this$0;

        public String toString()
        {
            return getRecordsDisplayedMessage();
        }

        _cls5()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls6
    {

        private final LogBrokerMonitor this$0;
        private final FilteredLogTableModel val$model;

        public String toString()
        {
            return "Maximum number of displayed LogRecords: " + model._maxNumberOfLogRecords;
        }

        _cls6()
        {
            this$0 = LogBrokerMonitor.this;
            model = filteredlogtablemodel;
            super();
        }
    }


    private class _cls8
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            selectAllLogLevels(true);
            _table.getFilteredLogTableModel().refresh();
            updateStatusLabel();
        }

        _cls8()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls14
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            selectAllLogTableColumns(true);
            List list = updateView();
            _table.setView(list);
        }

        _cls14()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls18
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            requestClose();
        }

        _cls18()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls23
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            setMaxRecordConfiguration();
        }

        _cls23()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls22
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            resetConfiguration();
        }

        _cls22()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls21
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            saveConfiguration();
        }

        _cls21()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls26
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            String s = JOptionPane.showInputDialog(_logMonitorFrame, "Find text: ", "Search Record Messages", 3);
            setSearchText(s);
            findSearchText();
        }

        _cls26()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls25
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            findSearchText();
        }

        _cls25()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls28
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            _table.getFilteredLogTableModel().setLogRecordFilter(createLogRecordFilter());
            setNDCTextFilter("");
            _table.getFilteredLogTableModel().refresh();
            updateStatusLabel();
        }

        _cls28()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls27
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            String s = JOptionPane.showInputDialog(_logMonitorFrame, "Sort by this NDC: ", "Sort Log Records by NDC", 3);
            setNDCTextFilter(s);
            sortByNDC();
            _table.getFilteredLogTableModel().refresh();
            updateStatusLabel();
        }

        _cls27()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls20
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            requestExit();
        }

        _cls20()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls24
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            showPropertiesDialog("LogFactor5 Properties");
        }

        _cls24()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls32
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            LogLevel loglevel = (LogLevel)((JComboBox)actionevent.getSource()).getSelectedItem();
            setLeastSevereDisplayedLogLevel(loglevel);
        }

        _cls32()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls3
        implements LogRecordFilter
    {

        private final LogBrokerMonitor this$0;

        public boolean passes(LogRecord logrecord)
        {
            CategoryPath categorypath = new CategoryPath(logrecord.getCategory());
            return getMenuItem(logrecord.getLevel()).isSelected() && _categoryExplorerTree.getExplorerModel().isCategoryPathActive(categorypath);
        }

        _cls3()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls13
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            List list = updateView();
            _table.setView(list);
        }

        _cls13()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls19
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            requestOpenMRU(actionevent);
        }

        _cls19()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls12
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            _table.getFilteredLogTableModel().refresh();
            updateStatusLabel();
        }

        _cls12()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls4
        implements LogRecordFilter
    {

        private final LogBrokerMonitor this$0;

        public boolean passes(LogRecord logrecord)
        {
            String s = logrecord.getNDC();
            CategoryPath categorypath = new CategoryPath(logrecord.getCategory());
            return s != null && _NDCTextFilter != null && s.toLowerCase().indexOf(_NDCTextFilter.toLowerCase()) != -1 && getMenuItem(logrecord.getLevel()).isSelected() && _categoryExplorerTree.getExplorerModel().isCategoryPathActive(categorypath);
        }

        _cls4()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls9
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            selectAllLogLevels(false);
            _table.getFilteredLogTableModel().refresh();
            updateStatusLabel();
        }

        _cls9()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls15
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            selectAllLogTableColumns(false);
            List list = updateView();
            _table.setView(list);
        }

        _cls15()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls16
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            requestOpen();
        }

        _cls16()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls17
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            requestOpenURL();
        }

        _cls17()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls10
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            LogLevel.resetLogLevelColorMap();
            _table.getFilteredLogTableModel().refresh();
        }

        _cls10()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls11
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;
        private final LogLevel val$logLevel;
        private final JMenuItem val$result;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            showLogLevelColorChangeDialog(result, logLevel);
        }

        _cls11()
        {
            this$0 = LogBrokerMonitor.this;
            result = jmenuitem;
            logLevel = loglevel;
            super();
        }
    }


    private class _cls29
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            _table.clearLogRecords();
            _categoryExplorerTree.getExplorerModel().resetAllNodeCounts();
            updateStatusLabel();
            clearDetailTextArea();
            LogRecord.resetSequenceNumber();
        }

        _cls29()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls30
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            String s = (String)((JComboBox)actionevent.getSource()).getSelectedItem();
            _table.setFont(new java.awt.Font(s, 0, _fontSize));
            _fontName = s;
        }

        _cls30()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls31
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            int i = Integer.valueOf((String)((JComboBox)actionevent.getSource()).getSelectedItem()).intValue();
            setFontSizeSilently(i);
            refreshDetailTextArea();
            _fontSize = i;
        }

        _cls31()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls7
        implements java.awt.event.ActionListener
    {

        private final LogBrokerMonitor this$0;

        public void actionPerformed(java.awt.event.ActionEvent actionevent)
        {
            _table.getFilteredLogTableModel().refresh();
            updateStatusLabel();
        }

        _cls7()
        {
            this$0 = LogBrokerMonitor.this;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        private final LogBrokerMonitor this$0;
        private final int val$delay;

        public void run()
        {
            Thread.yield();
            pause(delay);
            _logMonitorFrame.setVisible(true);
        }

        _cls1()
        {
            this$0 = LogBrokerMonitor.this;
            delay = i;
            super();
        }
    }

}
