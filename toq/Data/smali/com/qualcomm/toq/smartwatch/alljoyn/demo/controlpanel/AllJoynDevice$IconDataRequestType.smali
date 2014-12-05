.class public final enum Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;
.super Ljava/lang/Enum;
.source "AllJoynDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconDataRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

.field public static final enum DEVICE_CONTENT:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

.field public static final enum EMPTY:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

.field public static final enum RESOURCE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

.field public static final enum SDCARD:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;


# instance fields
.field private brandname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    const-string v1, "EMPTY"

    const-string v2, "EMPTY"

    invoke-direct {v0, v1, v3, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->EMPTY:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    .line 58
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    const-string v1, "SDCARD"

    const-string v2, "SDCARD"

    invoke-direct {v0, v1, v4, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->SDCARD:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    .line 59
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    const-string v1, "RESOURCE"

    const-string v2, "RESOURCE"

    invoke-direct {v0, v1, v5, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->RESOURCE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    .line 60
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    const-string v1, "DEVICE_CONTENT"

    const-string v2, "DEVICE_CONTENT"

    invoke-direct {v0, v1, v6, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->DEVICE_CONTENT:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->EMPTY:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->SDCARD:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->RESOURCE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->DEVICE_CONTENT:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->$VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "brand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->brandname:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->$VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    invoke-virtual {v0}, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;->brandname:Ljava/lang/String;

    return-object v0
.end method
