.class public final enum Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;
.super Ljava/lang/Enum;
.source "DBusProxyObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/ifaces/DBusProxyObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReleaseNameResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

.field public static final enum Invalid:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

.field public static final enum NonExistent:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

.field public static final enum NotOwner:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

.field public static final enum Released:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->Invalid:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    .line 98
    new-instance v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    const-string v1, "Released"

    invoke-direct {v0, v1, v3}, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->Released:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    .line 104
    new-instance v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    const-string v1, "NonExistent"

    invoke-direct {v0, v1, v4}, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->NonExistent:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    .line 110
    new-instance v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    const-string v1, "NotOwner"

    invoke-direct {v0, v1, v5}, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->NotOwner:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    sget-object v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->Invalid:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    aput-object v1, v0, v2

    sget-object v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->Released:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    aput-object v1, v0, v3

    sget-object v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->NonExistent:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->NotOwner:Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    aput-object v1, v0, v5

    sput-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->$VALUES:[Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->$VALUES:[Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    invoke-virtual {v0}, [Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;

    return-object v0
.end method
