.class public Lorg/apache/log4j/varia/LevelMatchFilter;
.super Lorg/apache/log4j/spi/Filter;
.source "LevelMatchFilter.java"


# instance fields
.field acceptOnMatch:Z

.field levelToMatch:Lorg/apache/log4j/Level;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/log4j/spi/Filter;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->acceptOnMatch:Z

    return-void
.end method


# virtual methods
.method public decide(Lorg/apache/log4j/spi/LoggingEvent;)I
    .locals 4
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->levelToMatch:Lorg/apache/log4j/Level;

    if-nez v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 91
    .local v0, "matchOccured":Z
    iget-object v2, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->levelToMatch:Lorg/apache/log4j/Level;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Level;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    const/4 v0, 0x1

    .line 95
    :cond_2
    if-eqz v0, :cond_0

    .line 96
    iget-boolean v1, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->acceptOnMatch:Z

    if-eqz v1, :cond_3

    .line 97
    const/4 v1, 0x1

    goto :goto_0

    .line 99
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAcceptOnMatch()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->acceptOnMatch:Z

    return v0
.end method

.method public getLevelToMatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->levelToMatch:Lorg/apache/log4j/Level;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->levelToMatch:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAcceptOnMatch(Z)V
    .locals 0
    .param p1, "acceptOnMatch"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->acceptOnMatch:Z

    .line 65
    return-void
.end method

.method public setLevelToMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/varia/LevelMatchFilter;->levelToMatch:Lorg/apache/log4j/Level;

    .line 55
    return-void
.end method
