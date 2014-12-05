.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
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
    .line 2386
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectingString:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2300(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->connectToWatch()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    .line 2391
    :cond_0
    return-void
.end method
