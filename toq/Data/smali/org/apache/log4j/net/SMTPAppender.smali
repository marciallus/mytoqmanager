.class public Lorg/apache/log4j/net/SMTPAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "SMTPAppender.java"

# interfaces
.implements Lorg/apache/log4j/xml/UnrecognizedElementHandler;


# static fields
.field static class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;


# instance fields
.field private bcc:Ljava/lang/String;

.field private bufferSize:I

.field protected cb:Lorg/apache/log4j/helpers/CyclicBuffer;

.field private cc:Ljava/lang/String;

.field protected evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

.field private from:Ljava/lang/String;

.field private locationInfo:Z

.field protected msg:Ljavax/mail/Message;

.field private replyTo:Ljava/lang/String;

.field private sendOnClose:Z

.field private smtpDebug:Z

.field private smtpHost:Ljava/lang/String;

.field private smtpPassword:Ljava/lang/String;

.field private smtpPort:I

.field private smtpProtocol:Ljava/lang/String;

.field private smtpUsername:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lorg/apache/log4j/net/DefaultEvaluator;

    invoke-direct {v0}, Lorg/apache/log4j/net/DefaultEvaluator;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/log4j/net/SMTPAppender;-><init>(Lorg/apache/log4j/spi/TriggeringEventEvaluator;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/spi/TriggeringEventEvaluator;)V
    .locals 2
    .param p1, "evaluator"    # Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPort:I

    .line 101
    iput-boolean v1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    .line 102
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    .line 103
    iput-boolean v1, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    .line 104
    iput-boolean v1, p0, Lorg/apache/log4j/net/SMTPAppender;->sendOnClose:Z

    .line 106
    new-instance v0, Lorg/apache/log4j/helpers/CyclicBuffer;

    iget v1, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    invoke-direct {v0, v1}, Lorg/apache/log4j/helpers/CyclicBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    .line 128
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .line 129
    return-void
.end method

