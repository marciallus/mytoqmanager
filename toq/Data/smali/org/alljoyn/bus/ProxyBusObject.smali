.class public Lorg/alljoyn/bus/ProxyBusObject;
.super Ljava/lang/Object;
.source "ProxyBusObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/bus/ProxyBusObject$Handler;
    }
.end annotation


# static fields
.field private static final AUTO_START:I = 0x2

.field private static final ENCRYPTED:I = 0x80


# instance fields
.field private bus:Lorg/alljoyn/bus/BusAttachment;

.field private busConnectionLost:Ljava/lang/reflect/Method;

.field private busName:Ljava/lang/String;

.field private flags:I

.field private handle:J

.field private objPath:Ljava/lang/String;

.field private proxy:Ljava/lang/Object;

.field private replyTimeoutMsecs:I


# direct methods
.method protected constructor <init>(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)V
    .locals 7

    .prologue
    .line 73
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/alljoyn/bus/ProxyBusObject;-><init>(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;Z)V

    .line 74
    return-void
.end method

.method protected constructor <init>(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/alljoyn/bus/ProxyBusObject;->bus:Lorg/alljoyn/bus/BusAttachment;

    .line 89
    iput-object p2, p0, Lorg/alljoyn/bus/ProxyBusObject;->busName:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lorg/alljoyn/bus/ProxyBusObject;->objPath:Ljava/lang/String;

    .line 91
    iput v6, p0, Lorg/alljoyn/bus/ProxyBusObject;->flags:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    .line 92
    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/bus/ProxyBusObject;->create(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 93
    const/16 v0, 0x61a8

    iput v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->replyTimeoutMsecs:I

    .line 94
    aget-object v0, p5, v6

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lorg/alljoyn/bus/ProxyBusObject$Handler;

    invoke-direct {v1, p0}, Lorg/alljoyn/bus/ProxyBusObject$Handler;-><init>(Lorg/alljoyn/bus/ProxyBusObject;)V

    invoke-static {v0, p5, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->proxy:Ljava/lang/Object;

    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "busConnectionLost"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->busConnectionLost:Ljava/lang/reflect/Method;

    .line 98
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->busConnectionLost:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/alljoyn/bus/ProxyBusObject;)Lorg/alljoyn/bus/BusAttachment;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->bus:Lorg/alljoyn/bus/BusAttachment;

    return-object v0
.end method

.method static synthetic access$100(Lorg/alljoyn/bus/ProxyBusObject;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->replyTimeoutMsecs:I

    return v0
.end method

.method static synthetic access$200(Lorg/alljoyn/bus/ProxyBusObject;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->flags:I

    return v0
.end method

.method static synthetic access$300(Lorg/alljoyn/bus/ProxyBusObject;Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct/range {p0 .. p8}, Lorg/alljoyn/bus/ProxyBusObject;->methodCall(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/alljoyn/bus/ProxyBusObject;Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Variant;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/alljoyn/bus/ProxyBusObject;->getProperty(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Variant;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/alljoyn/bus/ProxyBusObject;Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lorg/alljoyn/bus/ProxyBusObject;->setProperty(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addInterface(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->proxy:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 113
    invoke-static {v3}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    new-instance v0, Lorg/alljoyn/bus/InterfaceDescription;

    invoke-direct {v0}, Lorg/alljoyn/bus/InterfaceDescription;-><init>()V

    .line 115
    iget-object v1, p0, Lorg/alljoyn/bus/ProxyBusObject;->bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v0, v1, v3}, Lorg/alljoyn/bus/InterfaceDescription;->create(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/Class;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lorg/alljoyn/bus/Status;->getErrorCode()I

    move-result v0

    .line 119
    :goto_1
    return v0

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    sget-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_INTERFACE:Lorg/alljoyn/bus/Status;

    invoke-virtual {v0}, Lorg/alljoyn/bus/Status;->getErrorCode()I

    move-result v0

    goto :goto_1
.end method

.method private native create(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method private synchronized native declared-synchronized destroy()V
.end method

.method private native getAllProperties(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/alljoyn/bus/BusAttachment;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method private native getProperty(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method private native isProxyBusObjectSecure()Z
.end method

.method private native methodCall(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/Object;II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method private native setProperty(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    invoke-direct {p0}, Lorg/alljoyn/bus/ProxyBusObject;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 327
    return-void

    .line 325
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAllProperties(Ljava/lang/Class;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 429
    :try_start_0
    const-class v1, Lorg/alljoyn/bus/ifaces/Properties;

    const-string v2, "GetAll"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 430
    iget-object v2, p0, Lorg/alljoyn/bus/ProxyBusObject;->bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-static {p1}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lorg/alljoyn/bus/ProxyBusObject;->getAllProperties(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 434
    :goto_0
    return-object v0

    .line 431
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getBusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->busName:Ljava/lang/String;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->proxy:Ljava/lang/Object;

    .line 358
    return-object v0
.end method

.method public getObjPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->objPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/alljoyn/bus/Variant;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/alljoyn/bus/Variant;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-static {p1}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/alljoyn/bus/ProxyBusObject;->getProperty(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Variant;

    move-result-object v0

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Lorg/alljoyn/bus/ProxyBusObject;->isProxyBusObjectSecure()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lorg/alljoyn/bus/ProxyBusObject;->destroy()V

    .line 316
    return-void
.end method

.method public setAutoStart(Z)V
    .locals 1

    .prologue
    .line 382
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->flags:I

    .line 383
    return-void

    .line 382
    :cond_0
    iget v0, p0, Lorg/alljoyn/bus/ProxyBusObject;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/Class;Ljava/lang/String;Lorg/alljoyn/bus/Variant;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v1, p0, Lorg/alljoyn/bus/ProxyBusObject;->bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-static {p1}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/alljoyn/bus/Variant;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lorg/alljoyn/bus/Variant;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/bus/ProxyBusObject;->setProperty(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method public setReplyTimeout(I)V
    .locals 0

    .prologue
    .line 369
    iput p1, p0, Lorg/alljoyn/bus/ProxyBusObject;->replyTimeoutMsecs:I

    .line 370
    return-void
.end method
