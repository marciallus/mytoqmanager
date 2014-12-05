.class Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;
.super Ljava/lang/Object;
.source "MusicPlayerSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;
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
    .line 417
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 423
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v1, 0x7f09020d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 424
    .local v0, "radioButton":Landroid/widget/RadioButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 427
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 428
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getPackageNamefromPosition(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPackageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$702(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPlayerSettingsActivity- dialogItemsClickListener pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDefaultMusicPlayerView()Landroid/view/View;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getLayoutSubText(Landroid/view/View;)Landroid/widget/TextView;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAppNamefromPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method
