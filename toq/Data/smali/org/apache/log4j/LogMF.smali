.class public final Lorg/apache/log4j/LogMF;
.super Lorg/apache/log4j/LogXF;
.source "LogMF.java"


# static fields
.field private static final FQCN:Ljava/lang/String;

.field static class$org$apache$log4j$LogMF:Ljava/lang/Class;

.field private static dateFormat:Ljava/text/DateFormat;

.field private static dateLocale:Ljava/util/Locale;

.field private static numberFormat:Ljava/text/NumberFormat;

.field private static numberLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lorg/apache/log4j/LogMF;->numberFormat:Ljava/text/NumberFormat;

    .line 60
    sput-object v0, Lorg/apache/log4j/LogMF;->numberLocale:Ljava/util/Locale;

    .line 64
    sput-object v0, Lorg/apache/log4j/LogMF;->dateFormat:Ljava/text/DateFormat;

    .line 68
    sput-object v0, Lorg/apache/log4j/LogMF;->dateLocale:Ljava/util/Locale;

    .line 270
    sget-object v0, Lorg/apache/log4j/LogMF;->class$org$apache$log4j$LogMF:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.LogMF"

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/LogMF;->class$org$apache$log4j$LogMF:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/LogMF;->FQCN:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/LogMF;->class$org$apache$log4j$LogMF:Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/log4j/LogXF;-><init>()V

    .line 51
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 270
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

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # B

    .prologue
    .line 677
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 680
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # C

    .prologue
    .line 664
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 667
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # D

    .prologue
    .line 742
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 745
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # F

    .prologue
    .line 729
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 732
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # I

    .prologue
    .line 703
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 706
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # J

    .prologue
    .line 716
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 719
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 755
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 758
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 769
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 773
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 785
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 789
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 803
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 807
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # S

    .prologue
    .line 690
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 693
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Z

    .prologue
    .line 651
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 654
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 321
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 324
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 406
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    :cond_0
    return-void
.end method

