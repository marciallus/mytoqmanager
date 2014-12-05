.class Lorg/alljoyn/bus/BusAttachment$ShutdownHookThread;
.super Ljava/lang/Thread;
.source "BusAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/BusAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutdownHookThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/bus/BusAttachment$1;)V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Lorg/alljoyn/bus/BusAttachment$ShutdownHookThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 785
    # getter for: Lorg/alljoyn/bus/BusAttachment;->busAttachmentSet:Ljava/util/HashSet;
    invoke-static {}, Lorg/alljoyn/bus/BusAttachment;->access$100()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 786
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 788
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/bus/BusAttachment;

    .line 789
    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {v1}, Lorg/alljoyn/bus/BusAttachment;->release()V

    .line 794
    :goto_1
    # getter for: Lorg/alljoyn/bus/BusAttachment;->busAttachmentSet:Ljava/util/HashSet;
    invoke-static {}, Lorg/alljoyn/bus/BusAttachment;->access$100()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 792
    :cond_0
    # getter for: Lorg/alljoyn/bus/BusAttachment;->busAttachmentSet:Ljava/util/HashSet;
    invoke-static {}, Lorg/alljoyn/bus/BusAttachment;->access$100()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 796
    :cond_1
    return-void
.end method
