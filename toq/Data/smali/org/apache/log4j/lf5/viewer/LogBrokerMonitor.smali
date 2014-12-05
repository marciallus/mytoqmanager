.class public Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;
    }
.end annotation


# static fields
.field public static final DETAILED_VIEW:Ljava/lang/String; = "Detailed"


# instance fields
.field protected _NDCTextFilter:Ljava/lang/String;

.field protected _callSystemExitOnClose:Z

.field protected _categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

.field protected _columns:Ljava/util/List;

.field protected _configurationManager:Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

.field protected _currentView:Ljava/lang/String;

.field protected _displayedLogBrokerProperties:Ljava/util/List;

.field protected _fileLocation:Ljava/io/File;

.field protected _fontName:Ljava/lang/String;

.field protected _fontSize:I

.field protected _fontSizeCombo:Ljavax/swing/JComboBox;

.field protected _isDisposed:Z

.field protected _lastTableViewportSize:Ljava/awt/Dimension;

.field protected _leastSevereDisplayedLogLevel:Lorg/apache/log4j/lf5/LogLevel;

.field protected _levels:Ljava/util/List;

.field protected _loadSystemFonts:Z

.field protected _lock:Ljava/lang/Object;

.field protected _logLevelMenuItems:Ljava/util/Map;

.field protected _logMonitorFrame:Ljavax/swing/JFrame;

.field protected _logMonitorFrameHeight:I

.field protected _logMonitorFrameWidth:I

.field protected _logTableColumnMenuItems:Ljava/util/Map;

.field protected _logTableScrollPane:Ljavax/swing/JScrollPane;

.field protected _mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

.field protected _searchText:Ljava/lang/String;

.field protected _statusLabel:Ljavax/swing/JLabel;

.field protected _table:Lorg/apache/log4j/lf5/viewer/LogTable;

.field protected _trackTableScrollPane:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .param p1, "logLevels"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/16 v1, 0x226

    iput v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameWidth:I

    .line 101
    const/16 v1, 0x1f4

    iput v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameHeight:I

    .line 105
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    .line 106
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_leastSevereDisplayedLogLevel:Lorg/apache/log4j/lf5/LogLevel;

    .line 110
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_lock:Ljava/lang/Object;

    .line 113
    const/16 v1, 0xa

    iput v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    .line 114
    const-string v1, "Dialog"

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontName:Ljava/lang/String;

    .line 115
    const-string v1, "Detailed"

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_currentView:Ljava/lang/String;

    .line 117
    iput-boolean v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_loadSystemFonts:Z

    .line 118
    iput-boolean v4, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_trackTableScrollPane:Z

    .line 120
    iput-boolean v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    .line 121
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_displayedLogBrokerProperties:Ljava/util/List;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logLevelMenuItems:Ljava/util/Map;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableColumnMenuItems:Ljava/util/Map;

    .line 126
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_levels:Ljava/util/List;

    .line 127
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_columns:Ljava/util/List;

    .line 128
    iput-boolean v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_isDisposed:Z

    .line 130
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_configurationManager:Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

    .line 131
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    .line 132
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fileLocation:Ljava/io/File;

    .line 147
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_levels:Ljava/util/List;

    .line 148
    invoke-static {}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLogTableColumns()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_columns:Ljava/util/List;

    .line 152
    const-string v1, "monitor.exit"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "callSystemExitOnClose":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 155
    const-string v0, "false"

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iput-boolean v4, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    .line 163
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->initComponents()V

    .line 166
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;

    invoke-direct {v2, p0, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 169
    return-void
.end method


# virtual methods
.method public addDisplayedProperty(Ljava/lang/Object;)V
    .locals 1
    .param p1, "messageLine"    # Ljava/lang/Object;

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_displayedLogBrokerProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public addMessage(Lorg/apache/log4j/lf5/LogRecord;)V
    .locals 2
    .param p1, "lr"    # Lorg/apache/log4j/lf5/LogRecord;

    .prologue
    .line 252
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_isDisposed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/LogRecord;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected addTableModelProperties()V
    .locals 2

    .prologue
    .line 655
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    .line 657
    .local v0, "model":Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$5;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$5;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addDisplayedProperty(Ljava/lang/Object;)V

    .line 662
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$6;

    invoke-direct {v1, p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$6;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;)V

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addDisplayedProperty(Ljava/lang/Object;)V

    .line 668
    return-void
.end method

.method protected centerFrame(Ljavax/swing/JFrame;)V
    .locals 5
    .param p1, "frame"    # Ljavax/swing/JFrame;

    .prologue
    .line 1406
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    .line 1407
    .local v1, "screen":Ljava/awt/Dimension;
    invoke-virtual {p1}, Ljavax/swing/JFrame;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 1409
    .local v0, "comp":Ljava/awt/Dimension;
    iget v2, v1, Ljava/awt/Dimension;->width:I

    iget v3, v0, Ljava/awt/Dimension;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v1, Ljava/awt/Dimension;->height:I

    iget v4, v0, Ljava/awt/Dimension;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljavax/swing/JFrame;->setLocation(II)V

    .line 1412
    return-void
.end method

.method protected changeFontSizeCombo(Ljavax/swing/JComboBox;I)I
    .locals 7
    .param p1, "box"    # Ljavax/swing/JComboBox;
    .param p2, "requestedSize"    # I

    .prologue
    .line 466
    invoke-virtual {p1}, Ljavax/swing/JComboBox;->getItemCount()I

    move-result v3

    .line 469
    .local v3, "len":I
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljavax/swing/JComboBox;->getItemAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 470
    .local v4, "selectedObject":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 471
    .local v5, "selectedValue":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 472
    invoke-virtual {p1, v2}, Ljavax/swing/JComboBox;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 473
    .local v0, "currentObject":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 474
    .local v1, "currentValue":I
    if-ge v5, v1, :cond_0

    if-gt v1, p2, :cond_0

    .line 475
    move v5, v1

    .line 476
    move-object v4, v0

    .line 471
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "currentObject":Ljava/lang/Object;
    .end local v1    # "currentValue":I
    :cond_1
    invoke-virtual {p1, v4}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 480
    return v5
.end method

.method protected clearDetailTextArea()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method protected closeAfterConfirm()V
    .locals 8

    .prologue
    .line 1519
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1521
    .local v6, "message":Ljava/lang/StringBuffer;
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    if-nez v0, :cond_2

    .line 1522
    const-string v0, "Are you sure you want to close the logging "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1523
    const-string v0, "console?\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1524
    const-string v0, "(Note: This will not shut down the Virtual Machine,\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1525
    const-string v0, "or the Swing event thread.)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1531
    :goto_0
    const-string v2, "Are you sure you want to dispose of the Logging Console?"

    .line 1534
    .local v2, "title":Ljava/lang/String;
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1535
    const-string v2, "Are you sure you want to exit?"

    .line 1537
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ljavax/swing/JOptionPane;->showConfirmDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;IILjavax/swing/Icon;)I

    move-result v7

    .line 1546
    .local v7, "value":I
    if-nez v7, :cond_1

    .line 1547
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->dispose()V

    .line 1549
    :cond_1
    return-void

    .line 1527
    .end local v2    # "title":Ljava/lang/String;
    .end local v7    # "value":I
    :cond_2
    const-string v0, "Are you sure you want to exit?\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1528
    const-string v0, "This will shut down the Virtual Machine.\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected createAllLogLevelsMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 744
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Show all LogLevels"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 745
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 746
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$8;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$8;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 753
    return-object v0
