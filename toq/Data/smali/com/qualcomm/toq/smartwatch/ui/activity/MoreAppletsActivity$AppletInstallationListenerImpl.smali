.class Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletInstallationListenerImpl;
.super Ljava/lang/Object;
.source "MoreAppletsActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppletInstallationListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletInstallationListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V

    return-void
.end method


# virtual methods
.method public onAppletInstall(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 535
    const-string v0, "DeckOfCards"

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

    .line 538
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->updateList()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V

    .line 539
    return-void
.end method

.method public onAppletUninstall(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 552
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoreAppletsActivity.AppletInstallationListenerImpl.onAppletUninstall - packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletInstallationListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->updateList()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V

    .line 556
    return-void
.end method

.method public onAppletUpdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 546
    return-void
.end method
