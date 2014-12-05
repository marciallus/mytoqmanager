.class public Lorg/alljoyn/bus/SignalEmitter;
.super Ljava/lang/Object;
.source "SignalEmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/bus/SignalEmitter$1;,
        Lorg/alljoyn/bus/SignalEmitter$Emitter;,
        Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;
    }
.end annotation


# static fields
.field private static final COMPRESSED:I = 0x40

.field private static final GLOBAL_BROADCAST:I = 0x20

.field private static final SESSIONLESS:I = 0x10


# instance fields
.field private destination:Ljava/lang/String;

.field private flags:I

.field private msgContext:Lorg/alljoyn/bus/MessageContext;

.field private proxy:Ljava/lang/Object;

.field private sessionId:I

.field private source:Lorg/alljoyn/bus/BusObject;

.field private timeToLive:I


# direct methods
.method public constructor <init>(Lorg/alljoyn/bus/BusObject;)V
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->Off:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/alljoyn/bus/SignalEmitter;-><init>(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;ILorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/bus/BusObject;ILorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/alljoyn/bus/SignalEmitter;-><init>(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;ILorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;ILorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;)V
    .locals 4

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/alljoyn/bus/SignalEmitter;->source:Lorg/alljoyn/bus/BusObject;

    .line 70
    iput-object p2, p0, Lorg/alljoyn/bus/SignalEmitter;->destination:Ljava/lang/String;

    .line 71
    iput p3, p0, Lorg/alljoyn/bus/SignalEmitter;->sessionId:I

    .line 72
    sget-object v0, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->On:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    if-ne p4, v0, :cond_0

    iget v0, p0, Lorg/alljoyn/bus/SignalEmitter;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_0
    iput v0, p0, Lorg/alljoyn/bus/SignalEmitter;->flags:I

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lorg/alljoyn/bus/SignalEmitter$Emitter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/alljoyn/bus/SignalEmitter$Emitter;-><init>(Lorg/alljoyn/bus/SignalEmitter;Lorg/alljoyn/bus/SignalEmitter$1;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/SignalEmitter;->proxy:Ljava/lang/Object;

    .line 77
    new-instance v0, Lorg/alljoyn/bus/MessageContext;

    invoke-direct {v0}, Lorg/alljoyn/bus/MessageContext;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/bus/SignalEmitter;->msgContext:Lorg/alljoyn/bus/MessageContext;

    .line 78
    return-void

    .line 72
    :cond_0
    iget v0, p0, Lorg/alljoyn/bus/SignalEmitter;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_0
.end method

.method public constructor <init>(Lorg/alljoyn/bus/BusObject;Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;)V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/alljoyn/bus/SignalEmitter;-><init>(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;ILorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;)V

    .line 101
    return-void
.end method

.method static synthetic access$100(Lorg/alljoyn/bus/SignalEmitter;)Lorg/alljoyn/bus/BusObject;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/alljoyn/bus/SignalEmitter;->source:Lorg/alljoyn/bus/BusObject;

    return-object v0
.end method

.method static synthetic access$200(Lorg/alljoyn/bus/SignalEmitter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/alljoyn/bus/SignalEmitter;->destination:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/alljoyn/bus/SignalEmitter;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lorg/alljoyn/bus/SignalEmitter;->sessionId:I

    return v0
.end method

.method static synthetic access$400(Lorg/alljoyn/bus/SignalEmitter;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lorg/alljoyn/bus/SignalEmitter;->timeToLive:I

    return v0
.end method

.method static synthetic access$500(Lorg/alljoyn/bus/SignalEmitter;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lorg/alljoyn/bus/SignalEmitter;->flags:I

    return v0
.end method

.method static synthetic access$600(Lorg/alljoyn/bus/SignalEmitter;)Lorg/alljoyn/bus/MessageContext;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/alljoyn/bus/SignalEmitter;->msgContext:Lorg/alljoyn/bus/MessageContext;

    return-object v0
.end method

.method static synthetic access$700(Lorg/alljoyn/bus/SignalEmitter;Lorg/alljoyn/bus/BusObject;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IILorg/alljoyn/bus/MessageContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct/range {p0 .. p10}, Lorg/alljoyn/bus/SignalEmitter;->signal(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IILorg/alljoyn/bus/MessageContext;)V

    return-void
.end method

.method private native cancelSessionlessSignal(Lorg/alljoyn/bus/BusObject;I)Lorg/alljoyn/bus/Status;
.end method

.method private native signal(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IILorg/alljoyn/bus/MessageContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method


# virtual methods
.method public cancelSessionlessSignal(I)Lorg/alljoyn/bus/Status;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/alljoyn/bus/SignalEmitter;->source:Lorg/alljoyn/bus/BusObject;

    invoke-direct {p0, v0, p1}, Lorg/alljoyn/bus/SignalEmitter;->cancelSessionlessSignal(Lorg/alljoyn/bus/BusObject;I)Lorg/alljoyn/bus/Status;

    move-result-object v0

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
    .line 210
    iget-object v0, p0, Lorg/alljoyn/bus/SignalEmitter;->proxy:Ljava/lang/Object;

    .line 211
    return-object v0
.end method

.method public getMessageContext()Lorg/alljoyn/bus/MessageContext;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/alljoyn/bus/SignalEmitter;->msgContext:Lorg/alljoyn/bus/MessageContext;

    return-object v0
.end method

.method public setCompressHeader(Z)V
    .locals 1

    .prologue
    .line 162
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/alljoyn/bus/SignalEmitter;->flags:I

    or-int/lit8 v0, v0, 0x40

    :goto_0
    iput v0, p0, Lorg/alljoyn/bus/SignalEmitter;->flags:I

    .line 163
    return-void

    .line 162
    :cond_0
    iget v0, p0, Lorg/alljoyn/bus/SignalEmitter;->flags:I

    and-int/lit8 v0, v0, -0x41

    goto :goto_0
.end method

.method public setSessionlessFlag(Z)V
    .locals 1

    .prologue
    .line 173
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/alljoyn/bus/SignalEmitter;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_0
    iput v0, p0, Lorg/alljoyn/bus/SignalEmitter;->flags:I

    .line 174
    return-void

    .line 173
    :cond_0
    iget v0, p0, Lorg/alljoyn/bus/SignalEmitter;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_0
.end method

.method public setTimeToLive(I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lorg/alljoyn/bus/SignalEmitter;->timeToLive:I

    .line 153
    return-void
.end method
