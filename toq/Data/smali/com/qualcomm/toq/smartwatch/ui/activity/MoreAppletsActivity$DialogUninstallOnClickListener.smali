.class Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;
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
    name = "DialogUninstallOnClickListener"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;->packageName:Ljava/lang/String;

    .line 401
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;

    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 407
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 422
    :goto_0
    return-void

    .line 410
    :pswitch_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 414
    :pswitch_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 415
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;->packageName:Ljava/lang/String;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->uninstallApplet(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x7f09010a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