.end method

.method protected createAllLogTableColumnsMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 908
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Show all Columns"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 909
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 910
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$14;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$14;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 918
    return-object v0
.end method

.method protected createCloseMI()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 987
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Close"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 988
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 989
    const-string v1, "control Q"

    invoke-static {v1}, Ljavax/swing/KeyStroke;->getKeyStroke(Ljava/lang/String;)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    .line 990
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$18;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$18;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 995
    return-object v0
.end method

.method protected createConfigureMaxRecords()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 1067
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Set Max Number of Records"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 1069
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$23;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$23;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1075
    return-object v0
.end method

.method protected createConfigureMenu()Ljavax/swing/JMenu;
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Configure"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v0, "configureMenu":Ljavax/swing/JMenu;
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 1035
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createConfigureSave()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1036
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createConfigureReset()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1037
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createConfigureMaxRecords()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1039
    return-object v0
.end method

.method protected createConfigureReset()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 1055
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Reset"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 1057
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$22;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$22;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1063
    return-object v0
.end method

.method protected createConfigureSave()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 1043
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Save"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 1045
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$21;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$21;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1051
    return-object v0
.end method

.method protected createDetailTextArea()Ljavax/swing/JTextArea;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 705
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 706
    .local v0, "detailTA":Ljavax/swing/JTextArea;
    new-instance v1, Ljava/awt/Font;

    const-string v2, "Monospaced"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v4, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 707
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setTabSize(I)V

    .line 708
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    .line 709
    invoke-virtual {v0, v4}, Ljavax/swing/JTextArea;->setWrapStyleWord(Z)V

    .line 710
    return-object v0
.end method

.method protected createEditFindMI()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 1158
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Find"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v0, "editFindMI":Ljavax/swing/JMenuItem;
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 1160
    const-string v1, "control F"

    invoke-static {v1}, Ljavax/swing/KeyStroke;->getKeyStroke(Ljava/lang/String;)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    .line 1162
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$26;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$26;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1178
    return-object v0
.end method

.method protected createEditFindNextMI()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 1146
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Find Next"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v0, "editFindNextMI":Ljavax/swing/JMenuItem;
    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 1148
    const-string v1, "F3"

    invoke-static {v1}, Ljavax/swing/KeyStroke;->getKeyStroke(Ljava/lang/String;)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    .line 1149
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$25;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$25;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1154
    return-object v0
.end method

.method protected createEditMenu()Ljavax/swing/JMenu;
    .locals 2

    .prologue
    .line 1135
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Edit"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v0, "editMenu":Ljavax/swing/JMenu;
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 1137
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createEditFindMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1138
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createEditFindNextMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1139
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 1140
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createEditSortNDCMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1141
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createEditRestoreAllNDCMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1142
    return-object v0
.end method

.method protected createEditRestoreAllNDCMI()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 1211
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Restore all NDCs"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v0, "editRestoreAllNDCMI":Ljavax/swing/JMenuItem;
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 1213
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1224
    return-object v0
.end method

.method protected createEditSortNDCMI()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 1185
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Sort by NDC"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v0, "editSortNDCMI":Ljavax/swing/JMenuItem;
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 1187
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1205
    return-object v0
.end method

.method protected createExitMI()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 1022
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Exit"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 1024
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$20;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$20;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1029
    return-object v0
.end method

.method protected createFileMenu()Ljavax/swing/JMenu;
    .locals 2

    .prologue
    .line 943
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "File"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 944
    .local v0, "fileMenu":Ljavax/swing/JMenu;
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 946
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createOpenMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 947
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createOpenURLMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 948
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 949
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createCloseMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 950
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createMRUFileListMI(Ljavax/swing/JMenu;)V

    .line 951
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 952
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createExitMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 953
    return-object v0
.end method

.method protected createHelpMenu()Ljavax/swing/JMenu;
    .locals 2

    .prologue
    .line 1107
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Help"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v0, "helpMenu":Ljavax/swing/JMenu;
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 1109
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createHelpProperties()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1110
    return-object v0
.end method

