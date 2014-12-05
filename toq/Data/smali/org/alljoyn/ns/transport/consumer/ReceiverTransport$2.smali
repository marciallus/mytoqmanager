.class Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$2;
.super Ljava/lang/Object;
.source "ReceiverTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->onReceivedNotificationDismiss(ILjava/util/UUID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

.field final synthetic val$appId:Ljava/util/UUID;

.field final synthetic val$msgId:I


# direct methods
.method constructor <init>(Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;ILjava/util/UUID;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$2;->this$0:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    iput p2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$2;->val$msgId:I

    iput-object p3, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$2;->val$appId:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$2;->this$0:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    # getter for: Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->notificationReceiver:Lorg/alljoyn/ns/NotificationReceiver;
    invoke-static {v0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->access$000(Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;)Lorg/alljoyn/ns/NotificationReceiver;

    move-result-object v0

    iget v1, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$2;->val$msgId:I

    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$2;->val$appId:Ljava/util/UUID;

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/NotificationReceiver;->dismiss(ILjava/util/UUID;)V

    .line 318
    return-void
.end method
