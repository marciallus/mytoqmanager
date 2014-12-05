.class Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendPlaylistPlayResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

.field final synthetic val$transactionId:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/MusicController;I)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    iput p2, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;->val$transactionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendPlaylistToWD()V

    .line 605
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    iget v1, v1, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->errorCode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 607
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    iget v2, v2, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->errorCode:I

    iget v3, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;->val$transactionId:I

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->playlistPlayReponse(II)V

    .line 625
    :goto_0
    return-void

    .line 612
    :cond_0
    const-wide/16 v1, 0x2bc

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 613
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    const/4 v2, 0x0

    iput v2, v1, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->errorCode:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 618
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    const/4 v2, 0x1

    iput v2, v1, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->errorCode:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
