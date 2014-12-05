.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;
.super Ljava/lang/Object;
.source "AllJoynDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCacheObject"
.end annotation


# instance fields
.field public m_ImageCacheObjectState:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

.field public m_LastTimeTried:J

.field public m_UUID:Ljava/util/UUID;

.field public m_iconAttempts:I

.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;Ljava/util/UUID;)V
    .locals 2
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->this$1:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_UUID:Ljava/util/UUID;

    .line 827
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_LastTimeTried:J

    .line 828
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_iconAttempts:I

    .line 829
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->GET_ICON:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_ImageCacheObjectState:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    .line 831
    return-void
.end method
