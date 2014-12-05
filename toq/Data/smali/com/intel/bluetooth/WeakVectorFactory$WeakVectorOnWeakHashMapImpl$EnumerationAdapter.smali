.class Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl$EnumerationAdapter;
.super Ljava/lang/Object;
.source "WeakVectorFactory.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumerationAdapter"
.end annotation


# instance fields
.field iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .param p1, "iterator"    # Ljava/util/Iterator;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl$EnumerationAdapter;->iterator:Ljava/util/Iterator;

    .line 116
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl$EnumerationAdapter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl$EnumerationAdapter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
