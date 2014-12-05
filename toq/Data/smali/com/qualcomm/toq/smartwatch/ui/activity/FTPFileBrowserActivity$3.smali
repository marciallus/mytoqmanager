.class Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;
.super Ljava/lang/Object;
.source "FTPFileBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->onStart()V
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
    .line 281
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 290
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseSessionStarted:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    const v0, 0x7f0901f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->viewTemp:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 294
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->viewTemp:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    iget v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;->icon:I

    const v1, 0x7f0200d5

    if-ne v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startBrowseSession(Z)V
    invoke-static {v0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Z)V

    .line 310
    :goto_1
    const-string v0, "FTPFileBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position  text === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->viewTemp:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
