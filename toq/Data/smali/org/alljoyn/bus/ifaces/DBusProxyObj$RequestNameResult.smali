.class public final enum Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;
.super Ljava/lang/Enum;
.source "DBusProxyObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/ifaces/DBusProxyObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestNameResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

.field public static final enum AlreadyExists:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

.field public static final enum AlreadyOwner:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

.field public static final enum InQueue:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

.field public static final enum Invalid:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

.field public static final enum PrimaryOwner:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->Invalid:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    .line 73
    new-instance v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    const-string v1, "PrimaryOwner"

    invoke-direct {v0, v1, v3}, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->PrimaryOwner:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    .line 79
    new-instance v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    const-string v1, "InQueue"

    invoke-direct {v0, v1, v4}, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->InQueue:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    .line 85
    new-instance v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    const-string v1, "AlreadyExists"

    invoke-direct {v0, v1, v5}, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->AlreadyExists:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    .line 88
    new-instance v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    const-string v1, "AlreadyOwner"

    invoke-direct {v0, v1, v6}, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->AlreadyOwner:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    sget-object v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->Invalid:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    aput-object v1, v0, v2

    sget-object v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->PrimaryOwner:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    aput-object v1, v0, v3

    sget-object v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->InQueue:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->AlreadyExists:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    aput-object v1, v0, v5

    sget-object v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->AlreadyOwner:Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    aput-object v1, v0, v6

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->$VALUES:[Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->$VALUES:[Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    invoke-virtual {v0}, [Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;

    return-object v0
.end method
