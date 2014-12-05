.class public final enum Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;
.super Ljava/lang/Enum;
.source "AllJoynDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum FACTORY_RESET:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum GET_ABOUT:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum GET_CONFIG:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum GET_ICON_MIME_TYPE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum GET_ICON_SIZE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum GET_ICON_URL:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum GET_VISIBLE_NETWORKS:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum ONBOARD_DEVICE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum REQUEST_CONTROL_PANELS:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum REQUEST_CONTROL_POPUP:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum RESET_PASSWORD:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum RESTART_DEVICE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum SET_CONFIG:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

.field public static final enum SET_PASSWORD:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "GET_ABOUT"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_ABOUT:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 89
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "GET_ICON_MIME_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_ICON_MIME_TYPE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 90
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "GET_ICON_URL"

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_ICON_URL:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 91
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "GET_ICON_SIZE"

    invoke-direct {v0, v1, v6}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_ICON_SIZE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 93
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "GET_CONFIG"

    invoke-direct {v0, v1, v7}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_CONFIG:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 94
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "SET_CONFIG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->SET_CONFIG:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 95
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "SET_PASSWORD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->SET_PASSWORD:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 96
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "RESET_PASSWORD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->RESET_PASSWORD:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 97
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "RESTART_DEVICE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->RESTART_DEVICE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 98
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "FACTORY_RESET"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->FACTORY_RESET:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 100
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "ONBOARD_DEVICE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->ONBOARD_DEVICE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 101
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "GET_VISIBLE_NETWORKS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_VISIBLE_NETWORKS:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 103
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "REQUEST_CONTROL_PANELS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->REQUEST_CONTROL_PANELS:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 104
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    const-string v1, "REQUEST_CONTROL_POPUP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->REQUEST_CONTROL_POPUP:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    .line 84
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_ABOUT:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_ICON_MIME_TYPE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_ICON_URL:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_ICON_SIZE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_CONFIG:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->SET_CONFIG:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->SET_PASSWORD:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->RESET_PASSWORD:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->RESTART_DEVICE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->FACTORY_RESET:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->ONBOARD_DEVICE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->GET_VISIBLE_NETWORKS:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->REQUEST_CONTROL_PANELS:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->REQUEST_CONTROL_POPUP:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->$VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->$VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    invoke-virtual {v0}, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;

    return-object v0
.end method
