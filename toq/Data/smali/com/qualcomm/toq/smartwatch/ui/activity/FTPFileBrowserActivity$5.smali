.class Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;
.super Ljava/lang/Object;
.source "FTPFileBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseFTPSession(Ljava/lang/String;Z)V
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
    .line 351
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 354
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 355
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mfileBrowserListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->loadAdapter()Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->getFolderPath()Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDirText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mProgress:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    const-string v2, ""

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folderPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1402(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 361
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1484(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/Object;)Ljava/lang/String;

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDirText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folderPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
