.class public Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;
.super Ljava/lang/Object;
.source "MRUFileManager.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "mru_file_manager"

.field private static final DEFAULT_MAX_SIZE:I = 0x3


# instance fields
.field private _maxSize:I

.field private _mruFileList:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_maxSize:I

    .line 64
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->load()V

    .line 65
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->setMaxSize(I)V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_maxSize:I

    .line 69
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->load()V

    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->setMaxSize(I)V

    .line 71
    return-void
.end method

.method public static createConfigurationDirectory()V
    .locals 6

    .prologue
    .line 183
    const-string v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "home":Ljava/lang/String;
    const-string v4, "file.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "sep":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "lf5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getFile(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFilename()Ljava/lang/String;
    .locals 4

    .prologue
    .line 268
    const-string v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "home":Ljava/lang/String;
    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "sep":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "lf5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "mru_file_manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getFile(I)Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_0

    .line 121
    check-cast v0, Ljava/io/File;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 123
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/net/URL;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 209
    .local v0, "reader":Ljava/io/BufferedInputStream;
    return-object v0
.end method

.method protected getInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getMRUFileList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 148
    const/4 v2, 0x0

    .line 164
    :cond_0
    return-object v2

    .line 151
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 153
    .local v2, "ss":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getFile(I)Ljava/lang/Object;

    move-result-object v1

    .line 155
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Ljava/io/File;

    if-eqz v3, :cond_2

    .line 156
    check-cast v1, Ljava/io/File;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 153
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1
.end method

.method protected load()V
    .locals 6

    .prologue
    .line 241
    invoke-static {}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->createConfigurationDirectory()V

    .line 242
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 245
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 247
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    iput-object v5, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    .line 248
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 251
    iget-object v5, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 252
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 254
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Ljava/io/File;

    if-nez v5, :cond_0

    instance-of v5, v3, Ljava/net/URL;

    if-nez v5, :cond_0

    .line 255
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 262
    :cond_2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    goto :goto_1
.end method

.method public moveToTop(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 174
    return-void
.end method

.method public save()V
    .locals 4

    .prologue
    .line 80
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 87
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public set(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->setMRU(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public set(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->setMRU(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method protected setMRU(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 226
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 228
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 230
    iget v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_maxSize:I

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->setMaxSize(I)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->moveToTop(I)V

    goto :goto_0
.end method

.method protected setMaxSize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .prologue
    .line 278
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "i":I
    :cond_0
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_maxSize:I

    .line 285
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
