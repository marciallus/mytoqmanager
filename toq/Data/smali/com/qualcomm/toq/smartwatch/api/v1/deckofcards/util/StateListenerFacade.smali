.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;
.super Ljava/lang/Object;
.source "StateListenerFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$1;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
    }
.end annotation


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;


# instance fields
.field private context:Landroid/content/Context;

.field private lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

.field private stateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->context:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->stateListeners:Ljava/util/Set;

    .line 53
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$1;)V

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->addStateListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->context:Landroid/content/Context;

    return-object v0
.end method

.method private varargs dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "stateEvent"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 248
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->stateListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 289
    :cond_0
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->stateListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;

    .line 259
    .local v1, "listener":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;
    sget-object v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$1;->$SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$util$StateListenerFacade$STATE_EVENT:[I

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;->onBluetoothEnabled()V

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;->onBluetoothDisabled()V

    goto :goto_0

    .line 270
    :pswitch_2
    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;->onWatchPaired()V

    goto :goto_0

    .line 274
    :pswitch_3
    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;->onWatchUnpaired()V

    goto :goto_0

    .line 278
    :pswitch_4
    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;->onWatchConnected()V

    goto :goto_0

    .line 282
    :pswitch_5
    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;->onWatchDisconnected()V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    if-nez v0, :cond_1

    .line 166
    const-class v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    monitor-enter v1

    .line 168
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    .line 172
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addStateListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->stateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBluetoothDisabled()V
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->BLUETOOTH_DISABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eq v0, v1, :cond_1

    .line 107
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->BLUETOOTH_DISABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;[Ljava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->BLUETOOTH_DISABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBluetoothEnabled()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->BLUETOOTH_ENABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eq v0, v1, :cond_1

    .line 96
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->BLUETOOTH_ENABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;[Ljava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->BLUETOOTH_ENABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWatchConnected()V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_CONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eq v0, v1, :cond_1

    .line 140
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_CONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;[Ljava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_CONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_1
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWatchDisconnected()V
    .locals 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_DISCONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eq v0, v1, :cond_1

    .line 151
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_DISCONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;[Ljava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_DISCONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_1
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWatchPaired()V
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_PAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eq v0, v1, :cond_1

    .line 118
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_PAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;[Ljava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_PAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_1
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWatchUnpaired()V
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_UNPAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    if-eq v0, v1, :cond_1

    .line 129
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_UNPAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;[Ljava/lang/Object;)V

    .line 130
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_UNPAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->lastEvent:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeStateListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->stateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
