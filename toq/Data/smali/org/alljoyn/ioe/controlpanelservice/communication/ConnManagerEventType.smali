.class public final enum Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;
.super Ljava/lang/Enum;
.source "ConnManagerEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

.field public static final enum ANNOUNCEMENT_RECEIVED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

.field public static final enum FOUND_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

.field public static final enum LOST_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

.field public static final enum SESSION_JOINED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

.field public static final enum SESSION_JOIN_FAIL:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

.field public static final enum SESSION_LOST:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    const-string v1, "ANNOUNCEMENT_RECEIVED"

    invoke-direct {v0, v1, v3}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ANNOUNCEMENT_RECEIVED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    .line 24
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    const-string v1, "SESSION_JOINED"

    invoke-direct {v0, v1, v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOINED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    .line 25
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    const-string v1, "SESSION_JOIN_FAIL"

    invoke-direct {v0, v1, v5}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOIN_FAIL:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    .line 26
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    const-string v1, "SESSION_LOST"

    invoke-direct {v0, v1, v6}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_LOST:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    .line 27
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    const-string v1, "FOUND_DEVICE"

    invoke-direct {v0, v1, v7}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->FOUND_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    .line 28
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    const-string v1, "LOST_DEVICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->LOST_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ANNOUNCEMENT_RECEIVED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOINED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOIN_FAIL:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_LOST:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->FOUND_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->LOST_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v0}, [Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    return-object v0
.end method
