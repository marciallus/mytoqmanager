.class public Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
.super Ljava/lang/Object;
.source "MusicControlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field private final clsName:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "Label"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "clsName"    # Ljava/lang/String;

    .prologue
    .line 1295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1296
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->mLabel:Ljava/lang/String;

    .line 1297
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->mPackageName:Ljava/lang/String;

    .line 1298
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->clsName:Ljava/lang/String;

    .line 1299
    return-void
.end method


# virtual methods
.method public getClsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method
