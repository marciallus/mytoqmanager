.class public abstract Lcom/intel/bluetooth/NativeLibLoader;
.super Ljava/lang/Object;
.source "NativeLibLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/NativeLibLoader$LibState;
    }
.end annotation


# static fields
.field static final OS_ANDROID_1_X:I = 0x5

.field static final OS_ANDROID_2_X:I = 0x6

.field static final OS_LINUX:I = 0x1

.field static final OS_MAC_OS_X:I = 0x4

.field static final OS_UNSUPPORTED:I = -0x1

.field static final OS_WINDOWS:I = 0x2

.field static final OS_WINDOWS_CE:I = 0x3

.field private static bluecoveDllDir:Ljava/lang/Object;

.field private static libsState:Ljava/util/Hashtable;

.field private static os:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/NativeLibLoader;->libsState:Ljava/util/Hashtable;

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/bluetooth/NativeLibLoader;->bluecoveDllDir:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private static copy2File(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "fd"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 458
    const/4 v2, 0x0

    .line 460
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v7, 0x3e8

    :try_start_1
    new-array v0, v7, [B

    .line 463
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .local v5, "len":I
    if-gez v5, :cond_1

    .line 473
    if-eqz v3, :cond_3

    .line 475
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 466
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v6, 0x1

    .line 471
    .end local v0    # "b":[B
    .end local v5    # "len":I
    :cond_0
    :goto_2
    return v6

    .line 464
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "b":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "len":I
    :cond_1
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v3, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 467
    .end local v0    # "b":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 468
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Throwable;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    const-string v7, "Can\'t create temp file "

    invoke-static {v7, v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 470
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t create temp file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 473
    if-eqz v2, :cond_0

    .line 475
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 476
    :catch_1
    move-exception v4

    .line 477
    .local v4, "ignore":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_2

    .line 476
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "ignore":Ljava/io/IOException;
    .restart local v0    # "b":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "len":I
    :catch_2
    move-exception v4

    .line 477
    .restart local v4    # "ignore":Ljava/io/IOException;
    const/4 v2, 0x0

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 472
    .end local v0    # "b":[B
    .end local v4    # "ignore":Ljava/io/IOException;
    .end local v5    # "len":I
    :catchall_0
    move-exception v6

    .line 473
    :goto_4
    if-eqz v2, :cond_2

    .line 475
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 480
    :cond_2
    :goto_5
    throw v6

    .line 476
    :catch_3
    move-exception v4

    .line 477
    .restart local v4    # "ignore":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_5

    .line 472
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "ignore":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 467
    :catch_4
    move-exception v1

    goto :goto_3

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "b":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "len":I
    :cond_3
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static createLinuxPackagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sysArch"    # Ljava/lang/String;

    .prologue
    .line 310
    const-string v0, "64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/usr/lib64/bluecove/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/usr/lib/bluecove/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getLoadErrors(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    sget-object v1, Lcom/intel/bluetooth/NativeLibLoader;->libsState:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/NativeLibLoader$LibState;

    .line 157
    .local v0, "state":Lcom/intel/bluetooth/NativeLibLoader$LibState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/intel/bluetooth/NativeLibLoader$LibState;->loadErrors:Ljava/lang/StringBuffer;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    const-string v1, ""

    .line 160
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/intel/bluetooth/NativeLibLoader$LibState;->loadErrors:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getOS()I
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    .line 85
    sget v4, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    if-eqz v4, :cond_0

    .line 86
    sget v4, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    .line 148
    .local v3, "sysName":Ljava/lang/String;
    :goto_0
    return v4

    .line 88
    .end local v3    # "sysName":Ljava/lang/String;
    :cond_0
    const-string v4, "os.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .restart local v3    # "sysName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 90
    const-string v4, "Native Library not available on unknown platform"

    invoke-static {v4}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;)V

    .line 91
    sput v6, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    .line 148
    :goto_1
    sget v4, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string v4, "windows"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 95
    const-string v4, "ce"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 96
    const/4 v4, 0x3

    sput v4, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    goto :goto_1

    .line 98
    :cond_2
    const/4 v4, 0x2

    sput v4, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    goto :goto_1

    .line 100
    :cond_3
    const-string v4, "mac os x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 101
    const/4 v4, 0x4

    sput v4, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    goto :goto_1

    .line 102
    :cond_4
    const-string v4, "linux"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_7

    .line 104
    const-string v4, "java.runtime.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "javaRuntimeName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 107
    const-string v5, "android runtime"

    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_6

    .line 110
    :try_start_0
    const-string v4, "android.os.Build$VERSION"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 111
    const-string v5, "SDK_INT"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 113
    .local v0, "androidApiLevel":I
    if-lt v0, v7, :cond_5

    .line 121
    const-string v4, "com.intel.bluetooth.BluetoothStackAndroid"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 122
    const/4 v4, 0x6

    sput v4, Lcom/intel/bluetooth/NativeLibLoader;->os:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    .end local v0    # "androidApiLevel":I
    :catch_0
    move-exception v1

    .line 137
    .local v1, "ex":Ljava/lang/Exception;
    sput v7, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    goto :goto_1

    .line 124
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "androidApiLevel":I
    :cond_5
    const/4 v4, 0x5

    :try_start_1
    sput v4, Lcom/intel/bluetooth/NativeLibLoader;->os:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 140
    .end local v0    # "androidApiLevel":I
    :cond_6
    const/4 v4, 0x1

    sput v4, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    goto :goto_1

    .line 143
    .end local v2    # "javaRuntimeName":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Native Library not available on platform "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;)V

    .line 145
    sput v6, Lcom/intel/bluetooth/NativeLibLoader;->os:I

    goto/16 :goto_1
.end method

.method static isAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/intel/bluetooth/NativeLibLoader;->isAvailable(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static isAvailable(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "stackClass"    # Ljava/lang/Class;

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/intel/bluetooth/NativeLibLoader;->isAvailable(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method

.method static isAvailable(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "stackClass"    # Ljava/lang/Class;
    .param p2, "requiredLibrary"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v9, -0x1

    .line 170
    sget-object v8, Lcom/intel/bluetooth/NativeLibLoader;->libsState:Ljava/util/Hashtable;

    invoke-virtual {v8, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;

    .line 171
    .local v4, "state":Lcom/intel/bluetooth/NativeLibLoader$LibState;
    if-nez v4, :cond_0

    .line 172
    new-instance v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;

    .end local v4    # "state":Lcom/intel/bluetooth/NativeLibLoader$LibState;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/intel/bluetooth/NativeLibLoader$LibState;-><init>(Lcom/intel/bluetooth/NativeLibLoader$LibState;)V

    .line 173
    .restart local v4    # "state":Lcom/intel/bluetooth/NativeLibLoader$LibState;
    sget-object v8, Lcom/intel/bluetooth/NativeLibLoader;->libsState:Ljava/util/Hashtable;

    invoke-virtual {v8, p0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    iget-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->triedToLoadAlredy:Z

    if-eqz v8, :cond_1

    .line 176
    iget-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    .line 306
    :goto_0
    return v8

    .line 178
    :cond_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->loadErrors:Ljava/lang/StringBuffer;

    .line 179
    move-object v2, p0

    .line 180
    .local v2, "libName":Ljava/lang/String;
    move-object v1, v2

    .line 188
    .local v1, "libFileName":Ljava/lang/String;
    const-string v8, "os.name"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "sysName":Ljava/lang/String;
    const-string v8, "os.arch"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "sysArch":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 192
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 197
    :goto_1
    invoke-static {}, Lcom/intel/bluetooth/NativeLibLoader;->getOS()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 245
    :pswitch_0
    iget-object v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->loadErrors:Ljava/lang/StringBuffer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Native Library "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 246
    const-string v10, " not available on ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] platform"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 245
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Native Library "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 248
    const-string v9, " not available on platform "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 247
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;)V

    .line 249
    iput-boolean v11, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->triedToLoadAlredy:Z

    .line 250
    iput-boolean v12, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    .line 251
    iget-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    goto :goto_0

    .line 194
    :cond_2
    const-string v5, ""

    goto :goto_1

    .line 199
    :pswitch_1
    iget-object v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->loadErrors:Ljava/lang/StringBuffer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Native Library "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 200
    const-string v10, " not available on ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] platform"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 199
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Native Library "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not available on ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 202
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] platform"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 201
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;)V

    .line 203
    iput-boolean v11, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->triedToLoadAlredy:Z

    .line 204
    iput-boolean v12, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    .line 205
    iget-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    goto/16 :goto_0

    .line 207
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_ce"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    move-object v1, v2

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".dll"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_2
    const-string v8, "bluecove.native.path"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 257
    sget-boolean v8, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-nez v8, :cond_3

    .line 259
    iget-object v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->loadErrors:Ljava/lang/StringBuffer;

    .line 258
    invoke-static {v3, v1, v8}, Lcom/intel/bluetooth/NativeLibLoader;->tryloadPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v8

    iput-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    .line 266
    :cond_3
    const/4 v7, 0x1

    .line 268
    .local v7, "useResource":Z
    const-string v8, "bluecove.native.resource"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "d":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v8, "false"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 270
    :cond_4
    invoke-static {}, Lcom/intel/bluetooth/NativeLibLoader;->getOS()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_5

    invoke-static {}, Lcom/intel/bluetooth/NativeLibLoader;->getOS()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_6

    .line 271
    :cond_5
    const/4 v7, 0x0

    .line 274
    :cond_6
    iget-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    if-nez v8, :cond_7

    if-eqz v7, :cond_7

    .line 275
    sget-boolean v8, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-nez v8, :cond_7

    .line 277
    iget-object v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->loadErrors:Ljava/lang/StringBuffer;

    .line 276
    invoke-static {v1, p1, v8}, Lcom/intel/bluetooth/NativeLibLoader;->loadAsSystemResource(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/StringBuffer;)Z

    move-result v8

    iput-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    .line 282
    :cond_7
    iget-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    if-nez v8, :cond_8

    invoke-static {}, Lcom/intel/bluetooth/NativeLibLoader;->getOS()I

    move-result v8

    if-ne v8, v11, :cond_8

    .line 283
    sget-boolean v8, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-nez v8, :cond_8

    .line 285
    invoke-static {v5}, Lcom/intel/bluetooth/NativeLibLoader;->createLinuxPackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 286
    iget-object v9, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->loadErrors:Ljava/lang/StringBuffer;

    .line 284
    invoke-static {v8, v1, v9}, Lcom/intel/bluetooth/NativeLibLoader;->tryloadPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v8

    iput-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    .line 289
    :cond_8
    iget-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    if-nez v8, :cond_9

    .line 290
    sget-boolean v8, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-nez v8, :cond_11

    .line 291
    iget-object v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->loadErrors:Ljava/lang/StringBuffer;

    invoke-static {v2, v8}, Lcom/intel/bluetooth/NativeLibLoader;->tryload(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v8

    iput-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    .line 297
    :cond_9
    :goto_3
    iget-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    if-nez v8, :cond_b

    .line 298
    if-eqz p2, :cond_a

    .line 299
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Native Library "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 300
    const-string v10, " not available"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 299
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    :cond_a
    const-string v8, "java.library.path"

    .line 303
    const-string v9, "java.library.path"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 302
    invoke-static {v8, v9}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_b
    iput-boolean v11, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->triedToLoadAlredy:Z

    .line 306
    iget-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    goto/16 :goto_0

    .line 212
    .end local v0    # "d":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v7    # "useResource":Z
    :pswitch_3
    const-string v8, "amd64"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_c

    .line 213
    const-string v8, "x86_64"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_d

    .line 214
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_x64"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    move-object v1, v2

    .line 217
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".dll"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    goto/16 :goto_2

    .line 220
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "lib"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jnilib"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    goto/16 :goto_2

    .line 223
    :pswitch_5
    const-string v8, "i386"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_f

    .line 225
    const-string v8, "amd64"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_e

    .line 226
    const-string v8, "x86_64"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_10

    .line 227
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_x64"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    :cond_f
    :goto_4
    move-object v1, v2

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "lib"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    goto/16 :goto_2

    .line 228
    :cond_10
    const-string v8, "x86"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_f

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 238
    :pswitch_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "lib"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    goto/16 :goto_2

    .line 242
    :pswitch_7
    iput-boolean v11, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    goto/16 :goto_2

    .line 293
    .restart local v0    # "d":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v7    # "useResource":Z
    :cond_11
    invoke-static {v2}, Lcom/intel/bluetooth/NativeLibLoader;->tryloadIBMj9MIDP(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v4, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    goto/16 :goto_3

    .line 197
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static loadAsSystemResource(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/StringBuffer;)Z
    .locals 9
    .param p0, "libFileName"    # Ljava/lang/String;
    .param p1, "stackClass"    # Ljava/lang/Class;
    .param p2, "loadErrors"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v6, 0x0

    .line 391
    const/4 v5, 0x0

    .line 393
    .local v5, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 395
    .local v0, "clo":Ljava/lang/ClassLoader;
    if-eqz p1, :cond_1

    .line 396
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 397
    const-string v7, "Use stack ClassLoader"

    invoke-static {v7}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    .line 403
    :goto_0
    if-nez v0, :cond_2

    .line 404
    :try_start_1
    const-string v7, "Use System ClassLoader"

    invoke-static {v7}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 405
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 415
    :goto_1
    if-nez v5, :cond_3

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Native Library "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 417
    const-string v8, " is not a Resource !"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 416
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;)V

    .line 418
    const-string v7, "\nresource not found "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    :cond_0
    :goto_2
    return v6

    .line 399
    :cond_1
    :try_start_2
    const-class v7, Lcom/intel/bluetooth/NativeLibLoader;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_2
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    goto :goto_1

    .line 409
    :catch_0
    move-exception v2

    .line 410
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Native Library "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 411
    const-string v8, " is not a Resource !"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 410
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;)V

    .line 412
    const-string v7, "\nresource not found "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 421
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    invoke-static {p0}, Lcom/intel/bluetooth/NativeLibLoader;->makeTempName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 423
    .local v3, "fd":Ljava/io/File;
    :try_start_4
    invoke-static {v5, v3}, Lcom/intel/bluetooth/NativeLibLoader;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 424
    const-string v7, "\ncan\'t create temp file"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 429
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 430
    :catch_1
    move-exception v4

    .line 431
    .local v4, "ignore":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_2

    .line 427
    .end local v4    # "ignore":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 429
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 433
    :goto_3
    throw v6

    .line 430
    :catch_2
    move-exception v4

    .line 431
    .restart local v4    # "ignore":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_3

    .line 429
    .end local v4    # "ignore":Ljava/io/IOException;
    :cond_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 435
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 441
    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 442
    const-string v7, "Library loaded from"

    invoke-static {v7, v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 454
    const/4 v6, 0x1

    goto :goto_2

    .line 430
    :catch_3
    move-exception v4

    .line 431
    .restart local v4    # "ignore":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_4

    .line 443
    .end local v4    # "ignore":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 444
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v7, "Can\'t load library file "

    invoke-static {v7, v2}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    const-string v7, "\nload resource ["

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 446
    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .local v1, "debugFileCreated":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_0

    .line 449
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "File "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 450
    const-string v8, " magicaly disappeared"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 449
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 436
    .end local v1    # "debugFileCreated":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v7

    goto :goto_5

    .line 401
    .end local v3    # "fd":Ljava/io/File;
    :catch_6
    move-exception v7

    goto/16 :goto_0
.end method

.method private static makeTempName(Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .param p0, "libFileName"    # Ljava/lang/String;

    .prologue
    .line 484
    sget-object v10, Lcom/intel/bluetooth/NativeLibLoader;->bluecoveDllDir:Ljava/lang/Object;

    if-eqz v10, :cond_0

    .line 485
    new-instance v4, Ljava/io/File;

    sget-object v10, Lcom/intel/bluetooth/NativeLibLoader;->bluecoveDllDir:Ljava/lang/Object;

    check-cast v10, Ljava/io/File;

    invoke-direct {v4, v10, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 486
    .local v4, "f":Ljava/io/File;
    const-string v10, "tmp file"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .end local v4    # "f":Ljava/io/File;
    :goto_0
    return-object v4

    .line 489
    :cond_0
    const-string v10, "java.io.tmpdir"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 490
    .local v8, "tmpDir":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 492
    :cond_1
    const-string v8, "temp"

    .line 494
    :cond_2
    const-string v10, "user.name"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 495
    .local v9, "uname":Ljava/lang/String;
    const/4 v0, 0x0

    .line 496
    .local v0, "count":I
    const/4 v5, 0x0

    .line 497
    .local v5, "fd":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "dir":Ljava/io/File;
    move v1, v0

    .line 499
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    const/16 v10, 0xa

    if-le v1, v10, :cond_3

    .line 500
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t create temporary dir "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 500
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 502
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_3
    new-instance v2, Ljava/io/File;

    .end local v2    # "dir":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "bluecove_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .restart local v2    # "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 506
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_4

    move v1, v0

    .line 507
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 511
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 512
    .local v6, "files":[Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v10, v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-lt v7, v10, :cond_6

    .line 521
    .end local v6    # "files":[Ljava/io/File;
    .end local v7    # "i":I
    :cond_5
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_8

    .line 522
    const-string v10, "Can\'t create temporary dir "

    .line 523
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 522
    invoke-static {v10, v11}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 524
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 513
    .end local v1    # "count":I
    .restart local v0    # "count":I
    .restart local v6    # "files":[Ljava/io/File;
    .restart local v7    # "i":I
    :cond_6
    :try_start_1
    aget-object v10, v6, v7

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v10

    if-nez v10, :cond_7

    move v1, v0

    .line 514
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 512
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 527
    .end local v6    # "files":[Ljava/io/File;
    .end local v7    # "i":I
    :cond_8
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 531
    :goto_4
    new-instance v5, Ljava/io/File;

    .end local v5    # "fd":Ljava/io/File;
    invoke-direct {v5, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 532
    .restart local v5    # "fd":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_9

    move v1, v0

    .line 533
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto/16 :goto_1

    .line 536
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_9
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-nez v10, :cond_a

    .line 537
    const-string v10, "Can\'t create file in temporary dir "

    .line 538
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 537
    invoke-static {v10, v11}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move v1, v0

    .line 539
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto/16 :goto_1

    .line 541
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_0
    move-exception v3

    .line 542
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "Can\'t create file in temporary dir "

    .line 543
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 542
    invoke-static {v10, v11}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 544
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto/16 :goto_1

    .line 545
    .end local v1    # "count":I
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "count":I
    :catch_1
    move-exception v10

    .line 548
    :cond_a
    sput-object v2, Lcom/intel/bluetooth/NativeLibLoader;->bluecoveDllDir:Ljava/lang/Object;

    .line 549
    const-string v10, "set dll dir"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 552
    goto/16 :goto_0

    .line 528
    :catch_2
    move-exception v10

    goto :goto_4

    .line 517
    :catch_3
    move-exception v10

    goto :goto_3
.end method

.method private static tryload(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loadErrors"    # Ljava/lang/StringBuffer;

    .prologue
    .line 319
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 320
    const-string v1, "Library loaded"

    invoke-static {v1, p0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Library "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    const-string v1, "\nload ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static tryloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5
    .param p0, "path"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loadErrors"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, 0x0

    .line 359
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Native Library "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 373
    :goto_0
    return v2

    .line 366
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 367
    const-string v3, "Library loaded"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    const/4 v2, 0x1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load library from path "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    const-string v3, "\nload ["

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 372
    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static tryloadIBMj9MIDP(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    :try_start_0
    invoke-static {p0}, Lcom/intel/bluetooth/IBMJ9Helper;->loadLibrary(Ljava/lang/String;)V

    .line 333
    const-string v1, "Library loaded"

    invoke-static {v1, p0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Library "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static tryloadPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loadErrors"    # Ljava/lang/StringBuffer;

    .prologue
    .line 343
    new-instance v2, Lcom/intel/bluetooth/UtilsStringTokenizer;

    .line 344
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 343
    invoke-direct {v2, p0, v3}, Lcom/intel/bluetooth/UtilsStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v2, "tok":Lcom/intel/bluetooth/UtilsStringTokenizer;
    :cond_0
    invoke-virtual {v2}, Lcom/intel/bluetooth/UtilsStringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 354
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 346
    :cond_1
    invoke-virtual {v2}, Lcom/intel/bluetooth/UtilsStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    invoke-static {v0, p1, p2}, Lcom/intel/bluetooth/NativeLibLoader;->tryloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static tryloadPathIBMj9MIDP(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 379
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/bluetooth/IBMJ9Helper;->loadLibrary(Ljava/lang/String;)V

    .line 380
    const-string v1, "Library loaded"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 381
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t load library from path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v1, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    const/4 v1, 0x0

    goto :goto_0
.end method
