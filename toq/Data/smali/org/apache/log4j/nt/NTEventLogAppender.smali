.class public Lorg/apache/log4j/nt/NTEventLogAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "NTEventLogAppender.java"


# instance fields
.field private _handle:I

.field private server:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 164
    const/4 v4, 0x1

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "os.arch"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .local v0, "archs":[Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 169
    .local v3, "loaded":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 171
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "NTEventLogAppender."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    const/4 v3, 0x1

    .line 178
    :cond_0
    if-nez v3, :cond_1

    .line 179
    const-string v4, "NTEventLogAppender"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 181
    :cond_1
    return-void

    .line 165
    .end local v0    # "archs":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "loaded":Z
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "amd64"

    aput-object v4, v0, v6

    const-string v4, "ia64"

    aput-object v4, v0, v7

    const/4 v4, 0x2

    const-string v5, "x86"

    aput-object v5, v0, v4

    .restart local v0    # "archs":[Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "i":I
    .restart local v3    # "loaded":Z
    :catch_1
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v3, 0x0

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, p1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "layout"    # Lorg/apache/log4j/Layout;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 42
    iput v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    .line 44
    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    .line 69
    if-nez p2, :cond_0

    .line 70
    const-string p2, "Log4j"

    .line 72
    :cond_0
    if-nez p3, :cond_1

    .line 73
    new-instance v1, Lorg/apache/log4j/TTCCLayout;

    invoke-direct {v1}, Lorg/apache/log4j/TTCCLayout;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->layout:Lorg/apache/log4j/Layout;

    .line 79
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_1
    return-void

    .line 75
    :cond_1
    iput-object p3, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->layout:Lorg/apache/log4j/Layout;

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    iput v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "layout"    # Lorg/apache/log4j/Layout;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v0, p1}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 62
    return-void
.end method

.method private native deregisterEventSource(I)V
.end method

.method private native registerEventSource(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native reportEvent(ILjava/lang/String;I)V
.end method


# virtual methods
.method public activateOptions()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not register event source."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    goto :goto_0
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 7
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 106
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v5, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "s":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 112
    array-length v1, v3

    .line 113
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 114
    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v3    # "s":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/log4j/Level;->toInt()I

    move-result v2

    .line 125
    .local v2, "nt_category":I
    iget v5, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v2}, Lorg/apache/log4j/nt/NTEventLogAppender;->reportEvent(ILjava/lang/String;I)V

    .line 126
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-direct {p0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->deregisterEventSource(I)V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    .line 133
    return-void
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    .line 142
    return-void
.end method
