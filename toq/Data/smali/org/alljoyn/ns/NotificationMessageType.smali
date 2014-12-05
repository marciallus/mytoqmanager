.class public final enum Lorg/alljoyn/ns/NotificationMessageType;
.super Ljava/lang/Enum;
.source "NotificationMessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ns/NotificationMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ns/NotificationMessageType;

.field public static final enum EMERGENCY:Lorg/alljoyn/ns/NotificationMessageType;

.field public static final enum INFO:Lorg/alljoyn/ns/NotificationMessageType;

.field public static final enum WARNING:Lorg/alljoyn/ns/NotificationMessageType;


# instance fields
.field private typeId:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/alljoyn/ns/NotificationMessageType;

    const-string v1, "EMERGENCY"

    invoke-direct {v0, v1, v2, v2}, Lorg/alljoyn/ns/NotificationMessageType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ns/NotificationMessageType;->EMERGENCY:Lorg/alljoyn/ns/NotificationMessageType;

    .line 24
    new-instance v0, Lorg/alljoyn/ns/NotificationMessageType;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v3, v3}, Lorg/alljoyn/ns/NotificationMessageType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ns/NotificationMessageType;->WARNING:Lorg/alljoyn/ns/NotificationMessageType;

    .line 25
    new-instance v0, Lorg/alljoyn/ns/NotificationMessageType;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4, v4}, Lorg/alljoyn/ns/NotificationMessageType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ns/NotificationMessageType;->INFO:Lorg/alljoyn/ns/NotificationMessageType;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/alljoyn/ns/NotificationMessageType;

    sget-object v1, Lorg/alljoyn/ns/NotificationMessageType;->EMERGENCY:Lorg/alljoyn/ns/NotificationMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/alljoyn/ns/NotificationMessageType;->WARNING:Lorg/alljoyn/ns/NotificationMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/alljoyn/ns/NotificationMessageType;->INFO:Lorg/alljoyn/ns/NotificationMessageType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/alljoyn/ns/NotificationMessageType;->$VALUES:[Lorg/alljoyn/ns/NotificationMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .param p3, "typeId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-short p3, p0, Lorg/alljoyn/ns/NotificationMessageType;->typeId:S

    .line 38
    return-void
.end method

.method public static getMsgTypeById(S)Lorg/alljoyn/ns/NotificationMessageType;
    .locals 6
    .param p0, "msgTypeId"    # S

    .prologue
    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "retType":Lorg/alljoyn/ns/NotificationMessageType;
    invoke-static {}, Lorg/alljoyn/ns/NotificationMessageType;->values()[Lorg/alljoyn/ns/NotificationMessageType;

    move-result-object v0

    .local v0, "arr$":[Lorg/alljoyn/ns/NotificationMessageType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 56
    .local v4, "type":Lorg/alljoyn/ns/NotificationMessageType;
    invoke-virtual {v4}, Lorg/alljoyn/ns/NotificationMessageType;->getTypeId()S

    move-result v5

    if-ne p0, v5, :cond_1

    .line 57
    move-object v3, v4

    .line 61
    .end local v4    # "type":Lorg/alljoyn/ns/NotificationMessageType;
    :cond_0
    return-object v3

    .line 55
    .restart local v4    # "type":Lorg/alljoyn/ns/NotificationMessageType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ns/NotificationMessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/alljoyn/ns/NotificationMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ns/NotificationMessageType;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ns/NotificationMessageType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/alljoyn/ns/NotificationMessageType;->$VALUES:[Lorg/alljoyn/ns/NotificationMessageType;

    invoke-virtual {v0}, [Lorg/alljoyn/ns/NotificationMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ns/NotificationMessageType;

    return-object v0
.end method


# virtual methods
.method public getTypeId()S
    .locals 1

    .prologue
    .line 44
    iget-short v0, p0, Lorg/alljoyn/ns/NotificationMessageType;->typeId:S

    return v0
.end method
