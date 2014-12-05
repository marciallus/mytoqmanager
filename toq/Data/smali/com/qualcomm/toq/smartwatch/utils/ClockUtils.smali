.class public Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;
.super Ljava/lang/Object;
.source "ClockUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockUtils"

.field static mInstance:Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    .line 41
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    return-object v0
.end method

.method private retrieveClockInfo(Ljava/lang/String;Landroid/content/res/AssetManager;)Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    .locals 21
    .param p1, "clockFileName"    # Ljava/lang/String;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 169
    new-instance v5, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;

    invoke-direct {v5}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;-><init>()V

    .line 170
    .local v5, "clockinfo":Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    const/4 v2, 0x0

    .line 171
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/16 v17, 0x0

    .line 172
    .local v17, "zis":Ljava/util/zip/ZipInputStream;
    const-string v10, ""

    .line 175
    .local v10, "imageName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 176
    .local v16, "zipfilestream":Ljava/io/InputStream;
    new-instance v18, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 178
    .end local v17    # "zis":Ljava/util/zip/ZipInputStream;
    .local v18, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v15, 0x0

    .local v15, "ze":Ljava/util/zip/ZipEntry;
    move-object v3, v2

    .line 180
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 182
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "clock.json"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 185
    const-string v19, "ClockUtils"

    const-string v20, "clock.json found"

    invoke-static/range {v19 .. v20}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->retrieveJSONFromStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v12

    .line 189
    .local v12, "jsonInfo":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 192
    const-string v19, "Clock"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 193
    .local v11, "jsonArray":Lorg/json/JSONArray;
    if-eqz v11, :cond_0

    .line 195
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 197
    .local v14, "tempObject":Lorg/json/JSONObject;
    if-eqz v14, :cond_0

    .line 198
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->setAssetFileName(Ljava/lang/String;)V

    .line 199
    const-string v19, "displayName"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->setDisplayName(Ljava/lang/String;)V

    .line 200
    const-string v19, "packageName"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->setPackageName(Ljava/lang/String;)V

    .line 201
    const-string v19, "asset"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->setAppZipName(Ljava/lang/String;)V

    .line 202
    const-string v19, "jsonName"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->setJsonName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 254
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "jsonInfo":Lorg/json/JSONObject;
    .end local v14    # "tempObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    move-object/from16 v17, v18

    .end local v18    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v17    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .line 255
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v15    # "ze":Ljava/util/zip/ZipEntry;
    .end local v16    # "zipfilestream":Ljava/io/InputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    const-string v19, "ClockUtils"

    const-string v20, "Exception retrieving clock info from bundle"

    invoke-static/range {v19 .. v20}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-eqz v2, :cond_1

    .line 258
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 261
    :cond_1
    if-eqz v17, :cond_2

    .line 262
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v5

    .line 209
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v17    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v15    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v16    # "zipfilestream":Ljava/io/InputStream;
    .restart local v18    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v19, ".png"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 211
    const-string v19, "ClockUtils"

    const-string v20, "Image found"

    invoke-static/range {v19 .. v20}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    const-string v20, "/Clocks"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_4

    .line 219
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 220
    const-string v19, "ClockUtils"

    const-string v20, "Directory created"

    invoke-static/range {v19 .. v20}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_4
    :goto_4
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    .local v9, "imageFile":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 232
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    const/16 v19, 0x400

    :try_start_4
    move/from16 v0, v19

    new-array v4, v0, [B

    .line 235
    .local v4, "buffer":[B
    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v13

    .local v13, "length":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_6

    .line 236
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v4, v0, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 254
    .end local v4    # "buffer":[B
    .end local v13    # "length":I
    :catch_1
    move-exception v7

    move-object/from16 v17, v18

    .end local v18    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v17    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_1

    .line 223
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "imageFile":Ljava/io/File;
    .end local v17    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_5
    :try_start_5
    const-string v19, "ClockUtils"

    const-string v20, "Unable to create directory"

    invoke-static/range {v19 .. v20}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 239
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v9    # "imageFile":Ljava/io/File;
    .restart local v13    # "length":I
    :cond_6
    :try_start_6
    invoke-virtual {v5, v10}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->setIconName(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v3, v2

    .line 241
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    goto/16 :goto_0

    .line 245
    .end local v4    # "buffer":[B
    .end local v6    # "dir":Ljava/io/File;
    .end local v9    # "imageFile":Ljava/io/File;
    .end local v13    # "length":I
    :cond_7
    if-eqz v3, :cond_8

    .line 246
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 249
    :cond_8
    if-eqz v18, :cond_9

    .line 250
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_9
    move-object/from16 v17, v18

    .end local v18    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v17    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .line 270
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto/16 :goto_3

    .line 265
    .end local v15    # "ze":Ljava/util/zip/ZipEntry;
    .end local v16    # "zipfilestream":Ljava/io/InputStream;
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 266
    .local v8, "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 254
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto/16 :goto_1
.end method

.method private retrieveJSONFromStream(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v6, "out":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 284
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 287
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_0

    .line 291
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 292
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    const-string v7, "ClockUtils"

    const-string v8, "Exception retrieving json from stream"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "jsonString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "ClockUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Json Object retrieved : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-object v3

    .line 291
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonString":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public deleteClockAppZip(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v2, "ClockUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to delete Zip file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Clocks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "clockDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 337
    const-string v2, "ClockUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v0    # "clockDir":Ljava/io/File;
    :goto_0
    return-void

    .line 340
    .restart local v0    # "clockDir":Ljava/io/File;
    :cond_0
    const-string v2, "ClockUtils"

    const-string v3, "No clock directory found.Unable to delete"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    .end local v0    # "clockDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteOldClockImageFiles()V
    .locals 6

    .prologue
    .line 308
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Clocks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, "clockDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 315
    const-string v3, "ClockUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting old clock image : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 324
    .end local v0    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 321
    :cond_1
    const-string v3, "ClockUtils"

    const-string v4, "No clock directory found.Unable to delete"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getClockAppInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 20
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "appZipName"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string v18, "ClockUtils"

    const-string v19, "Inside getClockAppinputStream()"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 443
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    const/4 v9, 0x0

    .line 444
    .local v9, "fileFound":Z
    const/16 v16, 0x0

    .line 445
    .local v16, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v10, 0x0

    .line 446
    .local v10, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 448
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 449
    .local v15, "zipfilestream":Ljava/io/InputStream;
    new-instance v17, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 451
    .end local v16    # "zis":Ljava/util/zip/ZipInputStream;
    .local v17, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v13, 0x0

    .line 453
    .local v13, "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 455
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v18

    if-eqz v18, :cond_0

    .line 456
    const/4 v9, 0x1

    :cond_1
    move-object/from16 v16, v17

    .line 468
    .end local v13    # "ze":Ljava/util/zip/ZipEntry;
    .end local v15    # "zipfilestream":Ljava/io/InputStream;
    .end local v17    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v16    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    if-eqz v9, :cond_7

    .line 470
    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    const-string v19, "/Clocks"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 474
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    .line 476
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 477
    const-string v18, "ClockUtils"

    const-string v19, "Directory created"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_2
    :goto_1
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v14, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 487
    .local v14, "zipFile":Ljava/io/File;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 489
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/16 v18, 0x400

    :try_start_3
    move/from16 v0, v18

    new-array v5, v0, [B

    .line 492
    .local v5, "buffer":[B
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v12

    .local v12, "length":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_6

    .line 493
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0, v12}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 504
    .end local v5    # "buffer":[B
    .end local v12    # "length":I
    :catch_0
    move-exception v7

    move-object v3, v4

    .line 507
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "dir":Ljava/io/File;
    .end local v14    # "zipFile":Ljava/io/File;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v3, :cond_3

    .line 508
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 509
    const/4 v3, 0x0

    .line 512
    :cond_3
    if-eqz v16, :cond_4

    .line 513
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 514
    const/16 v16, 0x0

    .line 520
    :cond_4
    :goto_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .end local v7    # "e":Ljava/lang/Exception;
    :goto_5
    move-object/from16 v18, v10

    .line 526
    :goto_6
    return-object v18

    .line 462
    :catch_1
    move-exception v7

    .line 463
    .local v7, "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 480
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "dir":Ljava/io/File;
    :cond_5
    :try_start_5
    const-string v18, "ClockUtils"

    const-string v19, "Unable to create directory"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 504
    .end local v6    # "dir":Ljava/io/File;
    :catch_2
    move-exception v7

    goto :goto_3

    .line 496
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "buffer":[B
    .restart local v6    # "dir":Ljava/io/File;
    .restart local v12    # "length":I
    .restart local v14    # "zipFile":Ljava/io/File;
    :cond_6
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 497
    const/4 v3, 0x0

    .line 499
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipInputStream;->close()V

    .line 500
    const/16 v16, 0x0

    .line 502
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .local v11, "fileInputStream":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 521
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 517
    .end local v5    # "buffer":[B
    .end local v6    # "dir":Ljava/io/File;
    .end local v12    # "length":I
    .end local v14    # "zipFile":Ljava/io/File;
    .local v7, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 518
    .local v8, "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 526
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "e1":Ljava/io/IOException;
    :cond_7
    const/16 v18, 0x0

    goto :goto_6

    .line 462
    .end local v16    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v15    # "zipfilestream":Ljava/io/InputStream;
    .restart local v17    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_4
    move-exception v7

    move-object/from16 v16, v17

    .end local v17    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v16    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_7
.end method

.method public getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "clockName"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 385
    const-string v6, ""

    .line 387
    .local v6, "retrievedInfo":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "clock_settings_pref"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 391
    .local v5, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v1, "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    :try_start_0
    const-string v7, "clock_data"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 404
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;

    .line 406
    .local v2, "clockinfo":Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 408
    const-string v7, "packageName"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 409
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 432
    .end local v2    # "clockinfo":Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    :cond_1
    :goto_1
    return-object v6

    .line 397
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 398
    .local v3, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 400
    .end local v3    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 401
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 411
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v2    # "clockinfo":Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v7, "assetFileName"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 412
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getAssetFileName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 414
    :cond_3
    const-string v7, "appZipName"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 415
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getAppZipName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 417
    :cond_4
    const-string v7, "clockType"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 418
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getClockType()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 420
    :cond_5
    const-string v7, "displayName"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 421
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 423
    :cond_6
    const-string v7, "jsonName"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 424
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getJsonName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public getClockNamesArray()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 354
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "clock_settings_pref"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 358
    .local v5, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v1, "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    :try_start_0
    const-string v6, "clock_data"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 371
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 373
    .local v2, "clocknamesArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_0

    .line 374
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 373
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 364
    .end local v2    # "clocknamesArray":[Ljava/lang/String;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 365
    .local v3, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v3    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 368
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 377
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v2    # "clocknamesArray":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_0
    return-object v2
.end method

.method public parseClockInfoFromAssests()V
    .locals 18

    .prologue
    .line 47
    const/4 v10, 0x0

    .line 49
    .local v10, "inputStream":Ljava/io/InputStream;
    :try_start_0
    const-string v15, "ClockUtils"

    const-string v16, "Inside parseClockInfoFromAssests()"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v4, "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 55
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const-string v15, "allclocks.json"

    invoke-virtual {v1, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 59
    if-eqz v10, :cond_6

    .line 62
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->retrieveJSONFromStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v12

    .line 64
    .local v12, "jsonObject":Lorg/json/JSONObject;
    if-eqz v12, :cond_3

    .line 72
    const-string v15, "Clocks"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 74
    .local v11, "jsonClockArray":Lorg/json/JSONArray;
    if-eqz v11, :cond_3

    .line 76
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v7, v15, :cond_3

    .line 77
    new-instance v3, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;

    invoke-direct {v3}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;-><init>()V

    .line 78
    .local v3, "clockInfo":Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 80
    .local v14, "tempObject":Lorg/json/JSONObject;
    if-eqz v14, :cond_1

    const-string v15, "type"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "builtin"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 84
    const-string v15, "displayName"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->setDisplayName(Ljava/lang/String;)V

    .line 85
    const-string v15, "icon"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->setIconName(Ljava/lang/String;)V

    .line 87
    const-string v15, "builtin"

    invoke-virtual {v3, v15}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->setClockType(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 90
    :cond_1
    if-eqz v14, :cond_0

    const-string v15, "type"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "dynamic"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 94
    const-string v15, "bundle"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "clockFileName":Ljava/lang/String;
    const-string v15, "ClockUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Lua Clock Name retrieved : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->retrieveClockInfo(Ljava/lang/String;Landroid/content/res/AssetManager;)Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;

    move-result-object v3

    .line 105
    const-string v15, "dynamic"

    invoke-virtual {v3, v15}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->setClockType(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getIconName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getIconName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 115
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 147
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "clockFileName":Ljava/lang/String;
    .end local v3    # "clockInfo":Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    .end local v4    # "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    .end local v7    # "i":I
    .end local v11    # "jsonClockArray":Lorg/json/JSONArray;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "tempObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 148
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v15, "ClockUtils"

    const-string v16, "Error parsing clock data from assets"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    if-eqz v10, :cond_2

    .line 154
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 155
    const/4 v10, 0x0

    .line 162
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 125
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v4    # "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;

    .line 126
    .local v9, "info":Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    const-string v15, "ClockUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "List Contents : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 152
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v4    # "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "info":Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v15

    .line 153
    if-eqz v10, :cond_4

    .line 154
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 155
    const/4 v10, 0x0

    .line 160
    :cond_4
    :goto_4
    throw v15

    .line 129
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v4    # "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "clock_settings_pref"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 132
    .local v13, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 134
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v15, "clock_data"

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    const/4 v10, 0x0

    .line 153
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    :goto_5
    if-eqz v10, :cond_2

    .line 154
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 155
    const/4 v10, 0x0

    goto :goto_2

    .line 143
    :cond_6
    :try_start_7
    const-string v15, "ClockUtils"

    const-string v16, "InputStream is null.allclocks.json not found in assets"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 158
    :catch_1
    move-exception v5

    .line 159
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 158
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v4    # "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    .local v5, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 159
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 158
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 159
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public updateClockStylesPreferenceOnAppUpgrade()V
    .locals 10

    .prologue
    .line 534
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "clock_settings_pref"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 537
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "clock_data"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 540
    .local v1, "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    const-string v7, "clock_settings_types"

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 543
    .local v6, "previousHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;

    .line 544
    .local v0, "cInfo":Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v7, "ClockUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to preference with no selection"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 576
    .end local v0    # "cInfo":Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;
    .end local v1    # "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "previousHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v2

    .line 577
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 585
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    return-void

    .line 555
    .restart local v1    # "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v6    # "previousHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 557
    const-string v7, "Sweater"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 558
    const-string v7, "Sweater"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_2
    const-string v7, "2014"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 563
    const-string v7, "2014"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 571
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "clock_settings_types"

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 579
    .end local v1    # "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "previousHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :catch_1
    move-exception v2

    .line 580
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 582
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 583
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
