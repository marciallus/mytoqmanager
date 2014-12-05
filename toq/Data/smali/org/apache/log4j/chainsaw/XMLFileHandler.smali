.class Lorg/apache/log4j/chainsaw/XMLFileHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLFileHandler.java"


# static fields
.field private static final TAG_EVENT:Ljava/lang/String; = "log4j:event"

.field private static final TAG_LOCATION_INFO:Ljava/lang/String; = "log4j:locationInfo"

.field private static final TAG_MESSAGE:Ljava/lang/String; = "log4j:message"

.field private static final TAG_NDC:Ljava/lang/String; = "log4j:NDC"

.field private static final TAG_THROWABLE:Ljava/lang/String; = "log4j:throwable"


# instance fields
.field private final mBuf:Ljava/lang/StringBuffer;

.field private mCategoryName:Ljava/lang/String;

.field private mLevel:Lorg/apache/log4j/Level;

.field private mLocationDetails:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private final mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

.field private mNDC:Ljava/lang/String;

.field private mNumEvents:I

.field private mThreadName:Ljava/lang/String;

.field private mThrowableStrRep:[Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 1
    .param p1, "aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    .line 76
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 77
    return-void
.end method

.method private addEvent()V
    .locals 11

    .prologue
    .line 148
    iget-object v10, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    new-instance v0, Lorg/apache/log4j/chainsaw/EventDetails;

    iget-wide v1, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mTimeStamp:J

    iget-object v3, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLevel:Lorg/apache/log4j/Level;

    iget-object v4, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mCategoryName:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNDC:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThreadName:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mMessage:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLocationDetails:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lorg/apache/log4j/chainsaw/EventDetails;-><init>(JLorg/apache/log4j/Priority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->addEvent(Lorg/apache/log4j/chainsaw/EventDetails;)V

    .line 156
    iget v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNumEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNumEvents:I

    .line 157
    return-void
.end method

.method private resetData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mTimeStamp:J

    .line 162
    iput-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLevel:Lorg/apache/log4j/Level;

    .line 163
    iput-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mCategoryName:Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNDC:Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThreadName:Ljava/lang/String;

    .line 166
    iput-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mMessage:Ljava/lang/String;

    .line 167
    iput-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLocationDetails:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "aChars"    # [C
    .param p2, "aStart"    # I
    .param p3, "aLength"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "aNamespaceURI"    # Ljava/lang/String;
    .param p2, "aLocalName"    # Ljava/lang/String;
    .param p3, "aQName"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v2, "log4j:event"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-direct {p0}, Lorg/apache/log4j/chainsaw/XMLFileHandler;->addEvent()V

    .line 98
    invoke-direct {p0}, Lorg/apache/log4j/chainsaw/XMLFileHandler;->resetData()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v2, "log4j:NDC"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNDC:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_2
    const-string v2, "log4j:message"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_3
    const-string v2, "log4j:throwable"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n\t"

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 108
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 109
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 110
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getNumEvents()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNumEvents:I

    return v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNumEvents:I

    .line 84
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "aNamespaceURI"    # Ljava/lang/String;
    .param p2, "aLocalName"    # Ljava/lang/String;
    .param p3, "aQName"    # Ljava/lang/String;
    .param p4, "aAtts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 124
    const-string v0, "log4j:event"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "thread"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThreadName:Ljava/lang/String;

    .line 126
    const-string v0, "timestamp"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mTimeStamp:J

    .line 127
    const-string v0, "logger"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mCategoryName:Ljava/lang/String;

    .line 128
    const-string v0, "level"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;)Lorg/apache/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLevel:Lorg/apache/log4j/Level;

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v0, "log4j:locationInfo"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "class"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "method"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "file"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "line"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLocationDetails:Ljava/lang/String;

    goto :goto_0
.end method
