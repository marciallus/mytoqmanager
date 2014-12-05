.class public Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
.super Ljava/lang/Object;
.source "Day.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3aeedab64a6c8516L


# instance fields
.field private hourDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;",
            ">;"
        }
    .end annotation
.end field

.field private totalPoints:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->hourDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getHourDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->hourDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalPoints()I
    .locals 6

    .prologue
    .line 19
    const/4 v2, 0x0

    iput v2, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->totalPoints:I

    .line 21
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->hourDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;

    .line 22
    .local v0, "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    iget v2, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->totalPoints:I

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->totalPoints:I

    goto :goto_0

    .line 24
    .end local v0    # "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    :cond_0
    iget v2, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->totalPoints:I

    return v2
.end method

.method public setHourDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "hourDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->hourDataList:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public setTotalPoints(I)V
    .locals 0
    .param p1, "totalPoints"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->totalPoints:I

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nDay-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->hourDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
