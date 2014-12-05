.class Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;
.super Ljava/lang/Object;
.source "CommHubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/CommHubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Commondetails"
.end annotation


# instance fields
.field public contactID:Ljava/lang/String;

.field public isDetailUsed:Z

.field public receivedTime:J

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;)V
    .locals 1

    .prologue
    .line 602
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;->this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;->isDetailUsed:Z

    .line 604
    return-void
.end method


# virtual methods
.method public getReceivedTime()J
    .locals 2

    .prologue
    .line 599
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;->receivedTime:J

    return-wide v0
.end method
