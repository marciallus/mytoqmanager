.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$16;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showToastMessage(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$16;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$16;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$16;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$16;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$16;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1387
    return-void
.end method
