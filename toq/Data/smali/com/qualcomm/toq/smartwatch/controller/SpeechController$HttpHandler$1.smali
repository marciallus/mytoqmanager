.class Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler$1;
.super Ljava/util/TimerTask;
.source "SpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->openHttpConnection()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler$1;->this$1:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    const-string v0, "SpeechController"

    const-string v1, "Connection timed out: Closing existing connections."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler$1;->this$1:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->shutdown()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->access$000(Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;)V

    .line 395
    return-void
.end method
