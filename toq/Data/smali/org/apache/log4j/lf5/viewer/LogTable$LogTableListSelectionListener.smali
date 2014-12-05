.class Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;
.super Ljava/lang/Object;
.source "LogTable.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/lf5/viewer/LogTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogTableListSelectionListener"
.end annotation


# instance fields
.field protected _table:Ljavax/swing/JTable;

.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogTable;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogTable;Ljavax/swing/JTable;)V
    .locals 0
    .param p2, "table"    # Ljavax/swing/JTable;

    .prologue
    .line 218
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    .line 220
    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 9
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    .prologue
    .line 224
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/ListSelectionModel;

    .line 229
    .local v2, "lsm":Ljavax/swing/ListSelectionModel;
    invoke-interface {v2}, Ljavax/swing/ListSelectionModel;->isSelectionEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 233
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-interface {v2}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result v4

    .line 235
    .local v4, "selectedRow":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_7

    .line 236
    const-string v5, ""

    .line 237
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    invoke-virtual {v6}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v3

    .line 238
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 239
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 242
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v7, v7, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    const-string v6, "\t"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colThread:I

    if-eq v1, v6, :cond_3

    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colMessage:I

    if-eq v1, v6, :cond_3

    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colLevel:I

    if-ne v1, v6, :cond_4

    .line 246
    :cond_3
    const-string v6, "\t"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :cond_4
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colDate:I

    if-eq v1, v6, :cond_5

    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNDC:I

    if-ne v1, v6, :cond_6

    .line 250
    :cond_5
    const-string v6, "\t\t"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v7, v7, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    iget-object v8, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v8, v8, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    invoke-virtual {v6}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v7, v7, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v4, v7}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v3

    .line 263
    .restart local v3    # "obj":Ljava/lang/Object;
    if-eqz v3, :cond_8

    .line 264
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    :cond_8
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
