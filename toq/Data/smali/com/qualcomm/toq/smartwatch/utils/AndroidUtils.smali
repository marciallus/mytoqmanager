.class public Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$QcomTypeFace;,
        Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;
    }
.end annotation


# static fields
.field private static final EQUIVALENT_VALUE_FOR_ZERO_CELSIUS_IN_FAHRENHEIT:I = 0x20

.field private static final FAHRENHEIT_TO_CELSIUS_CONVERSION_FRACTION:F = 0.5555556f

.field private static final INITIAL_THRESHOLD_FOR_DAY:I = 0xa

.field private static final INITIAL_THRESHOLD_FOR_WEEK:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AndroidUtils"

.field private static final chineseUnicodeBlocks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static isAirplaneModeOn:Z

.field public static mDeviceAlarmVolume:I

.field static mInstance:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;


# instance fields
.field private final DECK_OF_CARDS:Ljava/lang/String;

.field private endTime:J

.field private header:Ljavax/obex/HeaderSet;

.field private headsetBroadcastReciever:Lcom/qualcomm/toq/smartwatch/service/receiver/HeadsetBroadCastReciever;

.field private mBatteryMonitorTimer:Ljava/util/Timer;

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public previousRingerModeState:I

.field private startTime:J

.field private timeDiff:J

.field private timeUnit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    .line 108
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mDeviceAlarmVolume:I

    .line 1912
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->chineseUnicodeBlocks:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "DeckOfCards"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->DECK_OF_CARDS:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->previousRingerModeState:I

    .line 101
    new-instance v0, Lcom/qualcomm/toq/smartwatch/service/receiver/HeadsetBroadCastReciever;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/service/receiver/HeadsetBroadCastReciever;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->headsetBroadcastReciever:Lcom/qualcomm/toq/smartwatch/service/receiver/HeadsetBroadCastReciever;

    .line 103
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mBatteryMonitorTimer:Ljava/util/Timer;

    .line 105
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    .line 866
    iput-wide v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->startTime:J

    .line 867
    iput-wide v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->endTime:J

    .line 868
    iput-wide v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeDiff:J

    .line 869
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeUnit:Ljava/lang/String;

    .line 981
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)J
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->startTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    .param p1, "x1"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->startTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)J
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->endTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    .param p1, "x1"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->endTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)J
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeDiff:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    .param p1, "x1"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeDiff:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeUnit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeUnit:Ljava/lang/String;

    return-object p1
.end method

.method public static createWorldClockZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 17
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "sourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1238
    .local p2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v14, 0x400

    new-array v1, v14, [B

    .line 1239
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .line 1240
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 1241
    .local v12, "zos":Ljava/util/zip/ZipOutputStream;
    const/4 v8, 0x0

    .line 1244
    .local v8, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v13, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v13, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1247
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v13, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    move-object v9, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/lang/Object;
    :goto_0
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1249
    .local v4, "file":Ljava/lang/String;
    const-string v14, "AndroidUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File Added : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-direct {v11, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v11, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v13, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1253
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1256
    .end local v9    # "in":Ljava/lang/Object;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v8, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .local v10, "len":I
    if-lez v10, :cond_2

    .line 1257
    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14, v10}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 1269
    .end local v4    # "file":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "len":I
    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    .line 1270
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v3, "ex":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1275
    if-eqz v12, :cond_0

    .line 1276
    :try_start_6
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1277
    const/4 v12, 0x0

    .line 1279
    :cond_0
    if-eqz v8, :cond_1

    .line 1280
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1281
    const/4 v8, 0x0

    .line 1289
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/FileInputStream;
    :cond_1
    :goto_3
    return-void

    .line 1260
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "file":Ljava/lang/String;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "len":I
    .restart local v11    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_2
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 1261
    const/4 v8, 0x0

    .line 1262
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 1263
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v9, v8

    .line 1265
    .restart local v9    # "in":Ljava/lang/Object;
    goto :goto_0

    .line 1267
    .end local v4    # "file":Ljava/lang/String;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v10    # "len":I
    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_8
    const-string v14, "AndroidUtils"

    const-string v15, "Zipping Done"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1275
    if-eqz v13, :cond_7

    .line 1276
    :try_start_9
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1277
    const/4 v12, 0x0

    .line 1279
    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_4
    if-eqz v9, :cond_6

    .line 1280
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 1281
    const/4 v8, 0x0

    .end local v9    # "in":Ljava/lang/Object;
    :goto_5
    move-object v5, v6

    .line 1286
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1284
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "in":Ljava/lang/Object;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v2

    move-object v12, v13

    .line 1285
    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 1288
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1284
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "in":Ljava/lang/Object;
    .restart local v3    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1285
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1274
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 1275
    :goto_7
    if-eqz v12, :cond_4

    .line 1276
    :try_start_b
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1277
    const/4 v12, 0x0

    .line 1279
    :cond_4
    if-eqz v8, :cond_5

    .line 1280
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 1281
    const/4 v8, 0x0

    .line 1286
    :cond_5
    :goto_8
    throw v14

    .line 1284
    :catch_3
    move-exception v2

    .line 1285
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1274
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v14

    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "in":Ljava/lang/Object;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v14

    move-object v8, v9

    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1269
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "in":Ljava/lang/Object;
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "in":Ljava/lang/Object;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_6
    move-exception v3

    move-object v8, v9

    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1284
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    goto :goto_6

    :cond_6
    move-object v8, v9

    .end local v9    # "in":Ljava/lang/Object;
    .local v8, "in":Ljava/lang/Object;
    goto :goto_5

    .end local v8    # "in":Ljava/lang/Object;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "in":Ljava/lang/Object;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_7
    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_4
.end method

