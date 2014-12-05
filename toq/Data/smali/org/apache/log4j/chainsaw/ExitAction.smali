.class Lorg/apache/log4j/chainsaw/ExitAction;
.super Ljavax/swing/AbstractAction;
.source "ExitAction.java"


# static fields
.field public static final INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

.field private static final LOG:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.ExitAction"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/ExitAction;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->LOG:Lorg/apache/log4j/Logger;

    .line 35
    new-instance v0, Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/ExitAction;-><init>()V

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    return-void

    .line 33
    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
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


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "aIgnore"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 45
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->LOG:Lorg/apache/log4j/Logger;

    const-string v1, "shutting down"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 47
    return-void
.end method
