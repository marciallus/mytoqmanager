.class Lcom/qualcomm/toq/smartwatch/controller/FMSController$2;
.super Ljava/lang/Object;
.source "FMSController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/FMSController;->initiateFMSOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)V
    .locals 0

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$2;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$2;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->checkFMSPendingStateRequest()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$500(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)V

    .line 1929
    return-void
.end method
