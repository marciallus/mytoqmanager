.class Lcom/qualcomm/toq/smartwatch/controller/PopUpController$1;
.super Ljava/util/TimerTask;
.source "PopUpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->sendControllerMessageData(IIILjava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/PopUpController;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->checkPendingPopupRequest()V

    .line 309
    return-void
.end method
