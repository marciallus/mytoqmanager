.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 816
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const-class v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 818
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 819
    return-void
.end method
