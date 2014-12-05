.class Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$2;
.super Ljava/lang/Thread;
.source "VoiceCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->initializeHandler()V
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
    .line 997
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$2;->this$0:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1002
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1007
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$2;->this$0:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->handler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->access$002(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1013
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_0
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "VoiceCallController"

    const-string v2, "Exception occured in initializeHandler()"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
