.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$27;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 7359
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$27;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "overflowMenu"    # Landroid/view/View;

    .prologue
    .line 7364
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$27;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$9300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7365
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$27;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 7366
    .local v0, "popUpList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$27;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    new-instance v2, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$27;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$27;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$9302(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 7370
    .end local v0    # "popUpList":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$27;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$9300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {v1, p1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 7372
    return-void
.end method
