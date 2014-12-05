.class Lorg/apache/log4j/chainsaw/ControlPanel;
.super Ljavax/swing/JPanel;
.source "ControlPanel.java"


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.ControlPanel"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/ControlPanel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->LOG:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 18
    .param p1, "aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljavax/swing/JPanel;-><init>()V

    .line 51
    const-string v16, "Controls: "

    invoke-static/range {v16 .. v16}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/ControlPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 52
    new-instance v8, Ljava/awt/GridBagLayout;

    invoke-direct {v8}, Ljava/awt/GridBagLayout;-><init>()V

    .line 53
    .local v8, "gridbag":Ljava/awt/GridBagLayout;
    new-instance v4, Ljava/awt/GridBagConstraints;

    invoke-direct {v4}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 54
    .local v4, "c":Ljava/awt/GridBagConstraints;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/log4j/chainsaw/ControlPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 57
    const/16 v16, 0x5

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->ipadx:I

    .line 58
    const/16 v16, 0x5

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->ipady:I

    .line 61
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridx:I

    .line 62
    const/16 v16, 0xd

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->anchor:I

    .line 64
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 65
    new-instance v9, Ljavax/swing/JLabel;

    const-string v16, "Filter Level:"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 66
    .local v9, "label":Ljavax/swing/JLabel;
    invoke-virtual {v8, v9, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 67
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 69
    iget v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 70
    new-instance v9, Ljavax/swing/JLabel;

    .end local v9    # "label":Ljavax/swing/JLabel;
    const-string v16, "Filter Thread:"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 71
    .restart local v9    # "label":Ljavax/swing/JLabel;
    invoke-virtual {v8, v9, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 72
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 74
    iget v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 75
    new-instance v9, Ljavax/swing/JLabel;

    .end local v9    # "label":Ljavax/swing/JLabel;
    const-string v16, "Filter Logger:"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local v9    # "label":Ljavax/swing/JLabel;
    invoke-virtual {v8, v9, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 77
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 79
    iget v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 80
    new-instance v9, Ljavax/swing/JLabel;

    .end local v9    # "label":Ljavax/swing/JLabel;
    const-string v16, "Filter NDC:"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v9    # "label":Ljavax/swing/JLabel;
    invoke-virtual {v8, v9, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 82
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 84
    iget v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 85
    new-instance v9, Ljavax/swing/JLabel;

    .end local v9    # "label":Ljavax/swing/JLabel;
    const-string v16, "Filter Message:"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v9    # "label":Ljavax/swing/JLabel;
    invoke-virtual {v8, v9, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 87
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 90
    const-wide/high16 v16, 0x3ff0000000000000L

    move-wide/from16 v0, v16

    iput-wide v0, v4, Ljava/awt/GridBagConstraints;->weightx:D

    .line 92
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridx:I

    .line 93
    const/16 v16, 0x11

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->anchor:I

    .line 95
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 96
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v3, v0, [Lorg/apache/log4j/Level;

    const/16 v16, 0x0

    sget-object v17, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    aput-object v17, v3, v16

    const/16 v16, 0x1

    sget-object v17, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    aput-object v17, v3, v16

    const/16 v16, 0x2

    sget-object v17, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    aput-object v17, v3, v16

    const/16 v16, 0x3

    sget-object v17, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    aput-object v17, v3, v16

    const/16 v16, 0x4

    sget-object v17, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    aput-object v17, v3, v16

    const/16 v16, 0x5

    sget-object v17, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    aput-object v17, v3, v16

    .line 103
    .local v3, "allPriorities":[Lorg/apache/log4j/Level;
    new-instance v13, Ljavax/swing/JComboBox;

    invoke-direct {v13, v3}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    .line 104
    .local v13, "priorities":Ljavax/swing/JComboBox;
    array-length v0, v3

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget-object v10, v3, v16

    .line 105
    .local v10, "lowest":Lorg/apache/log4j/Level;
    invoke-virtual {v13, v10}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 106
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/apache/log4j/chainsaw/MyTableModel;->setPriorityFilter(Lorg/apache/log4j/Priority;)V

    .line 107
    invoke-virtual {v8, v13, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 108
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 109
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljavax/swing/JComboBox;->setEditable(Z)V

    .line 110
    new-instance v16, Lorg/apache/log4j/chainsaw/ControlPanel$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v13}, Lorg/apache/log4j/chainsaw/ControlPanel$1;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JComboBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 118
    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->fill:I

    .line 119
    iget v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 120
    new-instance v14, Ljavax/swing/JTextField;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 121
    .local v14, "threadField":Ljavax/swing/JTextField;
    invoke-virtual {v14}, Ljavax/swing/JTextField;->getDocument()Ljavax/swing/text/Document;

    move-result-object v16

    new-instance v17, Lorg/apache/log4j/chainsaw/ControlPanel$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v14}, Lorg/apache/log4j/chainsaw/ControlPanel$2;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface/range {v16 .. v17}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 132
    invoke-virtual {v8, v14, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 135
    iget v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 136
    new-instance v5, Ljavax/swing/JTextField;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 137
    .local v5, "catField":Ljavax/swing/JTextField;
    invoke-virtual {v5}, Ljavax/swing/JTextField;->getDocument()Ljavax/swing/text/Document;

    move-result-object v16

    new-instance v17, Lorg/apache/log4j/chainsaw/ControlPanel$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/log4j/chainsaw/ControlPanel$3;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface/range {v16 .. v17}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 148
    invoke-virtual {v8, v5, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 149
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 151
    iget v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 152
    new-instance v12, Ljavax/swing/JTextField;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 153
    .local v12, "ndcField":Ljavax/swing/JTextField;
    invoke-virtual {v12}, Ljavax/swing/JTextField;->getDocument()Ljavax/swing/text/Document;

    move-result-object v16

    new-instance v17, Lorg/apache/log4j/chainsaw/ControlPanel$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lorg/apache/log4j/chainsaw/ControlPanel$4;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface/range {v16 .. v17}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 164
    invoke-virtual {v8, v12, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 167
    iget v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 168
    new-instance v11, Ljavax/swing/JTextField;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 169
    .local v11, "msgField":Ljavax/swing/JTextField;
    invoke-virtual {v11}, Ljavax/swing/JTextField;->getDocument()Ljavax/swing/text/Document;

    move-result-object v16

    new-instance v17, Lorg/apache/log4j/chainsaw/ControlPanel$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lorg/apache/log4j/chainsaw/ControlPanel$5;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface/range {v16 .. v17}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 182
    invoke-virtual {v8, v11, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 186
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v4, Ljava/awt/GridBagConstraints;->weightx:D

    .line 187
    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->fill:I

    .line 188
    const/16 v16, 0xd

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->anchor:I

    .line 189
    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridx:I

    .line 191
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 192
    new-instance v7, Ljavax/swing/JButton;

    const-string v16, "Exit"

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 193
    .local v7, "exitButton":Ljavax/swing/JButton;
    const/16 v16, 0x78

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljavax/swing/JButton;->setMnemonic(C)V

    .line 194
    sget-object v16, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 195
    invoke-virtual {v8, v7, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 196
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 198
    iget v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 199
    new-instance v6, Ljavax/swing/JButton;

    const-string v16, "Clear"

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 200
    .local v6, "clearButton":Ljavax/swing/JButton;
    const/16 v16, 0x63

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljavax/swing/JButton;->setMnemonic(C)V

    .line 201
    new-instance v16, Lorg/apache/log4j/chainsaw/ControlPanel$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$6;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 206
    invoke-virtual {v8, v6, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 207
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 209
    iget v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Ljava/awt/GridBagConstraints;->gridy:I

    .line 210
    new-instance v15, Ljavax/swing/JButton;

    const-string v16, "Pause"

    invoke-direct/range {v15 .. v16}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 211
    .local v15, "toggleButton":Ljavax/swing/JButton;
    const/16 v16, 0x70

    invoke-virtual/range {v15 .. v16}, Ljavax/swing/JButton;->setMnemonic(C)V

    .line 212
    new-instance v16, Lorg/apache/log4j/chainsaw/ControlPanel$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lorg/apache/log4j/chainsaw/ControlPanel$7;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JButton;)V

    invoke-virtual/range {v15 .. v16}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 219
    invoke-virtual {v8, v15, v4}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 221
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method
