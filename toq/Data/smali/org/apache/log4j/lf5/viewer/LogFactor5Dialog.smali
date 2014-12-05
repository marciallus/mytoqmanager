.class public abstract Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.super Ljavax/swing/JDialog;
.source "LogFactor5Dialog.java"


# static fields
.field protected static final DISPLAY_FONT:Ljava/awt/Font;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/awt/Font;

    const-string v1, "Arial"

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->DISPLAY_FONT:Ljava/awt/Font;

    return-void
.end method

.method protected constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "jframe"    # Ljavax/swing/JFrame;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "modal"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;Z)V

    .line 60
    return-void
.end method


# virtual methods
.method protected centerWindow(Ljava/awt/Window;)V
    .locals 5
    .param p1, "win"    # Ljava/awt/Window;

    .prologue
    .line 80
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 83
    .local v0, "screenDim":Ljava/awt/Dimension;
    iget v3, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v4

    iget v4, v4, Ljava/awt/Dimension;->width:I

    if-ge v3, v4, :cond_0

    .line 84
    iget v3, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v4

    iget v4, v4, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, v3, v4}, Ljava/awt/Window;->setSize(II)V

    .line 87
    :cond_0
    iget v3, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v4

    iget v4, v4, Ljava/awt/Dimension;->height:I

    if-ge v3, v4, :cond_1

    .line 88
    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v3

    iget v3, v3, Ljava/awt/Dimension;->width:I

    iget v4, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, v3, v4}, Ljava/awt/Window;->setSize(II)V

    .line 92
    :cond_1
    iget v3, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v4

    iget v4, v4, Ljava/awt/Dimension;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 93
    .local v1, "x":I
    iget v3, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v4

    iget v4, v4, Ljava/awt/Dimension;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 94
    .local v2, "y":I
    invoke-virtual {p1, v1, v2}, Ljava/awt/Window;->setLocation(II)V

    .line 95
    return-void
.end method

.method protected getDefaultConstraints()Ljava/awt/GridBagConstraints;
    .locals 5

    .prologue
    const-wide/high16 v3, 0x3ff0000000000000L

    const/4 v2, 0x4

    .line 124
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 125
    .local v0, "constraints":Ljava/awt/GridBagConstraints;
    iput-wide v3, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 126
    iput-wide v3, v0, Ljava/awt/GridBagConstraints;->weighty:D

    .line 127
    const/4 v1, 0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 129
    new-instance v1, Ljava/awt/Insets;

    invoke-direct {v1, v2, v2, v2, v2}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 131
    const/4 v1, 0x0

    iput v1, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 133
    const/16 v1, 0x11

    iput v1, v0, Ljava/awt/GridBagConstraints;->anchor:I

    .line 135
    return-object v0
.end method

.method protected minimumSizeDialog(Ljava/awt/Component;II)V
    .locals 1
    .param p1, "component"    # Ljava/awt/Component;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->width:I

    if-ge v0, p2, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, p2, v0}, Ljava/awt/Component;->setSize(II)V

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->height:I

    if-ge v0, p3, :cond_1

    .line 146
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1, v0, p3}, Ljava/awt/Component;->setSize(II)V

    .line 147
    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->pack()V

    .line 67
    const/16 v0, 0xc8

    const/16 v1, 0x64

    invoke-virtual {p0, p0, v0, v1}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->minimumSizeDialog(Ljava/awt/Component;II)V

    .line 68
    invoke-virtual {p0, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->centerWindow(Ljava/awt/Window;)V

    .line 69
    invoke-super {p0}, Ljavax/swing/JDialog;->show()V

    .line 70
    return-void
.end method

.method protected wrapStringOnPanel(Ljava/lang/String;Ljava/awt/Container;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "container"    # Ljava/awt/Container;

    .prologue
    const/4 v6, 0x0

    .line 99
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->getDefaultConstraints()Ljava/awt/GridBagConstraints;

    move-result-object v0

    .line 100
    .local v0, "c":Ljava/awt/GridBagConstraints;
    iput v6, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 102
    new-instance v5, Ljava/awt/Insets;

    invoke-direct {v5, v6, v6, v6, v6}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v5, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 103
    invoke-virtual {p2}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    move-result-object v1

    check-cast v1, Ljava/awt/GridBagLayout;

    .line 106
    .local v1, "gbLayout":Ljava/awt/GridBagLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 107
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 109
    .local v4, "newLineIndex":I
    if-ltz v4, :cond_0

    .line 110
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "line":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 116
    :goto_1
    new-instance v2, Ljava/awt/Label;

    invoke-direct {v2, v3}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "label":Ljava/awt/Label;
    sget-object v5, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->DISPLAY_FONT:Ljava/awt/Font;

    invoke-virtual {v2, v5}, Ljava/awt/Label;->setFont(Ljava/awt/Font;)V

    .line 118
    invoke-virtual {v1, v2, v0}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 119
    invoke-virtual {p2, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    goto :goto_0

    .line 113
    .end local v2    # "label":Ljava/awt/Label;
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    move-object v3, p1

    .line 114
    .restart local v3    # "line":Ljava/lang/String;
    const-string p1, ""

    goto :goto_1

    .line 121
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "newLineIndex":I
    :cond_1
    return-void
.end method