.method public static generateSourceFileList(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p0, "node"    # Ljava/io/File;
    .param p1, "sourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1195
    .local p2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "AndroidUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " node.isFile() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string v6, "AndroidUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "node.isDirectory = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1200
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->generateZipEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1202
    .local v1, "entry":Ljava/lang/String;
    const-string v6, "ClockWorld"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1203
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    .end local v1    # "entry":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1207
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 1208
    .local v5, "subNote":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 1209
    .local v2, "filename":Ljava/lang/String;
    const-string v6, "AndroidUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Insise a directory filename="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, p1, p2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->generateSourceFileList(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 1208
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1215
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "subNote":[Ljava/lang/String;
    :cond_1
    const-string v6, "AndroidUtils"

    const-string v7, "generateSourceFileList end"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    return-void
.end method

.method public static generateUniqueCityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "cityName"    # Ljava/lang/String;
    .param p1, "adminArea"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 1297
    const-string v2, "AndroidUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genareUniqueCityName : cityName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adminArea="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " country="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v0, ""

    .line 1302
    .local v0, "uniqueCityName":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 1326
    .end local v0    # "uniqueCityName":Ljava/lang/String;
    .local v1, "uniqueCityName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1305
    .end local v1    # "uniqueCityName":Ljava/lang/String;
    .restart local v0    # "uniqueCityName":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[^\\w\\s]"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[^\\w\\s]"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[^\\w\\s]"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1322
    :goto_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1325
    const-string v2, "AndroidUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genareUniqueCityName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 1326
    .end local v0    # "uniqueCityName":Ljava/lang/String;
    .restart local v1    # "uniqueCityName":Ljava/lang/String;
    goto :goto_0

    .line 1310
    .end local v1    # "uniqueCityName":Ljava/lang/String;
    .restart local v0    # "uniqueCityName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[^\\w\\s]"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[^\\w\\s]"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1314
    :cond_2
    if-eqz p2, :cond_3

    .line 1315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[^\\w\\s]"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[^\\w\\s]"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1319
    :cond_3
    const-string v2, "[^\\w\\s]"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static generateZipEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "sourcePath"    # Ljava/lang/String;

    .prologue
    .line 1226
    const-string v0, "AndroidUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sourcePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const-string v0, "AndroidUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourcePath.length() + 1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file.length()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 1127
    const/4 v0, 0x0

    .line 1128
    .local v0, "appImageDirectory":Ljava/io/File;
    invoke-static {p0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1129
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1130
    new-instance v0, Ljava/io/File;

    .end local v0    # "appImageDirectory":Ljava/io/File;
    const-string v2, "AppImage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1131
    .restart local v0    # "appImageDirectory":Ljava/io/File;
    const-string v2, "AndroidUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Ambient app image path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1134
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1135
    const/4 v2, 0x0

    .line 1139
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public static getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 1082
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1083
    const-string v2, "stock"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    const-string v1, "AMBIENT_IMAGES/stock"

    .line 1102
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1104
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1106
    .restart local v0    # "file":Ljava/io/File;
    const-string v2, "AndroidUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Ambient path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const-string v2, "AndroidUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file.exists()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1110
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1111
    const/4 v2, 0x0

    .line 1117
    :goto_1
    return-object v2

    .line 1088
    :cond_1
    const-string v2, "weather"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1089
    const-string v1, "AMBIENT_IMAGES/weather"

    goto :goto_0

    .line 1092
    :cond_2
    const-string v2, "WorldClock"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1093
    const-string v1, "AMBIENT_IMAGES/WorldClock"

    goto :goto_0

    .line 1096
    :cond_3
    const-string v2, "DegreesClock"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1097
    const-string v1, "AMBIENT_IMAGES/DegreesClock"

    goto :goto_0

    :cond_4
    move-object v2, v0

    .line 1117
    goto :goto_1
.end method

.method public static getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    .line 120
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    return-object v0
.end method

.method private getBytesFromFile(Ljava/io/File;)[B
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 923
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 926
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 927
    .local v5, "length":J
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v5, v8

    if-lez v8, :cond_1

    .line 928
    const-string v8, "AndroidUtils"

    const-string v9, "File is too large to process "

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 930
    const/4 v3, 0x0

    .line 931
    const/4 v2, 0x0

    .line 958
    :cond_0
    :goto_0
    return-object v2

    .line 936
    :cond_1
    const/16 v7, 0x400

    .line 939
    .local v7, "size":I
    long-to-int v8, v5

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 940
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-array v1, v7, [B

    .line 941
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v3, v1, v10, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "len":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    .line 942
    invoke-virtual {v0, v1, v10, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 944
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 946
    .local v2, "bytes":[B
    array-length v8, v2

    long-to-int v9, v5

    if-ge v8, v9, :cond_3

    .line 947
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 948
    const/4 v3, 0x0

    .line 949
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not completely read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 953
    :cond_3
    if-eqz v3, :cond_0

    .line 954
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 955
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCurrentCityEnabledStatus()Z
    .locals 6

    .prologue
    .line 1532
    const/4 v1, 0x0

    .line 1534
    .local v1, "isCurrentCityEnabled":Z
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ambient__pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1537
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "WeatherCurrentCityUpdate"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1543
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    .line 1540
    :catch_0
    move-exception v0

    .line 1541
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNormalizedLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "localeKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1886
    const/4 v0, 0x0

    .line 1888
    .local v0, "locale":Ljava/util/Locale;
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1890
    .local v1, "localeDetails":[Ljava/lang/String;
    array-length v2, v1

    packed-switch v2, :pswitch_data_0

    .line 1901
    new-instance v0, Ljava/util/Locale;

    .end local v0    # "locale":Ljava/util/Locale;
    aget-object v2, v1, v3

    aget-object v3, v1, v4

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-direct {v0, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    .restart local v0    # "locale":Ljava/util/Locale;
    :goto_0
    return-object v0

    .line 1892
    :pswitch_0
    new-instance v0, Ljava/util/Locale;

    .end local v0    # "locale":Ljava/util/Locale;
    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1893
    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 1895
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    .end local v0    # "locale":Ljava/util/Locale;
    aget-object v2, v1, v3

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1896
    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 1898
    :pswitch_2
    new-instance v0, Ljava/util/Locale;

    .end local v0    # "locale":Ljava/util/Locale;
    aget-object v2, v1, v3

    aget-object v3, v1, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 1890
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNumStocks()I
    .locals 7

    .prologue
    .line 1572
    const/4 v2, -0x1

    .line 1574
    .local v2, "numStocks":I
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ambient__pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1577
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "StockSymbols"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1579
    .local v0, "ambientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v0, :cond_0

    .line 1580
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1591
    .end local v0    # "ambientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 1583
    .restart local v0    # "ambientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1587
    .end local v0    # "ambientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1588
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNumWeatherCities()I
    .locals 7

    .prologue
    .line 1548
    const/4 v2, -0x1

    .line 1550
    .local v2, "numCities":I
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ambient__pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1553
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "WeatherCities"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1555
    .local v0, "ambientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v0, :cond_0

    .line 1556
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1567
    .end local v0    # "ambientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 1559
    .restart local v0    # "ambientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1563
    .end local v0    # "ambientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1564
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWeatherTemperatureBasedOnUnit(I)I
    .locals 4
    .param p0, "temperature"    # I

    .prologue
    .line 1359
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWeatherTemperatureUnit()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fahrenheit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    :goto_0
    return p0

    .line 1363
    :cond_0
    const v1, 0x3f0e38e4

    add-int/lit8 v2, p0, -0x20

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 1365
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 1366
    const-string v1, "AndroidUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Celsius temperature ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getWeatherTemperatureUnit()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1337
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ambient__pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1340
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "Fahrenheit"

    .line 1341
    .local v1, "temperatureUnit":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1342
    const-string v2, "weather_temperature_unit"

    const-string v3, "Fahrenheit"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1345
    :cond_0
    return-object v1
.end method

.method private isA2DPConnected()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 1148
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1149
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    if-ne v3, v2, :cond_0

    const/4 v1, 0x1

    .line 1153
    :cond_0
    return v1
.end method

.method public static isAirplaneMode(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    sput-boolean v2, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isAirplaneModeOn:Z

    .line 337
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAirplaneModeOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isAirplaneModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-boolean v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isAirplaneModeOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_1
    return v1

    :cond_0
    move v2, v1

    .line 334
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static isAtleastOneClockSeleted(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1602
    .local p0, "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 1604
    .local v2, "isClockSeleted":Z
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1605
    .local v0, "clockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1606
    const/4 v2, 0x1

    .line 1610
    .end local v0    # "clockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    const-string v3, "AndroidUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is at least one clock selected ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    return v2
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, "isMobileNetworkAvailable":Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 349
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 350
    .local v3, "networks":[Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 351
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 352
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    const-string v4, "TAG"

    const-string v5, "Network is availabel: "

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v2, 0x1

    .line 350
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    return v2
.end method

.method public static isNetworkConnected()Z
    .locals 4

    .prologue
    .line 1434
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1436
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1437
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1438
    const/4 v2, 0x1

    .line 1440
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isStringContainsChineseCharacters(Ljava/lang/String;)Z
    .locals 9
    .param p0, "chineseString"    # Ljava/lang/String;

    .prologue
    .line 1929
    const-string v6, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isChinese="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const/4 v4, 0x0

    .line 1933
    .local v4, "isChinese":Z
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v6, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->chineseUnicodeBlocks:Ljava/util/Set;

    if-eqz v6, :cond_0

    .line 1934
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-char v1, v0, v3

    .line 1935
    .local v1, "c":C
    sget-object v6, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->chineseUnicodeBlocks:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1936
    const-string v6, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is a chinese character "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    const/4 v4, 0x1

    .line 1954
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    :goto_1
    const-string v6, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Final is chinse = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    return v4

    .line 1942
    .restart local v0    # "arr$":[C
    .restart local v1    # "c":C
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    :cond_1
    :try_start_1
    const-string v6, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not chinese character "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1934
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1949
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v2

    .line 1950
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Ambient"

    const-string v7, "!!! Exception in find the character type"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static printMemoryStatus(Ljava/lang/String;)V
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 962
    const-string v2, "MemoryStatus"

    invoke-static {v2, p0}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v2, "MemoryStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeUsage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v2, "MemoryStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "heapSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v2, "MemoryStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "heapRemaining: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v0, v2

    .line 974
    .local v0, "memoryAvailable":D
    const-string v2, "MemoryStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "memoryAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method public static sendStoreFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1616
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/PHUB_JSON"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1621
    .local v4, "resultFolderLocation":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v3, "resultFileLocation":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1624
    const/4 v1, 0x0

    .line 1625
    .local v1, "enableTFTP":Z
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1626
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getEndPointEnableTFTPMode(I)Z

    move-result v1

    .line 1629
    :cond_0
    const-string v5, "TFTPFiletransferClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In AndroidUtils.java enableTFTP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    if-eqz v1, :cond_1

    .line 1633
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->getTFTPFiletransferClient(Landroid/content/Context;)Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->sendFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    .end local v1    # "enableTFTP":Z
    .end local v3    # "resultFileLocation":Ljava/io/File;
    .end local v4    # "resultFolderLocation":Ljava/io/File;
    :goto_0
    return-void

    .line 1637
    .restart local v1    # "enableTFTP":Z
    .restart local v3    # "resultFileLocation":Ljava/io/File;
    .restart local v4    # "resultFolderLocation":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .line 1638
    .local v2, "phubFileTransferClient":Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;
    if-nez v2, :cond_2

    .line 1639
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->getPhubFileTransferClient(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

    move-result-object v2

    .line 1642
    :cond_2
    const-string v5, "PhubFileTransferClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In AndroidUtils.java : File Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " File Transfer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    invoke-virtual {v2, p0, p1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->sendFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1653
    .end local v1    # "enableTFTP":Z
    .end local v2    # "phubFileTransferClient":Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;
    .end local v3    # "resultFileLocation":Ljava/io/File;
    .end local v4    # "resultFolderLocation":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AndroidUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send Store Fle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1649
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "resultFileLocation":Ljava/io/File;
    .restart local v4    # "resultFolderLocation":Ljava/io/File;
    :cond_3
    :try_start_1
    const-string v5, "StorageServiceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " file or folder doesnot exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public cancelBatteryMonitorTimer()V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mBatteryMonitorTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mBatteryMonitorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1066
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mBatteryMonitorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mBatteryMonitorTimer:Ljava/util/Timer;

    .line 1070
    :cond_0
    return-void
.end method

.method public changeTypeFace(Ljava/lang/String;Landroid/graphics/Typeface;Landroid/widget/TextView;)V
    .locals 6
    .param p1, "subText"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/graphics/Typeface;
    .param p3, "view"    # Landroid/widget/TextView;

    .prologue
    .line 1002
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1004
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1005
    .local v3, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v3, v5

    .line 1007
    .local v0, "end":I
    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$QcomTypeFace;

    const-string v5, "roboto"

    invoke-direct {v1, p0, v5, p2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$QcomTypeFace;-><init>(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1008
    .local v1, "qcomTypeface":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$QcomTypeFace;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1009
    .local v2, "spannable":Landroid/text/Spannable;
    const/16 v5, 0x21

    invoke-interface {v2, v1, v3, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1013
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    .end local v0    # "end":I
    .end local v1    # "qcomTypeface":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$QcomTypeFace;
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "start":I
    :cond_0
    return-void
.end method

.method public createMediaPlayer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 124
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 125
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 127
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 129
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 130
    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 132
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_2

    .line 133
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 134
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, "dataSource":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 136
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 139
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "dataSource":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 145
    .restart local v1    # "dataSource":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e1":Ljava/lang/Exception;
    const-string v3, "FindPhoneActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteOldLogFiles()V
    .locals 10

    .prologue
    .line 1980
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1983
    .local v2, "externalDir":Ljava/io/File;
    new-instance v7, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$3;

    invoke-direct {v7, p0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$3;-><init>(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)V

    .line 1996
    .local v7, "textFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v2, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1998
    .local v4, "files":[Ljava/io/File;
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 2001
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2002
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2005
    :catch_0
    move-exception v1

    .line 2006
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "AndroidUtils"

    const-string v9, "Exception while deleting old usage log files"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2010
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public getAndroidAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1408
    const/4 v0, 0x0

    .line 1411
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1413
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1415
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1424
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 1417
    :catch_0
    move-exception v2

    .line 1418
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MoreAppletsActivity.getAndroidAppName - could not get app name for packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAndroidAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1380
    const/4 v1, 0x0

    .line 1383
    .local v1, "appName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1385
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1387
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1396
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 1389
    :catch_0
    move-exception v2

    .line 1390
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MoreAppletsActivity.getAndroidAppName - could not get app name for packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCalendar(J)Ljava/util/Calendar;
    .locals 7
    .param p1, "epochTime"    # J

    .prologue
    .line 1447
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1449
    .local v0, "cal":Ljava/util/Calendar;
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEEE MMMM dd, yyyy"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1451
    .local v3, "format":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1453
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1455
    .local v1, "date":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1456
    const-string v4, "AndroidUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v0

    .line 1458
    :catch_0
    move-exception v2

    .line 1459
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentDayEndTimeInSec()J
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1478
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1479
    .local v0, "currentDay":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1480
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1481
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1482
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1483
    const-string v1, "AndroidUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Day End Time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public getCurrentDayStartTimeInSec()J
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1466
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1467
    .local v0, "currentDay":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1468
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1469
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1470
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1471
    const-string v1, "AndroidUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Day Start Time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public getDefaultReminderTimes()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1960
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1961
    .local v8, "defaultReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    const/4 v2, 0x3

    new-array v11, v2, [I

    fill-array-data v11, :array_0

    .line 1965
    .local v11, "times":[I
    move-object v7, v11

    .local v7, "arr$":[I
    array-length v10, v7

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_0

    aget v4, v7, v9

    .line 1966
    .local v4, "i":I
    const-string v2, "GMT+00:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1968
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    .line 1969
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1970
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1965
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1972
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v4    # "i":I
    :cond_0
    return-object v8

    .line 1961
    :array_0
    .array-data 4
        0xa
        0xe
        0x12
    .end array-data
.end method

.method public getHeadsetBroadCastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->headsetBroadcastReciever:Lcom/qualcomm/toq/smartwatch/service/receiver/HeadsetBroadCastReciever;

    return-object v0
.end method

.method public getMaxActivityPointForDay(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)D
    .locals 6
    .param p1, "day"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .prologue
    .line 1514
    const-wide/high16 v2, 0x4024000000000000L

    .line 1515
    .local v2, "maxActivityPoint":D
    if-eqz p1, :cond_1

    .line 1516
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getHourDataList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;

    .line 1517
    .local v0, "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v4

    long-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    .line 1518
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v4

    long-to-double v2, v4

    goto :goto_0

    .line 1523
    .end local v0    # "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-wide v2
.end method

.method public getMaxActivityPointForWeek(Lcom/qualcomm/toq/smartwatch/activitytracker/Month;)D
    .locals 12
    .param p1, "month"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Month;

    .prologue
    .line 1490
    const-wide/high16 v5, 0x4024000000000000L

    .line 1492
    .local v5, "maxActivityPoint":D
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->getWeekDataList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1493
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->getWeekDataList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    .line 1494
    .local v9, "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    if-eqz v9, :cond_2

    .line 1495
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .line 1496
    .local v0, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    const-wide/16 v7, 0x0

    .line 1497
    .local v7, "sumOfActivityPoints":D
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getHourDataList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;

    .line 1498
    .local v1, "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v10

    long-to-double v10, v10

    add-double/2addr v7, v10

    goto :goto_2

    .line 1501
    .end local v1    # "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    :cond_1
    cmpg-double v10, v5, v7

    if-gtz v10, :cond_0

    .line 1502
    move-wide v5, v7

    goto :goto_1

    .line 1492
    .end local v0    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "sumOfActivityPoints":D
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1508
    .end local v9    # "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    :cond_3
    return-wide v5
.end method

.method public getOppConnectionUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "btMacAddress"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "btgoep://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->OPP_UUID_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, ";authenticate=false;encrypt=false;master=false;android=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, "AndroidUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrevRingerMode()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->previousRingerModeState:I

    return v0
.end method

.method public getWDSupportedLanguages()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1687
    const/4 v3, 0x0

    .line 1689
    .local v3, "supportedLangs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v2

    .line 1691
    .local v2, "pref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    :try_start_0
    const-string v4, "locale_list_key"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1703
    :goto_0
    if-nez v3, :cond_0

    .line 1704
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "supportedLangs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1706
    .restart local v3    # "supportedLangs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1707
    const-string v4, "en_US"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    :cond_1
    return-object v3

    .line 1694
    :catch_0
    move-exception v1

    .line 1695
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1697
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 1698
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public initBatteryMonitorTimer()V
    .locals 6

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->cancelBatteryMonitorTimer()V

    .line 1024
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mBatteryMonitorTimer:Ljava/util/Timer;

    .line 1025
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mBatteryMonitorTimer:Ljava/util/Timer;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$1;-><init>(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1058
    return-void
.end method

.method public initPhubTCPData()V
    .locals 3

    .prologue
    .line 1661
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "phub_tcp_address"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "phub_tcp_address"

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_INTERFACE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_INTERFACE:Ljava/lang/String;

    .line 1670
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "phub_tcp_port"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1673
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "phub_tcp_port"

    sget v2, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_PORT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_PORT:I

    .line 1678
    :cond_1
    return-void
.end method

.method public isMediaPlayerPlaying()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThirdPartySMSAppsInstalled(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1164
    const/4 v1, 0x0

    .line 1167
    .local v1, "isPkgInstalled":Z
    new-array v3, v4, [Ljava/lang/String;

    const-string v6, "com.jb.gosms"

    aput-object v6, v3, v5

    .line 1168
    .local v3, "thirdPartyPackageNames":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1170
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 1171
    aget-object v6, v3, v0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    .line 1177
    :cond_0
    const-string v4, "SMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Third party Package= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_2
    return v1

    :cond_1
    move v1, v5

    .line 1171
    goto :goto_1

    .line 1170
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public loadWDSupportedLanguages(Ljava/lang/String;)V
    .locals 26
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 1718
    const-string v23, "AndroidUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Reading Firmware File : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 1720
    .local v5, "assetManager":Landroid/content/res/AssetManager;
    const/4 v12, 0x0

    .line 1721
    .local v12, "inputStream":Ljava/io/InputStream;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1723
    .local v19, "supportedLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "en_US"

    .line 1726
    .local v7, "defaultLanguage":Ljava/lang/String;
    :try_start_0
    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1727
    .local v4, "assetFiles":[Ljava/lang/String;
    move-object v3, v4

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v11, v0, :cond_0

    aget-object v9, v3, v11

    .line 1729
    .local v9, "filename":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1730
    invoke-virtual {v5, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 1735
    .end local v9    # "filename":Ljava/lang/String;
    :cond_0
    if-eqz v12, :cond_6

    .line 1736
    new-instance v22, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1737
    .local v22, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v21, 0x0

    .line 1739
    .local v21, "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v21

    if-eqz v21, :cond_4

    .line 1740
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "locale_list.jsn"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1743
    const-string v23, "AndroidUtils"

    const-string v24, "Reading locale_list.jsn"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1745
    .local v13, "jsonBuilder":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1746
    .local v6, "br":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "line":Ljava/lang/String;
    :goto_1
    if-eqz v17, :cond_3

    .line 1747
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 1727
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v13    # "jsonBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "line":Ljava/lang/String;
    .end local v21    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v22    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "filename":Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1749
    .end local v9    # "filename":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "jsonBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v21    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v22    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1750
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1752
    .local v15, "jsonString":Ljava/lang/String;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1753
    .local v14, "jsonInfo":Lorg/json/JSONObject;
    const-string v23, "Default"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1754
    const-string v23, "AndroidUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Default language read from 1234.zip : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string v23, "Languages"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 1758
    .local v20, "wdSupportedLangs":Lorg/json/JSONArray;
    if-eqz v20, :cond_4

    .line 1759
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_4

    .line 1760
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    const-string v23, "AndroidUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "WD Supported Language "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    add-int/lit8 v25, v10, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1772
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v10    # "i":I
    .end local v13    # "jsonBuilder":Ljava/lang/StringBuilder;
    .end local v14    # "jsonInfo":Lorg/json/JSONObject;
    .end local v15    # "jsonString":Ljava/lang/String;
    .end local v17    # "line":Ljava/lang/String;
    .end local v20    # "wdSupportedLangs":Lorg/json/JSONArray;
    :cond_4
    if-eqz v12, :cond_5

    .line 1773
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 1774
    const/4 v12, 0x0

    .line 1776
    :cond_5
    if-eqz v22, :cond_6

    .line 1777
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1798
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "assetFiles":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v22    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_6
    :goto_3
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v18

    .line 1800
    .local v18, "phubPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    :try_start_1
    const-string v23, "locale_list_key"

    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1814
    :goto_4
    const-string v23, "default_locale_key"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    return-void

    .line 1784
    .end local v18    # "phubPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    :catch_0
    move-exception v8

    .line 1785
    .local v8, "e":Ljava/io/IOException;
    const-string v23, "AndroidUtils"

    const-string v24, "IO Exception while reading WD Supported Languages"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1788
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 1789
    .local v8, "e":Lorg/json/JSONException;
    const-string v23, "AndroidUtils"

    const-string v24, "JSON Exception in while reading WD Supported Languages"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 1792
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v8

    .line 1793
    .local v8, "e":Ljava/lang/Exception;
    const-string v23, "AndroidUtils"

    const-string v24, "Exception in while reading WD Supported Languages"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1803
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v18    # "phubPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    :catch_3
    move-exception v8

    .line 1804
    .local v8, "e":Ljava/io/IOException;
    const-string v23, "AndroidUtils"

    const-string v24, "IO Exception while storing WD Supported Languages into preference"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1808
    .end local v8    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    .line 1809
    .local v8, "e":Ljava/lang/Exception;
    const-string v23, "AndroidUtils"

    const-string v24, "Exception in while storing WD Supported Languages"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public pauseMediaPlayer()V
    .locals 4

    .prologue
    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 235
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 236
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AndroidUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized pushFileToWatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;-><init>(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PUSH###"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "###"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    monitor-exit p0

    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushFileToWatchInBackground(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 25
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    const-string v21, "AndroidUtils"

    const-string v22, "pushFileToWatch called"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Source Path= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Destination  Path= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v6, 0x0

    .line 629
    .local v6, "conn":Ljavax/obex/ClientSession;
    const/16 v16, 0x0

    .line 630
    .local v16, "putOperation":Ljavax/obex/Operation;
    const/4 v15, 0x0

    .line 631
    .local v15, "out":Ljava/io/DataOutputStream;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    .line 632
    const-string v14, ""

    .line 636
    .local v14, "mDeviceAddr":Ljava/lang/String;
    sget-boolean v21, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->connectionInProgress:Z

    if-eqz v21, :cond_0

    .line 637
    const-string v21, "AndroidUtils"

    const-string v22, "Already an FTP Session is in Progress. Close it first and try again"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    const/16 v21, 0x0

    .line 862
    :goto_0
    monitor-exit p0

    return v21

    .line 641
    :cond_0
    :try_start_1
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "**************************"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    :try_start_2
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 645
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "associated_wd_device_address"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 650
    if-eqz v14, :cond_1

    .line 651
    const-string v21, ":"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 656
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "btgoep://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/qualcomm/toq/base/utils/Constants;->FTP_UUID:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";authenticate=false;encrypt=false;master=false;android=true"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "FTPUrl":Ljava/lang/String;
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "FTP URL = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    .line 665
    .local v17, "root":Ljava/lang/String;
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Root="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    if-eqz v21, :cond_12

    .line 669
    const-string v21, "/mnt/sdcard"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 670
    const-string v21, "/mnt/sdcard"

    const-string v22, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 671
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Src Path1 = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_2
    :goto_1
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Src Path final = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    new-instance v18, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 689
    .local v18, "srcFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isFile()Z

    move-result v21

    if-nez v21, :cond_8

    .line 690
    const-string v21, "AndroidUtils"

    const-string v22, "Source File does not exists or is not a file"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 673
    .end local v18    # "srcFile":Ljava/io/File;
    :cond_3
    const-string v21, "mnt/sdcard"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 674
    const-string v21, "mnt/sdcard"

    const-string v22, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 675
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Src Path2 = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 826
    .end local v4    # "FTPUrl":Ljava/lang/String;
    .end local v17    # "root":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 828
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v21, "AndroidUtils"

    const-string v22, "Exception during pushfile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    if-eqz v15, :cond_4

    .line 830
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 831
    const/4 v15, 0x0

    .line 839
    :cond_4
    if-eqz v6, :cond_5

    .line 840
    const/16 v21, 0x0

    :try_start_4
    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v11

    .line 841
    .local v11, "hsDisconnect":Ljavax/obex/HeaderSet;
    invoke-interface {v11}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v21

    const/16 v22, 0xa0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 842
    const-string v21, "AndroidUtils"

    const-string v22, "conn.disconnect() successful"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 859
    .end local v11    # "hsDisconnect":Ljavax/obex/HeaderSet;
    :cond_5
    :goto_2
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 860
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 677
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "FTPUrl":Ljava/lang/String;
    .restart local v17    # "root":Ljava/lang/String;
    :cond_6
    :try_start_6
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 678
    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 679
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Src Path Root 1 = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 624
    .end local v4    # "FTPUrl":Ljava/lang/String;
    .end local v6    # "conn":Ljavax/obex/ClientSession;
    .end local v14    # "mDeviceAddr":Ljava/lang/String;
    .end local v15    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "putOperation":Ljavax/obex/Operation;
    .end local v17    # "root":Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 681
    .restart local v4    # "FTPUrl":Ljava/lang/String;
    .restart local v6    # "conn":Ljavax/obex/ClientSession;
    .restart local v14    # "mDeviceAddr":Ljava/lang/String;
    .restart local v15    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "putOperation":Ljavax/obex/Operation;
    .restart local v17    # "root":Ljava/lang/String;
    :cond_7
    const/16 v21, 0x1

    :try_start_7
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 682
    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 683
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Src Path Root 2 = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 694
    .restart local v18    # "srcFile":Ljava/io/File;
    :cond_8
    const-string v21, "AndroidUtils"

    const-string v22, "Source File exists"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v21, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 700
    .local v19, "strDestTemp":[Ljava/lang/String;
    const-string v21, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 701
    .local v20, "strSourceTemp":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v10, v20, v21

    .line 702
    .local v10, "fileName":Ljava/lang/String;
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "FileName="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/16 v20, 0x0

    .line 705
    if-nez v6, :cond_9

    .line 706
    const/16 v21, 0x3

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljavax/obex/ClientSession;

    move-object v6, v0

    .line 710
    const/16 v21, 0x10

    move/from16 v0, v21

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    .line 718
    .local v3, "FBUiid":[B
    invoke-interface {v6}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    const/16 v22, 0x46

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v1, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 721
    const-string v21, "AndroidUtils"

    const-string v22, "Connection Success "

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    .end local v3    # "FBUiid":[B
    :cond_9
    invoke-interface {v6}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v6, v0, v1, v2}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    .line 730
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_d

    .line 731
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "strTemp= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v19, v12

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    aget-object v21, v19, v12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_b

    aget-object v21, v19, v12

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v23, v19, v12

    invoke-interface/range {v21 .. v23}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v6, v0, v1, v2}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    .line 730
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 738
    :cond_b
    if-eqz v12, :cond_a

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-eq v12, v0, :cond_a

    .line 739
    const-string v21, "AndroidUtils"

    const-string v22, "Invalid Destination Path "

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    if-eqz v6, :cond_c

    .line 741
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 742
    const/4 v6, 0x0

    .line 744
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 750
    :cond_d
    invoke-interface {v6}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v1, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v7

    .line 755
    .local v7, "data":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    const/16 v22, 0xc3

    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v16

    .line 758
    invoke-interface/range {v16 .. v16}, Ljavax/obex/Operation;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v15

    .line 759
    const/4 v12, 0x0

    .line 760
    array-length v13, v7

    .line 761
    .local v13, "length":I
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Length= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/16 v5, 0x3e00

    .line 782
    .local v5, "byteSize1":I
    :goto_4
    if-eqz v13, :cond_f

    .line 784
    if-ge v13, v5, :cond_e

    .line 785
    invoke-virtual {v15, v7, v12, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 786
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 787
    add-int/2addr v12, v13

    .line 788
    const/4 v13, 0x0

    goto :goto_4

    .line 791
    :cond_e
    invoke-virtual {v15, v7, v12, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 792
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 793
    add-int/2addr v12, v5

    .line 794
    sub-int/2addr v13, v5

    goto :goto_4

    .line 798
    :cond_f
    if-eqz v15, :cond_10

    .line 799
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 800
    const/4 v15, 0x0

    .line 802
    :cond_10
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "File transfer completed  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 805
    const/16 v21, 0x0

    :try_start_8
    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v11

    .line 806
    .restart local v11    # "hsDisconnect":Ljavax/obex/HeaderSet;
    invoke-interface {v11}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v21

    const/16 v22, 0xa0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 807
    const-string v21, "AndroidUtils"

    const-string v22, "conn.disconnect() successful"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .end local v11    # "hsDisconnect":Ljavax/obex/HeaderSet;
    :goto_5
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 810
    .restart local v11    # "hsDisconnect":Ljavax/obex/HeaderSet;
    :cond_11
    const-string v21, "AndroidUtils"

    const-string v22, "conn.disconnect() unsuccessful"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 813
    .end local v11    # "hsDisconnect":Ljavax/obex/HeaderSet;
    :catch_1
    move-exception v8

    .line 814
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v21, "AndroidUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "con.disconnect() Exception = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 822
    .end local v5    # "byteSize1":I
    .end local v7    # "data":[B
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "length":I
    .end local v18    # "srcFile":Ljava/io/File;
    .end local v19    # "strDestTemp":[Ljava/lang/String;
    .end local v20    # "strSourceTemp":[Ljava/lang/String;
    :cond_12
    const-string v21, "AndroidUtils"

    const-string v22, "Memory Card Not Detected"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 862
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 845
    .end local v4    # "FTPUrl":Ljava/lang/String;
    .end local v17    # "root":Ljava/lang/String;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "hsDisconnect":Ljavax/obex/HeaderSet;
    :cond_13
    :try_start_a
    const-string v21, "AndroidUtils"

    const-string v22, "conn.disconnect() unsuccessful"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 849
    .end local v11    # "hsDisconnect":Ljavax/obex/HeaderSet;
    :catch_2
    move-exception v21

    goto/16 :goto_2

    .line 855
    :catch_3
    move-exception v9

    .line 857
    .local v9, "e1":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 710
    :array_0
    .array-data 1
        -0x7t
        -0x14t
        0x7bt
        -0x3ct
        -0x6bt
        0x3ct
        0x11t
        -0x2et
        -0x68t
        0x4et
        0x52t
        0x54t
        0x0t
        -0x24t
        -0x62t
        0x9t
    .end array-data
.end method

.method public receiveFileFromWatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    .line 393
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;-><init>(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PULL###"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "###"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 395
    return-void
.end method

.method public declared-synchronized receiveFileFromWatchInBackground(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 33
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    .line 400
    monitor-enter p0

    const/4 v6, 0x0

    .line 401
    .local v6, "conn":Ljavax/obex/ClientSession;
    const/16 v19, 0x0

    .line 402
    .local v19, "operation":Ljavax/obex/Operation;
    const/16 v16, 0x0

    .line 403
    .local v16, "is":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 404
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/16 v29, 0x0

    :try_start_0
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    .line 405
    const-string v18, ""

    .line 406
    .local v18, "mDeviceAddr":Ljava/lang/String;
    const-string v27, ""

    .line 407
    .local v27, "timeUnit":Ljava/lang/String;
    const/16 v17, 0x0

    .line 410
    .local v17, "len":I
    sget-boolean v29, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->connectionInProgress:Z

    if-eqz v29, :cond_1

    .line 411
    const-string v29, "AndroidUtils"

    const-string v30, "Already an FTP Session is in Progress. Close it first and try again"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 413
    const/16 v29, 0x0

    .line 602
    :cond_0
    :goto_0
    monitor-exit p0

    return v29

    .line 415
    :cond_1
    :try_start_1
    const-string v29, "AndroidUtils"

    const-string v30, "getFileFromWD called"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Source Path= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Destination  Path= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v29

    if-eqz v29, :cond_2

    .line 421
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v29

    const-string v30, "associated_wd_device_address"

    const/16 v31, 0x0

    invoke-interface/range {v29 .. v31}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, ":"

    const-string v31, ""

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 430
    :cond_2
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "btgoep://"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ":"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->FTP_UUID:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ";authenticate=false;encrypt=false;master=false;android=true"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "FTPUrl":Ljava/lang/String;
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "FTP URL = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    .line 437
    .local v20, "root":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v29

    if-eqz v29, :cond_1f

    .line 440
    const-string v29, "/mnt/sdcard"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 442
    const-string v29, "/mnt/sdcard"

    const-string v30, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 443
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Dest Path1 = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_3
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x2f

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    .line 459
    const-string v29, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 460
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Dest Path3 = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_4
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Dest Path final = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v23, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .local v23, "storageLocDir":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_13

    .line 468
    const-string v29, "AndroidUtils"

    const-string v30, "Directory does not exists...creating"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdir()Z

    move-result v29

    if-nez v29, :cond_12

    .line 470
    const-string v29, "AndroidUtils"

    const-string v30, "Cannot create the directory. Invalid destination path"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    const/16 v29, 0x0

    .line 576
    if-eqz v13, :cond_5

    .line 577
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 578
    const/4 v13, 0x0

    .line 580
    :cond_5
    if-eqz v16, :cond_6

    .line 581
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 582
    const/16 v16, 0x0

    .line 584
    :cond_6
    if-eqz v19, :cond_7

    .line 585
    invoke-interface/range {v19 .. v19}, Ljavax/obex/Operation;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 586
    const/16 v19, 0x0

    .line 589
    :cond_7
    if-eqz v6, :cond_0

    .line 590
    const/16 v30, 0x0

    :try_start_4
    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 591
    invoke-interface {v6}, Ljavax/obex/ClientSession;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 592
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 445
    .end local v23    # "storageLocDir":Ljava/io/File;
    :cond_8
    :try_start_5
    const-string v29, "mnt/sdcard"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 446
    const-string v29, "mnt/sdcard"

    const-string v30, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 447
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Dest Path2 = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 569
    .end local v20    # "root":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 570
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "--"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 572
    const/16 v29, 0x0

    .line 576
    if-eqz v13, :cond_9

    .line 577
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 578
    const/4 v13, 0x0

    .line 580
    :cond_9
    if-eqz v16, :cond_a

    .line 581
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 582
    const/16 v16, 0x0

    .line 584
    :cond_a
    if-eqz v19, :cond_b

    .line 585
    invoke-interface/range {v19 .. v19}, Ljavax/obex/Operation;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 586
    const/16 v19, 0x0

    .line 589
    :cond_b
    if-eqz v6, :cond_0

    .line 590
    const/16 v30, 0x0

    :try_start_8
    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 591
    invoke-interface {v6}, Ljavax/obex/ClientSession;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 592
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 449
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v20    # "root":Ljava/lang/String;
    :cond_c
    :try_start_9
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 450
    const-string v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 451
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Dest Path Root 1 = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 575
    .end local v20    # "root":Ljava/lang/String;
    :catchall_0
    move-exception v29

    .line 576
    :goto_3
    if-eqz v13, :cond_d

    .line 577
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 578
    const/4 v13, 0x0

    .line 580
    :cond_d
    if-eqz v16, :cond_e

    .line 581
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 582
    const/16 v16, 0x0

    .line 584
    :cond_e
    if-eqz v19, :cond_f

    .line 585
    invoke-interface/range {v19 .. v19}, Ljavax/obex/Operation;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 586
    const/16 v19, 0x0

    .line 589
    :cond_f
    if-eqz v6, :cond_10

    .line 590
    const/16 v30, 0x0

    :try_start_b
    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 591
    invoke-interface {v6}, Ljavax/obex/ClientSession;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 592
    const/4 v6, 0x0

    .line 600
    :cond_10
    :goto_4
    :try_start_c
    throw v29
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 400
    .end local v4    # "FTPUrl":Ljava/lang/String;
    .end local v17    # "len":I
    .end local v18    # "mDeviceAddr":Ljava/lang/String;
    .end local v27    # "timeUnit":Ljava/lang/String;
    :catchall_1
    move-exception v29

    monitor-exit p0

    throw v29

    .line 453
    .restart local v4    # "FTPUrl":Ljava/lang/String;
    .restart local v17    # "len":I
    .restart local v18    # "mDeviceAddr":Ljava/lang/String;
    .restart local v20    # "root":Ljava/lang/String;
    .restart local v27    # "timeUnit":Ljava/lang/String;
    :cond_11
    const/16 v29, 0x1

    :try_start_d
    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 454
    const-string v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 455
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Dest Path Root 2 = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 598
    .restart local v23    # "storageLocDir":Ljava/io/File;
    :catch_1
    move-exception v8

    .line 599
    .local v8, "e1":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_0

    .line 475
    .end local v8    # "e1":Ljava/io/IOException;
    :cond_12
    :try_start_f
    const-string v29, "AndroidUtils"

    const-string v30, "Directory successfully created"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_13
    const-string v29, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 481
    .local v24, "strTemp":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v24, v29

    const-string v30, "."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_1e

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v24, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_1e

    .line 484
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    .line 485
    .local v21, "startTime":J
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    aget-object v12, v24, v29

    .line 486
    .local v12, "fileName":Ljava/lang/String;
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "File Name ="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v11, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v11, "file":Ljava/io/File;
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "File= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    if-nez v6, :cond_14

    .line 492
    const/16 v29, 0x3

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v4, v0, v1}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Ljavax/obex/ClientSession;

    move-object v6, v0

    .line 496
    const/16 v29, 0x10

    move/from16 v0, v29

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    .line 504
    .local v3, "FBUiid":[B
    invoke-interface {v6}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v29, v0

    const/16 v30, 0x46

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v1, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 507
    const-string v29, "AndroidUtils"

    const-string v30, "Connection Success "

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .end local v3    # "FBUiid":[B
    :cond_14
    invoke-interface {v6}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    const-string v31, ""

    invoke-interface/range {v29 .. v31}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v6, v0, v1, v2}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    .line 515
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v15, v0, :cond_17

    .line 516
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "strTemp= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget-object v31, v24, v15

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    aget-object v29, v24, v15

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_16

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-object v31, v24, v15

    invoke-interface/range {v29 .. v31}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v6, v0, v1, v2}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    .line 515
    :cond_15
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 522
    :cond_16
    if-eqz v15, :cond_15

    .line 523
    const-string v29, "AndroidUtils"

    const-string v30, "Invalid Source Path "

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_17
    invoke-interface {v6}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v1, v12}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v19

    .line 532
    invoke-interface/range {v19 .. v19}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 533
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Length of file= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-interface/range {v19 .. v19}, Ljavax/obex/Operation;->getLength()J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 536
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v14, "fos":Ljava/io/FileOutputStream;
    const/16 v29, 0x400

    :try_start_10
    move/from16 v0, v29

    new-array v5, v0, [B

    .line 537
    .local v5, "b":[B
    const/16 v28, 0x0

    .line 538
    .local v28, "totalBytesTransferred":I
    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v17

    if-lez v17, :cond_18

    .line 539
    add-int v28, v28, v17

    .line 540
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 541
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "totalBytesTransferred="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 569
    .end local v5    # "b":[B
    .end local v28    # "totalBytesTransferred":I
    :catch_2
    move-exception v7

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 544
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "b":[B
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v28    # "totalBytesTransferred":I
    :cond_18
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 545
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 546
    invoke-interface/range {v19 .. v19}, Ljavax/obex/Operation;->close()V

    .line 548
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 549
    .local v9, "endTime":J
    sub-long v29, v9, v21

    const-wide/16 v31, 0x3e8

    div-long v25, v29, v31

    .line 550
    .local v25, "timeDiff":J
    const-string v27, "sec"

    .line 551
    const-wide/16 v29, 0x0

    cmp-long v29, v25, v29

    if-nez v29, :cond_19

    .line 552
    sub-long v25, v9, v21

    .line 553
    const-string v27, "milli-sec"

    .line 555
    :cond_19
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "File stored in: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v29, "AndroidUtils"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Time taken for Transfer is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object v13, v14

    .line 576
    .end local v5    # "b":[B
    .end local v9    # "endTime":J
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "i":I
    .end local v21    # "startTime":J
    .end local v23    # "storageLocDir":Ljava/io/File;
    .end local v24    # "strTemp":[Ljava/lang/String;
    .end local v25    # "timeDiff":J
    .end local v28    # "totalBytesTransferred":I
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :goto_7
    if-eqz v13, :cond_1a

    .line 577
    :try_start_11
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 578
    const/4 v13, 0x0

    .line 580
    :cond_1a
    if-eqz v16, :cond_1b

    .line 581
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 582
    const/16 v16, 0x0

    .line 584
    :cond_1b
    if-eqz v19, :cond_1c

    .line 585
    invoke-interface/range {v19 .. v19}, Ljavax/obex/Operation;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 586
    const/16 v19, 0x0

    .line 589
    :cond_1c
    if-eqz v6, :cond_1d

    .line 590
    const/16 v29, 0x0

    :try_start_12
    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 591
    invoke-interface {v6}, Ljavax/obex/ClientSession;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 592
    const/4 v6, 0x0

    .line 602
    :cond_1d
    :goto_8
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 560
    .restart local v23    # "storageLocDir":Ljava/io/File;
    .restart local v24    # "strTemp":[Ljava/lang/String;
    :cond_1e
    :try_start_13
    const-string v29, "AndroidUtils"

    const-string v30, "Invalid file name or extension / format"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 564
    .end local v23    # "storageLocDir":Ljava/io/File;
    .end local v24    # "strTemp":[Ljava/lang/String;
    :cond_1f
    const-string v29, "AndroidUtils"

    const-string v30, "Operation cannot be performed.Memory Card not found"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .line 598
    :catch_3
    move-exception v8

    .line 599
    .restart local v8    # "e1":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 598
    .end local v8    # "e1":Ljava/io/IOException;
    .end local v20    # "root":Ljava/lang/String;
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .line 599
    .restart local v8    # "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 598
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 599
    .restart local v8    # "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_4

    .line 595
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_6
    move-exception v30

    goto/16 :goto_4

    .line 575
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "i":I
    .restart local v20    # "root":Ljava/lang/String;
    .restart local v21    # "startTime":J
    .restart local v23    # "storageLocDir":Ljava/io/File;
    .restart local v24    # "strTemp":[Ljava/lang/String;
    :catchall_2
    move-exception v29

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 595
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v20    # "root":Ljava/lang/String;
    .end local v21    # "startTime":J
    .end local v23    # "storageLocDir":Ljava/io/File;
    .end local v24    # "strTemp":[Ljava/lang/String;
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v30

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v20    # "root":Ljava/lang/String;
    :catch_8
    move-exception v29

    goto :goto_8

    .restart local v23    # "storageLocDir":Ljava/io/File;
    :catch_9
    move-exception v30

    goto/16 :goto_0

    .line 496
    :array_0
    .array-data 1
        -0x7t
        -0x14t
        0x7bt
        -0x3ct
        -0x6bt
        0x3ct
        0x11t
        -0x2et
        -0x68t
        0x4et
        0x52t
        0x54t
        0x0t
        -0x24t
        -0x62t
        0x9t
    .end array-data
.end method

.method public resumeMediaPlayer()V
    .locals 5

    .prologue
    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 253
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 256
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AndroidUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBroadCastReceiver(Lcom/qualcomm/toq/smartwatch/service/receiver/HeadsetBroadCastReciever;)V
    .locals 0
    .param p1, "hsBReceiver"    # Lcom/qualcomm/toq/smartwatch/service/receiver/HeadsetBroadCastReciever;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->headsetBroadcastReciever:Lcom/qualcomm/toq/smartwatch/service/receiver/HeadsetBroadCastReciever;

    .line 375
    return-void
.end method

.method public setCurrentRingerMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 318
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 321
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 323
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public setRingerModeSilent(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v5, 0x1

    .line 284
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    .line 285
    .local v2, "obj":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-nez v2, :cond_0

    .line 286
    const-string v3, "AndroidUtils"

    const-string v4, "ConnectionFactory.getConnectionFactory() is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v2    # "obj":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :goto_0
    return-void

    .line 289
    .restart local v2    # "obj":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :cond_0
    if-ne p1, v5, :cond_2

    .line 290
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 292
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 293
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->previousRingerModeState:I

    .line 295
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setAppCurrentMode(I)V

    .line 296
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->setCurrentRingerMode(I)V

    .line 297
    const-string v3, "AndroidUtils"

    const-string v4, "Putting Phone to Vibrate Mode"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "obj":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    const-string v3, "AndroidUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "obj":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setAppCurrentMode(I)V

    .line 302
    iget v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->previousRingerModeState:I

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->setCurrentRingerMode(I)V

    .line 303
    const-string v3, "AndroidUtils"

    const-string v4, "Putting Phone to Normal Mode"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startMediaPlayer()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 153
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 154
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 159
    .local v1, "audioManager":Landroid/media/AudioManager;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->createMediaPlayer()V

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 163
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 180
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_2

    .line 181
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    sput v3, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mDeviceAlarmVolume:I

    .line 182
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f400000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    .line 183
    .local v0, "alarmVol":I
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 186
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 191
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isA2DPConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    const-string v3, "AndroidUtils"

    const-string v4, "A2DP is connected : need to do the tweak"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v3, 0x4

    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x8

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 198
    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 201
    const/4 v3, 0x4

    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x8

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 206
    :cond_1
    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 220
    .end local v0    # "alarmVol":I
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_2
    :goto_1
    return-void

    .line 167
    .restart local v1    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "FindPhoneActivity"

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "FindPhoneActivity"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "FindPhoneActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 215
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "FindPhoneActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public stopMediaPlayer()V
    .locals 4

    .prologue
    .line 268
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 269
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 271
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 272
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 273
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 274
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AndroidUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateToqLanguage()V
    .locals 7

    .prologue
    .line 1823
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v3

    .line 1826
    .local v3, "prefs":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    const-string v1, "en_US"

    .line 1828
    .local v1, "localeKey":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1831
    const-string v4, "locale_key"

    const-string v5, "en_US"

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1835
    :cond_0
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getNormalizedLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 1837
    .local v0, "applicationLocale":Ljava/util/Locale;
    const-string v4, "AndroidUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application Locale in preference : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 1840
    .local v2, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWDSupportedLanguages()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1844
    iput-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1852
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v4

    const-string v5, "release"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1856
    const-string v4, "AndroidUtils"

    const-string v5, "Application Locale for release 1.6 hard set to: en_US"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const-string v4, "en_US"

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getNormalizedLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1866
    :cond_1
    if-eqz v3, :cond_2

    .line 1867
    const-string v4, "locale_key"

    iget-object v5, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    :cond_2
    const-string v4, "AndroidUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application Locale has been set to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1879
    return-void

    .line 1849
    :cond_3
    const-string v4, "en_US"

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getNormalizedLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0
.end method
