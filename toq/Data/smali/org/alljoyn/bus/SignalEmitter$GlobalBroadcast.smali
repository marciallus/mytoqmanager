.class public final enum Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;
.super Ljava/lang/Enum;
.source "SignalEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/SignalEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GlobalBroadcast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

.field public static final enum Off:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

.field public static final enum On:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    const-string v1, "Off"

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->Off:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    .line 56
    new-instance v0, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    const-string v1, "On"

    invoke-direct {v0, v1, v3}, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->On:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    sget-object v1, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->Off:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    aput-object v1, v0, v2

    sget-object v1, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->On:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    aput-object v1, v0, v3

    sput-object v0, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->$VALUES:[Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->$VALUES:[Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    invoke-virtual {v0}, [Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    return-object v0
.end method
