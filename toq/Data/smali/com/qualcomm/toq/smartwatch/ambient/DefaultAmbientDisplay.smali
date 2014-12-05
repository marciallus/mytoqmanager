.class public abstract Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
.super Ljava/lang/Object;
.source "DefaultAmbientDisplay.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultAmbientDisplay"


# instance fields
.field private mAmbientInfo:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

.field private mAmbientUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "cp4_1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public native convertImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public getAmbientInfo()Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->mAmbientInfo:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->mAmbientUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract retreiveDataFromStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
.end method

.method public setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V
    .locals 0
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->mAmbientInfo:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .line 104
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->mAmbientUrl:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bAlpha"    # Z

    .prologue
    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 113
    .local v14, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 123
    .local v6, "height":I
    const/16 v5, 0x10

    .line 126
    .local v5, "hdrBytes":I
    const/4 v15, 0x6

    new-array v4, v15, [B

    .line 128
    .local v4, "hdr":[B
    if-eqz p2, :cond_0

    .line 129
    mul-int v15, v14, v6

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v5

    new-array v9, v15, [B

    .line 134
    .local v9, "outByteArray":[B
    :goto_0
    new-instance v15, Ljava/lang/String;

    const-string v16, "MSOL  "

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 136
    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_1
    const/4 v15, 0x6

    if-ge v7, v15, :cond_1

    .line 137
    aget-byte v15, v4, v7

    aput-byte v15, v9, v7

    .line 136
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 132
    .end local v7    # "idx":I
    .end local v9    # "outByteArray":[B
    :cond_0
    mul-int v15, v14, v6

    add-int/2addr v15, v5

    new-array v9, v15, [B

    .restart local v9    # "outByteArray":[B
    goto :goto_0

    .line 139
    .restart local v7    # "idx":I
    :cond_1
    if-eqz p2, :cond_2

    .line 140
    const/4 v15, 0x6

    const/16 v16, -0x80

    aput-byte v16, v9, v15

    .line 145
    :goto_2
    const/4 v15, 0x7

    const/16 v16, 0x8

    aput-byte v16, v9, v15

    .line 147
    move v13, v14

    .line 148
    .local v13, "tmp":I
    const/16 v15, 0x8

    and-int/lit16 v0, v13, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 149
    const/16 v15, 0x9

    shr-int/lit8 v16, v13, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 151
    move v13, v6

    .line 152
    const/16 v15, 0xa

    and-int/lit16 v0, v13, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 153
    const/16 v15, 0xb

    shr-int/lit8 v16, v13, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 155
    const/16 v7, 0xc

    :goto_3
    if-ge v7, v5, :cond_3

    .line 156
    const/4 v15, 0x0

    aput-byte v15, v9, v7

    .line 155
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 143
    .end local v13    # "tmp":I
    :cond_2
    const/4 v15, 0x6

    const/16 v16, 0x0

    aput-byte v16, v9, v15

    goto :goto_2

    .line 158
    .restart local v13    # "tmp":I
    :cond_3
    const/4 v12, 0x0

    .local v12, "row":I
    :goto_4
    if-ge v12, v6, :cond_7

    .line 159
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_5
    if-ge v2, v14, :cond_6

    .line 160
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 162
    .local v10, "pixel":I
    if-eqz p2, :cond_5

    .line 163
    mul-int/lit8 v15, v12, 0x2

    mul-int/2addr v15, v14

    mul-int/lit8 v16, v2, 0x2

    add-int v15, v15, v16

    add-int/lit8 v8, v15, 0x10

    .line 168
    .local v8, "index":I
    :goto_6
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v15

    shr-int/lit8 v11, v15, 0x6

    .line 169
    .local v11, "r":I
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v15

    shr-int/lit8 v3, v15, 0x6

    .line 170
    .local v3, "g":I
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    shr-int/lit8 v1, v15, 0x6

    .line 171
    .local v1, "b":I
    shl-int/lit8 v15, v11, 0x6

    shl-int/lit8 v16, v3, 0x4

    add-int v15, v15, v16

    shl-int/lit8 v16, v1, 0x2

    add-int v15, v15, v16

    add-int/lit8 v13, v15, 0x3

    .line 172
    int-to-byte v15, v13

    aput-byte v15, v9, v8

    .line 173
    if-eqz p2, :cond_4

    .line 174
    add-int/lit8 v15, v8, 0x1

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 159
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 166
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

    .line 158
    .end local v8    # "index":I
    .end local v10    # "pixel":I
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 179
    .end local v2    # "col":I
    :cond_7
    const/16 p1, 0x0

    .line 181
    return-object v9
.end method

.method public writeBytesToFile([BLjava/io/File;)V
    .locals 8
    .param p1, "outArray"    # [B
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 195
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 200
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v4, "outputFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    const/4 v2, 0x0

    .line 210
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 212
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    const/4 v2, 0x0

    .line 223
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_1

    .line 224
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 225
    const/4 v2, 0x0

    .line 233
    :cond_1
    :goto_1
    return-void

    .line 204
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "DefaultAmbientDisplay"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v5, "DefaultAmbientDisplay"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    if-eqz v2, :cond_1

    .line 224
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 225
    const/4 v2, 0x0

    goto :goto_1

    .line 218
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v5, "DefaultAmbientDisplay"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    if-eqz v2, :cond_1

    .line 224
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 225
    const/4 v2, 0x0

    goto :goto_1

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 223
    :goto_4
    if-eqz v2, :cond_2

    .line 224
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 225
    const/4 v2, 0x0

    .line 230
    :cond_2
    :goto_5
    throw v5

    .line 228
    :catch_3
    move-exception v5

    goto :goto_1

    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    goto :goto_1

    .local v0, "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    goto :goto_5

    .line 222
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 218
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 215
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public abstract writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract writeDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
