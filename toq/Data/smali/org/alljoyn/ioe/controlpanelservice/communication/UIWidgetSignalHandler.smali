.class public Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;
.super Ljava/lang/Object;
.source "UIWidgetSignalHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final METADATA_CHANGED:Ljava/lang/String; = "MetadataChanged"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ifName:Ljava/lang/String;

.field private method:Ljava/lang/reflect/Method;

.field private objPath:Ljava/lang/String;

.field private proxySignalReceiver:Ljava/lang/Object;

.field private signalReceiver:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 0
    .param p1, "objPath"    # Ljava/lang/String;
    .param p2, "signalReceiver"    # Ljava/lang/Object;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "ifName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->objPath:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->signalReceiver:Ljava/lang/Object;

    .line 83
    iput-object p3, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->method:Ljava/lang/reflect/Method;

    .line 84
    iput-object p4, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->ifName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->signalReceiver:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createProxySignalReceiver([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "ifaceClassList":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 150
    .local v0, "task":Ljava/lang/Runnable;
    const-string v1, "MetadataChanged"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->TAG:Ljava/lang/String;

    const-string v2, "Received \'MetadataChanged\' signal storing it in the queue for later execution"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->enqueue(Ljava/lang/Runnable;)V

    .line 161
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 157
    :cond_0
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' signal passing it for execution"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public register()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->signalReceiver:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    .line 94
    .local v7, "ifaceList":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, v7

    if-nez v0, :cond_0

    .line 95
    const-string v8, "Received signalReceiver object doesn\'t implement any interface"

    .line 96
    .local v8, "msg":Ljava/lang/String;
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v0, v8}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    .end local v8    # "msg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v7}, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->createProxySignalReceiver([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->proxySignalReceiver:Ljava/lang/Object;

    .line 102
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->ifName:Ljava/lang/String;

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->proxySignalReceiver:Ljava/lang/Object;

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->objPath:Ljava/lang/String;

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->objPath:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->registerObjectAndSetSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public unregister()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 118
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering signal handler: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', objPath: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->objPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->proxySignalReceiver:Ljava/lang/Object;

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterSignalHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 120
    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->signalReceiver:Ljava/lang/Object;

    .line 121
    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->proxySignalReceiver:Ljava/lang/Object;

    .line 122
    return-void
.end method
