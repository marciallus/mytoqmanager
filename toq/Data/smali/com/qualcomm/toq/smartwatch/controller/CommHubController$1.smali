.class Lcom/qualcomm/toq/smartwatch/controller/CommHubController$1;
.super Ljava/lang/Thread;
.source "CommHubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->storeCommHubToFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->createJSONFile()V

    .line 735
    return-void
.end method
