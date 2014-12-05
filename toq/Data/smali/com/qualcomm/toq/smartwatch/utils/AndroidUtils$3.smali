.class Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$3;
.super Ljava/lang/Object;
.source "AndroidUtils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->deleteOldLogFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)V
    .locals 0

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$3;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1987
    const-string v0, "Log"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1988
    const/4 v0, 0x1

    .line 1991
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
