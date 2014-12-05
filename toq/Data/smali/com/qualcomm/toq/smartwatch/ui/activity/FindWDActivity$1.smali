.class Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$1;
.super Ljava/lang/Object;
.source "FindWDActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->cancelFindWDReq()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;)V

    .line 90
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->finish()V

    .line 107
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
