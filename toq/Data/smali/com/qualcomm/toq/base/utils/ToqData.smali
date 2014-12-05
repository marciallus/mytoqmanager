.class public Lcom/qualcomm/toq/base/utils/ToqData;
.super Ljava/lang/Object;
.source "ToqData.java"


# static fields
.field private static mDevicePreferences:Landroid/content/SharedPreferences;

.field private static mInstance:Lcom/qualcomm/toq/base/utils/ToqData;

.field private static mLightTypeFace:Landroid/graphics/Typeface;

.field private static mMediumTypeFace:Landroid/graphics/Typeface;

.field private static mRegularTypeFace:Landroid/graphics/Typeface;

.field private static mThinTypeFace:Landroid/graphics/Typeface;

.field private static qcomBoldTypeFace:Landroid/graphics/Typeface;

.field private static qcomLightTypeFace:Landroid/graphics/Typeface;

.field private static qcomRegularTypeFace:Landroid/graphics/Typeface;

.field private static qcomSemiboldTypeFace:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mInstance:Lcom/qualcomm/toq/base/utils/ToqData;

    .line 15
    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mLightTypeFace:Landroid/graphics/Typeface;

    .line 16
    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mMediumTypeFace:Landroid/graphics/Typeface;

    .line 17
    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mThinTypeFace:Landroid/graphics/Typeface;

    .line 18
    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mRegularTypeFace:Landroid/graphics/Typeface;

    .line 19
    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomBoldTypeFace:Landroid/graphics/Typeface;

    .line 20
    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomRegularTypeFace:Landroid/graphics/Typeface;

    .line 21
    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomSemiboldTypeFace:Landroid/graphics/Typeface;

    .line 22
    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomLightTypeFace:Landroid/graphics/Typeface;

    .line 23
    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mDevicePreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/base/utils/ToqData;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mInstance:Lcom/qualcomm/toq/base/utils/ToqData;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/qualcomm/toq/base/utils/ToqData;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/utils/ToqData;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mInstance:Lcom/qualcomm/toq/base/utils/ToqData;

    .line 33
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mInstance:Lcom/qualcomm/toq/base/utils/ToqData;

    return-object v0
.end method


# virtual methods
.method public getAssociatedDevicePrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 125
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mDevicePreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "associated_device_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mDevicePreferences:Landroid/content/SharedPreferences;

    .line 132
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mDevicePreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getLightTypeFace()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mLightTypeFace:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mLightTypeFace:Landroid/graphics/Typeface;

    .line 44
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mLightTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getMediumTypeFace()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mMediumTypeFace:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mMediumTypeFace:Landroid/graphics/Typeface;

    .line 55
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mMediumTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getQcomBoldTypeFace()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomBoldTypeFace:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomBoldTypeFace:Landroid/graphics/Typeface;

    .line 99
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomBoldTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getQcomLightTypeFace()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 103
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomLightTypeFace:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomLightTypeFace:Landroid/graphics/Typeface;

    .line 110
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomLightTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getQcomRegularTypeFace()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 114
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomRegularTypeFace:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomRegularTypeFace:Landroid/graphics/Typeface;

    .line 121
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomRegularTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getQcomSemiboldTypeFace()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomSemiboldTypeFace:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomSemiboldTypeFace:Landroid/graphics/Typeface;

    .line 88
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->qcomSemiboldTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getRegularTypeFace()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mRegularTypeFace:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mRegularTypeFace:Landroid/graphics/Typeface;

    .line 77
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mRegularTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getThinTypeFace()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mThinTypeFace:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mThinTypeFace:Landroid/graphics/Typeface;

    .line 66
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ToqData;->mThinTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method
