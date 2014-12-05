.class Lorg/alljoyn/services/common/ClientBaseImpl$1;
.super Lorg/alljoyn/bus/SessionListener;
.source "ClientBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/services/common/ClientBaseImpl;->connect()Lorg/alljoyn/bus/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/services/common/ClientBaseImpl;


# direct methods
.method constructor <init>(Lorg/alljoyn/services/common/ClientBaseImpl;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lorg/alljoyn/services/common/ClientBaseImpl$1;->this$0:Lorg/alljoyn/services/common/ClientBaseImpl;

    invoke-direct {p0}, Lorg/alljoyn/bus/SessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionLost(I)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl$1;->this$0:Lorg/alljoyn/services/common/ClientBaseImpl;

    invoke-virtual {v0}, Lorg/alljoyn/services/common/ClientBaseImpl;->getSessionId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 305
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl$1;->this$0:Lorg/alljoyn/services/common/ClientBaseImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    .line 306
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl$1;->this$0:Lorg/alljoyn/services/common/ClientBaseImpl;

    invoke-virtual {v0}, Lorg/alljoyn/services/common/ClientBaseImpl;->connectionLost()V

    .line 308
    :cond_0
    return-void
.end method

.method public sessionMemberAdded(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public sessionMemberRemoved(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method
