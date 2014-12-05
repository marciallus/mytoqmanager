.class Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;
.super Ljava/lang/Object;
.source "WeakVectorFactory.java"

# interfaces
.implements Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/WeakVectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakVectorOnWeakHashMapImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl$EnumerationAdapter;
    }
.end annotation


# instance fields
.field private mapImpl:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;->mapImpl:Ljava/util/WeakHashMap;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addElement(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;->mapImpl:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;->mapImpl:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl$EnumerationAdapter;

    iget-object v1, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;->mapImpl:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl$EnumerationAdapter;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public firstElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;->mapImpl:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAllElements()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;->mapImpl:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 160
    return-void
.end method

.method public removeElement(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;->mapImpl:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;->mapImpl:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method
