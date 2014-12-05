.class Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->initializeListItemListener()V
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
    .line 337
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "DeviceStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$000(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeadingDetails()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$100(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$000(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeadingDetails()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 350
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$100(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1$1;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$100(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$202(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 372
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$200(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 375
    :cond_0
    return-void
.end method
