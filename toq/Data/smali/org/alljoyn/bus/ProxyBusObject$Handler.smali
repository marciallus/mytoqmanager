.class Lorg/alljoyn/bus/ProxyBusObject$Handler;
.super Ljava/lang/Object;
.source "ProxyBusObject.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/ProxyBusObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;
    }
.end annotation


# instance fields
.field private invocationCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/alljoyn/bus/ProxyBusObject;


# direct methods
.method public constructor <init>(Lorg/alljoyn/bus/ProxyBusObject;)V
    .locals 1

    .prologue
    .line 177
    iput-object p1, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->this$0:Lorg/alljoyn/bus/ProxyBusObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->invocationCache:Ljava/util/Map;

    .line 179
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 194
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 195
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->invocationCache:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 196
    if-eqz v0, :cond_3

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 199
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;

    move-object v9, v0

    .line 239
    :goto_0
    const/4 v6, 0x0

    .line 240
    iget-boolean v0, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->isMethod:Z

    if-eqz v0, :cond_7

    .line 241
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->this$0:Lorg/alljoyn/bus/ProxyBusObject;

    iget-object v1, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->this$0:Lorg/alljoyn/bus/ProxyBusObject;

    # getter for: Lorg/alljoyn/bus/ProxyBusObject;->bus:Lorg/alljoyn/bus/BusAttachment;
    invoke-static {v1}, Lorg/alljoyn/bus/ProxyBusObject;->access$000(Lorg/alljoyn/bus/ProxyBusObject;)Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    iget-object v2, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->interfaceName:Ljava/lang/String;

    iget-object v3, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->methodName:Ljava/lang/String;

    iget-object v4, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->inputSig:Ljava/lang/String;

    iget-object v5, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->genericReturnType:Ljava/lang/reflect/Type;

    iget-object v6, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->this$0:Lorg/alljoyn/bus/ProxyBusObject;

    # getter for: Lorg/alljoyn/bus/ProxyBusObject;->replyTimeoutMsecs:I
    invoke-static {v6}, Lorg/alljoyn/bus/ProxyBusObject;->access$100(Lorg/alljoyn/bus/ProxyBusObject;)I

    move-result v7

    iget-object v6, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->this$0:Lorg/alljoyn/bus/ProxyBusObject;

    # getter for: Lorg/alljoyn/bus/ProxyBusObject;->flags:I
    invoke-static {v6}, Lorg/alljoyn/bus/ProxyBusObject;->access$200(Lorg/alljoyn/bus/ProxyBusObject;)I

    move-result v8

    move-object v6, p3

    # invokes: Lorg/alljoyn/bus/ProxyBusObject;->methodCall(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/Object;II)Ljava/lang/Object;
    invoke-static/range {v0 .. v8}, Lorg/alljoyn/bus/ProxyBusObject;->access$300(Lorg/alljoyn/bus/ProxyBusObject;Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    .line 269
    :goto_1
    const/4 v1, 0x0

    .line 270
    iget-object v2, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->returnType:Ljava/lang/Class;

    .line 271
    if-nez v0, :cond_a

    .line 272
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    .line 285
    :cond_0
    :goto_2
    if-eqz v1, :cond_12

    .line 286
    new-instance v0, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot marshal \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->outSig:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' into "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;

    .line 203
    iget-object v4, v1, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    :goto_3
    if-nez v1, :cond_14

    .line 209
    new-instance v1, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;

    invoke-direct {v1, p0, p2}, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;-><init>(Lorg/alljoyn/bus/ProxyBusObject$Handler;Ljava/lang/reflect/Method;)V

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v1

    goto/16 :goto_0

    .line 221
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v11, v0

    move-object v0, v2

    move v2, v11

    :goto_4
    if-ge v2, v7, :cond_5

    aget-object v1, v6, v2

    .line 223
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    :goto_5
    if-ge v3, v9, :cond_4

    aget-object v10, v8, v3

    .line 224
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 225
    new-instance v0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;

    invoke-direct {v0, p0, v10}, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;-><init>(Lorg/alljoyn/bus/ProxyBusObject$Handler;Ljava/lang/reflect/Method;)V

    .line 226
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v10, v0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v10}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 223
    :goto_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_5

    .line 222
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_4

    .line 233
    :cond_5
    if-nez v0, :cond_6

    .line 234
    new-instance v0, Lorg/alljoyn/bus/BusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_6
    iget-object v1, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->invocationCache:Ljava/util/Map;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v0

    goto/16 :goto_0

    .line 250
    :cond_7
    iget-boolean v0, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->isGet:Z

    if-eqz v0, :cond_8

    .line 251
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->this$0:Lorg/alljoyn/bus/ProxyBusObject;

    iget-object v1, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->this$0:Lorg/alljoyn/bus/ProxyBusObject;

    # getter for: Lorg/alljoyn/bus/ProxyBusObject;->bus:Lorg/alljoyn/bus/BusAttachment;
    invoke-static {v1}, Lorg/alljoyn/bus/ProxyBusObject;->access$000(Lorg/alljoyn/bus/ProxyBusObject;)Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    iget-object v2, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->interfaceName:Ljava/lang/String;

    iget-object v3, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->methodName:Ljava/lang/String;

    # invokes: Lorg/alljoyn/bus/ProxyBusObject;->getProperty(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Variant;
    invoke-static {v0, v1, v2, v3}, Lorg/alljoyn/bus/ProxyBusObject;->access$400(Lorg/alljoyn/bus/ProxyBusObject;Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Variant;

    move-result-object v0

    .line 254
    iget-object v1, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    .line 256
    :cond_8
    iget-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->this$0:Lorg/alljoyn/bus/ProxyBusObject;

    iget-object v1, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler;->this$0:Lorg/alljoyn/bus/ProxyBusObject;

    # getter for: Lorg/alljoyn/bus/ProxyBusObject;->bus:Lorg/alljoyn/bus/BusAttachment;
    invoke-static {v1}, Lorg/alljoyn/bus/ProxyBusObject;->access$000(Lorg/alljoyn/bus/ProxyBusObject;)Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    iget-object v2, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->interfaceName:Ljava/lang/String;

    iget-object v3, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->methodName:Ljava/lang/String;

    iget-object v4, v9, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->outSig:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, p3, v5

    # invokes: Lorg/alljoyn/bus/ProxyBusObject;->setProperty(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lorg/alljoyn/bus/ProxyBusObject;->access$500(Lorg/alljoyn/bus/ProxyBusObject;Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v6

    goto/16 :goto_1

    .line 272
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 273
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 274
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b

    instance-of v3, v0, Ljava/lang/Byte;

    if-eqz v3, :cond_10

    :cond_b
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    instance-of v3, v0, Ljava/lang/Short;

    if-eqz v3, :cond_10

    :cond_c
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_10

    :cond_d
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_10

    :cond_e
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_f

    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_10

    :cond_f
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 280
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 282
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 288
    :cond_12
    return-object v0

    :cond_13
    move-object v0, v1

    goto/16 :goto_6

    :cond_14
    move-object v9, v1

    goto/16 :goto_0

    :cond_15
    move-object v1, v2

    goto/16 :goto_3
.end method
