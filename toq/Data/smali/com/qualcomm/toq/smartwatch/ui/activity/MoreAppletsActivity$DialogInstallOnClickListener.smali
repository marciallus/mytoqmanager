.class Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;
.super Ljava/lang/Object;
.source "MoreAppletsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogInstallOnClickListener"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;->packageName:Ljava/lang/String;

    .line 366
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;

    .prologue
    .line 360
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 371
    .local v0, "id":I
    const/4 v1, 0x0

    .line 372
    .local v1, "permission":Z
    packed-switch v0, :pswitch_data_0

    .line 388
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;->packageName:Ljava/lang/String;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->installApplet(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;Z)V

    .line 390
    return-void

    .line 375
    :pswitch_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 376
    const/4 v1, 0x0

    .line 377
    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 381
    const/4 v1, 0x1

    .line 383
    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x7f09010a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
