.class Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$11;
.super Ljava/lang/Object;
.source "FTPFileBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->getFileFromFtpServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 691
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->dismissDialog(I)V

    .line 692
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 698
    return-void
.end method
