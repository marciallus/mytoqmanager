.class public final enum Lorg/alljoyn/bus/BusAttachment$RemoteMessage;
.super Ljava/lang/Enum;
.source "BusAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/BusAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoteMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/bus/BusAttachment$RemoteMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

.field public static final enum Ignore:Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

.field public static final enum Receive:Lorg/alljoyn/bus/BusAttachment$RemoteMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 714
    new-instance v0, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    const-string v1, "Ignore"

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;->Ignore:Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    .line 717
    new-instance v0, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    const-string v1, "Receive"

    invoke-direct {v0, v1, v3}, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;->Receive:Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    .line 711
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    sget-object v1, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;->Ignore:Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    aput-object v1, v0, v2

    sget-object v1, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;->Receive:Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    aput-object v1, v0, v3

    sput-object v0, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;->$VALUES:[Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

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
    .line 711
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/bus/BusAttachment$RemoteMessage;
    .locals 1

    .prologue
    .line 711
    const-class v0, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/bus/BusAttachment$RemoteMessage;
    .locals 1

    .prologue
    .line 711
    sget-object v0, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;->$VALUES:[Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    invoke-virtual {v0}, [Lorg/alljoyn/bus/BusAttachment$RemoteMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    return-object v0
.end method
