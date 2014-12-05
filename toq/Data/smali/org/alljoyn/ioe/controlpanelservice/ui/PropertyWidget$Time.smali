.class public Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;
.super Ljava/lang/Object;
.source "PropertyWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Time"
.end annotation


# static fields
.field public static final TYPE_CODE:S = 0x1s


# instance fields
.field private hour:S

.field private minute:S

.field private second:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;)S
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;

    .prologue
    .line 214
    iget-short v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->hour:S

    return v0
.end method

.method static synthetic access$302(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;S)S
    .locals 0
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;
    .param p1, "x1"    # S

    .prologue
    .line 214
    iput-short p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->hour:S

    return p1
.end method

.method static synthetic access$400(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;)S
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;

    .prologue
    .line 214
    iget-short v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->minute:S

    return v0
.end method

.method static synthetic access$402(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;S)S
    .locals 0
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;
    .param p1, "x1"    # S

    .prologue
    .line 214
    iput-short p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->minute:S

    return p1
.end method

.method static synthetic access$500(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;)S
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;

    .prologue
    .line 214
    iget-short v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->second:S

    return v0
.end method

.method static synthetic access$502(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;S)S
    .locals 0
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;
    .param p1, "x1"    # S

    .prologue
    .line 214
    iput-short p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->second:S

    return p1
.end method


# virtual methods
.method public getHour()S
    .locals 1

    .prologue
    .line 222
    iget-short v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->hour:S

    return v0
.end method

.method public getMinute()S
    .locals 1

    .prologue
    .line 228
    iget-short v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->minute:S

    return v0
.end method

.method public getSecond()S
    .locals 1

    .prologue
    .line 234
    iget-short v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->second:S

    return v0
.end method

.method public setHour(S)V
    .locals 0
    .param p1, "hour"    # S

    .prologue
    .line 225
    iput-short p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->hour:S

    .line 226
    return-void
.end method

.method public setMinute(S)V
    .locals 0
    .param p1, "minute"    # S

    .prologue
    .line 231
    iput-short p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->minute:S

    .line 232
    return-void
.end method

.method public setSecond(S)V
    .locals 0
    .param p1, "second"    # S

    .prologue
    .line 237
    iput-short p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->second:S

    .line 238
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->hour:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->minute:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->second:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
