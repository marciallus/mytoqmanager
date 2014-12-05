.class Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$NFSessionListener;
.super Lorg/alljoyn/bus/SessionListener;
.source "NotificationFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NFSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;


# direct methods
.method private constructor <init>(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$NFSessionListener;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    invoke-direct {p0}, Lorg/alljoyn/bus/SessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;
    .param p2, "x1"    # Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$NFSessionListener;-><init>(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)V

    return-void
.end method


# virtual methods
.method public sessionLost(II)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$NFSessionListener;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;
    invoke-static {v0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$000(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$NFSessionListener;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;
    invoke-static {v0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$000(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received session lost for sid: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', reason: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method
