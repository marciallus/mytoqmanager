.class public Lorg/apache/log4j/lf5/util/LogFileParser;
.super Ljava/lang/Object;
.source "LogFileParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ATTRIBUTE_DELIMITER:Ljava/lang/String; = "[slf5s."

.field public static final CATEGORY_DELIMITER:Ljava/lang/String; = "[slf5s.CATEGORY]"

.field public static final DATE_DELIMITER:Ljava/lang/String; = "[slf5s.DATE]"

.field public static final LOCATION_DELIMITER:Ljava/lang/String; = "[slf5s.LOCATION]"

.field public static final MESSAGE_DELIMITER:Ljava/lang/String; = "[slf5s.MESSAGE]"

.field public static final NDC_DELIMITER:Ljava/lang/String; = "[slf5s.NDC]"

.field public static final PRIORITY_DELIMITER:Ljava/lang/String; = "[slf5s.PRIORITY]"

.field public static final RECORD_DELIMITER:Ljava/lang/String; = "[slf5s.start]"

.field public static final THREAD_DELIMITER:Ljava/lang/String; = "[slf5s.THREAD]"

.field private static _sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private _in:Ljava/io/InputStream;

.field _loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

.field private _monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss,S"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/util/LogFileParser;->_sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/util/LogFileParser;-><init>(Ljava/io/InputStream;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    .line 83
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    .line 84
    return-void
.end method

.method static access$000(Lorg/apache/log4j/lf5/util/LogFileParser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/log4j/lf5/util/LogFileParser;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    return-void
.end method

.method private createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;
    .locals 3
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    .line 272
    :cond_1
    new-instance v0, Lorg/apache/log4j/lf5/Log4JLogRecord;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/Log4JLogRecord;-><init>()V

    .line 273
    .local v0, "lr":Lorg/apache/log4j/lf5/LogRecord;
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/lf5/LogRecord;->setMillis(J)V

    .line 274
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parsePriority(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 275
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setCategory(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setLocation(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setThreadDescription(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseNDC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setMessage(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseThrowable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setThrownStackTrace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private destroyDialog()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;->hide()V

    .line 172
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;->dispose()V

    .line 173
    return-void
.end method

.method private getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "record"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v1, "[slf5s."

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 289
    .local v0, "start":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 290
    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 295
    :goto_0
    return-object v1

    .line 293
    :cond_0
    const-string v1, "]"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 295
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private loadLogFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 181
    .local v0, "br":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 182
    .local v1, "count":I
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    .line 184
    .local v3, "size":I
    const/4 v2, 0x0

    .line 185
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-lez v3, :cond_0

    .line 186
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 191
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 192
    int-to-char v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 188
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2    # "sb":Ljava/lang/StringBuffer;
    const/16 v4, 0x400

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "record"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 206
    const/4 v1, 0x0

    .line 209
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/lf5/util/LogFileParser;->getAttribute(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private parseCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string v0, "[slf5s.CATEGORY]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 6
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, 0x0

    .line 214
    :try_start_0
    const-string v5, "[slf5s.DATE]"

    invoke-direct {p0, v5, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 224
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-wide v3

    .line 220
    .restart local v2    # "s":Ljava/lang/String;
    :cond_0
    sget-object v5, Lorg/apache/log4j/lf5/util/LogFileParser;->_sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 222
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 223
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/text/ParseException;
    goto :goto_0
.end method

.method private parseLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string v0, "[slf5s.LOCATION]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string v0, "[slf5s.MESSAGE]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseNDC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v0, "[slf5s.NDC]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parsePriority(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;
    .locals 3
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v2, "[slf5s.PRIORITY]"

    invoke-direct {p0, v2, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 233
    :try_start_0
    invoke-static {v1}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 240
    :goto_0
    return-object v2

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Lorg/apache/log4j/lf5/LogLevelFormatException;
    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    goto :goto_0

    .line 240
    .end local v0    # "e":Lorg/apache/log4j/lf5/LogLevelFormatException;
    :cond_0
    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    goto :goto_0
.end method

.method private parseThread(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "[slf5s.THREAD]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseThrowable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->getAttribute(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected displayError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    iget-object v1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    .line 165
    .local v0, "error":Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;
    return-void
.end method

.method public parse(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 96
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, "index":I
    const/4 v0, 0x0

    .line 109
    .local v0, "counter":I
    const/4 v3, 0x0

    .line 111
    .local v3, "isLogFile":Z
    new-instance v6, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    iget-object v7, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v7}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v7

    const-string v8, "Loading file..."

    invoke-direct {v6, v7, v8}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    .line 116
    :try_start_0
    iget-object v6, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    invoke-direct {p0, v6}, Lorg/apache/log4j/lf5/util/LogFileParser;->loadLogFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "logRecords":Ljava/lang/String;
    :goto_0
    const-string v6, "[slf5s.start]"

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 119
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/log4j/lf5/util/LogFileParser;->createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v5

    .line 120
    .local v5, "temp":Lorg/apache/log4j/lf5/LogRecord;
    const/4 v3, 0x1

    .line 122
    if-eqz v5, :cond_0

    .line 123
    iget-object v6, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v6, v5}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 126
    :cond_0
    const-string v6, "[slf5s.start]"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v2, v0, v6

    goto :goto_0

    .line 129
    .end local v5    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    if-eqz v3, :cond_2

    .line 130
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/log4j/lf5/util/LogFileParser;->createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v5

    .line 132
    .restart local v5    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    if-eqz v5, :cond_2

    .line 133
    iget-object v6, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v6, v5}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 137
    .end local v5    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    :cond_2
    if-nez v3, :cond_3

    .line 138
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid log file format"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v4    # "logRecords":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    .line 148
    const-string v6, "Error - Invalid log file format.\nPlease see documentation on how to load log files."

    invoke-virtual {p0, v6}, Lorg/apache/log4j/lf5/util/LogFileParser;->displayError(Ljava/lang/String;)V

    .line 155
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    .line 156
    return-void

    .line 140
    .restart local v4    # "logRecords":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v6, Lorg/apache/log4j/lf5/util/LogFileParser$1;

    invoke-direct {v6, p0}, Lorg/apache/log4j/lf5/util/LogFileParser$1;-><init>(Lorg/apache/log4j/lf5/util/LogFileParser;)V

    invoke-static {v6}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 150
    .end local v4    # "logRecords":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    .line 152
    const-string v6, "Error - Unable to load log file!"

    invoke-virtual {p0, v6}, Lorg/apache/log4j/lf5/util/LogFileParser;->displayError(Ljava/lang/String;)V

    goto :goto_1
.end method
