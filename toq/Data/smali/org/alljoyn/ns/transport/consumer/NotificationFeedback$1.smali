.class Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;
.super Ljava/lang/Object;
.source "NotificationFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;


# direct methods
.method constructor <init>(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->version:I
    invoke-static {v0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$200(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->origSender:Ljava/lang/String;
    invoke-static {v0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$300(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;
    invoke-static {v0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$000(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The notification sender version: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->version:I
    invoke-static {v3}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$200(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', doesn\'t support the NotificationProducer interface, notifId: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I
    invoke-static {v3}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$400(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', can\'t call the Dismiss method, sending the Dismiss signal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I
    invoke-static {v0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$400(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)I

    move-result v0

    iget-object v1, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    # getter for: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->appId:Ljava/util/UUID;
    invoke-static {v1}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$500(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)Ljava/util/UUID;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/alljoyn/ns/transport/DismissEmitter;->send(ILjava/util/UUID;)V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;->this$0:Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    # invokes: Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->invokeDismiss()V
    invoke-static {v0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->access$600(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)V

    goto :goto_0
.end method
