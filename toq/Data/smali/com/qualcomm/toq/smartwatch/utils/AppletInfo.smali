.class public Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;
.super Ljava/lang/Object;
.source "AppletInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isHomeTitle:Z

.field private tagIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagIndex()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->tagIndex:I

    return v0
.end method

.method public isHomeTitle()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->isHomeTitle:Z

    return v0
.end method

.method public setHomeTitle(Z)V
    .locals 0
    .param p1, "isHomeTitle"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->isHomeTitle:Z

    .line 27
    return-void
.end method

.method public setTagIndex(I)V
    .locals 0
    .param p1, "tagIndex"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->tagIndex:I

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->tagIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->isHomeTitle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
