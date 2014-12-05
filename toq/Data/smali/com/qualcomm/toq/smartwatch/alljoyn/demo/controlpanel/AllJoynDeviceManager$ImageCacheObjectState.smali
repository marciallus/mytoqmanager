.class final enum Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;
.super Ljava/lang/Enum;
.source "AllJoynDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ImageCacheObjectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

.field public static final enum GET_ICON:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

.field public static final enum ICON_STORED:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 817
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    const-string v1, "GET_ICON"

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->GET_ICON:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    .line 818
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    const-string v1, "ICON_STORED"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->ICON_STORED:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    .line 816
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->GET_ICON:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->ICON_STORED:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->$VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

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
    .line 816
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 816
    const-class v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;
    .locals 1

    .prologue
    .line 816
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->$VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    invoke-virtual {v0}, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    return-object v0
.end method
