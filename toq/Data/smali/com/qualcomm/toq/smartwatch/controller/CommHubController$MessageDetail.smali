.class Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
.super Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;
.source "CommHubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/CommHubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageDetail"
.end annotation


# instance fields
.field private direction:I

.field private isRead:Z

.field private itemID:I

.field private message:Ljava/lang/String;

.field private privileged:I

.field private recordID:I

.field private senderName:Ljava/lang/String;

.field private senderNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;-><init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;)V

    .line 640
    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->isRead:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .param p1, "x1"    # Z

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->isRead:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    .prologue
    .line 627
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->privileged:I

    return v0
.end method

.method static synthetic access$1202(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .param p1, "x1"    # I

    .prologue
    .line 627
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->privileged:I

    return p1
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    .prologue
    .line 627
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->direction:I

    return v0
.end method

.method static synthetic access$1302(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .param p1, "x1"    # I

    .prologue
    .line 627
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->direction:I

    return p1
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    .prologue
    .line 627
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->recordID:I

    return v0
.end method

.method static synthetic access$1402(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .param p1, "x1"    # I

    .prologue
    .line 627
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->recordID:I

    return p1
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    .prologue
    .line 627
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->itemID:I

    return v0
.end method

.method static synthetic access$902(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .param p1, "x1"    # I

    .prologue
    .line 627
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->itemID:I

    return p1
.end method
