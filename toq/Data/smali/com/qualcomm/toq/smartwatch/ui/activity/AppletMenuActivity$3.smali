.class Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$3;
.super Ljava/lang/Object;
.source "AppletMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 410
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 420
    :goto_0
    :pswitch_0
    return-void

    .line 412
    :pswitch_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->initiateDoneChanges()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V

    goto :goto_0

    .line 415
    :pswitch_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getPopUpWindow()Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x7f0901af
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
