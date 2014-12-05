.class public Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;
.super Ljava/lang/Object;
.source "ListPropertyWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field private label:Ljava/lang/String;

.field private recordId:S


# direct methods
.method private constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "recordId"    # S
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-short p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;->recordId:S

    .line 69
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;->label:Ljava/lang/String;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(SLjava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$1;)V
    .locals 0
    .param p1, "x0"    # S
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$1;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;-><init>(SLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()S
    .locals 1

    .prologue
    .line 73
    iget-short v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;->recordId:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;->recordId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
