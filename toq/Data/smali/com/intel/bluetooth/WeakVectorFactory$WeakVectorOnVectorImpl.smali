.class Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;
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
    name = "WeakVectorOnVectorImpl"
.end annotation


# instance fields
.field private vectorImpl:Ljava/util/Vector;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;->vectorImpl:Ljava/util/Vector;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addElement(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;->vectorImpl:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;->vectorImpl:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;->vectorImpl:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public firstElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;->vectorImpl:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAllElements()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;->vectorImpl:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 102
    return-void
.end method

.method public removeElement(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;->vectorImpl:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/intel/bluetooth/WeakVectorFactory$WeakVectorOnVectorImpl;->vectorImpl:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
