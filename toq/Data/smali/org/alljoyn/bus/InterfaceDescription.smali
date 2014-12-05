.class Lorg/alljoyn/bus/InterfaceDescription;
.super Ljava/lang/Object;
.source "InterfaceDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/bus/InterfaceDescription$Property;
    }
.end annotation


# static fields
.field private static final AJ_IFC_SECURITY_INHERIT:I = 0x0

.field private static final AJ_IFC_SECURITY_OFF:I = 0x2

.field private static final AJ_IFC_SECURITY_REQUIRED:I = 0x1

.field private static final INVALID:I = 0x0

.field private static final METHOD_CALL:I = 0x1

.field private static final READ:I = 0x1

.field private static final RW:I = 0x3

.field private static final SIGNAL:I = 0x4

.field private static final WRITE:I = 0x2


# instance fields
.field private handle:J

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/InterfaceDescription$Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/bus/InterfaceDescription;->members:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/bus/InterfaceDescription;->properties:Ljava/util/Map;

    .line 95
    return-void
.end method

.method private native activate()V
.end method

.method private native addAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method private native addMember(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method private native addMemberAnnotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method private addMembers(Ljava/lang/Class;)Lorg/alljoyn/bus/Status;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/alljoyn/bus/Status;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 272
    iget-object v0, p0, Lorg/alljoyn/bus/InterfaceDescription;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/reflect/Method;

    .line 275
    const/4 v6, 0x0

    .line 276
    const-class v0, Lorg/alljoyn/bus/annotation/BusMethod;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusMethod;

    .line 277
    const-class v1, Lorg/alljoyn/bus/annotation/BusSignal;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/bus/annotation/BusSignal;

    .line 278
    const-class v2, Lorg/alljoyn/bus/annotation/AccessPermission;

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/bus/annotation/AccessPermission;

    .line 280
    if-eqz v0, :cond_2

    .line 281
    const/4 v1, 0x1

    .line 282
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusMethod;->annotation()I

    move-result v5

    .line 287
    :goto_0
    if-eqz v1, :cond_0

    .line 288
    if-eqz v2, :cond_1

    .line 289
    invoke-interface {v2}, Lorg/alljoyn/bus/annotation/AccessPermission;->value()Ljava/lang/String;

    move-result-object v6

    .line 292
    :cond_1
    invoke-static {v7}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {v7}, Lorg/alljoyn/bus/InterfaceDescription;->getInputSig(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lorg/alljoyn/bus/InterfaceDescription;->getOutSig(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/alljoyn/bus/InterfaceDescription;->addMember(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 295
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v1, :cond_3

    .line 309
    :goto_1
    return-object v0

    .line 283
    :cond_2
    if-eqz v1, :cond_5

    .line 284
    const/4 v0, 0x4

    .line 285
    invoke-interface {v1}, Lorg/alljoyn/bus/annotation/BusSignal;->annotation()I

    move-result v5

    move v1, v0

    goto :goto_0

    .line 300
    :cond_3
    const-class v0, Lorg/alljoyn/bus/annotation/BusAnnotations;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusAnnotations;

    .line 301
    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusAnnotations;->value()[Lorg/alljoyn/bus/annotation/BusAnnotation;

    move-result-object v1

    array-length v3, v1

    move v0, v8

    :goto_2
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 304
    invoke-interface {v4}, Lorg/alljoyn/bus/annotation/BusAnnotation;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/alljoyn/bus/annotation/BusAnnotation;->value()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v5, v4}, Lorg/alljoyn/bus/InterfaceDescription;->addMemberAnnotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 309
    :cond_4
    sget-object v0, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    goto :goto_1

    :cond_5
    move v5, v8

    move v1, v8

    goto :goto_0
.end method

.method private addProperties(Ljava/lang/Class;)Lorg/alljoyn/bus/Status;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/alljoyn/bus/Status;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v0, p0, Lorg/alljoyn/bus/InterfaceDescription;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/InterfaceDescription$Property;

    .line 246
    iget-object v1, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->get:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->set:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v1, v2

    .line 247
    iget-object v2, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->name:Ljava/lang/String;

    iget-object v5, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->signature:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v1}, Lorg/alljoyn/bus/InterfaceDescription;->addProperty(Ljava/lang/String;Ljava/lang/String;I)Lorg/alljoyn/bus/Status;

    move-result-object v1

    .line 248
    sget-object v2, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v1, v2, :cond_3

    move-object v0, v1

    .line 257
    :goto_2
    return-object v0

    :cond_1
    move v1, v3

    .line 246
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 253
    :cond_3
    iget-object v1, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 254
    iget-object v6, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->name:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v6, v2, v1}, Lorg/alljoyn/bus/InterfaceDescription;->addPropertyAnnotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    goto :goto_3

    .line 257
    :cond_4
    sget-object v0, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    goto :goto_2
.end method

.method private native addProperty(Ljava/lang/String;Ljava/lang/String;I)Lorg/alljoyn/bus/Status;
.end method

.method private native addPropertyAnnotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Status;
.end method

.method private native create(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;III)Lorg/alljoyn/bus/Status;
.end method

.method public static create(Lorg/alljoyn/bus/BusAttachment;[Ljava/lang/Class;Ljava/util/List;)Lorg/alljoyn/bus/Status;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/alljoyn/bus/BusAttachment;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/bus/InterfaceDescription;",
            ">;)",
            "Lorg/alljoyn/bus/Status;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    .line 322
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, p1, v1

    .line 323
    const-string v3, "org.freedesktop.DBus.Properties"

    invoke-static {v0}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 327
    :cond_1
    const-class v3, Lorg/alljoyn/bus/annotation/BusInterface;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 328
    new-instance v3, Lorg/alljoyn/bus/InterfaceDescription;

    invoke-direct {v3}, Lorg/alljoyn/bus/InterfaceDescription;-><init>()V

    .line 330
    invoke-virtual {v3, p0, v0}, Lorg/alljoyn/bus/InterfaceDescription;->create(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/Class;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 331
    sget-object v4, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v4, :cond_2

    .line 337
    :goto_2
    return-object v0

    .line 334
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    :cond_3
    sget-object v0, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    goto :goto_2
.end method

.method public static getInputSig(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    .line 386
    const-class v0, Lorg/alljoyn/bus/annotation/BusMethod;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusMethod;

    .line 387
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusMethod;->signature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 388
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusMethod;->signature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/alljoyn/bus/Signature;->typeSig([Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    .line 390
    :cond_0
    const-class v0, Lorg/alljoyn/bus/annotation/BusSignal;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusSignal;

    .line 391
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusSignal;->signature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 392
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusSignal;->signature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/alljoyn/bus/Signature;->typeSig([Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/alljoyn/bus/Signature;->typeSig([Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMember(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lorg/alljoyn/bus/InterfaceDescription;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 126
    invoke-static {v0}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMembers(Ljava/lang/Class;)Lorg/alljoyn/bus/Status;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/alljoyn/bus/Status;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 262
    const-class v4, Lorg/alljoyn/bus/annotation/BusMethod;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 263
    iget-object v4, p0, Lorg/alljoyn/bus/InterfaceDescription;->members:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const-class v4, Lorg/alljoyn/bus/annotation/BusSignal;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 265
    iget-object v4, p0, Lorg/alljoyn/bus/InterfaceDescription;->members:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 268
    :cond_2
    sget-object v0, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    return-object v0
.end method

.method public static getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 346
    const-class v0, Lorg/alljoyn/bus/annotation/BusInterface;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusInterface;

    .line 347
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusInterface;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 348
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusInterface;->name()Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    const-class v0, Lorg/alljoyn/bus/annotation/BusMethod;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusMethod;

    .line 361
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 362
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusMethod;->name()Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 364
    :cond_0
    const-class v0, Lorg/alljoyn/bus/annotation/BusSignal;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusSignal;

    .line 365
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusSignal;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 366
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusSignal;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_1
    const-class v0, Lorg/alljoyn/bus/annotation/BusProperty;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusProperty;

    .line 369
    if-eqz v0, :cond_3

    .line 370
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 371
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusProperty;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOutSig(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    .line 403
    const-class v0, Lorg/alljoyn/bus/annotation/BusMethod;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusMethod;

    .line 404
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusMethod;->replySignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 405
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusMethod;->replySignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/alljoyn/bus/Signature;->typeSig(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    .line 407
    :cond_0
    const-class v0, Lorg/alljoyn/bus/annotation/BusSignal;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusSignal;

    .line 408
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusSignal;->replySignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 409
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusSignal;->replySignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/alljoyn/bus/Signature;->typeSig(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/alljoyn/bus/Signature;->typeSig(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getProperties(Ljava/lang/Class;)Lorg/alljoyn/bus/Status;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/alljoyn/bus/Status;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v6, v4, v3

    .line 211
    const-class v0, Lorg/alljoyn/bus/annotation/BusProperty;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 212
    invoke-static {v6}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    .line 213
    iget-object v0, p0, Lorg/alljoyn/bus/InterfaceDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/InterfaceDescription$Property;

    .line 215
    const-class v1, Lorg/alljoyn/bus/annotation/BusAnnotations;

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/bus/annotation/BusAnnotations;

    .line 216
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 217
    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v1}, Lorg/alljoyn/bus/annotation/BusAnnotations;->value()[Lorg/alljoyn/bus/annotation/BusAnnotation;

    move-result-object v9

    array-length v10, v9

    move v1, v2

    :goto_1
    if-ge v1, v10, :cond_0

    aget-object v11, v9, v1

    .line 220
    invoke-interface {v11}, Lorg/alljoyn/bus/annotation/BusAnnotation;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11}, Lorg/alljoyn/bus/annotation/BusAnnotation;->value()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v12, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    :cond_0
    if-nez v0, :cond_3

    .line 225
    new-instance v0, Lorg/alljoyn/bus/InterfaceDescription$Property;

    invoke-static {v6}, Lorg/alljoyn/bus/InterfaceDescription;->getPropertySig(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v7, v1, v8}, Lorg/alljoyn/bus/InterfaceDescription$Property;-><init>(Lorg/alljoyn/bus/InterfaceDescription;Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 230
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "get"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    iput-object v6, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->get:Ljava/lang/reflect/Method;

    .line 238
    :goto_2
    iget-object v1, p0, Lorg/alljoyn/bus/InterfaceDescription;->properties:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 226
    :cond_3
    iget-object v1, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->signature:Ljava/lang/String;

    invoke-static {v6}, Lorg/alljoyn/bus/InterfaceDescription;->getPropertySig(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    sget-object v0, Lorg/alljoyn/bus/Status;->BAD_ANNOTATION:Lorg/alljoyn/bus/Status;

    .line 241
    :goto_3
    return-object v0

    .line 232
    :cond_4
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "set"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 234
    iput-object v6, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->set:Ljava/lang/reflect/Method;

    goto :goto_2

    .line 236
    :cond_5
    sget-object v0, Lorg/alljoyn/bus/Status;->BAD_ANNOTATION:Lorg/alljoyn/bus/Status;

    goto :goto_3

    .line 241
    :cond_6
    sget-object v0, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    goto :goto_3
.end method

.method private getProperty(Ljava/lang/String;)[Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lorg/alljoyn/bus/InterfaceDescription;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/InterfaceDescription$Property;

    .line 139
    iget-object v2, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->get:Ljava/lang/reflect/Method;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v0, v0, Lorg/alljoyn/bus/InterfaceDescription$Property;->set:Ljava/lang/reflect/Method;

    aput-object v0, v1, v2

    move-object v0, v1

    .line 143
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPropertySig(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 420
    .line 421
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v1, v0

    .line 426
    :goto_0
    const-class v0, Lorg/alljoyn/bus/annotation/BusProperty;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusProperty;

    .line 427
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusProperty;->signature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 428
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusProperty;->signature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/alljoyn/bus/Signature;->typeSig(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_1
    return-object v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v1, v0

    goto :goto_0

    .line 430
    :cond_1
    invoke-static {v1, v2}, Lorg/alljoyn/bus/Signature;->typeSig(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public create(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/Class;)Lorg/alljoyn/bus/Status;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/alljoyn/bus/BusAttachment;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/alljoyn/bus/Status;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 154
    invoke-direct {p0, p2}, Lorg/alljoyn/bus/InterfaceDescription;->getProperties(Ljava/lang/Class;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 155
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :cond_1
    invoke-direct {p0, p2}, Lorg/alljoyn/bus/InterfaceDescription;->getMembers(Ljava/lang/Class;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 159
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v0, v1, :cond_0

    .line 164
    const-class v0, Lorg/alljoyn/bus/annotation/Secure;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/Secure;

    .line 165
    if-eqz v0, :cond_4

    .line 166
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/Secure;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "required"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const/4 v3, 0x1

    .line 181
    :goto_1
    invoke-static {p2}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/alljoyn/bus/InterfaceDescription;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    iget-object v0, p0, Lorg/alljoyn/bus/InterfaceDescription;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/bus/InterfaceDescription;->create(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;III)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 183
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v0, v1, :cond_0

    .line 186
    invoke-direct {p0, p2}, Lorg/alljoyn/bus/InterfaceDescription;->addProperties(Ljava/lang/Class;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 187
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-direct {p0, p2}, Lorg/alljoyn/bus/InterfaceDescription;->addMembers(Ljava/lang/Class;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 191
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v0, v1, :cond_0

    .line 197
    const-class v0, Lorg/alljoyn/bus/annotation/BusAnnotations;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusAnnotations;

    .line 198
    if-eqz v0, :cond_5

    .line 200
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusAnnotations;->value()[Lorg/alljoyn/bus/annotation/BusAnnotation;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v6, v1, :cond_5

    aget-object v2, v0, v6

    .line 201
    invoke-interface {v2}, Lorg/alljoyn/bus/annotation/BusAnnotation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/alljoyn/bus/annotation/BusAnnotation;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lorg/alljoyn/bus/InterfaceDescription;->addAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    .line 200
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 168
    :cond_2
    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/Secure;->value()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    move v3, v6

    .line 176
    goto :goto_1

    :cond_4
    move v3, v6

    .line 179
    goto :goto_1

    .line 205
    :cond_5
    invoke-direct {p0}, Lorg/alljoyn/bus/InterfaceDescription;->activate()V

    .line 206
    sget-object v0, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    goto/16 :goto_0
.end method
