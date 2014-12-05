.class public Lorg/alljoyn/ns/commons/NativePlatformFactory;
.super Ljava/lang/Object;
.source "NativePlatformFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;
    }
.end annotation


# static fields
.field private static volatile nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

.field private static osPlatform:Ljava/lang/String;

.field private static vmVendor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClassInstance(Ljava/lang/String;)Lorg/alljoyn/ns/commons/NativePlatform;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/commons/NativePlatformFactoryException;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 111
    .local v3, "nativePlatformClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/alljoyn/ns/commons/NativePlatform;>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/alljoyn/ns/commons/NativePlatform;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    .local v4, "nativePlatformObj":Lorg/alljoyn/ns/commons/NativePlatform;
    return-object v4

    .line 112
    .end local v3    # "nativePlatformClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/alljoyn/ns/commons/NativePlatform;>;"
    .end local v4    # "nativePlatformObj":Lorg/alljoyn/ns/commons/NativePlatform;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load class: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 115
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 116
    .local v2, "ilae":Ljava/lang/IllegalAccessException;
    new-instance v5, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;

    invoke-direct {v5, v2}, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 118
    .end local v2    # "ilae":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 119
    .local v1, "ie":Ljava/lang/InstantiationException;
    new-instance v5, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;

    invoke-direct {v5, v1}, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getPlatformObject()Lorg/alljoyn/ns/commons/NativePlatform;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/commons/NativePlatformFactoryException;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 99
    .local v0, "osPlatformType":Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;
    :goto_0
    return-object v1

    .line 88
    .end local v0    # "osPlatformType":Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;
    :cond_0
    invoke-static {}, Lorg/alljoyn/ns/commons/NativePlatformFactory;->identifyPlatform()Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    move-result-object v0

    .line 89
    .restart local v0    # "osPlatformType":Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    :cond_1
    new-instance v1, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find NativePlatform class for os: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', vmVendor: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/alljoyn/ns/commons/NativePlatformFactory;->vmVendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_2
    const-class v2, Lorg/alljoyn/ns/commons/NativePlatformFactory;

    monitor-enter v2

    .line 94
    :try_start_0
    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    if-nez v1, :cond_3

    .line 95
    iget-object v1, v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v1}, Lorg/alljoyn/ns/commons/NativePlatformFactory;->getClassInstance(Ljava/lang/String;)Lorg/alljoyn/ns/commons/NativePlatform;

    move-result-object v1

    sput-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 97
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static identifyPlatform()Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 129
    const-string v1, "os.name"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory;->osPlatform:Ljava/lang/String;

    .line 130
    const-string v1, "java.vm.vendor"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory;->vmVendor:Ljava/lang/String;

    .line 132
    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory;->osPlatform:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 135
    :cond_1
    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory;->osPlatform:Ljava/lang/String;

    sget-object v2, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->WINDOWS:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    iget-object v2, v2, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_2

    .line 136
    sget-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->WINDOWS:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    goto :goto_0

    .line 138
    :cond_2
    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory;->osPlatform:Ljava/lang/String;

    sget-object v2, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->LINUX:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    iget-object v2, v2, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 140
    sget-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory;->vmVendor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory;->vmVendor:Ljava/lang/String;

    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->ANDROID:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    iget-object v1, v1, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_3

    .line 141
    sget-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->ANDROID:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    goto :goto_0

    .line 143
    :cond_3
    sget-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->LINUX:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    goto :goto_0
.end method