.method static access$000(Lorg/apache/log4j/net/SMTPAppender;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/net/SMTPAppender;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    return-object v0
.end method

.method static access$100(Lorg/apache/log4j/net/SMTPAppender;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/net/SMTPAppender;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 550
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public activateOptions()V
    .locals 7

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->createSession()Ljavax/mail/Session;

    move-result-object v2

    .line 138
    .local v2, "session":Ljavax/mail/Session;
    new-instance v3, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v3, v2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    iput-object v3, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    .line 141
    :try_start_0
    iget-object v3, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    invoke-virtual {p0, v3}, Lorg/apache/log4j/net/SMTPAppender;->addressMessage(Ljavax/mail/Message;)V

    .line 142
    iget-object v3, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 144
    :try_start_1
    iget-object v3, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    iget-object v4, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    instance-of v3, v3, Lorg/apache/log4j/spi/OptionHandler;

    if-eqz v3, :cond_1

    .line 154
    iget-object v3, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    check-cast v3, Lorg/apache/log4j/spi/OptionHandler;

    invoke-interface {v3}, Lorg/apache/log4j/spi/OptionHandler;->activateOptions()V

    .line 156
    :cond_1
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v3, "Unable to encode SMTP subject"

    invoke-static {v3, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 149
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Ljavax/mail/MessagingException;
    const-string v3, "Could not activate SMTPAppender options."

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected addressMessage(Ljavax/mail/Message;)V
    .locals 2
    .param p1, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/net/SMTPAppender;->getAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 172
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->replyTo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->replyTo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->replyTo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/net/SMTPAppender;->parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->setReplyTo([Ljavax/mail/Address;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 177
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/net/SMTPAppender;->parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 182
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/net/SMTPAppender;->parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 186
    :cond_2
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 187
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/net/SMTPAppender;->parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 189
    :cond_3
    return-void

    .line 168
    :cond_4
    invoke-virtual {p1}, Ljavax/mail/Message;->setFrom()V

    goto :goto_0
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->checkEntryConditions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 249
    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 252
    :cond_2
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;->add(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 255
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    invoke-interface {v0, p1}, Lorg/apache/log4j/spi/TriggeringEventEvaluator;->isTriggeringEvent(Lorg/apache/log4j/spi/LoggingEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->sendBuffer()V

    goto :goto_0
.end method

.method protected checkEntryConditions()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v2, "Message object not configured."

    invoke-interface {v1, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    .line 284
    :goto_0
    return v0

    .line 273
    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    if-nez v1, :cond_1

    .line 274
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No TriggeringEventEvaluator is set for appender ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/net/SMTPAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->layout:Lorg/apache/log4j/Layout;

    if-nez v1, :cond_2

    .line 281
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No layout set for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/net/SMTPAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->closed:Z

    .line 292
    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->sendOnClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/CyclicBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->sendBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createSession()Ljavax/mail/Session;
    .locals 7

    .prologue
    .line 197
    const/4 v3, 0x0

    .line 199
    .local v3, "props":Ljava/util/Properties;
    :try_start_0
    new-instance v3, Ljava/util/Properties;

    .end local v3    # "props":Ljava/util/Properties;
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .restart local v3    # "props":Ljava/util/Properties;
    :goto_0
    const-string v2, "mail.smtp"

    .line 205
    .local v2, "prefix":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpProtocol:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 206
    const-string v5, "mail.transport.protocol"

    iget-object v6, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpProtocol:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "mail."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    :cond_0
    iget-object v5, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 210
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    iget v5, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPort:I

    if-lez v5, :cond_2

    .line 213
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".port"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPort:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_2
    const/4 v0, 0x0

    .line 217
    .local v0, "auth":Ljavax/mail/Authenticator;
    iget-object v5, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 218
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".auth"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Lorg/apache/log4j/net/SMTPAppender$1;

    .end local v0    # "auth":Ljavax/mail/Authenticator;
    invoke-direct {v0, p0}, Lorg/apache/log4j/net/SMTPAppender$1;-><init>(Lorg/apache/log4j/net/SMTPAppender;)V

    .line 225
    .restart local v0    # "auth":Ljavax/mail/Authenticator;
    :cond_3
    invoke-static {v3, v0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v4

    .line 226
    .local v4, "session":Ljavax/mail/Session;
    iget-object v5, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpProtocol:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 227
    const-string v5, "rfc822"

    iget-object v6, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpProtocol:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljavax/mail/Session;->setProtocolForAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_4
    iget-boolean v5, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    if-eqz v5, :cond_5

    .line 230
    iget-boolean v5, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    invoke-virtual {v4, v5}, Ljavax/mail/Session;->setDebug(Z)V

    .line 232
    :cond_5
    return-object v4

    .line 200
    .end local v0    # "auth":Ljavax/mail/Authenticator;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "props":Ljava/util/Properties;
    .end local v4    # "session":Ljavax/mail/Session;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/lang/SecurityException;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .restart local v3    # "props":Ljava/util/Properties;
    goto/16 :goto_0
.end method

.method protected formatBody()Ljava/lang/String;
    .locals 8

    .prologue
    .line 343
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 344
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    iget-object v7, p0, Lorg/apache/log4j/net/SMTPAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v7}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, "t":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    :cond_0
    iget-object v7, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v7}, Lorg/apache/log4j/helpers/CyclicBuffer;->length()I

    move-result v3

    .line 348
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 350
    iget-object v7, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v7}, Lorg/apache/log4j/helpers/CyclicBuffer;->get()Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v0

    .line 351
    .local v0, "event":Lorg/apache/log4j/spi/LoggingEvent;
    iget-object v7, p0, Lorg/apache/log4j/net/SMTPAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v7, v0}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    iget-object v7, p0, Lorg/apache/log4j/net/SMTPAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v7}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 353
    invoke-virtual {v0}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "s":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 355
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v7, v4

    if-ge v2, v7, :cond_1

    .line 356
    aget-object v7, v4, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    sget-object v7, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 348
    .end local v2    # "j":I
    .end local v4    # "s":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    :cond_2
    iget-object v7, p0, Lorg/apache/log4j/net/SMTPAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v7}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v6

    .line 363
    if-eqz v6, :cond_3

    .line 364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method getAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;
    .locals 4
    .param p1, "addressStr"    # Ljava/lang/String;

    .prologue
    .line 299
    :try_start_0
    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-object v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljavax/mail/internet/AddressException;
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not parse address ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 303
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    return v0
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public final getEvaluator()Lorg/apache/log4j/spi/TriggeringEventEvaluator;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    return-object v0
.end method

.method public getEvaluatorClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    return v0
.end method

.method public getReplyTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->replyTo:Ljava/lang/String;

    return-object v0
.end method

.method public getSMTPDebug()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    return v0
.end method

.method public getSMTPHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSMTPPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getSMTPPort()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPort:I

    return v0
.end method

.method public final getSMTPProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSMTPUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final getSendOnClose()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->sendOnClose:Z

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    return-object v0
.end method

.method parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 4
    .param p1, "addressStr"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 313
    :goto_0
    return-object v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljavax/mail/internet/AddressException;
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not parse address ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 313
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseUnrecognizedElement(Lorg/w3c/dom/Element;Ljava/util/Properties;)Z
    .locals 3
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 699
    const-string v1, "triggeringPolicy"

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 700
    sget-object v1, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.log4j.spi.TriggeringEventEvaluator"

    invoke-static {v1}, Lorg/apache/log4j/net/SMTPAppender;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    :goto_0
    invoke-static {p1, p2, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseElement(Lorg/w3c/dom/Element;Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 703
    .local v0, "triggerPolicy":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    if-eqz v1, :cond_0

    .line 704
    check-cast v0, Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .end local v0    # "triggerPolicy":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/net/SMTPAppender;->setEvaluator(Lorg/apache/log4j/spi/TriggeringEventEvaluator;)V

    .line 706
    :cond_0
    const/4 v1, 0x1

    .line 709
    :goto_1
    return v1

    .line 700
    :cond_1
    sget-object v1, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    goto :goto_0

    .line 709
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method protected sendBuffer()V
    .locals 14

    .prologue
    .line 377
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->formatBody()Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "s":Ljava/lang/String;
    const/4 v0, 0x1

    .line 379
    .local v0, "allAscii":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v4, v11, :cond_1

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x7f

    if-gt v11, v12, :cond_0

    const/4 v0, 0x1

    .line 379
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 380
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 383
    :cond_1
    if-eqz v0, :cond_2

    .line 384
    new-instance v7, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v7}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 385
    .local v7, "part":Ljavax/mail/internet/MimeBodyPart;
    iget-object v11, p0, Lorg/apache/log4j/net/SMTPAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v11}, Lorg/apache/log4j/Layout;->getContentType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    :goto_2
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v5}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 412
    .local v5, "mp":Ljavax/mail/Multipart;
    invoke-virtual {v5, v7}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 413
    iget-object v11, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    invoke-virtual {v11, v5}, Ljavax/mail/Message;->setContent(Ljavax/mail/Multipart;)V

    .line 415
    iget-object v11, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v12}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    .line 416
    iget-object v11, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    invoke-static {v11}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 422
    .end local v0    # "allAscii":Z
    .end local v4    # "i":I
    .end local v5    # "mp":Ljavax/mail/Multipart;
    .end local v7    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v8    # "s":Ljava/lang/String;
    :goto_3
    return-void

    .line 388
    .restart local v0    # "allAscii":Z
    .restart local v4    # "i":I
    .restart local v8    # "s":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 389
    .local v6, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/io/OutputStreamWriter;

    const-string v11, "quoted-printable"

    invoke-static {v6, v11}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 391
    .local v10, "writer":Ljava/io/Writer;
    invoke-virtual {v10, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v10}, Ljava/io/Writer;->close()V

    .line 393
    new-instance v3, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v3}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    .line 394
    .local v3, "headers":Ljavax/mail/internet/InternetHeaders;
    const-string v11, "Content-Type"

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v13, p0, Lorg/apache/log4j/net/SMTPAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v13}, Lorg/apache/log4j/Layout;->getContentType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "; charset=UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v11, "Content-Transfer-Encoding"

    const-string v12, "quoted-printable"

    invoke-virtual {v3, v11, v12}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v7, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v7, v3, v11}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .restart local v7    # "part":Ljavax/mail/internet/MimeBodyPart;
    goto :goto_2

    .line 397
    .end local v3    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v10    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v2

    .line 398
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 399
    .local v9, "sbuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 400
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    const/16 v12, 0x80

    if-lt v11, v12, :cond_3

    .line 401
    const/16 v11, 0x3f

    invoke-virtual {v9, v4, v11}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 399
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 404
    :cond_4
    new-instance v7, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v7}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 405
    .restart local v7    # "part":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/log4j/net/SMTPAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v12}, Lorg/apache/log4j/Layout;->getContentType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 417
    .end local v0    # "allAscii":Z
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v7    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "sbuf":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v1

    .line 418
    .local v1, "e":Ljavax/mail/MessagingException;
    const-string v11, "Error occured while sending e-mail notification."

    invoke-static {v11, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 419
    .end local v1    # "e":Ljavax/mail/MessagingException;
    :catch_2
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v11, "Error occured while sending e-mail notification."

    invoke-static {v11, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method public setBcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "addresses"    # Ljava/lang/String;

    .prologue
    .line 603
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public setBufferSize(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 499
    iput p1, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    .line 500
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;->resize(I)V

    .line 501
    return-void
.end method

.method public setCc(Ljava/lang/String;)V
    .locals 0
    .param p1, "addresses"    # Ljava/lang/String;

    .prologue
    .line 585
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    .line 586
    return-void
.end method

.method public final setEvaluator(Lorg/apache/log4j/spi/TriggeringEventEvaluator;)V
    .locals 2
    .param p1, "trigger"    # Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 680
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trigger"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .line 683
    return-void
.end method

.method public setEvaluatorClass(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 548
    sget-object v0, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.spi.TriggeringEventEvaluator"

    invoke-static {v0}, Lorg/apache/log4j/net/SMTPAppender;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    invoke-static {p1, v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    iput-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .line 552
    return-void

    .line 548
    :cond_0
    sget-object v0, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    goto :goto_0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "locationInfo"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    .line 569
    return-void
.end method

.method public setReplyTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "addresses"    # Ljava/lang/String;

    .prologue
    .line 476
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->replyTo:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setSMTPDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 643
    iput-boolean p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    .line 644
    return-void
.end method

.method public setSMTPHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "smtpHost"    # Ljava/lang/String;

    .prologue
    .line 509
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public setSMTPPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 622
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public final setSMTPPort(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 751
    iput p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPort:I

    .line 752
    return-void
.end method

.method public final setSMTPProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 731
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpProtocol:Ljava/lang/String;

    .line 732
    return-void
.end method

.method public setSMTPUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 632
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public final setSendOnClose(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 771
    iput-boolean p1, p0, Lorg/apache/log4j/net/SMTPAppender;->sendOnClose:Z

    .line 772
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 526
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    .line 527
    return-void
.end method
