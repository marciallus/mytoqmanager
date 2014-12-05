.class Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3$1;
.super Ljava/lang/Object;
.source "VoiceCallController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;)V
    .locals 0

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3$1;->this$1:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1223
    const-string v0, "VoiceCallController"

    const-string v1, "inside TimerTask Run "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v0, "VoiceCallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MicroPhone state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3$1;->this$1:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;->val$audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3$1;->this$1:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;->val$audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1228
    return-void
.end method
