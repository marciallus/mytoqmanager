.class public Lorg/alljoyn/ns/transport/TransportNotificationText;
.super Ljava/lang/Object;
.source "TransportNotificationText.java"


# instance fields
.field public language:Ljava/lang/String;
    .annotation runtime Lorg/alljoyn/bus/annotation/Position;
        value = 0x0
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lorg/alljoyn/bus/annotation/Position;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/alljoyn/ns/transport/TransportNotificationText;->language:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/alljoyn/ns/transport/TransportNotificationText;->text:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static buildInstance(Lorg/alljoyn/ns/NotificationText;)Lorg/alljoyn/ns/transport/TransportNotificationText;
    .locals 3
    .param p0, "notifText"    # Lorg/alljoyn/ns/NotificationText;

    .prologue
    .line 61
    new-instance v0, Lorg/alljoyn/ns/transport/TransportNotificationText;

    invoke-virtual {p0}, Lorg/alljoyn/ns/NotificationText;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/alljoyn/ns/NotificationText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/ns/transport/TransportNotificationText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v0, "trNotTxt":Lorg/alljoyn/ns/transport/TransportNotificationText;
    return-object v0
.end method
