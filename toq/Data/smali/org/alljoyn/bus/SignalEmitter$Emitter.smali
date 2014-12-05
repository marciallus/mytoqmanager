.class Lorg/alljoyn/bus/SignalEmitter$Emitter;
.super Ljava/lang/Object;
.source "SignalEmitter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/SignalEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Emitter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/bus/SignalEmitter;


# direct methods
.method private constructor <init>(Lorg/alljoyn/bus/SignalEmitter;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/alljoyn/bus/SignalEmitter$Emitter;->this$0:Lorg/alljoyn/bus/SignalEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/bus/SignalEmitter;Lorg/alljoyn/bus/SignalEmitter$1;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lorg/alljoyn/bus/SignalEmitter$Emitter;-><init>(Lorg/alljoyn/bus/SignalEmitter;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v14

    array-length v15, v14

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v15, :cond_2

    aget-object v16, v14, v13

    .line 121
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v1, 0x0

    move v12, v1

    :goto_1
    move/from16 v0, v18

    if-ge v12, v0, :cond_1

    aget-object v7, v17, v12

    .line 122
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/alljoyn/bus/SignalEmitter$Emitter;->this$0:Lorg/alljoyn/bus/SignalEmitter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/alljoyn/bus/SignalEmitter$Emitter;->this$0:Lorg/alljoyn/bus/SignalEmitter;

    # getter for: Lorg/alljoyn/bus/SignalEmitter;->source:Lorg/alljoyn/bus/BusObject;
    invoke-static {v2}, Lorg/alljoyn/bus/SignalEmitter;->access$100(Lorg/alljoyn/bus/SignalEmitter;)Lorg/alljoyn/bus/BusObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/alljoyn/bus/SignalEmitter$Emitter;->this$0:Lorg/alljoyn/bus/SignalEmitter;

    # getter for: Lorg/alljoyn/bus/SignalEmitter;->destination:Ljava/lang/String;
    invoke-static {v3}, Lorg/alljoyn/bus/SignalEmitter;->access$200(Lorg/alljoyn/bus/SignalEmitter;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/alljoyn/bus/SignalEmitter$Emitter;->this$0:Lorg/alljoyn/bus/SignalEmitter;

    # getter for: Lorg/alljoyn/bus/SignalEmitter;->sessionId:I
    invoke-static {v4}, Lorg/alljoyn/bus/SignalEmitter;->access$300(Lorg/alljoyn/bus/SignalEmitter;)I

    move-result v4

    invoke-static/range {v16 .. v16}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7}, Lorg/alljoyn/bus/InterfaceDescription;->getInputSig(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/alljoyn/bus/SignalEmitter$Emitter;->this$0:Lorg/alljoyn/bus/SignalEmitter;

    # getter for: Lorg/alljoyn/bus/SignalEmitter;->timeToLive:I
    invoke-static {v8}, Lorg/alljoyn/bus/SignalEmitter;->access$400(Lorg/alljoyn/bus/SignalEmitter;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/alljoyn/bus/SignalEmitter$Emitter;->this$0:Lorg/alljoyn/bus/SignalEmitter;

    # getter for: Lorg/alljoyn/bus/SignalEmitter;->flags:I
    invoke-static {v8}, Lorg/alljoyn/bus/SignalEmitter;->access$500(Lorg/alljoyn/bus/SignalEmitter;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/alljoyn/bus/SignalEmitter$Emitter;->this$0:Lorg/alljoyn/bus/SignalEmitter;

    # getter for: Lorg/alljoyn/bus/SignalEmitter;->msgContext:Lorg/alljoyn/bus/MessageContext;
    invoke-static {v8}, Lorg/alljoyn/bus/SignalEmitter;->access$600(Lorg/alljoyn/bus/SignalEmitter;)Lorg/alljoyn/bus/MessageContext;

    move-result-object v11

    move-object/from16 v8, p3

    # invokes: Lorg/alljoyn/bus/SignalEmitter;->signal(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IILorg/alljoyn/bus/MessageContext;)V
    invoke-static/range {v1 .. v11}, Lorg/alljoyn/bus/SignalEmitter;->access$700(Lorg/alljoyn/bus/SignalEmitter;Lorg/alljoyn/bus/BusObject;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IILorg/alljoyn/bus/MessageContext;)V

    .line 121
    :cond_0
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_1

    .line 120
    :cond_1
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method
