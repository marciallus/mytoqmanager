.class public Lcom/qualcomm/toq/base/factory/PackerFactory;
.super Ljava/lang/Object;
.source "PackerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackerFactory"

.field private static mInstance:Lcom/qualcomm/toq/base/factory/PackerFactory;


# instance fields
.field private messagePacker:Lcom/qualcomm/toq/base/packer/IPacker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getPackerFactory()Lcom/qualcomm/toq/base/factory/PackerFactory;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/qualcomm/toq/base/factory/PackerFactory;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/base/factory/PackerFactory;->mInstance:Lcom/qualcomm/toq/base/factory/PackerFactory;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/qualcomm/toq/base/factory/PackerFactory;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/factory/PackerFactory;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/factory/PackerFactory;->mInstance:Lcom/qualcomm/toq/base/factory/PackerFactory;

    .line 28
    sget-object v0, Lcom/qualcomm/toq/base/factory/PackerFactory;->mInstance:Lcom/qualcomm/toq/base/factory/PackerFactory;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/PackerFactory;->initPacker()V

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object v0, Lcom/qualcomm/toq/base/factory/PackerFactory;->mInstance:Lcom/qualcomm/toq/base/factory/PackerFactory;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getMessagePacker()Lcom/qualcomm/toq/base/packer/IPacker;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/PackerFactory;->messagePacker:Lcom/qualcomm/toq/base/packer/IPacker;

    return-object v0
.end method

.method public getMessagePacker(I)Lcom/qualcomm/toq/base/packer/IPacker;
    .locals 1
    .param p1, "destAdd"    # I

    .prologue
    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 62
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/PackerFactory;->messagePacker:Lcom/qualcomm/toq/base/packer/IPacker;

    :goto_0
    return-object v0

    .line 52
    :sswitch_0
    invoke-static {}, Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;->getPacker()Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_1
    invoke-static {}, Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;->getPacker()Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;

    move-result-object v0

    goto :goto_0

    .line 60
    :sswitch_2
    invoke-static {}, Lcom/qualcomm/toq/base/packer/fts/FtsPacker;->getPacker()Lcom/qualcomm/toq/base/packer/fts/FtsPacker;

    move-result-object v0

    goto :goto_0

    .line 49
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_2
        0x22 -> :sswitch_1
        0x23 -> :sswitch_1
    .end sparse-switch
.end method

.method public initPacker()V
    .locals 3

    .prologue
    .line 36
    const-string v0, "PackerFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackerType is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getPackerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getPackerType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/qualcomm/toq/base/packer/json/JsonPacker;->getPacker()Lcom/qualcomm/toq/base/packer/json/JsonPacker;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/factory/PackerFactory;->messagePacker:Lcom/qualcomm/toq/base/packer/IPacker;

    .line 41
    :cond_0
    return-void
.end method
