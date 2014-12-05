.class Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$2;
.super Ljava/lang/Object;
.source "MoreAppletsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "DeckOfCards"

    const-string v1, "Quitting the remoteCallbackThread Looper"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 219
    return-void
.end method
