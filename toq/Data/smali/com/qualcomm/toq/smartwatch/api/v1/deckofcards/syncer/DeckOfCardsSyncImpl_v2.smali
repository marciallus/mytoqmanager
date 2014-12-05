.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;
.source "DeckOfCardsSyncImpl_v2.java"


# static fields
.field private static final APP_ZIP_COLOR_ICON_FILE_NAME:Ljava/lang/String; = "color.img"

.field private static final APP_ZIP_FILE_NAME:Ljava/lang/String; = "app.zip"

.field private static final APP_ZIP_MANIFEST_LUA_FILE_NAME:Ljava/lang/String; = "manifest.lua"

.field private static final APP_ZIP_TEMPLATE_NAME:Ljava/lang/String; = "deckofcards_app.zip"

.field private static final APP_ZIP_WHITE_ICON_FILE_NAME:Ljava/lang/String; = "white.img"

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "cards.dat"

.field private static final NAME_TOKEN:Ljava/lang/String; = "%NAME%"

.field private static final WD_ROOT_DIR:Ljava/lang/String; = "/packages"

.field private static inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;-><init>()V

    .line 69
    return-void
.end method

.method private copyDirectoryIntoZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 19
    .param p1, "srcDir"    # Ljava/io/File;
    .param p2, "zos"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "rootDirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 703
    .local v10, "filesList":[Ljava/lang/String;
    move-object v3, v10

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_6

    aget-object v7, v3, v11

    .line 706
    .local v7, "entry":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 707
    :cond_0
    new-instance v16, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 715
    .local v16, "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 717
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 721
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 722
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    .line 723
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 725
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v9, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->copyDirectoryIntoZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 703
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 710
    .end local v9    # "file":Ljava/io/File;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 711
    .local v6, "dirPath":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    add-int v17, v17, v18

    add-int/lit8 v12, v17, 0x1

    .line 712
    .local v12, "indexAfterRootDir":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 713
    .local v8, "entryName":Ljava/lang/String;
    new-instance v16, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    goto :goto_1

    .line 729
    .end local v6    # "dirPath":Ljava/lang/String;
    .end local v8    # "entryName":Ljava/lang/String;
    .end local v12    # "indexAfterRootDir":I
    .restart local v9    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 730
    .local v15, "parentFile":Ljava/io/File;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_4

    .line 731
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 734
    :cond_4
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 736
    .local v4, "bis":Ljava/io/BufferedInputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 739
    .local v5, "buffer":[B
    :goto_3
    invoke-virtual {v4, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v14

    .local v14, "length":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_5

    .line 740
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1, v14}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_3

    .line 743
    :cond_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 745
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 746
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_2

    .line 749
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "buffer":[B
    .end local v7    # "entry":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v14    # "length":I
    .end local v15    # "parentFile":Ljava/io/File;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_6
    return-void
.end method

.method private copyFromAssets(Ljava/lang/String;Ljava/io/File;)V
    .locals 10
    .param p1, "assetsFileName"    # Ljava/lang/String;
    .param p2, "localFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 996
    const/4 v0, 0x0

    .line 997
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 1001
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1004
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v4, v7, [B

    .line 1007
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "length":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1008
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1014
    .end local v4    # "buffer":[B
    .end local v6    # "length":I
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 1015
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v7, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "An error occurred copying the file from the assets to storage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", localFile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1019
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1021
    :goto_2
    if-eqz v0, :cond_0

    .line 1022
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1025
    :cond_0
    if-eqz v2, :cond_1

    .line 1026
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1030
    :cond_1
    :goto_3
    throw v7

    .line 1011
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "length":I
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1021
    if-eqz v1, :cond_3

    .line 1022
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1025
    :cond_3
    if-eqz v3, :cond_4

    .line 1026
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1034
    :cond_4
    :goto_4
    return-void

    .line 1030
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "length":I
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v8

    goto :goto_3

    .line 1019
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 1014
    :catch_2
    move-exception v5

    goto :goto_1

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 1030
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "length":I
    :catch_4
    move-exception v7

    goto :goto_4
.end method

.method private copyLuaTemplateFromAssets(Ljava/lang/String;Ljava/io/File;)V
    .locals 13
    .param p1, "templateZipName"    # Ljava/lang/String;
    .param p2, "localAppZipDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 580
    const/4 v8, 0x0

    .line 584
    .local v8, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipInputStream;

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .local v9, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v7, 0x0

    .line 588
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 590
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "entryName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 594
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 595
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 596
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 633
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v8, v9

    .line 634
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_1
    :try_start_2
    new-instance v10, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "An error occurred copying the app template from the assets to storage, templateZipName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", localAppZipDir: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 639
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 641
    :goto_2
    if-eqz v8, :cond_1

    .line 642
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 646
    :cond_1
    :goto_3
    throw v10

    .line 601
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 602
    .local v6, "parentFile":Ljava/io/File;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 603
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 606
    :cond_3
    const-string v10, ".lua"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 607
    const-string v10, "DeckOfCards"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " zipEntry.getName(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 613
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 616
    .local v1, "buffer":[B
    :goto_4
    invoke-virtual {v9, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    .local v5, "length":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_4

    .line 617
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_4

    .line 639
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "length":I
    .end local v6    # "parentFile":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .line 620
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "length":I
    .restart local v6    # "parentFile":Ljava/io/File;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 621
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 623
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_0

    .line 627
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "buffer":[B
    .end local v5    # "length":I
    :cond_5
    const-string v10, "DeckOfCards"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " this is not a lua file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 641
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "parentFile":Ljava/io/File;
    :cond_6
    if-eqz v9, :cond_7

    .line 642
    :try_start_5
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 650
    :cond_7
    :goto_5
    return-void

    .line 646
    :catch_1
    move-exception v10

    goto :goto_5

    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v11

    goto :goto_3

    .line 633
    :catch_3
    move-exception v2

    goto/16 :goto_1
.end method

.method private copyTemplateAppFromAssets(Ljava/lang/String;Ljava/io/File;)V
    .locals 13
    .param p1, "templateZipName"    # Ljava/lang/String;
    .param p2, "localAppZipDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 505
    const/4 v8, 0x0

    .line 509
    .local v8, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipInputStream;

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .local v9, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v7, 0x0

    .line 513
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 515
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "entryName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 521
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 522
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 523
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 550
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v8, v9

    .line 551
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_1
    :try_start_2
    new-instance v10, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "An error occurred copying the app template from the assets to storage, templateZipName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", localAppZipDir: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 558
    :goto_2
    if-eqz v8, :cond_1

    .line 559
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 563
    :cond_1
    :goto_3
    throw v10

    .line 528
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 529
    .local v6, "parentFile":Ljava/io/File;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 530
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 533
    :cond_3
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 535
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 538
    .local v1, "buffer":[B
    :goto_4
    invoke-virtual {v9, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    .local v5, "length":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_4

    .line 539
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_4

    .line 556
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "length":I
    .end local v6    # "parentFile":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .line 542
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "length":I
    .restart local v6    # "parentFile":Ljava/io/File;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 543
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 545
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 558
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "length":I
    .end local v6    # "parentFile":Ljava/io/File;
    :cond_5
    if-eqz v9, :cond_6

    .line 559
    :try_start_5
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 567
    :cond_6
    :goto_5
    return-void

    .line 563
    :catch_1
    move-exception v10

    goto :goto_5

    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v11

    goto :goto_3

    .line 550
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private debugZipFile(Ljava/io/File;)V
    .locals 9
    .param p1, "zipFile"    # Ljava/io/File;

    .prologue
    .line 755
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeckOfCardsSyncImpl_v2.debugZipFile - zipFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 762
    .local v3, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 765
    .end local v3    # "zis":Ljava/util/zip/ZipInputStream;
    .local v4, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v2, 0x0

    .line 767
    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 768
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeckOfCardsSyncImpl_v2.debugZipFile - zipEntry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 773
    :catch_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v0, v1

    .line 780
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 781
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 784
    :cond_0
    if-eqz v0, :cond_1

    .line 785
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 793
    :cond_1
    :goto_2
    return-void

    .line 780
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    if-eqz v4, :cond_3

    .line 781
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 784
    :cond_3
    if-eqz v1, :cond_4

    .line 785
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v3, v4

    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v0, v1

    .line 789
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v0, v1

    .line 791
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 778
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v5

    .line 780
    :goto_3
    if-eqz v3, :cond_5

    .line 781
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 784
    :cond_5
    if-eqz v0, :cond_6

    .line 785
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 789
    :cond_6
    :goto_4
    throw v5

    :catch_2
    move-exception v6

    goto :goto_4

    .line 778
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 789
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v5

    goto :goto_2

    .line 773
    :catch_4
    move-exception v5

    goto :goto_1

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v5

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private generateAppZip(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p1, "localAppZipDir"    # Ljava/io/File;
    .param p2, "localAppZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 663
    .local v3, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 664
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 671
    :goto_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 674
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v4, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->copyDirectoryIntoZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 684
    if-eqz v4, :cond_0

    .line 685
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 688
    :cond_0
    if-eqz v1, :cond_1

    .line 689
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 698
    :cond_1
    :goto_1
    return-void

    .line 667
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_2
    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 668
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v2

    .line 678
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    new-instance v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An error occurred creating the app zip, localAppZipFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 682
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 684
    :goto_3
    if-eqz v3, :cond_3

    .line 685
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 688
    :cond_3
    if-eqz v0, :cond_4

    .line 689
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 693
    :cond_4
    :goto_4
    throw v5

    :catch_1
    move-exception v6

    goto :goto_4

    .line 682
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 677
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 693
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_4
    move-exception v5

    goto :goto_1
.end method

.method private generateDataFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "lua"    # Ljava/lang/String;
    .param p2, "localAppDataFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 462
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeckOfCardsSyncImpl_v2.generateDataFile - localAppDataFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lua:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v3, 0x0

    .line 465
    .local v3, "fileWriter":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 469
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .local v4, "fileWriter":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 471
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 484
    if-eqz v1, :cond_0

    .line 485
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 488
    :cond_0
    if-eqz v4, :cond_1

    .line 489
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 497
    :cond_1
    :goto_0
    return-void

    .line 477
    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 478
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    new-instance v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An error occurred creating the app data file, localAppDataFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 482
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 484
    :goto_2
    if-eqz v0, :cond_2

    .line 485
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 488
    :cond_2
    if-eqz v3, :cond_3

    .line 489
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 493
    :cond_3
    :goto_3
    throw v5

    :catch_1
    move-exception v6

    goto :goto_3

    .line 482
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_2

    .line 477
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_1

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_1

    .line 493
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catch_4
    move-exception v5

    goto :goto_0
.end method

.method static getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;

    if-nez v0, :cond_1

    .line 270
    const-class v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;

    monitor-enter v1

    .line 272
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;

    .line 276
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;

    return-object v0

    .line 276
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getLocalAppDataFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "localAppDir"    # Ljava/io/File;
    .param p2, "dataFileName"    # Ljava/lang/String;

    .prologue
    .line 1045
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getLocalAppZipFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "localAppDir"    # Ljava/io/File;
    .param p2, "zipFileName"    # Ljava/lang/String;

    .prologue
    .line 1039
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getWDAppDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;

    .prologue
    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWDAppImageFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "imageFileName"    # Ljava/lang/String;

    .prologue
    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWDAppZipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "zipFileName"    # Ljava/lang/String;

    .prologue
    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installDeckOfCardsAppZip(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V
    .locals 8
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p2, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 313
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeckOfCardsSyncImpl_v2.installDeckOfCardsAppZip - deckOfCards: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resourceStore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->getId()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 321
    .local v0, "localAppDir":Ljava/io/File;
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppZipDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 324
    .local v1, "localAppZipDir":Ljava/io/File;
    const-string v5, "deckofcards_app.zip"

    invoke-direct {p0, v5, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->copyTemplateAppFromAssets(Ljava/lang/String;Ljava/io/File;)V

    .line 327
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->parseAppManifest(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0, v1, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->parseLauncherIcons(Ljava/io/File;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V

    .line 333
    const-string v5, "app.zip"

    invoke-direct {p0, v0, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getLocalAppZipFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 336
    .local v2, "localAppZipFile":Ljava/io/File;
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->generateAppZip(Ljava/io/File;Ljava/io/File;)V

    .line 339
    const-string v5, "app.zip"

    invoke-direct {p0, v3, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppZipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "wdAppZipFile":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v5

    new-instance v6, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    invoke-direct {v6, v2, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->sendAppletFile(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;)Z

    .line 341
    return-void
.end method

.method private installInternalDeckOfCardsAppZip(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;)V
    .locals 8
    .param p1, "internalDeckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 292
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeckOfCardsSyncImpl_v2.installInternalDeckOfCardsAppZip - internalDeckOfCards: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getId()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 300
    .local v1, "localAppDir":Ljava/io/File;
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getAppZipFileName()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "appZipFileName":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getLocalAppZipFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 302
    .local v2, "localAppZipFile":Ljava/io/File;
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->copyFromAssets(Ljava/lang/String;Ljava/io/File;)V

    .line 305
    const-string v5, "app.zip"

    invoke-direct {p0, v3, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppZipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "wdAppZipFile":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v5

    new-instance v6, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    invoke-direct {v6, v2, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->sendAppletFile(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;)Z

    .line 307
    return-void
.end method

.method private parseAppManifest(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "localAppZipDir"    # Ljava/io/File;
    .param p2, "deckOfCardsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 803
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "manifest.lua"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 805
    .local v2, "manifestLuaFile":Ljava/io/File;
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->readFile(Ljava/io/File;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 807
    .local v1, "manifestLua":Ljava/lang/String;
    const-string v3, "%NAME%"

    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->writeFile(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    return-void

    .line 814
    .end local v1    # "manifestLua":Ljava/lang/String;
    .end local v2    # "manifestLuaFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred parsing the manifest.lua for the deckOfCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private parseLauncherIcons(Ljava/io/File;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V
    .locals 10
    .param p1, "localAppZipDir"    # Ljava/io/File;
    .param p2, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p3, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 827
    const/4 v5, 0x0

    .line 830
    .local v5, "launcherIcons":[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->getLauncherIcons(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 838
    if-eqz v5, :cond_0

    .line 842
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v7, v5

    if-ge v1, v7, :cond_0

    .line 845
    aget-object v7, v5, v1

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 846
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->convertPNGBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 849
    .local v3, "iconBytes":[B
    const/4 v6, 0x0

    .line 851
    .local v6, "name":Ljava/lang/String;
    aget-object v7, v5, v1

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 862
    new-instance v7, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create handle launcher icon, unknown type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 876
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "iconBytes":[B
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "An error occurred parsing the launcher icons for the deckOfCards: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 832
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :catch_1
    move-exception v0

    .line 833
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "DeckOfCards"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeckOfCardsSyncImpl_v2.parseLauncherIcons - an error occurred getting the icons for the deckOfCards: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 854
    .restart local v1    # "i":I
    .restart local v2    # "icon":Landroid/graphics/Bitmap;
    .restart local v3    # "iconBytes":[B
    .restart local v6    # "name":Ljava/lang/String;
    :pswitch_0
    :try_start_2
    const-string v6, "white.img"

    .line 867
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 871
    .local v4, "launcherIconFile":Ljava/io/File;
    invoke-direct {p0, v4, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->writeFile(Ljava/io/File;[B)V

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 858
    .end local v4    # "launcherIconFile":Ljava/io/File;
    :pswitch_1
    const-string v6, "color.img"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 859
    goto :goto_1

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readFile(Ljava/io/File;)[B
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 915
    const/4 v2, 0x0

    .line 916
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v0, 0x0

    .line 920
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 923
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v4, v7, [B

    .line 926
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "length":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 927
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 933
    .end local v4    # "buffer":[B
    .end local v6    # "length":I
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 934
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v7, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "An error occurred reading the file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 938
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 940
    :goto_2
    if-eqz v2, :cond_0

    .line 941
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 944
    :cond_0
    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 949
    :cond_1
    :goto_3
    throw v7

    .line 930
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "length":I
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 940
    if-eqz v3, :cond_3

    .line 941
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 944
    :cond_3
    if-eqz v1, :cond_4

    .line 945
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 953
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 949
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "length":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v8

    goto :goto_3

    .line 938
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 933
    :catch_2
    move-exception v5

    goto :goto_1

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 949
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "length":I
    :catch_4
    move-exception v7

    goto :goto_4
.end method

.method private storeCardImage(Ljava/io/File;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "localAppImagesDir"    # Ljava/io/File;
    .param p2, "cardImageBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "cardImageFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-virtual {p0, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->convertPNGBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 901
    .local v0, "imgBytes":[B
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 904
    .local v1, "localCardImageFile":Ljava/io/File;
    invoke-direct {p0, v1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->writeFile(Ljava/io/File;[B)V

    .line 906
    return-object v1
.end method

.method private updateDeckOfCardsData(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V
    .locals 22
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p2, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->getId()Ljava/lang/String;

    move-result-object v16

    .line 350
    .local v16, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v7, "cardImageFileRecords":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 356
    .local v11, "localAppDir":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppImagesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 359
    .local v12, "localAppImagesDir":Ljava/io/File;
    const-string v18, "cards.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getLocalAppDataFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 362
    .local v10, "localAppDataFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->getListCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 367
    const/4 v15, 0x0

    .line 369
    .local v15, "notifyTextCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    .line 372
    .local v4, "card":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    instance-of v0, v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object v15, v4

    .line 373
    check-cast v15, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .line 386
    .end local v4    # "card":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    :goto_1
    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getCardImageId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 389
    const/4 v5, 0x0

    .line 392
    .local v5, "cardImage":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getCardImage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 399
    :goto_2
    if-eqz v5, :cond_0

    .line 403
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".img"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, "cardImageFileName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->storeCardImage(Ljava/io/File;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 409
    .local v13, "localCardImageFile":Ljava/io/File;
    new-instance v18, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppImageFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fms:/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setCardImageURI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 424
    .end local v5    # "cardImage":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;
    .end local v6    # "cardImageFileName":Ljava/lang/String;
    .end local v13    # "localCardImageFile":Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->generateNotifyMessage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 376
    .restart local v4    # "card":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    :cond_1
    instance-of v0, v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 377
    check-cast v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;

    .end local v4    # "card":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getSimpleTextCardInstance(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    move-result-object v15

    goto :goto_1

    .line 381
    .restart local v4    # "card":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    :cond_2
    const-string v18, "DeckOfCards"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DeckOfCardsSyncImpl_v2.updateDeckOfCardsData - dropping card that isn\'t instance of InternalNotifyTextCard or SimpleTextCard: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    .end local v4    # "card":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    .restart local v5    # "cardImage":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;
    :catch_0
    move-exception v8

    .line 395
    .local v8, "e":Ljava/lang/Exception;
    const-string v18, "DeckOfCards"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DeckOfCardsSyncImpl_v2.updateDeckOfCardsData - an error occurred getting the card image for the card: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 415
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 416
    .restart local v8    # "e":Ljava/lang/Exception;
    new-instance v18, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "An error occurred parsing the card image for the card: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 427
    .end local v5    # "cardImage":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "notifyTextCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 431
    .local v14, "lua":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_4

    .line 433
    const-string v18, "DeckOfCards"

    const-string v19, "DeckOfCardsSyncImpl_v2.updateDeckOfCardsData - lua is 0 bytes length, removing cards.dat"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->deleteFile(Ljava/io/File;)V

    .line 439
    const-string v18, "cards.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 440
    .local v17, "wdAppDataFile":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->removeFile(Ljava/lang/String;)Z

    .line 456
    :goto_3
    return-void

    .line 447
    .end local v17    # "wdAppDataFile":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->generateDataFile(Ljava/lang/String;Ljava/io/File;)V

    .line 450
    const-string v18, "cards.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 451
    .restart local v17    # "wdAppDataFile":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v19

    new-instance v20, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;

    new-instance v21, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;)V

    invoke-virtual/range {v19 .. v20}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->sendAppletFiles(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;)V

    goto :goto_3
.end method

.method private writeFile(Ljava/io/File;[B)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 962
    const/4 v0, 0x0

    .line 966
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 968
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 969
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 979
    if-eqz v1, :cond_0

    .line 980
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 972
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v2

    .line 973
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred writing the file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 977
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 979
    :goto_2
    if-eqz v0, :cond_1

    .line 980
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 984
    :cond_1
    :goto_3
    throw v3

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 977
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 972
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public getWDAppRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/packages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V
    .locals 4
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p2, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 77
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeckOfCardsSyncImpl_v2.installDeckOfCards - deckOfCards: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resourceStore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    instance-of v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    .line 87
    .local v0, "internalDeckOfCards":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->isNewAppZip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "DeckOfCards"

    const-string v2, "DeckOfCardsSyncImpl_v2.installDeckOfCards - internal deck of cards is new, installing app.zip..."

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->installInternalDeckOfCardsAppZip(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;)V

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->setNewAppZip(Z)V

    .line 115
    .end local v0    # "internalDeckOfCards":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->updateDeckOfCardsData(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V

    .line 116
    return-void

    .line 99
    .restart local v0    # "internalDeckOfCards":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
    :cond_0
    const-string v1, "DeckOfCards"

    const-string v2, "DeckOfCardsSyncImpl_v2.installDeckOfCards - internal deck of cards, but not installing app.zip (pre-installed in firmware?)"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v0    # "internalDeckOfCards":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->installDeckOfCardsAppZip(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V

    goto :goto_0
.end method

.method public uninstallDeckOfCards(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appZipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 212
    const-string p2, "app.zip"

    .line 215
    :cond_0
    const-string v12, "DeckOfCards"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DeckOfCardsSyncImpl_v2.uninstallDeckOfCards - packageName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", appZipFileName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 221
    .local v7, "localAppDir":Ljava/io/File;
    move-object/from16 v0, p2

    invoke-direct {p0, v7, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getLocalAppZipFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 222
    .local v9, "localAppZipFile":Ljava/io/File;
    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->deleteFile(Ljava/io/File;)V

    .line 225
    const-string v12, "app.zip"

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppZipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 226
    .local v11, "wdAppZipFile":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->removeFile(Ljava/lang/String;)Z

    .line 229
    const-string v12, "cards.dat"

    invoke-direct {p0, v7, v12}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getLocalAppDataFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 230
    .local v6, "localAppDataFile":Ljava/io/File;
    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->deleteFile(Ljava/io/File;)V

    .line 233
    const-string v12, "cards.dat"

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "wdAppDataFile":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->removeFile(Ljava/lang/String;)Z

    .line 237
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppZipDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->deleteFile(Ljava/io/File;)V

    .line 240
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppImagesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 241
    .local v8, "localAppImagesDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 243
    .local v4, "imageFiles":[Ljava/io/File;
    move-object v1, v4

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v1, v2

    .line 244
    .local v3, "imageFile":Ljava/io/File;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppImageFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->removeFile(Ljava/lang/String;)Z

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v3    # "imageFile":Ljava/io/File;
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppImagesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->deleteFile(Ljava/io/File;)V

    .line 249
    return-void
.end method

.method public updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V
    .locals 4
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p2, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 124
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeckOfCardsSyncImpl_v2.updateDeckOfCards - deckOfCards: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resourceStore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    instance-of v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 131
    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    .line 134
    .local v0, "internalDeckOfCards":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->isNewAppZip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "DeckOfCards"

    const-string v2, "DeckOfCardsSyncImpl_v2.updateDeckOfCards - internal deck of cards is potentially new, re-installing app.zip..."

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->installInternalDeckOfCardsAppZip(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;)V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->setNewAppZip(Z)V

    .line 155
    .end local v0    # "internalDeckOfCards":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->updateDeckOfCardsData(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V

    .line 156
    return-void
.end method

.method public updateDeckOfCardsAppZip(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 164
    const-string v7, "DeckOfCards"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeckOfCardsSyncImpl_v2.updateDeckOfCardsAppZip - packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_0
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 169
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "deckOfCardsName":Ljava/lang/String;
    const-string v7, "DeckOfCards"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeckOfCardsSyncImpl_v2.updateDeckOfCardsAppZip - deckOfCardsName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 177
    .local v3, "localAppDir":Ljava/io/File;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->createLocalAppZipDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 180
    .local v4, "localAppZipDir":Ljava/io/File;
    const-string v7, "deckofcards_app.zip"

    invoke-direct {p0, v7, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->copyLuaTemplateFromAssets(Ljava/lang/String;Ljava/io/File;)V

    .line 183
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->parseAppManifest(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    const-string v7, "app.zip"

    invoke-direct {p0, v3, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getLocalAppZipFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 189
    .local v5, "localAppZipFile":Ljava/io/File;
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->generateAppZip(Ljava/io/File;Ljava/io/File;)V

    .line 192
    const-string v7, "app.zip"

    invoke-direct {p0, p1, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getWDAppZipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "wdAppZipFile":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v7

    new-instance v8, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    invoke-direct {v8, v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->sendAppletFile(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;)Z

    .line 195
    const-string v7, "DeckOfCards"

    const-string v8, "DeckOfCardsSyncImpl_v2.updateDeckOfCardsAppZip - updated app.zip sent to WD"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "deckOfCardsName":Ljava/lang/String;
    .end local v3    # "localAppDir":Ljava/io/File;
    .end local v4    # "localAppZipDir":Ljava/io/File;
    .end local v5    # "localAppZipFile":Ljava/io/File;
    .end local v6    # "wdAppZipFile":Ljava/lang/String;
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeckOfCards"

    const-string v8, "DeckOfCardsSyncImpl_v2.updateDeckOfCardsAppZip - exception while upgrading the app.zip"

    invoke-static {v7, v8, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
