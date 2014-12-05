.class Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$2;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->initializeClearListListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$2;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$2;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$000(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$2;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$000(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->clearHeaderList()V

    .line 391
    :cond_0
    return-void
.end method
