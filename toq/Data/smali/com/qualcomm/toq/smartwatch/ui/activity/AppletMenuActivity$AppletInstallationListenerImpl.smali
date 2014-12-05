.class Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;
.super Ljava/lang/Object;
.source "AppletMenuActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppletInstallationListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V

    return-void
.end method


# virtual methods
.method public onAppletInstall(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 555
    const-string v0, "AppletMenuActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoreAppletsActivity.AppletInstallationListenerImpl.onAppletInstall - packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->updateList()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V

    .line 565
    return-void
.end method

.method public onAppletUninstall(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 578
    const-string v1, "AppletMenuActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoreAppletsActivity.AppletInstallationListenerImpl.onAppletUninstall - packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->isAppListItemDeletedFromList:Z
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 588
    .local v0, "pos":I
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 593
    .end local v0    # "pos":I
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->updateList()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V

    .line 595
    :cond_1
    return-void
.end method

.method public onAppletUpdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 572
    return-void
.end method
