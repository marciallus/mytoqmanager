.class Lcom/intel/bluetooth/WeakVectorFactory;
.super Ljava/lang/Object;
.source "WeakVectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;,
        Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;,
        Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWeakVector()Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    :try_start_0
    new-instance v1, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;-><init>(Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnWeakHashMapImpl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 63
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 64
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;

    invoke-direct {v1, v3}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;-><init>(Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;)V

    goto :goto_0
.end method