.method protected createHelpProperties()Ljavax/swing/JMenuItem;
    .locals 3

    .prologue
    .line 1114
    const-string v1, "LogFactor5 Properties"

    .line 1115
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v2, "LogFactor5 Properties"

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 1117
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;

    invoke-direct {v2, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1122
    return-object v0
.end method

.method protected createLogLevelColorMenu()Ljavax/swing/JMenu;
    .locals 3

    .prologue
    .line 770
    new-instance v0, Ljavax/swing/JMenu;

    const-string v2, "Configure LogLevel Colors"

    invoke-direct {v0, v2}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, "colorMenu":Ljavax/swing/JMenu;
    const/16 v2, 0x63

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 772
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevels()Ljava/util/Iterator;

    move-result-object v1

    .line 773
    .local v1, "levels":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 774
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createSubMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    goto :goto_0

    .line 777
    :cond_0
    return-object v0
.end method

.method protected createLogLevelCombo()Ljavax/swing/JComboBox;
    .locals 3

    .prologue
    .line 1364
    new-instance v1, Ljavax/swing/JComboBox;

    invoke-direct {v1}, Ljavax/swing/JComboBox;-><init>()V

    .line 1365
    .local v1, "result":Ljavax/swing/JComboBox;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevels()Ljava/util/Iterator;

    move-result-object v0

    .line 1366
    .local v0, "levels":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1367
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    goto :goto_0

    .line 1369
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_leastSevereDisplayedLogLevel:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v1, v2}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 1371
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$32;

    invoke-direct {v2, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$32;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1378
    invoke-virtual {v1}, Ljavax/swing/JComboBox;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JComboBox;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 1379
    return-object v1
.end method

.method protected createLogLevelMenu()Ljavax/swing/JMenu;
    .locals 3

    .prologue
    .line 726
    new-instance v1, Ljavax/swing/JMenu;

    const-string v2, "Log Level"

    invoke-direct {v1, v2}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 727
    .local v1, "result":Ljavax/swing/JMenu;
    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 728
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevels()Ljava/util/Iterator;

    move-result-object v0

    .line 729
    .local v0, "levels":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {v1}, Ljavax/swing/JMenu;->addSeparator()V

    .line 734
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createAllLogLevelsMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 735
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createNoLogLevelsMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 736
    invoke-virtual {v1}, Ljavax/swing/JMenu;->addSeparator()V

    .line 737
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createLogLevelColorMenu()Ljavax/swing/JMenu;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 738
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createResetLogLevelColorMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 740
    return-object v1
.end method

.method protected createLogRecordFilter()Lorg/apache/log4j/lf5/LogRecordFilter;
    .locals 1

    .prologue
    .line 611
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$3;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$3;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    .line 619
    .local v0, "result":Lorg/apache/log4j/lf5/LogRecordFilter;
    return-object v0
.end method

.method protected createLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;
    .locals 3
    .param p1, "column"    # Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .prologue
    .line 878
    new-instance v0, Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    .line 880
    .local v0, "result":Ljavax/swing/JCheckBoxMenuItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    .line 881
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    .line 882
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$13;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$13;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 889
    return-object v0
.end method

.method protected createMRUFileListMI(Ljavax/swing/JMenu;)V
    .locals 5
    .param p1, "menu"    # Ljavax/swing/JMenu;

    .prologue
    .line 1004
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getMRUFileList()[Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "files":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {p1}, Ljavax/swing/JMenu;->addSeparator()V

    .line 1008
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1009
    new-instance v2, Ljavax/swing/JMenuItem;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v2, "result":Ljavax/swing/JMenuItem;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljavax/swing/JMenuItem;->setMnemonic(I)V

    .line 1011
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$19;

    invoke-direct {v3, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$19;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1016
    invoke-virtual {p1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1019
    .end local v1    # "i":I
    .end local v2    # "result":Ljavax/swing/JMenuItem;
    :cond_0
    return-void
.end method

.method protected createMenuBar()Ljavax/swing/JMenuBar;
    .locals 2

    .prologue
    .line 714
    new-instance v0, Ljavax/swing/JMenuBar;

    invoke-direct {v0}, Ljavax/swing/JMenuBar;-><init>()V

    .line 715
    .local v0, "menuBar":Ljavax/swing/JMenuBar;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createFileMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 716
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createEditMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 717
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createLogLevelMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 718
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createViewMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 719
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createConfigureMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 720
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createHelpMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 722
    return-object v0
.end method

.method protected createMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;
    .locals 3
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .prologue
    .line 841
    new-instance v0, Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    .line 842
    .local v0, "result":Ljavax/swing/JCheckBoxMenuItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    .line 843
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    .line 844
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$12;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$12;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 850
    return-object v0
.end method

.method protected createNDCLogRecordFilter(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecordFilter;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    .line 626
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$4;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$4;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    .line 641
    .local v0, "result":Lorg/apache/log4j/lf5/LogRecordFilter;
    return-object v0
.end method

.method protected createNoLogLevelsMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 757
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Hide all LogLevels"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 758
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 759
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$9;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$9;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 766
    return-object v0
.end method

.method protected createNoLogTableColumnsMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 922
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Hide all Columns"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 923
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 924
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 932
    return-object v0
.end method

.method protected createOpenMI()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 961
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Open..."

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 962
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 963
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$16;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$16;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 968
    return-object v0
.end method

.method protected createOpenURLMI()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 976
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Open URL..."

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 977
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 978
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$17;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$17;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 983
    return-object v0
.end method

.method protected createResetLogLevelColorMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 781
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Reset LogLevel Colors"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 783
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$10;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$10;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 792
    return-object v0
.end method

.method protected createStatusArea()Ljavax/swing/JPanel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 691
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    .line 692
    .local v1, "statusArea":Ljavax/swing/JPanel;
    new-instance v0, Ljavax/swing/JLabel;

    const-string v2, "No log records to display."

    invoke-direct {v0, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, "status":Ljavax/swing/JLabel;
    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_statusLabel:Ljavax/swing/JLabel;

    .line 695
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    .line 697
    invoke-static {}, Ljavax/swing/BorderFactory;->createEtchedBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 698
    new-instance v2, Ljava/awt/FlowLayout;

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/FlowLayout;-><init>(III)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 699
    invoke-virtual {v1, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 701
    return-object v1
.end method

.method protected createSubMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JMenuItem;
    .locals 4
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .prologue
    .line 812
    new-instance v1, Ljavax/swing/JMenuItem;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 813
    .local v1, "result":Ljavax/swing/JMenuItem;
    move-object v0, p1

    .line 814
    .local v0, "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 815
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;

    invoke-direct {v2, p0, v1, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Ljavax/swing/JMenuItem;Lorg/apache/log4j/lf5/LogLevel;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 821
    return-object v1
.end method

.method protected createToolBar()Ljavax/swing/JToolBar;
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000

    .line 1228
    new-instance v8, Ljavax/swing/JToolBar;

    invoke-direct {v8}, Ljavax/swing/JToolBar;-><init>()V

    .line 1229
    .local v8, "tb":Ljavax/swing/JToolBar;
    const-string v10, "JToolBar.isRollover"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v10, v11}, Ljavax/swing/JToolBar;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1230
    new-instance v1, Ljavax/swing/JComboBox;

    invoke-direct {v1}, Ljavax/swing/JComboBox;-><init>()V

    .line 1231
    .local v1, "fontCombo":Ljavax/swing/JComboBox;
    new-instance v2, Ljavax/swing/JComboBox;

    invoke-direct {v2}, Ljavax/swing/JComboBox;-><init>()V

    .line 1232
    .local v2, "fontSizeCombo":Ljavax/swing/JComboBox;
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSizeCombo:Ljavax/swing/JComboBox;

    .line 1234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1235
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 1236
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1238
    :cond_0
    const-string v10, "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif"

    invoke-virtual {v0, v10}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 1241
    .local v7, "newIconURL":Ljava/net/URL;
    const/4 v6, 0x0

    .line 1243
    .local v6, "newIcon":Ljavax/swing/ImageIcon;
    if-eqz v7, :cond_1

    .line 1244
    new-instance v6, Ljavax/swing/ImageIcon;

    .end local v6    # "newIcon":Ljavax/swing/ImageIcon;
    invoke-direct {v6, v7}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    .line 1247
    .restart local v6    # "newIcon":Ljavax/swing/ImageIcon;
    :cond_1
    new-instance v5, Ljavax/swing/JButton;

    const-string v10, "Clear Log Table"

    invoke-direct {v5, v10}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v5, "newButton":Ljavax/swing/JButton;
    if-eqz v6, :cond_2

    .line 1250
    invoke-virtual {v5, v6}, Ljavax/swing/JButton;->setIcon(Ljavax/swing/Icon;)V

    .line 1253
    :cond_2
    const-string v10, "Clear Log Table."

    invoke-virtual {v5, v10}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    .line 1256
    new-instance v10, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$29;

    invoke-direct {v10, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$29;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v5, v10}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1268
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v9

    .line 1273
    .local v9, "tk":Ljava/awt/Toolkit;
    iget-boolean v10, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_loadSystemFonts:Z

    if-eqz v10, :cond_3

    .line 1274
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/GraphicsEnvironment;->getAvailableFontFamilyNames()[Ljava/lang/String;

    move-result-object v3

    .line 1280
    .local v3, "fonts":[Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v10, v3

    if-ge v4, v10, :cond_4

    .line 1281
    aget-object v10, v3, v4

    invoke-virtual {v1, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1280
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1277
    .end local v3    # "fonts":[Ljava/lang/String;
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v9}, Ljava/awt/Toolkit;->getFontList()[Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "fonts":[Ljava/lang/String;
    goto :goto_0

    .line 1284
    .restart local v4    # "j":I
    :cond_4
    iget-object v10, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 1286
    new-instance v10, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;

    invoke-direct {v10, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v1, v10}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1298
    const-string v10, "8"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1299
    const-string v10, "9"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1300
    const-string v10, "10"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1301
    const-string v10, "12"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1302
    const-string v10, "14"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1303
    const-string v10, "16"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1304
    const-string v10, "18"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1305
    const-string v10, "24"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1307
    iget v10, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 1308
    new-instance v10, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;

    invoke-direct {v10, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1322
    new-instance v10, Ljavax/swing/JLabel;

    const-string v11, " Font: "

    invoke-direct {v10, v11}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 1323
    invoke-virtual {v8, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 1324
    invoke-virtual {v8, v2}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 1325
    invoke-virtual {v8}, Ljavax/swing/JToolBar;->addSeparator()V

    .line 1326
    invoke-virtual {v8}, Ljavax/swing/JToolBar;->addSeparator()V

    .line 1327
    invoke-virtual {v8, v5}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 1329
    invoke-virtual {v5, v12}, Ljavax/swing/JButton;->setAlignmentY(F)V

    .line 1330
    invoke-virtual {v5, v12}, Ljavax/swing/JButton;->setAlignmentX(F)V

    .line 1332
    invoke-virtual {v1}, Ljavax/swing/JComboBox;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljavax/swing/JComboBox;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 1333
    invoke-virtual {v2}, Ljavax/swing/JComboBox;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 1336
    return-object v8
.end method

.method protected createViewMenu()Ljavax/swing/JMenu;
    .locals 3

    .prologue
    .line 855
    new-instance v1, Ljavax/swing/JMenu;

    const-string v2, "View"

    invoke-direct {v1, v2}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 856
    .local v1, "result":Ljavax/swing/JMenu;
    const/16 v2, 0x76

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 857
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumns()Ljava/util/Iterator;

    move-result-object v0

    .line 858
    .local v0, "columns":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    goto :goto_0

    .line 862
    :cond_0
    invoke-virtual {v1}, Ljavax/swing/JMenu;->addSeparator()V

    .line 863
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createAllLogTableColumnsMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 864
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createNoLogTableColumnsMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 865
    return-object v1
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 201
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->dispose()V

    .line 202
    iput-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_isDisposed:Z

    .line 204
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    if-ne v0, v1, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 207
    :cond_0
    return-void
.end method

.method protected findRecord(ILjava/lang/String;Ljava/util/List;)I
    .locals 3
    .param p1, "startRow"    # I
    .param p2, "searchText"    # Ljava/lang/String;
    .param p3, "records"    # Ljava/util/List;

    .prologue
    .line 399
    if-gez p1, :cond_0

    .line 400
    const/4 p1, 0x0

    .line 404
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 406
    .local v1, "len":I
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 407
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogRecord;

    invoke-virtual {p0, v2, p2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->matches(Lorg/apache/log4j/lf5/LogRecord;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 419
    :goto_2
    return v2

    .line 402
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 406
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    :cond_2
    move v1, p1

    .line 413
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 414
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogRecord;

    invoke-virtual {p0, v2, p2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->matches(Lorg/apache/log4j/lf5/LogRecord;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 415
    goto :goto_2

    .line 413
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 419
    :cond_4
    const/4 v2, -0x1

    goto :goto_2
.end method

.method protected findSearchText()V
    .locals 4

    .prologue
    .line 363
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_searchText:Ljava/lang/String;

    .line 364
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getFirstSelectedRow()I

    move-result v1

    .line 368
    .local v1, "startRow":I
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->findRecord(ILjava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 373
    .local v0, "foundRow":I
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->selectRow(I)V

    goto :goto_0
.end method

.method public getBaseFrame()Ljavax/swing/JFrame;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    return-object v0
.end method

.method public getCallSystemExitOnClose()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    return v0
.end method

.method public getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    return-object v0
.end method

.method public getDateFormatManager()Lorg/apache/log4j/lf5/util/DateFormatManager;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getDateFormatManager()Lorg/apache/log4j/lf5/util/DateFormatManager;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstSelectedRow()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result v0

    return v0
.end method

.method public getLogLevelMenuItems()Ljava/util/Map;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logLevelMenuItems:Ljava/util/Map;

    return-object v0
.end method

.method protected getLogLevels()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_levels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;
    .locals 2
    .param p1, "column"    # Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .prologue
    .line 869
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableColumnMenuItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/JCheckBoxMenuItem;

    move-object v0, v1

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    .line 870
    .local v0, "result":Ljavax/swing/JCheckBoxMenuItem;
    if-nez v0, :cond_0

    .line 871
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    .line 872
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableColumnMenuItems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_0
    return-object v0
.end method

.method public getLogTableColumnMenuItems()Ljava/util/Map;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableColumnMenuItems:Ljava/util/Map;

    return-object v0
.end method

.method protected getLogTableColumns()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected getMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;
    .locals 2
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .prologue
    .line 803
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logLevelMenuItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/JCheckBoxMenuItem;

    move-object v0, v1

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    .line 804
    .local v0, "result":Ljavax/swing/JCheckBoxMenuItem;
    if-nez v0, :cond_0

    .line 805
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    .line 806
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logLevelMenuItems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :cond_0
    return-object v0
.end method

.method public getNDCTextFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    return-object v0
.end method

.method protected getRecordsDisplayedMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 650
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    .line 651
    .local v0, "model":Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getRowCount()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getTotalRowCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getStatusText(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getStatusText(II)Ljava/lang/String;
    .locals 2
    .param p1, "displayedRows"    # I
    .param p2, "totalRows"    # I

    .prologue
    .line 671
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 672
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "Displaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 674
    const-string v1, " records out of a total of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 676
    const-string v1, " records."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;
    .locals 1
    .param p1, "column"    # Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setVisible(Z)V

    .line 214
    return-void
.end method

.method protected initComponents()V
    .locals 14

    .prologue
    const/16 v13, 0x82

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 517
    new-instance v7, Ljavax/swing/JFrame;

    const-string v8, "LogFactor5"

    invoke-direct {v7, v8}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    .line 519
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v7, v11}, Ljavax/swing/JFrame;->setDefaultCloseOperation(I)V

    .line 521
    const-string v4, "/org/apache/log4j/lf5/viewer/images/lf5_small_icon.gif"

    .line 523
    .local v4, "resource":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 525
    .local v3, "lf5IconURL":Ljava/net/URL;
    if-eqz v3, :cond_0

    .line 526
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    new-instance v8, Ljavax/swing/ImageIcon;

    invoke-direct {v8, v3}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    invoke-virtual {v8}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/swing/JFrame;->setIconImage(Ljava/awt/Image;)V

    .line 528
    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateFrameSize()V

    .line 533
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createDetailTextArea()Ljavax/swing/JTextArea;

    move-result-object v1

    .line 534
    .local v1, "detailTA":Ljavax/swing/JTextArea;
    new-instance v2, Ljavax/swing/JScrollPane;

    invoke-direct {v2, v1}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 535
    .local v2, "detailTAScrollPane":Ljavax/swing/JScrollPane;
    new-instance v7, Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-direct {v7, v1}, Lorg/apache/log4j/lf5/viewer/LogTable;-><init>(Ljavax/swing/JTextArea;)V

    iput-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    .line 536
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_currentView:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {p0, v7, v8}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setView(Ljava/lang/String;Lorg/apache/log4j/lf5/viewer/LogTable;)V

    .line 537
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    new-instance v8, Ljava/awt/Font;

    iget-object v9, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontName:Ljava/lang/String;

    iget v10, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    invoke-direct {v8, v9, v11, v10}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v7, v8}, Lorg/apache/log4j/lf5/viewer/LogTable;->setFont(Ljava/awt/Font;)V

    .line 538
    new-instance v7, Ljavax/swing/JScrollPane;

    iget-object v8, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-direct {v7, v8}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    iput-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableScrollPane:Ljavax/swing/JScrollPane;

    .line 540
    iget-boolean v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_trackTableScrollPane:Z

    if-eqz v7, :cond_1

    .line 541
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableScrollPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v7}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;

    move-result-object v7

    new-instance v8, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;

    invoke-direct {v8}, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;-><init>()V

    invoke-virtual {v7, v8}, Ljavax/swing/JScrollBar;->addAdjustmentListener(Ljava/awt/event/AdjustmentListener;)V

    .line 550
    :cond_1
    new-instance v6, Ljavax/swing/JSplitPane;

    invoke-direct {v6}, Ljavax/swing/JSplitPane;-><init>()V

    .line 551
    .local v6, "tableViewerSplitPane":Ljavax/swing/JSplitPane;
    invoke-virtual {v6, v12}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    .line 552
    invoke-virtual {v6, v11}, Ljavax/swing/JSplitPane;->setOrientation(I)V

    .line 553
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableScrollPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v6, v7}, Ljavax/swing/JSplitPane;->setLeftComponent(Ljava/awt/Component;)V

    .line 554
    invoke-virtual {v6, v2}, Ljavax/swing/JSplitPane;->setRightComponent(Ljava/awt/Component;)V

    .line 562
    const/16 v7, 0x15e

    invoke-virtual {v6, v7}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    .line 568
    new-instance v7, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-direct {v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;-><init>()V

    iput-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    .line 570
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v7}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createLogRecordFilter()Lorg/apache/log4j/lf5/LogRecordFilter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V

    .line 572
    new-instance v0, Ljavax/swing/JScrollPane;

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-direct {v0, v7}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 574
    .local v0, "categoryExplorerTreeScrollPane":Ljavax/swing/JScrollPane;
    new-instance v7, Ljava/awt/Dimension;

    const/16 v8, 0x190

    invoke-direct {v7, v13, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v7}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 577
    new-instance v7, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-direct {v7}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;-><init>()V

    iput-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    .line 583
    new-instance v5, Ljavax/swing/JSplitPane;

    invoke-direct {v5}, Ljavax/swing/JSplitPane;-><init>()V

    .line 584
    .local v5, "splitPane":Ljavax/swing/JSplitPane;
    invoke-virtual {v5, v12}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    .line 585
    invoke-virtual {v5, v6}, Ljavax/swing/JSplitPane;->setRightComponent(Ljava/awt/Component;)V

    .line 586
    invoke-virtual {v5, v0}, Ljavax/swing/JSplitPane;->setLeftComponent(Ljava/awt/Component;)V

    .line 588
    invoke-virtual {v5, v13}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    .line 593
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v7}, Ljavax/swing/JFrame;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createMenuBar()Ljavax/swing/JMenuBar;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/swing/JRootPane;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 594
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v7}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v7

    const-string v8, "Center"

    invoke-virtual {v7, v5, v8}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 595
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v7}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createToolBar()Ljavax/swing/JToolBar;

    move-result-object v8

    const-string v9, "North"

    invoke-virtual {v7, v8, v9}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 597
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v7}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createStatusArea()Ljavax/swing/JPanel;

    move-result-object v8

    const-string v9, "South"

    invoke-virtual {v7, v8, v9}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 600
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->makeLogTableListenToCategoryExplorer()V

    .line 601
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addTableModelProperties()V

    .line 606
    new-instance v7, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

    iget-object v8, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-direct {v7, p0, v8}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/viewer/LogTable;)V

    iput-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_configurationManager:Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

    .line 608
    return-void
.end method

.method protected loadLogFile(Ljava/io/File;)Z
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1563
    const/4 v2, 0x0

    .line 1565
    .local v2, "ok":Z
    :try_start_0
    new-instance v1, Lorg/apache/log4j/lf5/util/LogFileParser;

    invoke-direct {v1, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;-><init>(Ljava/io/File;)V

    .line 1566
    .local v1, "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    invoke-virtual {v1, p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->parse(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    const/4 v2, 0x1

    .line 1573
    .end local v1    # "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    :goto_0
    return v2

    .line 1568
    :catch_0
    move-exception v0

    .line 1569
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected loadLogFile(Ljava/net/URL;)Z
    .locals 7
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 1580
    const/4 v2, 0x0

    .line 1582
    .local v2, "ok":Z
    :try_start_0
    new-instance v1, Lorg/apache/log4j/lf5/util/LogFileParser;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/log4j/lf5/util/LogFileParser;-><init>(Ljava/io/InputStream;)V

    .line 1583
    .local v1, "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    invoke-virtual {v1, p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->parse(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    const/4 v2, 0x1

    .line 1589
    .end local v1    # "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    :goto_0
    return v2

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error reading URL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected makeLogTableListenToCategoryExplorer()V
    .locals 2

    .prologue
    .line 681
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$7;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$7;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    .line 687
    .local v0, "listener":Ljava/awt/event/ActionListener;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 688
    return-void
.end method

.method protected matches(Lorg/apache/log4j/lf5/LogRecord;Ljava/lang/String;)Z
    .locals 6
    .param p1, "record"    # Lorg/apache/log4j/lf5/LogRecord;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 427
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getNDC()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "NDC":Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 438
    :cond_1
    :goto_0
    return v2

    .line 433
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 438
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected pause(I)V
    .locals 2
    .param p1, "millis"    # I

    .prologue
    .line 507
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected refresh(Ljavax/swing/JTextArea;)V
    .locals 2
    .param p1, "textArea"    # Ljavax/swing/JTextArea;

    .prologue
    .line 447
    invoke-virtual {p1}, Ljavax/swing/JTextArea;->getText()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "text":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1, v0}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method protected refreshDetailTextArea()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->refresh(Ljavax/swing/JTextArea;)V

    .line 454
    return-void
.end method

.method protected requestClose()V
    .locals 1

    .prologue
    .line 1482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setCallSystemExitOnClose(Z)V

    .line 1483
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->closeAfterConfirm()V

    .line 1484
    return-void
.end method

.method protected requestExit()V
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->save()V

    .line 1514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setCallSystemExitOnClose(Z)V

    .line 1515
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->closeAfterConfirm()V

    .line 1516
    return-void
.end method

.method protected requestOpen()V
    .locals 4

    .prologue
    .line 1421
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fileLocation:Ljava/io/File;

    if-nez v3, :cond_1

    .line 1422
    new-instance v0, Ljavax/swing/JFileChooser;

    invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V

    .line 1427
    .local v0, "chooser":Ljavax/swing/JFileChooser;
    :goto_0
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v0, v3}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    move-result v2

    .line 1428
    .local v2, "returnVal":I
    if-nez v2, :cond_0

    .line 1429
    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v1

    .line 1430
    .local v1, "f":Ljava/io/File;
    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->loadLogFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1431
    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fileLocation:Ljava/io/File;

    .line 1432
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v3, v1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->set(Ljava/io/File;)V

    .line 1433
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateMRUList()V

    .line 1436
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    return-void

    .line 1424
    .end local v0    # "chooser":Ljavax/swing/JFileChooser;
    .end local v2    # "returnVal":I
    :cond_1
    new-instance v0, Ljavax/swing/JFileChooser;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fileLocation:Ljava/io/File;

    invoke-direct {v0, v3}, Ljavax/swing/JFileChooser;-><init>(Ljava/io/File;)V

    .restart local v0    # "chooser":Ljavax/swing/JFileChooser;
    goto :goto_0
.end method

.method protected requestOpenMRU(Ljava/awt/event/ActionEvent;)V
    .locals 11
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 1490
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    .line 1491
    .local v0, "file":Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1493
    .local v5, "num":Ljava/lang/String;
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 1498
    .local v2, "index":I
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v7, v2}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1499
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Lorg/apache/log4j/lf5/util/LogFileParser;

    invoke-direct {v3, v1}, Lorg/apache/log4j/lf5/util/LogFileParser;-><init>(Ljava/io/InputStream;)V

    .line 1500
    .local v3, "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    invoke-virtual {v3, p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->parse(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    .line 1502
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v7, v2}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->moveToTop(I)V

    .line 1503
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateMRUList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "index":I
    .end local v3    # "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    :goto_0
    return-void

    .line 1505
    :catch_0
    move-exception v4

    .line 1506
    .local v4, "me":Ljava/lang/Exception;
    new-instance v7, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Unable to load file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected requestOpenURL()V
    .locals 7

    .prologue
    .line 1443
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v4

    const-string v5, "Open URL"

    const-string v6, "URL:"

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    .local v1, "inputDialog":Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->getText()Ljava/lang/String;

    move-result-object v2

    .line 1447
    .local v2, "temp":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1448
    const-string v4, "://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1449
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1453
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->loadLogFile(Ljava/net/URL;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1455
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v4, v3}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->set(Ljava/net/URL;)V

    .line 1456
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateMRUList()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    .end local v3    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v4, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v5

    const-string v6, "Error reading URL."

    invoke-direct {v4, v5, v6}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected resetConfiguration()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_configurationManager:Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->reset()V

    .line 1085
    return-void
.end method

.method protected saveConfiguration()V
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_configurationManager:Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->save()V

    .line 1081
    return-void
.end method

.method protected selectAllLogLevels(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 796
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevels()Ljava/util/Iterator;

    move-result-object v0

    .line 797
    .local v0, "levels":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    goto :goto_0

    .line 800
    :cond_0
    return-void
.end method

.method protected selectAllLogTableColumns(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 936
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumns()Ljava/util/Iterator;

    move-result-object v0

    .line 937
    .local v0, "columns":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    goto :goto_0

    .line 940
    :cond_0
    return-void
.end method

.method protected selectRow(I)V
    .locals 4
    .param p1, "foundRow"    # I

    .prologue
    .line 381
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 382
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_searchText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    const-string v2, "Text not found"

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 392
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableScrollPane:Ljavax/swing/JScrollPane;

    invoke-static {p1, v1, v2}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->selectRow(ILjavax/swing/JTable;Ljavax/swing/JScrollPane;)V

    goto :goto_0
.end method

.method public setCallSystemExitOnClose(Z)V
    .locals 0
    .param p1, "callSystemExitOnClose"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    .line 244
    return-void
.end method

.method public setDateFormatManager(Lorg/apache/log4j/lf5/util/DateFormatManager;)V
    .locals 1
    .param p1, "dfm"    # Lorg/apache/log4j/lf5/util/DateFormatManager;

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogTable;->setDateFormatManager(Lorg/apache/log4j/lf5/util/DateFormatManager;)V

    .line 228
    return-void
.end method

.method public setFontSize(I)V
    .locals 1
    .param p1, "fontSize"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSizeCombo:Ljavax/swing/JComboBox;

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->changeFontSizeCombo(Ljavax/swing/JComboBox;I)I

    .line 294
    return-void
.end method

.method protected setFontSize(Ljava/awt/Component;I)V
    .locals 4
    .param p1, "component"    # Ljava/awt/Component;
    .param p2, "fontSize"    # I

    .prologue
    .line 494
    invoke-virtual {p1}, Ljava/awt/Component;->getFont()Ljava/awt/Font;

    move-result-object v1

    .line 495
    .local v1, "oldFont":Ljava/awt/Font;
    new-instance v0, Ljava/awt/Font;

    invoke-virtual {v1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/awt/Font;->getStyle()I

    move-result v3

    invoke-direct {v0, v2, v3, p2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 497
    .local v0, "newFont":Ljava/awt/Font;
    invoke-virtual {p1, v0}, Ljava/awt/Component;->setFont(Ljava/awt/Font;)V

    .line 498
    return-void
.end method

.method protected setFontSizeSilently(I)V
    .locals 1
    .param p1, "fontSize"    # I

    .prologue
    .line 487
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    .line 488
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(Ljava/awt/Component;I)V

    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->selectRow(I)V

    .line 490
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(Ljava/awt/Component;I)V

    .line 491
    return-void
.end method

.method public setFrameSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 280
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 281
    .local v0, "screen":Ljava/awt/Dimension;
    if-lez p1, :cond_0

    iget v1, v0, Ljava/awt/Dimension;->width:I

    if-ge p1, v1, :cond_0

    .line 282
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameWidth:I

    .line 284
    :cond_0
    if-lez p2, :cond_1

    iget v1, v0, Ljava/awt/Dimension;->height:I

    if-ge p2, v1, :cond_1

    .line 285
    iput p2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameHeight:I

    .line 287
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateFrameSize()V

    .line 288
    return-void
.end method

.method protected setLeastSevereDisplayedLogLevel(Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 1
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .prologue
    .line 1383
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_leastSevereDisplayedLogLevel:Lorg/apache/log4j/lf5/LogLevel;

    if-ne v0, p1, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_leastSevereDisplayedLogLevel:Lorg/apache/log4j/lf5/LogLevel;

    .line 1387
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 1388
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateStatusLabel()V

    goto :goto_0
.end method

.method public setMaxNumberOfLogRecords(I)V
    .locals 1
    .param p1, "maxNumberOfLogRecords"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->setMaxNumberOfLogRecords(I)V

    .line 269
    return-void
.end method

.method protected setMaxRecordConfiguration()V
    .locals 8

    .prologue
    .line 1088
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v4

    const-string v5, "Set Max Number of Records"

    const-string v6, ""

    const/16 v7, 0xa

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1091
    .local v2, "inputDialog":Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1093
    .local v3, "temp":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1095
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setMaxNumberOfLogRecords(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' is an invalid parameter.\nPlease try again."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    .line 1100
    .local v1, "error":Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setMaxRecordConfiguration()V

    goto :goto_0
.end method

.method public setNDCLogRecordFilter(Ljava/lang/String;)V
    .locals 2
    .param p1, "textFilter"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createNDCLogRecordFilter(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecordFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V

    .line 328
    return-void
.end method

.method protected setNDCTextFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setSearchText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_searchText:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - LogFactor5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setTitle(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected setView(Ljava/lang/String;Lorg/apache/log4j/lf5/viewer/LogTable;)V
    .locals 3
    .param p1, "viewString"    # Ljava/lang/String;
    .param p2, "table"    # Lorg/apache/log4j/lf5/viewer/LogTable;

    .prologue
    .line 1354
    const-string v1, "Detailed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/viewer/LogTable;->setDetailedView()V

    .line 1360
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_currentView:Ljava/lang/String;

    .line 1361
    return-void

    .line 1357
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "does not match a supported view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public show()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->show(I)V

    .line 195
    return-void
.end method

.method public show(I)V
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$1;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;I)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected showLogLevelColorChangeDialog(Ljavax/swing/JMenuItem;Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 5
    .param p1, "result"    # Ljavax/swing/JMenuItem;
    .param p2, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .prologue
    .line 826
    move-object v0, p1

    .line 827
    .local v0, "menuItem":Ljavax/swing/JMenuItem;
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    const-string v3, "Choose LogLevel Color"

    invoke-virtual {p1}, Ljavax/swing/JMenuItem;->getForeground()Ljava/awt/Color;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljavax/swing/JColorChooser;->showDialog(Ljava/awt/Component;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color;

    move-result-object v1

    .line 832
    .local v1, "newColor":Ljava/awt/Color;
    if-eqz v1, :cond_0

    .line 834
    invoke-virtual {p2, p2, v1}, Lorg/apache/log4j/lf5/LogLevel;->setLogLevelColorMap(Lorg/apache/log4j/lf5/LogLevel;Ljava/awt/Color;)V

    .line 835
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 838
    :cond_0
    return-void
.end method

.method protected showPropertiesDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1126
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_displayedLogBrokerProperties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 1132
    return-void
.end method

.method protected sortByNDC()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    .line 353
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createNDCLogRecordFilter(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecordFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V

    goto :goto_0
.end method

.method protected trackTableScrollPane()V
    .locals 0

    .prologue
    .line 1403
    return-void
.end method

.method protected updateFrameSize()V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameWidth:I

    iget v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameHeight:I

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JFrame;->setSize(II)V

    .line 502
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->centerFrame(Ljavax/swing/JFrame;)V

    .line 503
    return-void
.end method

.method protected updateMRUList()V
    .locals 3

    .prologue
    .line 1470
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v1}, Ljavax/swing/JFrame;->getJMenuBar()Ljavax/swing/JMenuBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuBar;->getMenu(I)Ljavax/swing/JMenu;

    move-result-object v0

    .line 1471
    .local v0, "menu":Ljavax/swing/JMenu;
    invoke-virtual {v0}, Ljavax/swing/JMenu;->removeAll()V

    .line 1472
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createOpenMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1473
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createOpenURLMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1474
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 1475
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createCloseMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1476
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createMRUFileListMI(Ljavax/swing/JMenu;)V

    .line 1477
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 1478
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createExitMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1479
    return-void
.end method

.method protected updateStatusLabel()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_statusLabel:Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getRecordsDisplayedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method protected updateView()Ljava/util/List;
    .locals 5

    .prologue
    .line 893
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v3, "updatedList":Ljava/util/ArrayList;
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_columns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 895
    .local v1, "columnIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 896
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 897
    .local v0, "column":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v2

    .line 899
    .local v2, "result":Ljavax/swing/JCheckBoxMenuItem;
    invoke-virtual {v2}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 900
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 904
    .end local v0    # "column":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    .end local v2    # "result":Ljavax/swing/JCheckBoxMenuItem;
    :cond_1
    return-object v3
.end method
