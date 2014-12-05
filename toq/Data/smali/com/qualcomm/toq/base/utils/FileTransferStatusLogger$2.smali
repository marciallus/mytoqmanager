.class Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$2;
.super Ljava/lang/Object;
.source "FileTransferStatusLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$2;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$2;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    # invokes: Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getFileTransferStatusAdapter()Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->access$100(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$2;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    # invokes: Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getFileTransferStatusAdapter()Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->access$100(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->notifyDataSetChanged()V

    .line 218
    :cond_0
    return-void
.end method
