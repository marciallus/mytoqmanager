.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$20;
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
    .line 5608
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$20;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5610
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$20;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-class v2, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5612
    .local v0, "ii":Landroid/content/Intent;
    const-string v1, "endpointtype"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5613
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$20;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 5614
    return-void
.end method
