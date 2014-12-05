.class public abstract Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;
.super Ljava/lang/Object;
.source "AbstractDeckOfCardsSync.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$1;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$DummyAmbientDisplay;
    }
.end annotation


# static fields
.field private static final APP_IMAGES_DIR_NAME:Ljava/lang/String; = "images"

.field private static final APP_ZIP_DIR_NAME:Ljava/lang/String; = "app"

.field private static final LOCAL_ROOT_DIR:Ljava/lang/String; = "/toq/apps"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;->context:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;->setupRootFileSystem(Landroid/content/Context;)Ljava/io/File;

    .line 47
    return-void
.end method

.method private convertImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmapIn"    # Landroid/graphics/Bitmap;
    .param p2, "bitmapOut"    # Landroid/graphics/Bitmap;

    .prologue
    .line 187
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$DummyAmbientDisplay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$DummyAmbientDisplay;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$1;)V

    .line 188
    .local v0, "dummyAmbientDisplay":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$DummyAmbientDisplay;
    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync$DummyAmbientDisplay;->convertImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 189
    return-void
.end method

.method private setupRootFileSystem(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isStorageMounted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    const-string v3, "storage is not mounted"

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_0
    const/4 v1, 0x0

    .line 281
    .local v1, "rootDir":Ljava/io/File;
    :try_start_0
    const-string v2, "/toq/apps"

    invoke-static {p1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->createStorageDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 287
    return-object v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    const-string v3, "Unable to create root dir"

    invoke-direct {v2, v3, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bAlpha"    # Z

    .prologue
    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 199
    .local v14, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 209
    .local v6, "height":I
    const/16 v5, 0x10

    .line 212
    .local v5, "hdrBytes":I
    const/4 v15, 0x6

    new-array v4, v15, [B

    .line 214
    .local v4, "hdr":[B
    if-eqz p2, :cond_0

    .line 215
    mul-int v15, v14, v6

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v5

    new-array v9, v15, [B

    .line 220
    .local v9, "outByteArray":[B
    :goto_0
    new-instance v15, Ljava/lang/String;

    const-string v16, "MSOL  "

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 222
    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_1
    const/4 v15, 0x6

    if-ge v7, v15, :cond_1

    .line 223
    aget-byte v15, v4, v7

    aput-byte v15, v9, v7

    .line 222
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 218
    .end local v7    # "idx":I
    .end local v9    # "outByteArray":[B
    :cond_0
    mul-int v15, v14, v6

    add-int/2addr v15, v5

    new-array v9, v15, [B

    .restart local v9    # "outByteArray":[B
    goto :goto_0

    .line 225
    .restart local v7    # "idx":I
    :cond_1
    if-eqz p2, :cond_2

    .line 226
    const/4 v15, 0x6

    const/16 v16, -0x80

    aput-byte v16, v9, v15

    .line 231
    :goto_2
    const/4 v15, 0x7

    const/16 v16, 0x8

    aput-byte v16, v9, v15

    .line 233
    move v13, v14

    .line 234
    .local v13, "tmp":I
    const/16 v15, 0x8

    and-int/lit16 v0, v13, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 235
    const/16 v15, 0x9

    shr-int/lit8 v16, v13, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 237
    move v13, v6

    .line 238
    const/16 v15, 0xa

    and-int/lit16 v0, v13, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 239
    const/16 v15, 0xb

    shr-int/lit8 v16, v13, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 241
    const/16 v7, 0xc

    :goto_3
    if-ge v7, v5, :cond_3

    .line 242
    const/4 v15, 0x0

    aput-byte v15, v9, v7

    .line 241
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 229
    .end local v13    # "tmp":I
    :cond_2
    const/4 v15, 0x6

    const/16 v16, 0x0

    aput-byte v16, v9, v15

    goto :goto_2

    .line 244
    .restart local v13    # "tmp":I
    :cond_3
    const/4 v12, 0x0

    .local v12, "row":I
    :goto_4
    if-ge v12, v6, :cond_7

    .line 245
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_5
    if-ge v2, v14, :cond_6

    .line 246
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 248
    .local v10, "pixel":I
    if-eqz p2, :cond_5

    .line 249
    mul-int/lit8 v15, v12, 0x2

    mul-int/2addr v15, v14

    mul-int/lit8 v16, v2, 0x2

    add-int v15, v15, v16

    add-int/lit8 v8, v15, 0x10

    .line 254
    .local v8, "index":I
    :goto_6
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v15

    shr-int/lit8 v11, v15, 0x6

    .line 255
    .local v11, "r":I
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v15

    shr-int/lit8 v3, v15, 0x6

    .line 256
    .local v3, "g":I
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    shr-int/lit8 v1, v15, 0x6

    .line 257
    .local v1, "b":I
    shl-int/lit8 v15, v11, 0x6

    shl-int/lit8 v16, v3, 0x4

    add-int v15, v15, v16

    shl-int/lit8 v16, v1, 0x2

    add-int v15, v15, v16

    add-int/lit8 v13, v15, 0x3

    .line 258
    int-to-byte v15, v13

    aput-byte v15, v9, v8

    .line 259
    if-eqz p2, :cond_4

    .line 260
    add-int/lit8 v15, v8, 0x1

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 245
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 252
    .end local v1    # "b":I
    .end local v3    # "g":I
    .end local v8    # "index":I
    .end local v11    # "r":I
    :cond_5
    mul-int v15, v12, v14

    add-int/2addr v15, v2

    add-int/lit8 v8, v15, 0x10

    .restart local v8    # "index":I
    goto :goto_6

    .line 244
    .end local v8    # "index":I
    .end local v10    # "pixel":I
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 265
    .end local v2    # "col":I
    :cond_7
    const/16 p1, 0x0

    .line 267
    return-object v9
.end method


# virtual methods
.method public convertPNGBitmap(Landroid/graphics/Bitmap;)[B
    .locals 6
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 63
    .local v2, "iconMirasol":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;->convertImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 65
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    .local v0, "bytes":[B
    return-object v0

    .line 70
    .end local v0    # "bytes":[B
    .end local v2    # "iconMirasol":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    const-string v4, "An error occurred converting the PNG bitmap"

    invoke-direct {v3, v4, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method createLocalAppDir(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/toq/apps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "appDirPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 99
    .local v0, "appDir":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->createStorageDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    return-object v0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    const-string v4, "Unable to create app dir"

    invoke-direct {v3, v4, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method createLocalAppImagesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/toq/apps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "appImagesDirPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 135
    .local v0, "appImagesDir":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->createStorageDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    return-object v0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    const-string v4, "Unable to create app images dir"

    invoke-direct {v3, v4, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method createLocalAppZipDir(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/toq/apps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "appZipDirPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 117
    .local v0, "appZipDir":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->createStorageDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    return-object v0

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    const-string v4, "Unable to create app zip dir"

    invoke-direct {v3, v4, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method deleteFile(Ljava/io/File;)V
    .locals 3
    .param p1, "localFile"    # Ljava/io/File;

    .prologue
    .line 150
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not create directory: storage is not mounted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->recursiveFileDelete(Ljava/io/File;)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractDeckOfCardsSync.deleteFile - file does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract getWDAppRoot(Ljava/lang/String;)Ljava/lang/String;
.end method

.method isFileExist(Ljava/io/File;)Z
    .locals 2
    .param p1, "localFile"    # Ljava/io/File;

    .prologue
    .line 169
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not create directory: storage is not mounted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
