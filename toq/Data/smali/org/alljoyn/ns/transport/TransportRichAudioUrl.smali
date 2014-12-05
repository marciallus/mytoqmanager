.class public Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
.super Ljava/lang/Object;
.source "TransportRichAudioUrl.java"


# instance fields
.field public language:Ljava/lang/String;
    .annotation runtime Lorg/alljoyn/bus/annotation/Position;
        value = 0x0
    .end annotation
.end field

.field public url:Ljava/lang/String;
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
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/alljoyn/ns/transport/TransportRichAudioUrl;->language:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/alljoyn/ns/transport/TransportRichAudioUrl;->url:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static buildInstance(Lorg/alljoyn/ns/RichAudioUrl;)Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    .locals 3
    .param p0, "richAudioUrl"    # Lorg/alljoyn/ns/RichAudioUrl;

    .prologue
    .line 61
    new-instance v0, Lorg/alljoyn/ns/transport/TransportRichAudioUrl;

    invoke-virtual {p0}, Lorg/alljoyn/ns/RichAudioUrl;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/alljoyn/ns/RichAudioUrl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/ns/transport/TransportRichAudioUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
