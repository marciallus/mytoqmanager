.class Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "IntrospectionNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntrospectionParser"
.end annotation


# instance fields
.field private currentNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

.field private sawRootNode:Z

.field private saxParser:Ljavax/xml/parsers/SAXParser;

.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 57
    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 58
    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->saxParser:Ljavax/xml/parsers/SAXParser;

    .line 60
    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->currentNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    .line 61
    iput-boolean v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->sawRootNode:Z

    .line 64
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 65
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 66
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->saxParser:Ljavax/xml/parsers/SAXParser;

    .line 67
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->saxParser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 68
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 69
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->xmlReader:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$NoOpEntityResolver;

    invoke-direct {v2, p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$NoOpEntityResolver;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 70
    return-void
.end method

.method private getNameAttr(Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 99
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "inner node without a name"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public parse(Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;Ljava/lang/String;)V
    .locals 4
    .param p1, "node"    # Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    .param p2, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->currentNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->sawRootNode:Z

    .line 76
    :try_start_0
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->xmlReader:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->currentNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    .line 81
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "cantReallyHappen":Ljava/io/IOException;
    const-string v1, "IntrospectionNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read the XML: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, "node"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->sawRootNode:Z

    if-nez v0, :cond_1

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->sawRootNode:Z

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->currentNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    invoke-direct {p0, p4}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->getNameAttr(Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->addChild(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "interface"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->currentNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    if-nez v0, :cond_3

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "interface not in node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->currentNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->interfaces:Ljava/util/List;
    invoke-static {v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->access$000(Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p4}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->getNameAttr(Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
