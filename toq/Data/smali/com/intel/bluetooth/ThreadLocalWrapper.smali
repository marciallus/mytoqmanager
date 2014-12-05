.class Lcom/intel/bluetooth/ThreadLocalWrapper;
.super Ljava/lang/Object;
.source "ThreadLocalWrapper.java"


# static fields
.field static java11:Z


# instance fields
.field private java11Object:Ljava/lang/Object;

.field private threadLocal:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/bluetooth/ThreadLocalWrapper;->java11:Z

    .line 32
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-boolean v1, Lcom/intel/bluetooth/ThreadLocalWrapper;->java11:Z

    if-eqz v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/intel/bluetooth/ThreadLocalWrapper;->threadLocal:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ejava11":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/intel/bluetooth/ThreadLocalWrapper;->java11:Z

    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/intel/bluetooth/ThreadLocalWrapper;->java11:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/intel/bluetooth/ThreadLocalWrapper;->java11Object:Ljava/lang/Object;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/ThreadLocalWrapper;->threadLocal:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 60
    sget-boolean v0, Lcom/intel/bluetooth/ThreadLocalWrapper;->java11:Z

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/intel/bluetooth/ThreadLocalWrapper;->java11Object:Ljava/lang/Object;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/ThreadLocalWrapper;->threadLocal:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
