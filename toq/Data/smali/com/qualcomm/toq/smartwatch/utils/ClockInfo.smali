.class public Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
.super Ljava/lang/Object;
.source "ClockInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7f8f931a3ea9a13bL


# instance fields
.field private appZipName:Ljava/lang/String;

.field private assetFileName:Ljava/lang/String;

.field private clockType:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private iconName:Ljava/lang/String;

.field private jsonName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppZipName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->appZipName:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->assetFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getClockType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->clockType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->jsonName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppZipName(Ljava/lang/String;)V
    .locals 0
    .param p1, "asset"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->appZipName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setAssetFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->assetFileName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setClockType(Ljava/lang/String;)V
    .locals 0
    .param p1, "clockType"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->clockType:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->displayName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setIconName(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->iconName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setJsonName(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->jsonName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->packageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->appZipName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , iconName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->iconName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clocktype= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->clockType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " json Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->jsonName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
