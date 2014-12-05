.class public Lorg/apache/log4j/xml/SAXErrorHandler;
.super Ljava/lang/Object;
.source "SAXErrorHandler.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " and column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 28
    const-string v0, "Continuable parsing error "

    invoke-static {v0, p1}, Lorg/apache/log4j/xml/SAXErrorHandler;->emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    .line 29
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 33
    const-string v0, "Fatal parsing error "

    invoke-static {v0, p1}, Lorg/apache/log4j/xml/SAXErrorHandler;->emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    .line 34
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 38
    const-string v0, "Parsing warning "

    invoke-static {v0, p1}, Lorg/apache/log4j/xml/SAXErrorHandler;->emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    .line 39
    return-void
.end method
