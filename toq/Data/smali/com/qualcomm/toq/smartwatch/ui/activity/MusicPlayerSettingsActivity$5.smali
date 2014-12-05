.class Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$5;
.super Ljava/lang/Object;
.source "MusicPlayerSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->showDialogForAdvancedList(ILjava/util/List;)V
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
    .line 401
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 407
    return-void
.end method
