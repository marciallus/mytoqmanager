.class Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl$1;
.super Ljava/lang/Object;
.source "AbstractToqLoggerImpl.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getLoggerFilteredFileArray(Ljava/lang/String;)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;

.field final synthetic val$filterName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl$1;->this$0:Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl$1;->val$filterName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl$1;->val$filterName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
