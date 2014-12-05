.class public final enum Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;
.super Ljava/lang/Enum;
.source "AllJoynDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

.field public static final enum AVAILABLE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

.field public static final enum CONFIGURING:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

.field public static final enum GONE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

.field public static final enum UNAVAILABLE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

.field public static final enum UNCONFIGURED:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    const-string v1, "CONFIGURING"

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->CONFIGURING:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    .line 76
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->AVAILABLE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    .line 77
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->UNAVAILABLE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    .line 79
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    const-string v1, "UNCONFIGURED"

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->UNCONFIGURED:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    .line 80
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    const-string v1, "GONE"

    invoke-direct {v0, v1, v6}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->GONE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->CONFIGURING:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->AVAILABLE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->UNAVAILABLE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->UNCONFIGURED:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->GONE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->$VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->$VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    invoke-virtual {v0}, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    return-object v0
.end method
