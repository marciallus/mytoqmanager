.class Lorg/apache/log4j/chainsaw/DetailPanel;
.super Ljavax/swing/JPanel;
.source "DetailPanel.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# static fields
.field private static final FORMATTER:Ljava/text/MessageFormat;

.field private static final LOG:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$chainsaw$DetailPanel:Ljava/lang/Class;


# instance fields
.field private final mDetails:Ljavax/swing/JEditorPane;

.field private final mModel:Lorg/apache/log4j/chainsaw/MyTableModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lorg/apache/log4j/chainsaw/DetailPanel;->class$org$apache$log4j$chainsaw$DetailPanel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.DetailPanel"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/DetailPanel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/DetailPanel;->class$org$apache$log4j$chainsaw$DetailPanel:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/DetailPanel;->LOG:Lorg/apache/log4j/Logger;

    .line 46
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "<b>Time:</b> <code>{0,time,medium}</code>&nbsp;&nbsp;<b>Priority:</b> <code>{1}</code>&nbsp;&nbsp;<b>Thread:</b> <code>{2}</code>&nbsp;&nbsp;<b>NDC:</b> <code>{3}</code><br><b>Logger:</b> <code>{4}</code><br><b>Location:</b> <code>{5}</code><br><b>Message:</b><pre>{6}</pre><b>Throwable:</b><pre>{7}</pre>"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/chainsaw/DetailPanel;->FORMATTER:Ljava/text/MessageFormat;

    return-void

    .line 42
    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/DetailPanel;->class$org$apache$log4j$chainsaw$DetailPanel:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Ljavax/swing/JTable;Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 3
    .param p1, "aTable"    # Ljavax/swing/JTable;
    .param p2, "aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .prologue
    .line 69
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 70
    iput-object p2, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 71
    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v1}, Lorg/apache/log4j/chainsaw/DetailPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 72
    const-string v1, "Details: "

    invoke-static {v1}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/chainsaw/DetailPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 74
    new-instance v1, Ljavax/swing/JEditorPane;

    invoke-direct {v1}, Ljavax/swing/JEditorPane;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    .line 75
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JEditorPane;->setEditable(Z)V

    .line 76
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Ljavax/swing/JEditorPane;->setContentType(Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljavax/swing/JScrollPane;

    iget-object v2, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    invoke-direct {v1, v2}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v2, "Center"

    invoke-virtual {p0, v1, v2}, Lorg/apache/log4j/chainsaw/DetailPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p1}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v0

    .line 80
    .local v0, "rowSM":Ljavax/swing/ListSelectionModel;
    invoke-interface {v0, p0}, Ljavax/swing/ListSelectionModel;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 81
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

.method private escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "aStr"    # Ljava/lang/String;

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 v3, 0x0

    .line 168
    :goto_0
    return-object v3

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 149
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 150
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 155
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 158
    :sswitch_2
    const-string v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 161
    :sswitch_3
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 168
    .end local v1    # "c":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private static getThrowableStrRep(Lorg/apache/log4j/chainsaw/EventDetails;)Ljava/lang/String;
    .locals 5
    .param p0, "aEvent"    # Lorg/apache/log4j/chainsaw/EventDetails;

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/EventDetails;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "strs":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 125
    const/4 v3, 0x0

    .line 133
    :goto_0
    return-object v3

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 130
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 8
    .param p1, "aEvent"    # Ljavax/swing/event/ListSelectionEvent;

    .prologue
    const/4 v7, 0x0

    .line 86
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/ListSelectionModel;

    .line 91
    .local v2, "lsm":Ljavax/swing/ListSelectionModel;
    invoke-interface {v2}, Ljavax/swing/ListSelectionModel;->isSelectionEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    iget-object v4, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    const-string v5, "Nothing selected"

    invoke-virtual {v4, v5}, Ljavax/swing/JEditorPane;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v2}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result v3

    .line 95
    .local v3, "selectedRow":I
    iget-object v4, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-virtual {v4, v3}, Lorg/apache/log4j/chainsaw/MyTableModel;->getEventDetails(I)Lorg/apache/log4j/chainsaw/EventDetails;

    move-result-object v1

    .line 96
    .local v1, "e":Lorg/apache/log4j/chainsaw/EventDetails;
    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v0, v7

    const/4 v4, 0x1

    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getPriority()Lorg/apache/log4j/Priority;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getThreadName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x4

    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getCategoryName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x5

    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getLocationDetails()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x6

    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x7

    invoke-static {v1}, Lorg/apache/log4j/chainsaw/DetailPanel;->getThrowableStrRep(Lorg/apache/log4j/chainsaw/EventDetails;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 107
    .local v0, "args":[Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    sget-object v5, Lorg/apache/log4j/chainsaw/DetailPanel;->FORMATTER:Ljava/text/MessageFormat;

    invoke-virtual {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/swing/JEditorPane;->setText(Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    invoke-virtual {v4, v7}, Ljavax/swing/JEditorPane;->setCaretPosition(I)V

    goto/16 :goto_0
.end method
