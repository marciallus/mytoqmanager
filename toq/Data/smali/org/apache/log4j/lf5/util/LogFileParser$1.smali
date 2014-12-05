.class Lorg/apache/log4j/lf5/util/LogFileParser$1;
.super Ljava/lang/Object;
.source "LogFileParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/util/LogFileParser;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/util/LogFileParser;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser$1;->this$0:Lorg/apache/log4j/lf5/util/LogFileParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser$1;->this$0:Lorg/apache/log4j/lf5/util/LogFileParser;

    invoke-static {v0}, Lorg/apache/log4j/lf5/util/LogFileParser;->access$000(Lorg/apache/log4j/lf5/util/LogFileParser;)V

    .line 143
    return-void
.end method
