.class synthetic Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService$1;
.super Ljava/lang/Object;
.source "ControlPanelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->values()[Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService$1;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType:[I

    :try_start_0
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService$1;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ANNOUNCEMENT_RECEIVED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
