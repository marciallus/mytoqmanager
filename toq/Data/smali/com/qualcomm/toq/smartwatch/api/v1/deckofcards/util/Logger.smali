.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final COMPILE_WITH_LOGGING_ENABLED:Z = true

.field private static isLoggingEnabled:Z

.field private static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    .line 26
    const-string v0, "DeckOfCards"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_0
    return-void
.end method

.method public static getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 121
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 132
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :cond_0
    return-void
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    return v0
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0
    .param p0, "isLoggingEnabled"    # Z

    .prologue
    .line 49
    sput-boolean p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    .line 50
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 69
    sput-object p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 153
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->isLoggingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_0
    return-void
.end method
