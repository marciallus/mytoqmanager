.class public Lcom/qualcomm/toq/base/handler/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# static fields
.field private static mInstance:Lcom/qualcomm/toq/base/handler/MessageHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private getDestAdd([B)I
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 39
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v0

    .line 40
    .local v0, "destAddBytes":[B
    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v1

    return v1
.end method

.method public static getMessageHandler()Lcom/qualcomm/toq/base/handler/MessageHandler;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/qualcomm/toq/base/handler/MessageHandler;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/base/handler/MessageHandler;->mInstance:Lcom/qualcomm/toq/base/handler/MessageHandler;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/qualcomm/toq/base/handler/MessageHandler;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/handler/MessageHandler;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/handler/MessageHandler;->mInstance:Lcom/qualcomm/toq/base/handler/MessageHandler;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-object v0, Lcom/qualcomm/toq/base/handler/MessageHandler;->mInstance:Lcom/qualcomm/toq/base/handler/MessageHandler;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public packMessage(Lcom/qualcomm/toq/base/message/Message;)[B
    .locals 3
    .param p1, "message"    # Lcom/qualcomm/toq/base/message/Message;

    .prologue
    .line 28
    invoke-static {}, Lcom/qualcomm/toq/base/factory/PackerFactory;->getPackerFactory()Lcom/qualcomm/toq/base/factory/PackerFactory;

    move-result-object v1

    iget v2, p1, Lcom/qualcomm/toq/base/message/Message;->destAdd:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/PackerFactory;->getMessagePacker(I)Lcom/qualcomm/toq/base/packer/IPacker;

    move-result-object v0

    .line 29
    .local v0, "packer":Lcom/qualcomm/toq/base/packer/IPacker;
    invoke-interface {v0, p1}, Lcom/qualcomm/toq/base/packer/IPacker;->createPackedMessage(Lcom/qualcomm/toq/base/message/Message;)[B

    move-result-object v1

    return-object v1
.end method

.method public unpackMessage([B)Lcom/qualcomm/toq/base/message/Message;
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 33
    invoke-static {}, Lcom/qualcomm/toq/base/factory/PackerFactory;->getPackerFactory()Lcom/qualcomm/toq/base/factory/PackerFactory;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/qualcomm/toq/base/handler/MessageHandler;->getDestAdd([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/PackerFactory;->getMessagePacker(I)Lcom/qualcomm/toq/base/packer/IPacker;

    move-result-object v0

    .line 34
    .local v0, "packer":Lcom/qualcomm/toq/base/packer/IPacker;
    invoke-interface {v0, p1}, Lcom/qualcomm/toq/base/packer/IPacker;->parseMessage([B)Lcom/qualcomm/toq/base/message/Message;

    move-result-object v1

    return-object v1
.end method
