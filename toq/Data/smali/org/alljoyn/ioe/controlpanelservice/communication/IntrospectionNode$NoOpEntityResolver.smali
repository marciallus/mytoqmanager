.class Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$NoOpEntityResolver;
.super Ljava/lang/Object;
.source "IntrospectionNode.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoOpEntityResolver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;


# direct methods
.method constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$NoOpEntityResolver;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 3
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
