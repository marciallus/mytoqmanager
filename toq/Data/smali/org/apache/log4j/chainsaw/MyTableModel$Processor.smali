.class Lorg/apache/log4j/chainsaw/MyTableModel$Processor;
.super Ljava/lang/Object;
.source "MyTableModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/chainsaw/MyTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Processor"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/log4j/chainsaw/MyTableModel;


# direct methods
.method private constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/MyTableModel$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;
    .param p2, "x1"    # Lorg/apache/log4j/chainsaw/MyTableModel$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    :goto_0
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    iget-object v6, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v6}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$000(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 86
    :try_start_1
    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$100(Lorg/apache/log4j/chainsaw/MyTableModel;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    monitor-exit v6

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 90
    :cond_0
    const/4 v3, 0x1

    .line 91
    .local v3, "toHead":Z
    const/4 v2, 0x0

    .line 92
    .local v2, "needUpdate":Z
    :try_start_2
    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$200(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 93
    .local v1, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/chainsaw/EventDetails;

    .line 95
    .local v0, "event":Lorg/apache/log4j/chainsaw/EventDetails;
    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$300(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/SortedSet;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 96
    if-eqz v3, :cond_2

    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$300(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/SortedSet;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v7

    if-ne v0, v7, :cond_2

    move v3, v5

    .line 97
    :goto_3
    if-nez v2, :cond_1

    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$400(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/EventDetails;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    move v2, v5

    .line 98
    :goto_4
    goto :goto_2

    :cond_2
    move v3, v4

    .line 96
    goto :goto_3

    :cond_3
    move v2, v4

    .line 97
    goto :goto_4

    .line 99
    .end local v0    # "event":Lorg/apache/log4j/chainsaw/EventDetails;
    :cond_4
    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$200(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 101
    if-eqz v2, :cond_5

    .line 102
    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7, v3}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$500(Lorg/apache/log4j/chainsaw/MyTableModel;Z)V

    .line 104
    :cond_5
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 81
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "needUpdate":Z
    .end local v3    # "toHead":Z
    :catch_0
    move-exception v6

    goto :goto_1
.end method
