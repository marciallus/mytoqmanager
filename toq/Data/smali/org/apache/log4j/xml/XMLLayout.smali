.class public Lorg/apache/log4j/xml/XMLLayout;
.super Lorg/apache/log4j/Layout;
.source "XMLLayout.java"


# instance fields
.field private final DEFAULT_SIZE:I

.field private final UPPER_LIMIT:I

.field private buf:Ljava/lang/StringBuffer;

.field private locationInfo:Z

.field private properties:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lorg/apache/log4j/Layout;-><init>()V

    .line 70
    iput v2, p0, Lorg/apache/log4j/xml/XMLLayout;->DEFAULT_SIZE:I

    .line 71
    const/16 v0, 0x800

    iput v0, p0, Lorg/apache/log4j/xml/XMLLayout;->UPPER_LIMIT:I

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    .line 74
    iput-boolean v1, p0, Lorg/apache/log4j/xml/XMLLayout;->locationInfo:Z

    .line 75
    iput-boolean v1, p0, Lorg/apache/log4j/xml/XMLLayout;->properties:Z

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 11
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 129
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->capacity()I

    move-result v8

    const/16 v9, 0x800

    if-le v8, v9, :cond_1

    .line 130
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v9, 0x100

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    .line 137
    :goto_0
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "<log4j:event logger=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\" timestamp=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    iget-wide v9, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 141
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\" level=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\" thread=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\">\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "<log4j:message><![CDATA["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/log4j/helpers/Transform;->appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 151
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "]]></log4j:message>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "ndc":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 155
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "<log4j:NDC><![CDATA["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-static {v8, v5}, Lorg/apache/log4j/helpers/Transform;->appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 157
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "]]></log4j:NDC>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "s":[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 162
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "<log4j:throwable><![CDATA["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v8, v6

    if-ge v0, v8, :cond_2

    .line 164
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    aget-object v9, v6, v0

    invoke-static {v8, v9}, Lorg/apache/log4j/helpers/Transform;->appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 165
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "i":I
    .end local v5    # "ndc":Ljava/lang/String;
    .end local v6    # "s":[Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 167
    .restart local v0    # "i":I
    .restart local v5    # "ndc":Ljava/lang/String;
    .restart local v6    # "s":[Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "]]></log4j:throwable>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    .end local v0    # "i":I
    :cond_3
    iget-boolean v8, p0, Lorg/apache/log4j/xml/XMLLayout;->locationInfo:Z

    if-eqz v8, :cond_4

    .line 171
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v4

    .line 172
    .local v4, "locationInfo":Lorg/apache/log4j/spi/LocationInfo;
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "<log4j:locationInfo class=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/log4j/spi/LocationInfo;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\" method=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/log4j/spi/LocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\" file=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/log4j/spi/LocationInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\" line=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/log4j/spi/LocationInfo;->getLineNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\"/>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    .end local v4    # "locationInfo":Lorg/apache/log4j/spi/LocationInfo;
    :cond_4
    iget-boolean v8, p0, Lorg/apache/log4j/xml/XMLLayout;->properties:Z

    if-eqz v8, :cond_7

    .line 184
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getPropertyKeySet()Ljava/util/Set;

    move-result-object v2

    .line 185
    .local v2, "keySet":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 186
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "<log4j:properties>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 188
    .local v3, "keys":[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 189
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v8, v3

    if-ge v0, v8, :cond_6

    .line 190
    aget-object v8, v3, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 192
    .local v7, "val":Ljava/lang/Object;
    if-eqz v7, :cond_5

    .line 193
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "<log4j:data name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-static {v1}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\" value=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "\"/>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 200
    .end local v1    # "key":Ljava/lang/String;
    .end local v7    # "val":Ljava/lang/Object;
    :cond_6
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "</log4j:properties>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    .end local v0    # "i":I
    .end local v2    # "keySet":Ljava/util/Set;
    .end local v3    # "keys":[Ljava/lang/Object;
    :cond_7
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v9, "</log4j:event>\r\n\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    iget-object v8, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public getLocationInfo()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/apache/log4j/xml/XMLLayout;->locationInfo:Z

    return v0
.end method

.method public getProperties()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/apache/log4j/xml/XMLLayout;->properties:Z

    return v0
.end method

.method public ignoresThrowable()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/apache/log4j/xml/XMLLayout;->locationInfo:Z

    .line 90
    return-void
.end method

.method public setProperties(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lorg/apache/log4j/xml/XMLLayout;->properties:Z

    .line 106
    return-void
.end method