.method public static error(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 360
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method public static error(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 454
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    :cond_0
    return-void
.end method

.method public static fatal(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 373
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 376
    :cond_0
    return-void
.end method

.method public static fatal(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 470
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    :cond_0
    return-void
.end method

.method private static forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V
    .locals 6
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogMF;->FQCN:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 283
    return-void
.end method

.method private static forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 297
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogMF;->FQCN:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 298
    return-void
.end method

.method private static format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    const/16 v8, 0x7b

    .line 200
    if-nez p0, :cond_0

    .line 201
    const/4 v5, 0x0

    .line 234
    :goto_0
    return-object v5

    .line 202
    :cond_0
    invoke-static {p0}, Lorg/apache/log4j/LogMF;->isSimple(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "formatted":Ljava/lang/String;
    const/4 v4, 0x0

    .line 205
    .local v4, "prev":I
    const-string v5, ""

    .line 206
    .local v5, "retval":Ljava/lang/String;
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 207
    .local v3, "pos":I
    :goto_1
    if-ltz v3, :cond_4

    .line 208
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_3

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_3

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-gt v6, v7, :cond_3

    .line 212
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v2, v6, -0x30

    .line 213
    .local v2, "index":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 214
    if-eqz v2, :cond_1

    .line 215
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    :goto_2
    add-int/lit8 v4, v3, 0x3

    .line 223
    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 224
    goto :goto_1

    .line 217
    :cond_1
    if-nez v1, :cond_2

    .line 218
    invoke-static {p1}, Lorg/apache/log4j/LogMF;->formatObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 225
    .end local v2    # "index":I
    :cond_3
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto/16 :goto_1

    .line 228
    :cond_4
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    goto/16 :goto_0

    .line 232
    .end local v1    # "formatted":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "prev":I
    .end local v5    # "retval":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 233
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    move-object v5, p0

    .line 234
    goto/16 :goto_0
.end method

.method private static format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "resourceBundleName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 252
    if-eqz p0, :cond_0

    .line 254
    :try_start_0
    invoke-static {p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 256
    .local v0, "bundle":Ljava/util/ResourceBundle;
    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 263
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    .local v2, "pattern":Ljava/lang/String;
    :goto_0
    invoke-static {v2, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 257
    .end local v2    # "pattern":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 258
    .local v1, "ex":Ljava/lang/Exception;
    move-object v2, p1

    .line 259
    .restart local v2    # "pattern":Ljava/lang/String;
    goto :goto_0

    .line 261
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_0
    move-object v2, p1

    .restart local v2    # "pattern":Ljava/lang/String;
    goto :goto_0
.end method

.method private static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    .prologue
    const/16 v8, 0x7b

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v5, 0x0

    .line 188
    :goto_0
    return-object v5

    .line 156
    :cond_0
    invoke-static {p0}, Lorg/apache/log4j/LogMF;->isSimple(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 157
    const/16 v6, 0xa

    new-array v1, v6, [Ljava/lang/String;

    .line 158
    .local v1, "formatted":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 159
    .local v4, "prev":I
    const-string v5, ""

    .line 160
    .local v5, "retval":Ljava/lang/String;
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 161
    .local v3, "pos":I
    :goto_1
    if-ltz v3, :cond_5

    .line 162
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    .line 166
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v2, v6, -0x30

    .line 167
    .local v2, "index":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 168
    aget-object v6, v1, v2

    if-nez v6, :cond_2

    .line 169
    if-eqz p1, :cond_1

    array-length v6, p1

    if-lt v2, v6, :cond_3

    .line 170
    :cond_1
    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 175
    :cond_2
    :goto_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    add-int/lit8 v4, v3, 0x3

    .line 177
    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 178
    goto :goto_1

    .line 172
    :cond_3
    aget-object v6, p1, v2

    invoke-static {v6}, Lorg/apache/log4j/LogMF;->formatObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    goto :goto_2

    .line 179
    .end local v2    # "index":I
    :cond_4
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_1

    .line 182
    :cond_5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    goto/16 :goto_0

    .line 186
    .end local v1    # "formatted":[Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "prev":I
    .end local v5    # "retval":Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 187
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    move-object v5, p0

    .line 188
    goto/16 :goto_0
.end method

.method private static declared-synchronized formatDate(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "d"    # Ljava/lang/Object;

    .prologue
    .line 91
    const-class v2, Lorg/apache/log4j/LogMF;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 92
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Lorg/apache/log4j/LogMF;->dateLocale:Ljava/util/Locale;

    if-ne v0, v1, :cond_0

    sget-object v1, Lorg/apache/log4j/LogMF;->dateFormat:Ljava/text/DateFormat;

    if-nez v1, :cond_1

    .line 93
    :cond_0
    sput-object v0, Lorg/apache/log4j/LogMF;->dateLocale:Ljava/util/Locale;

    .line 94
    const/4 v1, 0x3

    const/4 v3, 0x3

    invoke-static {v1, v3, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/LogMF;->dateFormat:Ljava/text/DateFormat;

    .line 99
    :cond_1
    sget-object v1, Lorg/apache/log4j/LogMF;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 91
    .end local v0    # "currentLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized formatNumber(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # Ljava/lang/Object;

    .prologue
    .line 76
    const-class v2, Lorg/apache/log4j/LogMF;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 77
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Lorg/apache/log4j/LogMF;->numberLocale:Ljava/util/Locale;

    if-ne v0, v1, :cond_0

    sget-object v1, Lorg/apache/log4j/LogMF;->numberFormat:Ljava/text/NumberFormat;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    sput-object v0, Lorg/apache/log4j/LogMF;->numberLocale:Ljava/util/Locale;

    .line 79
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/LogMF;->numberFormat:Ljava/text/NumberFormat;

    .line 81
    :cond_1
    sget-object v1, Lorg/apache/log4j/LogMF;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 76
    .end local v0    # "currentLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static formatObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 109
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 111
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 113
    :cond_1
    invoke-static {p0}, Lorg/apache/log4j/LogMF;->formatNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 115
    invoke-static {p0}, Lorg/apache/log4j/LogMF;->formatDate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # B

    .prologue
    .line 843
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 846
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # C

    .prologue
    .line 830
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 833
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # D

    .prologue
    .line 908
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 911
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # F

    .prologue
    .line 895
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 898
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # I

    .prologue
    .line 869
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 872
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # J

    .prologue
    .line 882
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 885
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 921
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 924
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 935
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 938
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 950
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 954
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 968
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 972
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # S

    .prologue
    .line 856
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 859
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Z

    .prologue
    .line 817
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 820
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 422
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    :cond_0
    return-void
.end method

.method private static isSimple(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x7b

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 129
    const/16 v2, 0x27

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 133
    .local v0, "pos":I
    :goto_1
    if-eq v0, v4, :cond_2

    .line 135
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 134
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_1

    .line 142
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;B)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # B

    .prologue
    .line 1222
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-static {p3}, Lorg/apache/log4j/LogMF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1226
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;C)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # C

    .prologue
    .line 1240
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    invoke-static {p3}, Lorg/apache/log4j/LogMF;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1244
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;D)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # D

    .prologue
    .line 1328
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    invoke-static {p3, p4}, Lorg/apache/log4j/LogMF;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1332
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;F)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # F

    .prologue
    .line 1310
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    invoke-static {p3}, Lorg/apache/log4j/LogMF;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1314
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;I)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # I

    .prologue
    .line 1274
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    invoke-static {p3}, Lorg/apache/log4j/LogMF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1278
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;J)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # J

    .prologue
    .line 1292
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    invoke-static {p3, p4}, Lorg/apache/log4j/LogMF;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1296
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    .prologue
    .line 1187
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    invoke-static {p3}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1191
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1347
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    invoke-static {p3, p4}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1351
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1366
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-static {p3, p4, p5}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1370
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;
    .param p6, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 1387
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    invoke-static {p3, p4, p5, p6}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1391
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;S)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # S

    .prologue
    .line 1257
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1258
    invoke-static {p3}, Lorg/apache/log4j/LogMF;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1261
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # Z

    .prologue
    .line 1204
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    invoke-static {p3}, Lorg/apache/log4j/LogMF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1208
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 1151
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1155
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 1170
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    invoke-static {p3, p4}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1174
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # B

    .prologue
    .line 1504
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    invoke-static {p4}, Lorg/apache/log4j/LogMF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1508
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # C

    .prologue
    .line 1485
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    invoke-static {p4}, Lorg/apache/log4j/LogMF;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1489
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # D

    .prologue
    .line 1599
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    invoke-static {p4, p5}, Lorg/apache/log4j/LogMF;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1603
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # F

    .prologue
    .line 1579
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    invoke-static {p4}, Lorg/apache/log4j/LogMF;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1583
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # I

    .prologue
    .line 1542
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    invoke-static {p4}, Lorg/apache/log4j/LogMF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1546
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # J

    .prologue
    .line 1561
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    invoke-static {p4, p5}, Lorg/apache/log4j/LogMF;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1565
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # Ljava/lang/Object;

    .prologue
    .line 1447
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    invoke-static {p4}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1451
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param0"    # Ljava/lang/Object;
    .param p5, "param1"    # Ljava/lang/Object;

    .prologue
    .line 1620
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    invoke-static {p4, p5}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1624
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param0"    # Ljava/lang/Object;
    .param p5, "param1"    # Ljava/lang/Object;
    .param p6, "param2"    # Ljava/lang/Object;

    .prologue
    .line 1644
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    invoke-static {p4, p5, p6}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1648
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param0"    # Ljava/lang/Object;
    .param p5, "param1"    # Ljava/lang/Object;
    .param p6, "param2"    # Ljava/lang/Object;
    .param p7, "param3"    # Ljava/lang/Object;

    .prologue
    .line 1670
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    invoke-static {p4, p5, p6, p7}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1675
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # S

    .prologue
    .line 1523
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    invoke-static {p4}, Lorg/apache/log4j/LogMF;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1527
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # Z

    .prologue
    .line 1466
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    invoke-static {p4}, Lorg/apache/log4j/LogMF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1470
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 1407
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1411
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bundleName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 1428
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    invoke-static {p3, p4, p5}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1432
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # B

    .prologue
    .line 511
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 514
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # C

    .prologue
    .line 498
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 501
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # D

    .prologue
    .line 576
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 579
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # F

    .prologue
    .line 563
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 566
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # I

    .prologue
    .line 537
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 540
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # J

    .prologue
    .line 550
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 553
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 589
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 592
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 603
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 607
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 619
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 623
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 637
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 641
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # S

    .prologue
    .line 524
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 527
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Z

    .prologue
    .line 485
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 488
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 308
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 311
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 390
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    sget-object v0, Lorg/apache/log4j/LogMF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # B

    .prologue
    .line 1008
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1011
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # C

    .prologue
    .line 995
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 998
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # D

    .prologue
    .line 1073
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1076
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # F

    .prologue
    .line 1060
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1063
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # I

    .prologue
    .line 1034
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1037
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # J

    .prologue
    .line 1047
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1050
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 1086
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1089
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1100
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1104
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1116
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1120
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 1134
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogMF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1138
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # S

    .prologue
    .line 1021
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1024
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Z

    .prologue
    .line 982
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogMF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 985
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 347
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 350
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 438
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogMF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogMF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    :cond_0
    return-void
.end method
