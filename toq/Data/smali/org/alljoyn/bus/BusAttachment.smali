.class public Lorg/alljoyn/bus/BusAttachment;
.super Ljava/lang/Object;
.source "BusAttachment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/bus/BusAttachment$1;,
        Lorg/alljoyn/bus/BusAttachment$ShutdownHookThread;,
        Lorg/alljoyn/bus/BusAttachment$RemoteMessage;,
        Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;
    }
.end annotation


# static fields
.field public static final ALLJOYN_MAX_ARRAY_LEN:I = 0x20000

.field public static final ALLJOYN_MAX_PACKET_LEN:I = 0x20000

.field public static final ALLJOYN_NAME_FLAG_ALLOW_REPLACEMENT:I = 0x1

.field public static final ALLJOYN_REQUESTNAME_FLAG_DO_NOT_QUEUE:I = 0x4

.field public static final ALLJOYN_REQUESTNAME_FLAG_REPLACE_EXISTING:I = 0x2

.field private static final DEFAULT_CONCURRENCY:I = 0x4

.field public static final SESSION_ID_ANY:I

.field public static final SESSION_PORT_ANY:S

.field private static busAttachmentSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/alljoyn/bus/BusAttachment;",
            ">;>;"
        }
    .end annotation
.end field

.field private static shutdownHookRegistered:Z


# instance fields
.field private address:Ljava/lang/String;

.field private allowRemoteMessages:Z

.field private authMechanisms:Ljava/lang/String;

.field private busAuthListener:Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;

.field private dbus:Lorg/alljoyn/bus/ifaces/DBusProxyObj;

.field private dbusbo:Lorg/alljoyn/bus/ProxyBusObject;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private foundAdvertisedName:Ljava/lang/reflect/Method;

.field private handle:J

.field private isConnected:Z

.field private isShared:Z

.field private keyStoreFileName:Ljava/lang/String;

.field private keyStoreListener:Lorg/alljoyn/bus/KeyStoreListener;

