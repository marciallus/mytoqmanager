.class public Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;
.super Ljavax/swing/table/DefaultTableCellRenderer;
.source "LogTableRowRenderer.java"


# static fields
.field private static final serialVersionUID:J = -0x36d70b99e8e9e1cdL


# instance fields
.field protected _color:Ljava/awt/Color;

.field protected _highlightFatal:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xe6

    .line 38
    invoke-direct {p0}, Ljavax/swing/table/DefaultTableCellRenderer;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;->_highlightFatal:Z

    .line 48
    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v1, v1, v1}, Ljava/awt/Color;-><init>(III)V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;->_color:Ljava/awt/Color;

    return-void
.end method


# virtual methods
.method protected getLogLevelColor(Lorg/apache/log4j/lf5/LogLevel;)Ljava/awt/Color;
    .locals 1
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .prologue
    .line 92
    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLogLevelColorMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Color;

    return-object v0
.end method

.method public getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;
    .locals 3
    .param p1, "table"    # Ljavax/swing/JTable;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "isSelected"    # Z
    .param p4, "hasFocus"    # Z
    .param p5, "row"    # I
    .param p6, "col"    # I

    .prologue
    .line 69
    rem-int/lit8 v2, p5, 0x2

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;->_color:Ljava/awt/Color;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;->setBackground(Ljava/awt/Color;)V

    .line 75
    :goto_0
    invoke-virtual {p1}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    .line 76
    .local v0, "model":Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
    invoke-virtual {v0, p5}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecord(I)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v1

    .line 78
    .local v1, "record":Lorg/apache/log4j/lf5/LogRecord;
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/LogRecord;->getLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;->getLogLevelColor(Lorg/apache/log4j/lf5/LogLevel;)Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;->setForeground(Ljava/awt/Color;)V

    .line 80
    invoke-super/range {p0 .. p6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    move-result-object v2

    return-object v2

    .line 72
    .end local v0    # "model":Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
    .end local v1    # "record":Lorg/apache/log4j/lf5/LogRecord;
    :cond_0
    sget-object v2, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;->setBackground(Ljava/awt/Color;)V

    goto :goto_0
.end method
