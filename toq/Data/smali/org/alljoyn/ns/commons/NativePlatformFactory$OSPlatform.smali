.class final enum Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;
.super Ljava/lang/Enum;
.source "NativePlatformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ns/commons/NativePlatformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OSPlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

.field public static final enum ANDROID:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

.field public static final enum LINUX:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

.field public static final enum WINDOWS:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;


# instance fields
.field public final CLASS_NAME:Ljava/lang/String;

.field public final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    const-string v1, "WINDOWS"

    const-string v2, "Windows"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->WINDOWS:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    .line 30
    new-instance v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    const-string v1, "ANDROID"

    const-string v2, "Android"

    const-string v3, "org.alljoyn.ns.nativeplatform.NativePlatformAndroid"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->ANDROID:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    .line 31
    new-instance v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    const-string v1, "LINUX"

    const-string v2, "Linux"

    const-string v3, ""

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->LINUX:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->WINDOWS:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->ANDROID:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    aput-object v1, v0, v5

    sget-object v1, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->LINUX:Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    aput-object v1, v0, v6

    sput-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->$VALUES:[Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->NAME:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->CLASS_NAME:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->$VALUES:[Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    invoke-virtual {v0}, [Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ns/commons/NativePlatformFactory$OSPlatform;

    return-object v0
.end method
