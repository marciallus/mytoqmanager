.class Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;
.super Ljava/awt/event/KeyAdapter;
.source "LogFactor5InputDialog.java"


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-direct {p0}, Ljava/awt/event/KeyAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->hide()V

    .line 90
    :cond_0
    return-void
.end method
