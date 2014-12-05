.class Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;
.super Ljava/lang/Object;
.source "CommHubController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/CommHubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetailsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final ASC:I = 0x1

.field public static final DESC:I = -0x1


# instance fields
.field private sortingOrder:I

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;I)V
    .locals 1
    .param p2, "order"    # I

    .prologue
    .line 613
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;->this$0:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;->sortingOrder:I

    .line 614
    iput p2, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;->sortingOrder:I

    .line 615
    return-void
.end method


# virtual methods
.method public compare(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;)I
    .locals 4
    .param p1, "commondetails1"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;
    .param p2, "commondetails2"    # Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;

    .prologue
    .line 620
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;->getReceivedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 621
    .local v0, "detail1":Ljava/lang/Long;
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;->getReceivedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 623
    .local v1, "detail2":Ljava/lang/Long;
    iget v2, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;->sortingOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v3

    mul-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 607
    check-cast p1, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;->compare(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;)I

    move-result v0

    return v0
.end method
