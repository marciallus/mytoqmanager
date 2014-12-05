.class Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$4;
.super Ljava/lang/Thread;
.source "FTPFileBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startBrowseSession(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

.field final synthetic val$backup:Z


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Z)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    iput-boolean p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$4;->val$backup:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->ftpUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$4;->val$backup:Z

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseFTPSession(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/String;Z)V

    .line 331
    return-void
.end method
