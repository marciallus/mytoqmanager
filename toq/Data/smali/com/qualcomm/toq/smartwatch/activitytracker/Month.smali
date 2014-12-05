.class public Lcom/qualcomm/toq/smartwatch/activitytracker/Month;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x76c7255fac40dff4L


# instance fields
.field private weekDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/activitytracker/Week;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->weekDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getWeekDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/activitytracker/Week;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->weekDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setWeekDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/activitytracker/Week;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "weekDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/Week;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->weekDataList:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
