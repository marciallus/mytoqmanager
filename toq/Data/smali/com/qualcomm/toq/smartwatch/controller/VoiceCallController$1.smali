.class Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$1;
.super Ljava/lang/Object;
.source "VoiceCallController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->requestStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 990
    const-string v0, "VoiceCallController"

    const-string v1, "loop quitting by request"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 992
    return-void
.end method
