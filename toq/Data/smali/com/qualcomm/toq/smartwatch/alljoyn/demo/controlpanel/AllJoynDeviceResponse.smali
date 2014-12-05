.class public Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;
.super Ljava/lang/Object;
.source "AllJoynDeviceResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;
    }
.end annotation


# instance fields
.field private m_msg:Ljava/lang/String;

.field private m_status:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;)V
    .locals 0
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;->m_status:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;->m_status:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    .line 29
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;->m_msg:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;->m_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;->m_status:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    return-object v0
.end method
