.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;
.super Ljava/lang/Object;
.source "ActivityMonitoringActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 367
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 369
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 370
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 375
    .local v0, "dialogLayout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 378
    const v2, 0x7f090039

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 379
    .local v1, "okButton":Landroid/widget/Button;
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 389
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v3, v3, -0x32

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 393
    .end local v0    # "dialogLayout":Landroid/widget/LinearLayout;
    .end local v1    # "okButton":Landroid/widget/Button;
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 394
    return-void
.end method
