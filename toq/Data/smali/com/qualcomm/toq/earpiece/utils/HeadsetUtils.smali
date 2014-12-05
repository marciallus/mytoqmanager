.class public Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;
.super Ljava/lang/Object;
.source "HeadsetUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetUtils"

.field static mInstance:Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->mInstance:Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeadsetUtils()Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->mInstance:Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;

    invoke-direct {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->mInstance:Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;

    .line 18
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->mInstance:Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "strindID"    # I

    .prologue
    .line 23
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEPBuildVariantSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "epValue"    # Ljava/lang/String;

    .prologue
    .line 38
    if-eqz p0, :cond_1

    const-string v0, "P0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ep_p2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
