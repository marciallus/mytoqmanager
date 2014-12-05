.class Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$1;
.super Ljava/lang/Object;
.source "FTPFileBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

.field final synthetic val$info:Landroid/widget/AdapterView$AdapterContextMenuInfo;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$1;->val$info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startTime:J
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;J)J

    .line 199
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$1;->val$info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->getFileFromFtpServer(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/String;)V

    .line 202
    return-void
.end method
