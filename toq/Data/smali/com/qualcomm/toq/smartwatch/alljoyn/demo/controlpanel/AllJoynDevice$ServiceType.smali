.class public final enum Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;
.super Ljava/lang/Enum;
.source "AllJoynDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

.field public static final enum ABOUT:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

.field public static final enum ABOUT_ICON:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

.field public static final enum CONTROL_PANEL:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

.field public static final enum NOTIFICATION:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;


# instance fields
.field private m_interface:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    const-string v1, "ABOUT"

    const-string v2, "org.alljoyn.About"

    invoke-direct {v0, v1, v3, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->ABOUT:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    .line 110
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    const-string v1, "ABOUT_ICON"

    const-string v2, "org.alljoyn.Icon"

    invoke-direct {v0, v1, v4, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->ABOUT_ICON:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    .line 111
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    const-string v1, "NOTIFICATION"

    const-string v2, "org.alljoyn.Notification"

    invoke-direct {v0, v1, v5, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->NOTIFICATION:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    .line 112
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    const-string v1, "CONTROL_PANEL"

    const-string v2, "org.alljoyn.ControlPanel"

    invoke-direct {v0, v1, v6, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->CONTROL_PANEL:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->ABOUT:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->ABOUT_ICON:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->NOTIFICATION:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->CONTROL_PANEL:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->$VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->m_interface:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->m_interface:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->$VALUES:[Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    invoke-virtual {v0}, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    return-object v0
.end method


# virtual methods
.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->m_interface:Ljava/lang/String;

    return-object v0
.end method
