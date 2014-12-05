.class Lcom/qualcomm/toq/ToqApplication$2;
.super Landroid/content/BroadcastReceiver;
.source "ToqApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/ToqApplication;->startWatchingExternalStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/ToqApplication;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/ToqApplication;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/qualcomm/toq/ToqApplication$2;->this$0:Lcom/qualcomm/toq/ToqApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/qualcomm/toq/ToqApplication$2;->this$0:Lcom/qualcomm/toq/ToqApplication;

    invoke-virtual {v0}, Lcom/qualcomm/toq/ToqApplication;->initializeLoggers()V

    .line 219
    return-void
.end method