.field private lostAdvertisedName:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 778
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/alljoyn/bus/BusAttachment;->busAttachmentSet:Ljava/util/HashSet;

    .line 918
    const/4 v0, 0x0

    sput-boolean v0, Lorg/alljoyn/bus/BusAttachment;->shutdownHookRegistered:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 774
    sget-object v0, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;->Ignore:Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lorg/alljoyn/bus/BusAttachment;-><init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment$RemoteMessage;I)V

    .line 775
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment$RemoteMessage;)V
    .locals 1

    .prologue
    .line 765
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/alljoyn/bus/BusAttachment;-><init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment$RemoteMessage;I)V

    .line 766
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment$RemoteMessage;I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-boolean v4, p0, Lorg/alljoyn/bus/BusAttachment;->isShared:Z

    .line 731
    iput-boolean v4, p0, Lorg/alljoyn/bus/BusAttachment;->isConnected:Z

    .line 732
    sget-object v0, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;->Receive:Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    if-ne p2, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/alljoyn/bus/BusAttachment;->allowRemoteMessages:Z

    .line 733
    new-instance v0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;-><init>(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/bus/BusAttachment$1;)V

    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->busAuthListener:Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;

    .line 735
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "foundAdvertisedName"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Short;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->foundAdvertisedName:Ljava/lang/reflect/Method;

    .line 737
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->foundAdvertisedName:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 738
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "lostAdvertisedName"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Short;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->lostAdvertisedName:Ljava/lang/reflect/Method;

    .line 740
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->lostAdvertisedName:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :goto_1
    iget-boolean v0, p0, Lorg/alljoyn/bus/BusAttachment;->allowRemoteMessages:Z

    invoke-direct {p0, p1, v0, p3}, Lorg/alljoyn/bus/BusAttachment;->create(Ljava/lang/String;ZI)V

    .line 751
    new-instance v0, Lorg/alljoyn/bus/ProxyBusObject;

    const-string v2, "org.freedesktop.DBus"

    const-string v3, "/org/freedesktop/DBus"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj;

    aput-object v1, v5, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/bus/ProxyBusObject;-><init>(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->dbusbo:Lorg/alljoyn/bus/ProxyBusObject;

    .line 753
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->dbusbo:Lorg/alljoyn/bus/ProxyBusObject;

    const-class v1, Lorg/alljoyn/bus/ifaces/DBusProxyObj;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/ifaces/DBusProxyObj;

    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->dbus:Lorg/alljoyn/bus/ifaces/DBusProxyObj;

    .line 754
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->executor:Ljava/util/concurrent/ExecutorService;

    .line 755
    return-void

    :cond_0
    move v0, v4

    .line 732
    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/alljoyn/bus/BusAttachment;->busAttachmentSet:Ljava/util/HashSet;

    return-object v0
.end method

.method private native connect(Ljava/lang/String;Lorg/alljoyn/bus/KeyStoreListener;Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;Ljava/lang/String;Z)Lorg/alljoyn/bus/Status;
.end method

.method private native create(Ljava/lang/String;ZI)V
.end method

.method private synchronized native declared-synchronized destroy()V
.end method

.method private native disconnect(Ljava/lang/String;)V
.end method

.method private native enablePeerSecurity(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;Ljava/lang/String;Ljava/lang/Boolean;)Lorg/alljoyn/bus/Status;
.end method

.method static encode([C)[B
    .locals 2

    .prologue
    .line 898
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 900
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 901
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 902
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :goto_0
    return-object v0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    invoke-static {v0}, Lorg/alljoyn/bus/BusException;->log(Ljava/lang/Throwable;)V

    .line 906
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isSecureBusObject(Lorg/alljoyn/bus/BusObject;)Z
.end method

.method private native joinSessionAsync(Ljava/lang/String;SLorg/alljoyn/bus/SessionOpts;Lorg/alljoyn/bus/SessionListener;Lorg/alljoyn/bus/OnJoinSessionListener;Ljava/lang/Object;)Lorg/alljoyn/bus/Status;
.end method

.method private native registerBusObject(Ljava/lang/String;Lorg/alljoyn/bus/BusObject;[Lorg/alljoyn/bus/InterfaceDescription;Z)Lorg/alljoyn/bus/Status;
.end method

.method private native registerNativeSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;)Lorg/alljoyn/bus/Status;
.end method


# virtual methods
.method public native addMatch(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method public native advertiseName(Ljava/lang/String;S)Lorg/alljoyn/bus/Status;
.end method

.method public native bindSessionPort(Lorg/alljoyn/bus/Mutable$ShortValue;Lorg/alljoyn/bus/SessionOpts;Lorg/alljoyn/bus/SessionPortListener;)Lorg/alljoyn/bus/Status;
.end method

.method public native cancelAdvertiseName(Ljava/lang/String;S)Lorg/alljoyn/bus/Status;
.end method

.method public native cancelFindAdvertisedName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method public native cancelFindAdvertisedNameByTransport(Ljava/lang/String;S)Lorg/alljoyn/bus/Status;
.end method

.method public native clearKeyStore()V
.end method

.method public native clearKeys(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method public connect()Lorg/alljoyn/bus/Status;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 933
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    const-string v0, "org.alljoyn.bus.address"

    const-string v1, "tcp:addr=127.0.0.1,port=9956"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->address:Ljava/lang/String;

    .line 938
    :goto_0
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->address:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 939
    iget-object v1, p0, Lorg/alljoyn/bus/BusAttachment;->address:Ljava/lang/String;

    iget-object v2, p0, Lorg/alljoyn/bus/BusAttachment;->keyStoreListener:Lorg/alljoyn/bus/KeyStoreListener;

    iget-object v3, p0, Lorg/alljoyn/bus/BusAttachment;->authMechanisms:Ljava/lang/String;

    iget-object v4, p0, Lorg/alljoyn/bus/BusAttachment;->busAuthListener:Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;

    iget-object v5, p0, Lorg/alljoyn/bus/BusAttachment;->keyStoreFileName:Ljava/lang/String;

    iget-boolean v6, p0, Lorg/alljoyn/bus/BusAttachment;->isShared:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/alljoyn/bus/BusAttachment;->connect(Ljava/lang/String;Lorg/alljoyn/bus/KeyStoreListener;Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;Ljava/lang/String;Z)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 940
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v0, v1, :cond_1

    .line 942
    sget-object v1, Lorg/alljoyn/bus/BusAttachment;->busAttachmentSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 944
    :try_start_0
    sget-boolean v2, Lorg/alljoyn/bus/BusAttachment;->shutdownHookRegistered:Z

    if-nez v2, :cond_0

    .line 945
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Lorg/alljoyn/bus/BusAttachment$ShutdownHookThread;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/alljoyn/bus/BusAttachment$ShutdownHookThread;-><init>(Lorg/alljoyn/bus/BusAttachment$1;)V

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 946
    const/4 v2, 0x1

    sput-boolean v2, Lorg/alljoyn/bus/BusAttachment;->shutdownHookRegistered:Z

    .line 948
    :cond_0
    sget-object v2, Lorg/alljoyn/bus/BusAttachment;->busAttachmentSet:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 949
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    iput-boolean v7, p0, Lorg/alljoyn/bus/BusAttachment;->isConnected:Z

    .line 954
    :cond_1
    :goto_1
    return-object v0

    .line 936
    :cond_2
    const-string v0, "org.alljoyn.bus.address"

    const-string v1, "unix:abstract=alljoyn"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->address:Ljava/lang/String;

    goto :goto_0

    .line 949
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 954
    :cond_3
    sget-object v0, Lorg/alljoyn/bus/Status;->INVALID_CONNECT_ARGS:Lorg/alljoyn/bus/Status;

    goto :goto_1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->address:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/alljoyn/bus/BusAttachment;->disconnect(Ljava/lang/String;)V

    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/bus/BusAttachment;->isConnected:Z

    .line 975
    :cond_0
    return-void
.end method

.method public native emitChangedSignal(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
.end method

.method public native enableConcurrentCallbacks()V
.end method

.method execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 917
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 873
    iget-boolean v0, p0, Lorg/alljoyn/bus/BusAttachment;->isConnected:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 874
    invoke-virtual {p0}, Lorg/alljoyn/bus/BusAttachment;->disconnect()V

    .line 877
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->dbusbo:Lorg/alljoyn/bus/ProxyBusObject;

    .line 878
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->dbus:Lorg/alljoyn/bus/ifaces/DBusProxyObj;

    .line 879
    invoke-direct {p0}, Lorg/alljoyn/bus/BusAttachment;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 883
    return-void

    .line 881
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native findAdvertisedName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method public native findAdvertisedNameByTransport(Ljava/lang/String;S)Lorg/alljoyn/bus/Status;
.end method

.method public getDBusProxyObj()Lorg/alljoyn/bus/ifaces/DBusProxyObj;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->dbus:Lorg/alljoyn/bus/ifaces/DBusProxyObj;

    return-object v0
.end method

.method public native getGlobalGUIDString()Ljava/lang/String;
.end method

.method public native getKeyExpiration(Ljava/lang/String;Lorg/alljoyn/bus/Mutable$IntegerValue;)Lorg/alljoyn/bus/Status;
.end method

.method public native getMessageContext()Lorg/alljoyn/bus/MessageContext;
.end method

.method public native getPeerGUID(Ljava/lang/String;Lorg/alljoyn/bus/Mutable$StringValue;)Lorg/alljoyn/bus/Status;
.end method

.method public getProxyBusObject(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)Lorg/alljoyn/bus/ProxyBusObject;
    .locals 6

    .prologue
    .line 1063
    new-instance v0, Lorg/alljoyn/bus/ProxyBusObject;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/bus/ProxyBusObject;-><init>(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)V

    return-object v0
.end method

.method public getProxyBusObject(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;Z)Lorg/alljoyn/bus/ProxyBusObject;
    .locals 7

    .prologue
    .line 1096
    new-instance v0, Lorg/alljoyn/bus/ProxyBusObject;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/alljoyn/bus/ProxyBusObject;-><init>(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public native getSessionFd(ILorg/alljoyn/bus/Mutable$IntegerValue;)Lorg/alljoyn/bus/Status;
.end method

.method public native getUniqueName()Ljava/lang/String;
.end method

.method public isBusObjectSecure(Lorg/alljoyn/bus/BusObject;)Z
    .locals 1

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lorg/alljoyn/bus/BusAttachment;->isSecureBusObject(Lorg/alljoyn/bus/BusObject;)Z

    move-result v0

    return v0
.end method

.method public native isConnected()Z
.end method

.method public native joinSession(Ljava/lang/String;SLorg/alljoyn/bus/Mutable$IntegerValue;Lorg/alljoyn/bus/SessionOpts;Lorg/alljoyn/bus/SessionListener;)Lorg/alljoyn/bus/Status;
.end method

.method public joinSession(Ljava/lang/String;SLorg/alljoyn/bus/SessionOpts;Lorg/alljoyn/bus/SessionListener;Lorg/alljoyn/bus/OnJoinSessionListener;Ljava/lang/Object;)Lorg/alljoyn/bus/Status;
    .locals 1

    .prologue
    .line 391
    invoke-direct/range {p0 .. p6}, Lorg/alljoyn/bus/BusAttachment;->joinSessionAsync(Ljava/lang/String;SLorg/alljoyn/bus/SessionOpts;Lorg/alljoyn/bus/SessionListener;Lorg/alljoyn/bus/OnJoinSessionListener;Ljava/lang/Object;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    return-object v0
.end method

.method public native leaveSession(I)Lorg/alljoyn/bus/Status;
.end method

.method public registerAuthListener(Ljava/lang/String;Lorg/alljoyn/bus/AuthListener;)Lorg/alljoyn/bus/Status;
    .locals 2

    .prologue
    .line 1386
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/alljoyn/bus/BusAttachment;->registerAuthListener(Ljava/lang/String;Lorg/alljoyn/bus/AuthListener;Ljava/lang/String;Z)Lorg/alljoyn/bus/Status;

    move-result-object v0

    return-object v0
.end method

.method public registerAuthListener(Ljava/lang/String;Lorg/alljoyn/bus/AuthListener;Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    .locals 1

    .prologue
    .line 1373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/alljoyn/bus/BusAttachment;->registerAuthListener(Ljava/lang/String;Lorg/alljoyn/bus/AuthListener;Ljava/lang/String;Z)Lorg/alljoyn/bus/Status;

    move-result-object v0

    return-object v0
.end method

.method public registerAuthListener(Ljava/lang/String;Lorg/alljoyn/bus/AuthListener;Ljava/lang/String;Z)Lorg/alljoyn/bus/Status;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1342
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->busAuthListener:Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->authListenerSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1343
    sget-object v0, Lorg/alljoyn/bus/Status;->ALREADY_REGISTERED:Lorg/alljoyn/bus/Status;

    .line 1356
    :cond_0
    :goto_0
    return-object v0

    .line 1346
    :cond_1
    iput-object p1, p0, Lorg/alljoyn/bus/BusAttachment;->authMechanisms:Ljava/lang/String;

    .line 1347
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->busAuthListener:Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;

    invoke-virtual {v0, p2}, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->setAuthListener(Lorg/alljoyn/bus/AuthListener;)V

    .line 1348
    iput-object p3, p0, Lorg/alljoyn/bus/BusAttachment;->keyStoreFileName:Ljava/lang/String;

    .line 1349
    iput-boolean p4, p0, Lorg/alljoyn/bus/BusAttachment;->isShared:Z

    .line 1350
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->authMechanisms:Ljava/lang/String;

    iget-object v1, p0, Lorg/alljoyn/bus/BusAttachment;->busAuthListener:Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;

    iget-object v2, p0, Lorg/alljoyn/bus/BusAttachment;->keyStoreFileName:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/alljoyn/bus/BusAttachment;->enablePeerSecurity(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;Ljava/lang/String;Ljava/lang/Boolean;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 1352
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v1, :cond_0

    .line 1353
    iget-object v1, p0, Lorg/alljoyn/bus/BusAttachment;->busAuthListener:Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;

    invoke-virtual {v1, v4}, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->setAuthListener(Lorg/alljoyn/bus/AuthListener;)V

    .line 1354
    iput-object v4, p0, Lorg/alljoyn/bus/BusAttachment;->authMechanisms:Ljava/lang/String;

    goto :goto_0
.end method

.method public native registerBusListener(Lorg/alljoyn/bus/BusListener;)V
.end method

.method public registerBusObject(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/alljoyn/bus/BusAttachment;->registerBusObject(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;Z)Lorg/alljoyn/bus/Status;

    move-result-object v0

    return-object v0
.end method

.method public registerBusObject(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;Z)Lorg/alljoyn/bus/Status;
    .locals 3

    .prologue
    .line 1008
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lorg/alljoyn/bus/InterfaceDescription;->create(Lorg/alljoyn/bus/BusAttachment;[Ljava/lang/Class;Ljava/util/List;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 1011
    sget-object v2, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v2, :cond_0

    .line 1017
    :goto_0
    return-object v0

    .line 1014
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/alljoyn/bus/InterfaceDescription;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/bus/InterfaceDescription;

    invoke-direct {p0, p2, p1, v0, p3}, Lorg/alljoyn/bus/BusAttachment;->registerBusObject(Ljava/lang/String;Lorg/alljoyn/bus/BusObject;[Lorg/alljoyn/bus/InterfaceDescription;Z)Lorg/alljoyn/bus/Status;
    :try_end_0
    .catch Lorg/alljoyn/bus/AnnotationBusException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    invoke-static {v0}, Lorg/alljoyn/bus/BusException;->log(Ljava/lang/Throwable;)V

    .line 1017
    sget-object v0, Lorg/alljoyn/bus/Status;->BAD_ANNOTATION:Lorg/alljoyn/bus/Status;

    goto :goto_0
.end method

.method public registerKeyStoreListener(Lorg/alljoyn/bus/KeyStoreListener;)V
    .locals 0

    .prologue
    .line 1251
    iput-object p1, p0, Lorg/alljoyn/bus/BusAttachment;->keyStoreListener:Lorg/alljoyn/bus/KeyStoreListener;

    .line 1252
    return-void
.end method

.method public registerSecurityViolationListener(Lorg/alljoyn/bus/SecurityViolationListener;)V
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->busAuthListener:Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;

    invoke-virtual {v0, p1}, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->setSecurityViolationListener(Lorg/alljoyn/bus/SecurityViolationListener;)V

    .line 1396
    return-void
.end method

.method public registerSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)Lorg/alljoyn/bus/Status;
    .locals 6

    .prologue
    .line 1143
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/alljoyn/bus/BusAttachment;->registerSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    return-object v0
.end method

.method public registerSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    .locals 6

    .prologue
    .line 1164
    invoke-direct/range {p0 .. p5}, Lorg/alljoyn/bus/BusAttachment;->registerNativeSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 1166
    sget-object v1, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_INTERFACE:Lorg/alljoyn/bus/Status;

    if-ne v0, v1, :cond_0

    .line 1168
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1169
    new-instance v0, Lorg/alljoyn/bus/InterfaceDescription;

    invoke-direct {v0}, Lorg/alljoyn/bus/InterfaceDescription;-><init>()V

    .line 1170
    invoke-virtual {v0, p0, v2}, Lorg/alljoyn/bus/InterfaceDescription;->create(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/Class;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 1171
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v0, v1, :cond_0

    .line 1172
    invoke-static {v2}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/alljoyn/bus/AnnotationBusException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 1174
    :try_start_1
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1175
    invoke-static {v0}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/alljoyn/bus/AnnotationBusException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :goto_0
    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1179
    :try_start_2
    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/bus/BusAttachment;->registerNativeSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/alljoyn/bus/AnnotationBusException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 1190
    :cond_0
    :goto_1
    return-object v0

    .line 1176
    :catch_0
    move-exception v0

    move-object v2, p2

    goto :goto_0

    .line 1182
    :catch_1
    move-exception v0

    .line 1183
    invoke-static {v0}, Lorg/alljoyn/bus/BusException;->log(Ljava/lang/Throwable;)V

    .line 1184
    sget-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_INTERFACE:Lorg/alljoyn/bus/Status;

    goto :goto_1

    .line 1185
    :catch_2
    move-exception v0

    .line 1186
    invoke-static {v0}, Lorg/alljoyn/bus/BusException;->log(Ljava/lang/Throwable;)V

    .line 1187
    sget-object v0, Lorg/alljoyn/bus/Status;->BAD_ANNOTATION:Lorg/alljoyn/bus/Status;

    goto :goto_1
.end method

.method public registerSignalHandlers(Ljava/lang/Object;)Lorg/alljoyn/bus/Status;
    .locals 9

    .prologue
    .line 1207
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    .line 1208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v4, v7, v6

    .line 1209
    const-class v0, Lorg/alljoyn/bus/annotation/BusSignalHandler;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusSignalHandler;

    .line 1210
    if-eqz v0, :cond_0

    .line 1211
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusSignalHandler;->iface()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusSignalHandler;->signal()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusSignalHandler;->source()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/alljoyn/bus/BusAttachment;->registerSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 1212
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v1, :cond_1

    .line 1217
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 1208
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 847
    iget-boolean v0, p0, Lorg/alljoyn/bus/BusAttachment;->isConnected:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 848
    invoke-virtual {p0}, Lorg/alljoyn/bus/BusAttachment;->disconnect()V

    .line 850
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->dbusbo:Lorg/alljoyn/bus/ProxyBusObject;

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment;->dbusbo:Lorg/alljoyn/bus/ProxyBusObject;

    invoke-virtual {v0}, Lorg/alljoyn/bus/ProxyBusObject;->release()V

    .line 852
    iput-object v2, p0, Lorg/alljoyn/bus/BusAttachment;->dbusbo:Lorg/alljoyn/bus/ProxyBusObject;

    .line 854
    :cond_1
    iput-object v2, p0, Lorg/alljoyn/bus/BusAttachment;->dbus:Lorg/alljoyn/bus/ifaces/DBusProxyObj;

    .line 855
    invoke-direct {p0}, Lorg/alljoyn/bus/BusAttachment;->destroy()V

    .line 857
    sget-object v1, Lorg/alljoyn/bus/BusAttachment;->busAttachmentSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 858
    :try_start_0
    sget-object v0, Lorg/alljoyn/bus/BusAttachment;->busAttachmentSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 859
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 860
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/BusAttachment;

    .line 861
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    return-void
.end method

.method public native releaseName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method public native reloadKeyStore()Lorg/alljoyn/bus/Status;
.end method

.method public native removeMatch(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method public native removeSessionMember(ILjava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method public native requestName(Ljava/lang/String;I)Lorg/alljoyn/bus/Status;
.end method

.method public native setDaemonDebug(Ljava/lang/String;I)Lorg/alljoyn/bus/Status;
.end method

.method public native setDebugLevel(Ljava/lang/String;I)V
.end method

.method public native setKeyExpiration(Ljava/lang/String;I)Lorg/alljoyn/bus/Status;
.end method

.method public native setLinkTimeout(ILorg/alljoyn/bus/Mutable$IntegerValue;)Lorg/alljoyn/bus/Status;
.end method

.method public native setLogLevels(Ljava/lang/String;)V
.end method

.method public native setSessionListener(ILorg/alljoyn/bus/SessionListener;)Lorg/alljoyn/bus/Status;
.end method

.method public native unbindSessionPort(S)Lorg/alljoyn/bus/Status;
.end method

.method public native unregisterBusListener(Lorg/alljoyn/bus/BusListener;)V
.end method

.method public native unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V
.end method

.method public native unregisterSignalHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
.end method

.method public unregisterSignalHandlers(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1237
    const-class v0, Lorg/alljoyn/bus/annotation/BusSignalHandler;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusSignalHandler;

    .line 1238
    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {p0, p1, v4}, Lorg/alljoyn/bus/BusAttachment;->unregisterSignalHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 1236
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1242
    :cond_1
    return-void
.end method

.method public native useOSLogging(Z)V
.end method
