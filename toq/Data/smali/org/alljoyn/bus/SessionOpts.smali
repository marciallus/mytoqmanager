.class public Lorg/alljoyn/bus/SessionOpts;
.super Ljava/lang/Object;
.source "SessionOpts.java"


# static fields
.field public static final PROXIMITY_ANY:B = -0x1t

.field public static final PROXIMITY_NETWORK:B = 0x2t

.field public static final PROXIMITY_PHYSICAL:B = 0x1t

.field public static final TRAFFIC_MESSAGES:B = 0x1t

.field public static final TRAFFIC_RAW_RELIABLE:B = 0x4t

.field public static final TRAFFIC_RAW_UNRELIABLE:B = 0x2t

.field public static final TRANSPORT_ANY:S = -0x81s

.field public static final TRANSPORT_BLUETOOTH:S = 0x2s

.field public static final TRANSPORT_ICE:S = 0x20s

.field public static final TRANSPORT_LAN:S = 0x10s

.field public static final TRANSPORT_LOCAL:S = 0x1s

.field public static final TRANSPORT_NONE:S = 0x0s

.field public static final TRANSPORT_TCP:S = 0x4s

.field public static final TRANSPORT_WFD:S = 0x80s

.field public static final TRANSPORT_WLAN:S = 0x4s

.field public static final TRANSPORT_WWAN:S = 0x8s


# instance fields
.field public isMultipoint:Z

.field public proximity:B

.field public traffic:B

.field public transports:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/alljoyn/bus/SessionOpts;->traffic:B

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/bus/SessionOpts;->isMultipoint:Z

    .line 53
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/alljoyn/bus/SessionOpts;->proximity:B

    .line 54
    const/16 v0, -0x81

    iput-short v0, p0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    .line 55
    return-void
.end method

.method public constructor <init>(BZBS)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-byte p1, p0, Lorg/alljoyn/bus/SessionOpts;->traffic:B

    .line 67
    iput-boolean p2, p0, Lorg/alljoyn/bus/SessionOpts;->isMultipoint:Z

    .line 68
    iput-byte p3, p0, Lorg/alljoyn/bus/SessionOpts;->proximity:B

    .line 69
    iput-short p4, p0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    .line 70
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "traffic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "(0x%02x)"

    new-array v2, v5, [Ljava/lang/Object;

    iget-byte v3, p0, Lorg/alljoyn/bus/SessionOpts;->traffic:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-byte v1, p0, Lorg/alljoyn/bus/SessionOpts;->traffic:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, " TRAFFIC_MESSAGES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    iget-byte v1, p0, Lorg/alljoyn/bus/SessionOpts;->traffic:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, " TRAFFIC_RAW_UNRELIABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    iget-byte v1, p0, Lorg/alljoyn/bus/SessionOpts;->traffic:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, " TRAFFIC_RAW_RELIABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_2
    const-string v1, ", isMultipoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "%b"

    new-array v2, v5, [Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/alljoyn/bus/SessionOpts;->isMultipoint:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, ", proximity ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "(0x%02x)"

    new-array v2, v5, [Ljava/lang/Object;

    iget-byte v3, p0, Lorg/alljoyn/bus/SessionOpts;->proximity:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-byte v1, p0, Lorg/alljoyn/bus/SessionOpts;->proximity:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const-string v1, " PROXIMITY_PHYSICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_3
    iget-byte v1, p0, Lorg/alljoyn/bus/SessionOpts;->proximity:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    const-string v1, " PROXIMITY_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_4
    const-string v1, ", transports ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "(0x%04x)"

    new-array v2, v5, [Ljava/lang/Object;

    iget-short v3, p0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-short v1, p0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const-string v1, " TRANSPORT_LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_5
    iget-short v1, p0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    const-string v1, " TRANSPORT_BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_6
    iget-short v1, p0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    const-string v1, " TRANSPORT_WLAN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_7
    iget-short v1, p0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    const-string v1, " TRANSPORT_WWAN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_8
    iget-short v1, p0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_9

    const-string v1, " TRANSPORT_ICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_9
    iget-short v1, p0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_a

    const-string v1, " TRANSPORT_WFD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
