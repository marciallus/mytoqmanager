.class Lorg/apache/log4j/chainsaw/Main$1;
.super Ljava/awt/event/WindowAdapter;
.source "Main.java"


# instance fields
.field private final this$0:Lorg/apache/log4j/chainsaw/Main;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/Main;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/Main$1;->this$0:Lorg/apache/log4j/chainsaw/Main;

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 2
    .param p1, "aEvent"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 118
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/ExitAction;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 119
    return-void
.end method
