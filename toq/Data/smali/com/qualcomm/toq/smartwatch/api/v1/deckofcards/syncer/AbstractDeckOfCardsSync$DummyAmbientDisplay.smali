.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$DummyAmbientDisplay;
.super Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
.source "AbstractDeckOfCardsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyAmbientDisplay"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$1;

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$DummyAmbientDisplay;-><init>()V

    return-void
.end method


# virtual methods
.method public retreiveDataFromStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .locals 1
    .param p1, "dataStream"    # Ljava/lang/String;
    .param p2, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p3, "queryType"    # Ljava/lang/String;

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method
