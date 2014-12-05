.class public Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;
.super Ljava/lang/Object;
.source "AmbientState.java"


# static fields
.field public static CURRENT_CITY_POLLING_COMPLETED:I

.field public static CURRENT_CITY_POLLING_INPROGRESS:I

.field public static DATA_FETCH_COMPLETED:I

.field public static DATA_FETCH_INPROGRESS:I

.field public static DATA_SYNC_COMPLETED:I

.field public static DATA_SYNC_IN_PROGRESS:I

.field public static IDLE_SATE:I


# instance fields
.field public state:I

.field public stateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, -0x270f

    sput v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    .line 14
    const/16 v0, -0x7d1

    sput v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_INPROGRESS:I

    .line 15
    const/16 v0, -0x7d2

    sput v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_COMPLETED:I

    .line 16
    const/16 v0, -0xbb9

    sput v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_IN_PROGRESS:I

    .line 17
    const/16 v0, -0xbba

    sput v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_COMPLETED:I

    .line 18
    const/16 v0, -0xfa1

    sput v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->CURRENT_CITY_POLLING_INPROGRESS:I

    .line 19
    const/16 v0, -0xfa2

    sput v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->CURRENT_CITY_POLLING_COMPLETED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->state:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->stateTime:J

    .line 27
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 3

    .prologue
    .line 30
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->state:I

    return v0
.end method

.method public isResetState()Z
    .locals 7

    .prologue
    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 38
    .local v0, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 40
    .local v1, "now":J
    iget v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->state:I

    sget v4, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    if-eq v3, v4, :cond_0

    iget-wide v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->stateTime:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x1d4c0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 42
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State taking more time better reset it :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->stateTime:J

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v3, 0x1

    .line 47
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setState(IJ)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "time"    # J

    .prologue
    .line 51
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  stateTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->state:I

    .line 54
    iput-wide p2, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->stateTime:J

    .line 56
    return-void
.end method
