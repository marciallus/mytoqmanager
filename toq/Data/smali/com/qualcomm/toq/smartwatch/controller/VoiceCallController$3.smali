.class Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;
.super Ljava/util/TimerTask;
.source "VoiceCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->setInCallVolumeMute(ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

.field final synthetic val$audioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;Landroid/media/AudioManager;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;->this$0:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;->val$audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;->this$0:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteVoiceCallHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1230
    return-void
.end method
