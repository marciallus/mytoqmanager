.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$8;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showTFTPDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$8;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 642
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "value":Ljava/lang/String;
    const-string v1, "DeviceStatusActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnection()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    .line 649
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 651
    return-void
.end method
