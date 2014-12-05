.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeDialog(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 3284
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 3290
    if-eqz p2, :cond_0

    .line 3291
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSecondaryTextHeadset:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3292
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v1, "Primary"

    iput-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    .line 3293
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v1, "Secondary"

    iput-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    .line 3302
    :goto_0
    return-void

    .line 3296
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSecondaryTextHeadset:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3298
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v1, "Secondary"

    iput-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    .line 3299
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v1, "Primary"

    iput-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    goto :goto_0
.end method
