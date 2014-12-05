.class public Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# static fields
.field private static final BLUE:Ljava/lang/String; = "blue"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final COLORLEVEL:Ljava/lang/String; = "colorlevel"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "lf5_configuration.xml"

.field private static final EXPANDED:Ljava/lang/String; = "expanded"

.field private static final FIRST_CATEGORY_NAME:Ljava/lang/String; = "Categories"

.field private static final GREEN:Ljava/lang/String; = "green"

.field private static final LEVEL:Ljava/lang/String; = "level"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NDCTEXTFILTER:Ljava/lang/String; = "searchtext"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final RED:Ljava/lang/String; = "red"

.field private static final SELECTED:Ljava/lang/String; = "selected"


# instance fields
.field private _monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field private _table:Lorg/apache/log4j/lf5/viewer/LogTable;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/viewer/LogTable;)V
    .locals 1
    .param p1, "monitor"    # Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .param p2, "table"    # Lorg/apache/log4j/lf5/viewer/LogTable;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 86
    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    .line 93
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 94
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    .line 95
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->load()V

    .line 96
    return-void
.end method

.method private closeConfigurationXML(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 421
    const-string v0, "</configuration>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    return-void
.end method

.method private exportLogLevelColorXMLElement(Ljava/lang/String;Ljava/awt/Color;Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/awt/Color;
    .param p3, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 442
    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "colorlevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    const-string v0, "red"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    const-string v0, "green"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    const-string v0, "blue"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 447
    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    return-void
.end method

.method private exportLogLevelXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "selected"    # Z
    .param p3, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 435
    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const-string v0, "selected"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 438
    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    return-void
.end method

.method private exportLogTableColumnXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "selected"    # Z
    .param p3, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 451
    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "column"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    const-string v0, "selected"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 454
    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    return-void
.end method

.method private exportXMLElement(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljavax/swing/tree/TreePath;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "path"    # Ljavax/swing/tree/TreePath;
    .param p3, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 425
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    .line 427
    .local v0, "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    const-string v1, "\t<"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    const-string v1, "name"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v1, "path"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->treePathToString(Ljavax/swing/tree/TreePath;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    const-string v1, "expanded"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, p2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->isExpanded(Ljavax/swing/tree/TreePath;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    const-string v1, "selected"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"/>\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    return-void
.end method

.method private openConfigurationXML(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 417
    const-string v0, "<configuration>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    return-void
.end method

.method private openXMLDocument(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 413
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    return-void
.end method

.method private processConfigurationNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 354
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v1

    .line 356
    .local v1, "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 357
    .local v0, "all":Ljava/util/Enumeration;
    const/4 v2, 0x0

    .line 358
    .local v2, "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    check-cast v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 360
    .restart local v2    # "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getTreePathToRoot(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportXMLElement(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljavax/swing/tree/TreePath;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method private processLogLevelColors(Ljava/util/Map;Ljava/util/Map;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "logLevelMenuItems"    # Ljava/util/Map;
    .param p2, "logLevelColors"    # Ljava/util/Map;
    .param p3, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 378
    const-string v3, "\t<loglevelcolors>\r\n"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 381
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogLevel;

    .line 384
    .local v2, "level":Lorg/apache/log4j/lf5/LogLevel;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Color;

    .line 385
    .local v0, "color":Ljava/awt/Color;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0, p3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportLogLevelColorXMLElement(Ljava/lang/String;Ljava/awt/Color;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 388
    .end local v0    # "color":Ljava/awt/Color;
    .end local v2    # "level":Lorg/apache/log4j/lf5/LogLevel;
    :cond_0
    const-string v3, "\t</loglevelcolors>\r\n"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    return-void
.end method

.method private processLogLevels(Ljava/util/Map;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "logLevelMenuItems"    # Ljava/util/Map;
    .param p2, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 366
    const-string v3, "\t<loglevels>\r\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 368
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogLevel;

    .line 370
    .local v2, "level":Lorg/apache/log4j/lf5/LogLevel;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/JCheckBoxMenuItem;

    .line 371
    .local v1, "item":Ljavax/swing/JCheckBoxMenuItem;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportLogLevelXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V

    goto :goto_0

    .line 374
    .end local v1    # "item":Ljavax/swing/JCheckBoxMenuItem;
    .end local v2    # "level":Lorg/apache/log4j/lf5/LogLevel;
    :cond_0
    const-string v3, "\t</loglevels>\r\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    return-void
.end method

.method private processLogRecordFilter(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 407
    const-string v0, "\t<"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "searchtext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    const-string v0, "/>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    return-void
.end method

.method private processLogTableColumns(Ljava/util/List;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "logTableColumnMenuItems"    # Ljava/util/List;
    .param p2, "xml"    # Ljava/lang/StringBuffer;

    .prologue
    .line 393
    const-string v3, "\t<logtablecolumns>\r\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 395
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 397
    .local v0, "column":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v2

    .line 398
    .local v2, "item":Ljavax/swing/JCheckBoxMenuItem;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportLogTableColumnXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V

    goto :goto_0

    .line 401
    .end local v0    # "column":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    .end local v2    # "item":Ljavax/swing/JCheckBoxMenuItem;
    :cond_0
    const-string v3, "\t</logtablecolumns>\r\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    return-void
.end method

.method public static treePathToString(Ljavax/swing/tree/TreePath;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljavax/swing/tree/TreePath;

    .prologue
    .line 126
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 128
    .local v1, "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {p0}, Ljavax/swing/tree/TreePath;->getPath()[Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "objects":[Ljava/lang/Object;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 130
    aget-object v1, v2, v0

    .end local v1    # "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    check-cast v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 131
    .restart local v1    # "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    .line 132
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_0
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected collapseTree()V
    .locals 3

    .prologue
    .line 301
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v1

    .line 302
    .local v1, "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getRowCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 303
    invoke-virtual {v1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->collapseRow(I)V

    .line 302
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method protected deleteConfigurationFile()V
    .locals 5

    .prologue
    .line 333
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " because a security violation occured."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getFilename()Ljava/lang/String;
    .locals 4

    .prologue
    .line 344
    const-string v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "home":Ljava/lang/String;
    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "sep":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "lf5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "lf5_configuration.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "map"    # Lorg/w3c/dom/NamedNodeMap;
    .param p2, "attr"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-interface {p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 296
    .local v0, "n":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected load()V
    .locals 8

    .prologue
    .line 143
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 148
    .local v2, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 149
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 150
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processRecordFilter(Lorg/w3c/dom/Document;)V

    .line 151
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processCategories(Lorg/w3c/dom/Document;)V

    .line 152
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevels(Lorg/w3c/dom/Document;)V

    .line 153
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevelColors(Lorg/w3c/dom/Document;)V

    .line 154
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogTableColumns(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable process configuration file at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ". Error Message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processCategories(Lorg/w3c/dom/Document;)V
    .locals 12
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 191
    iget-object v10, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v10}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v7

    .line 192
    .local v7, "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    invoke-virtual {v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v4

    .line 193
    .local v4, "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    const-string v10, "category"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 196
    .local v6, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 197
    .local v3, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v10, "name"

    invoke-virtual {p0, v3, v10}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Categories"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v2, v8

    .line 200
    .local v2, "j":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 201
    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 202
    .local v5, "n":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 203
    new-instance v10, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    const-string v11, "path"

    invoke-virtual {p0, v3, v11}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v0

    .line 204
    .local v0, "chnode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const-string v10, "selected"

    invoke-virtual {p0, v3, v10}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v8

    :goto_2
    invoke-virtual {v0, v10}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 205
    const-string v10, "expanded"

    invoke-virtual {p0, v3, v10}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 206
    :cond_0
    invoke-virtual {v4, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getTreePathToRoot(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->expandPath(Ljavax/swing/tree/TreePath;)V

    .line 200
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "chnode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v5    # "n":Lorg/w3c/dom/Node;
    :cond_1
    move v2, v9

    .line 197
    goto :goto_0

    .restart local v0    # "chnode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v5    # "n":Lorg/w3c/dom/Node;
    :cond_2
    move v10, v9

    .line 204
    goto :goto_2

    .line 209
    .end local v0    # "chnode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v5    # "n":Lorg/w3c/dom/Node;
    :cond_3
    return-void
.end method

.method protected processLogLevelColors(Lorg/w3c/dom/Document;)V
    .locals 11
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 230
    const-string v10, "colorlevel"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 231
    .local v8, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLogLevelColorMap()Ljava/util/Map;

    .line 233
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 234
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 237
    .local v6, "n":Lorg/w3c/dom/Node;
    if-nez v6, :cond_1

    .line 257
    .end local v6    # "n":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 241
    .restart local v6    # "n":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 242
    .local v5, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v10, "name"

    invoke-virtual {p0, v5, v10}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v4

    .line 245
    .local v4, "level":Lorg/apache/log4j/lf5/LogLevel;
    const-string v10, "red"

    invoke-virtual {p0, v5, v10}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 246
    .local v9, "red":I
    const-string v10, "green"

    invoke-virtual {p0, v5, v10}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 247
    .local v2, "green":I
    const-string v10, "blue"

    invoke-virtual {p0, v5, v10}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, "blue":I
    new-instance v1, Ljava/awt/Color;

    invoke-direct {v1, v9, v2, v0}, Ljava/awt/Color;-><init>(III)V

    .line 249
    .local v1, "c":Ljava/awt/Color;
    if-eqz v4, :cond_2

    .line 250
    invoke-virtual {v4, v4, v1}, Lorg/apache/log4j/lf5/LogLevel;->setLogLevelColorMap(Lorg/apache/log4j/lf5/LogLevel;Ljava/awt/Color;)V
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "blue":I
    .end local v1    # "c":Ljava/awt/Color;
    .end local v2    # "green":I
    .end local v4    # "level":Lorg/apache/log4j/lf5/LogLevel;
    .end local v9    # "red":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method protected processLogLevels(Lorg/w3c/dom/Document;)V
    .locals 9
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 212
    const-string v7, "level"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 213
    .local v6, "nodeList":Lorg/w3c/dom/NodeList;
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v7}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevelMenuItems()Ljava/util/Map;

    move-result-object v3

    .line 215
    .local v3, "menuItems":Ljava/util/Map;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 216
    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 217
    .local v4, "n":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 218
    .local v2, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v7, "name"

    invoke-virtual {p0, v2, v7}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/JCheckBoxMenuItem;

    .line 222
    .local v1, "item":Ljavax/swing/JCheckBoxMenuItem;
    const-string v7, "selected"

    invoke-virtual {p0, v2, v7}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v1, v7}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v1    # "item":Ljavax/swing/JCheckBoxMenuItem;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "n":Lorg/w3c/dom/Node;
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 223
    .restart local v2    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v4    # "n":Lorg/w3c/dom/Node;
    .restart local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method protected processLogTableColumns(Lorg/w3c/dom/Document;)V
    .locals 11
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 260
    const-string v9, "column"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 261
    .local v7, "nodeList":Lorg/w3c/dom/NodeList;
    iget-object v9, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v9}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItems()Ljava/util/Map;

    move-result-object v4

    .line 262
    .local v4, "menuItems":Ljava/util/Map;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v8, "selectedColumns":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 264
    invoke-interface {v7, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 267
    .local v5, "n":Lorg/w3c/dom/Node;
    if-nez v5, :cond_1

    .line 292
    .end local v5    # "n":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 270
    .restart local v5    # "n":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 271
    .local v3, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v9, "name"

    invoke-virtual {p0, v3, v9}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    move-result-object v0

    .line 274
    .local v0, "column":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/JCheckBoxMenuItem;

    .line 276
    .local v2, "item":Ljavax/swing/JCheckBoxMenuItem;
    const-string v9, "selected"

    invoke-virtual {p0, v3, v9}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v2, v9}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    .line 278
    invoke-virtual {v2}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 279
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0    # "column":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    .end local v2    # "item":Ljavax/swing/JCheckBoxMenuItem;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 286
    iget-object v9, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v9}, Lorg/apache/log4j/lf5/viewer/LogTable;->setDetailedView()V

    .line 263
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_3
    iget-object v9, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v9, v8}, Lorg/apache/log4j/lf5/viewer/LogTable;->setView(Ljava/util/List;)V

    goto :goto_2

    .line 281
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method protected processRecordFilter(Lorg/w3c/dom/Document;)V
    .locals 5
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 171
    const-string v4, "searchtext"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 174
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 177
    .local v1, "n":Lorg/w3c/dom/Node;
    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 182
    .local v0, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v4, "name"

    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v4, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setNDCLogRecordFilter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->deleteConfigurationFile()V

    .line 120
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->collapseTree()V

    .line 121
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->selectAllNodes()V

    .line 122
    return-void
.end method

.method public save()V
    .locals 5

    .prologue
    .line 102
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v0

    .line 103
    .local v0, "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v1

    .line 105
    .local v1, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 106
    .local v2, "xml":Ljava/lang/StringBuffer;
    invoke-direct {p0, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->openXMLDocument(Ljava/lang/StringBuffer;)V

    .line 107
    invoke-direct {p0, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->openConfigurationXML(Ljava/lang/StringBuffer;)V

    .line 108
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getNDCTextFilter()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogRecordFilter(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 109
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevelMenuItems()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevels(Ljava/util/Map;Ljava/lang/StringBuffer;)V

    .line 110
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevelMenuItems()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLogLevelColorMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevelColors(Ljava/util/Map;Ljava/util/Map;Ljava/lang/StringBuffer;)V

    .line 112
    invoke-static {}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLogTableColumns()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogTableColumns(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 113
    invoke-direct {p0, v1, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processConfigurationNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljava/lang/StringBuffer;)V

    .line 114
    invoke-direct {p0, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->closeConfigurationXML(Ljava/lang/StringBuffer;)V

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->store(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method protected selectAllNodes()V
    .locals 5

    .prologue
    .line 308
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v4}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v1

    .line 309
    .local v1, "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v3

    .line 310
    .local v3, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 311
    .local v0, "all":Ljava/util/Enumeration;
    const/4 v2, 0x0

    .line 312
    .local v2, "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    check-cast v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 314
    .restart local v2    # "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method

.method protected store(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 321
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 322
    .local v1, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v1    # "writer":Ljava/io/PrintWriter;
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
