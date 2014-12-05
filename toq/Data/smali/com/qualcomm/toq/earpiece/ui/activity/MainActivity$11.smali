.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceBassBoostDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

.field final synthetic val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 3758
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$11;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$11;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 3763
    const/4 v2, 0x0

    .local v2, "radioButtonIndex":I
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$11;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3764
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$11;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 3765
    .local v1, "radioButton":Landroid/widget/RadioButton;
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$11;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3763
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3767
    .end local v1    # "radioButton":Landroid/widget/RadioButton;
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$11;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 3768
    .local v0, "checkedRadioButton":Landroid/widget/RadioButton;
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3769
    return-void
.end method
