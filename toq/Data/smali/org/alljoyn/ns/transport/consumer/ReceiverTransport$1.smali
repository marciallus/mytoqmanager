.class Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$1;
.super Ljava/lang/Object;
.source "ReceiverTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->onReceivedNotification(Lorg/alljoyn/ns/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

.field final synthetic val$notification:Lorg/alljoyn/ns/Notification;


# direct methods
.method constructor <init>(Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;Lorg/alljoyn/ns/Notification;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$1;->this$0:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    iput-object p2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$1;->val$notification:Lorg/alljoyn/ns/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$1;->this$0:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    # getter for: Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->notificationReceiver:Lorg/alljoyn/ns/NotificationReceiver;
    invoke-static {v0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->access$000(Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;)Lorg/alljoyn/ns/NotificationReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$1;->val$notification:Lorg/alljoyn/ns/Notification;

    invoke-interface {v0, v1}, Lorg/alljoyn/ns/NotificationReceiver;->receive(Lorg/alljoyn/ns/Notification;)V

    .line 293
    return-void
.end method
