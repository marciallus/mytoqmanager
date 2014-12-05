.class Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;
.super Ljava/lang/Object;
.source "MusicPlayerSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->setViewClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 259
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getPackageIndex()I

    move-result v3

    .line 263
    .local v3, "index":I
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->updateMediaApplist(Landroid/content/Context;)V

    .line 265
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MusicPlayerSettingsActivity- Creating dublicate music apps list"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMediaAppList()Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "appEntryList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;>;"
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 275
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    const/4 v5, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;Ljava/util/List;)Ljava/util/List;

    .line 277
    :cond_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;Ljava/util/List;)Ljava/util/List;

    .line 278
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 279
    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getClsName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v6, v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v1, "entry":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v1    # "entry":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Ljava/util/List;

    move-result-object v5

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->showDialogForAdvancedList(ILjava/util/List;)V
    invoke-static {v4, v3, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;ILjava/util/List;)V

    .line 288
    return-void
.end method
