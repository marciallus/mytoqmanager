.class Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl$1;
.super Ljava/lang/Object;
.source "NotificationProducerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->dismiss(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

.field final synthetic val$msgId:I


# direct methods
.method constructor <init>(Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;I)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl$1;->this$0:Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

    iput p2, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl$1;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl$1;->this$0:Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

    # getter for: Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;
    invoke-static {v0}, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->access$000(Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;)Lorg/alljoyn/ns/transport/producer/SenderTransport;

    move-result-object v0

    iget v1, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl$1;->val$msgId:I

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/transport/producer/SenderTransport;->dismiss(I)V

    .line 90
    return-void
.end method
