.class Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
.super Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;
.source "CommHubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/CommHubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallLogDetail"
.end annotation


# instance fields
.field private callerId:Ljava/lang/String;

.field private direction:Ljava/lang/String;

.field private duration:J

.field private isMissedCall:Z

.field private itemID:I

.field private name:Ljava/lang/String;

.field private phoneType:Ljava/lang/String;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;-><init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;)V

    .line 655
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->callerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->callerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->direction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->direction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)J
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    .prologue
    .line 643
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->duration:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    .param p1, "x1"    # J

    .prologue
    .line 643
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->duration:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->phoneType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->phoneType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->isMissedCall:Z

    return v0
.end method

.method static synthetic access$502(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    .param p1, "x1"    # Z

    .prologue
    .line 643
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->isMissedCall:Z

    return p1
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    .prologue
    .line 643
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->itemID:I

    return v0
.end method
