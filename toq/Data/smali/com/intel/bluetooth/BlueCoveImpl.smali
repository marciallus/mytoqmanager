.class public Lcom/intel/bluetooth/BlueCoveImpl;
.super Ljava/lang/Object;
.source "BlueCoveImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;,
        Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;,
        Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;
    }
.end annotation


# static fields
.field public static final BLUECOVE_STACK_DETECT_ANDROID_1_X:I = 0x100

.field public static final BLUECOVE_STACK_DETECT_ANDROID_2_X:I = 0x200

.field static final BLUECOVE_STACK_DETECT_BLUESOLEIL:I = 0x4

.field public static final BLUECOVE_STACK_DETECT_BLUEZ:I = 0x20

.field public static final BLUECOVE_STACK_DETECT_BLUEZ_DBUS:I = 0x80

.field public static final BLUECOVE_STACK_DETECT_EMULATOR:I = 0x40

.field static final BLUECOVE_STACK_DETECT_MICROSOFT:I = 0x1

.field static final BLUECOVE_STACK_DETECT_OSX:I = 0x10

.field static final BLUECOVE_STACK_DETECT_TOSHIBA:I = 0x8

.field static final BLUECOVE_STACK_DETECT_WIDCOMM:I = 0x2

.field public static final BLUETOOTH_API_VERSION:Ljava/lang/String; = "1.1.1"

.field static final FALSE:Ljava/lang/String; = "false"

.field private static final FQCN:Ljava/lang/String;

.field public static final NATIVE_LIB_BLUESOLEIL:Ljava/lang/String; = "intelbth"

.field public static final NATIVE_LIB_BLUEZ:Ljava/lang/String; = "bluecove"

.field public static final NATIVE_LIB_MS:Ljava/lang/String; = "intelbth"

.field public static final NATIVE_LIB_OSX:Ljava/lang/String; = "bluecove"

.field public static final NATIVE_LIB_TOSHIBA:Ljava/lang/String; = "bluecove"

.field public static final NATIVE_LIB_WIDCOMM:Ljava/lang/String; = "bluecove"

.field public static final OBEX_API_VERSION:Ljava/lang/String; = "1.1.1"

.field public static final STACK_ANDROID_2_X:Ljava/lang/String; = "android_2.x"

.field public static final STACK_BLUESOLEIL:Ljava/lang/String; = "bluesoleil"

.field public static final STACK_BLUEZ:Ljava/lang/String; = "bluez"

.field public static final STACK_BLUEZ_DBUS:Ljava/lang/String; = "bluez-dbus"

.field public static final STACK_EMULATOR:Ljava/lang/String; = "emulator"

.field public static final STACK_OSX:Ljava/lang/String; = "mac"

.field public static final STACK_TOSHIBA:Ljava/lang/String; = "toshiba"

.field public static final STACK_WIDCOMM:Ljava/lang/String; = "widcomm"

.field public static final STACK_WINSOCK:Ljava/lang/String; = "winsock"

.field static final TRUE:Ljava/lang/String; = "true"

.field private static final fqcnSet:Ljava/util/Vector;

.field private static initializationProperties:Ljava/util/Vector; = null

.field private static instance:Lcom/intel/bluetooth/BlueCoveImpl; = null

.field public static final nativeLibraryVersionExpected:I = 0x1eabf4

.field private static final oneDLLbuild:Z = false

.field private static resourceConfigProperties:Ljava/util/Hashtable; = null

.field private static shutdownHookRegistered:Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread; = null

.field private static singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder; = null

.field private static stacks:Ljava/util/Hashtable; = null

.field private static threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper; = null

.field private static threadStackIDDefault:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder; = null

.field public static final version:Ljava/lang/String;

.field public static final versionBuild:I = 0x0

.field public static final versionMajor1:I = 0x2

.field public static final versionMajor2:I = 0x1

.field public static final versionMinor:I = 0x1

.field public static final versionSufix:Ljava/lang/String; = "-SNAPSHOT"


# instance fields
.field private accessControlContext:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-SNAPSHOT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->version:Ljava/lang/String;

    .line 161
    const-class v1, Lcom/intel/bluetooth/BlueCoveImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->FQCN:Ljava/lang/String;

    .line 163
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->fqcnSet:Ljava/util/Vector;

    .line 178
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->resourceConfigProperties:Ljava/util/Hashtable;

    .line 180
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;

    .line 182
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->initializationProperties:Ljava/util/Vector;

    .line 185
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->fqcnSet:Ljava/util/Vector;

    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->FQCN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/intel/bluetooth/BlueCoveConfigProperties;->INITIALIZATION_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 72
    return-void

    .line 187
    :cond_0
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->initializationProperties:Ljava/util/Vector;

    .line 188
    sget-object v2, Lcom/intel/bluetooth/BlueCoveConfigProperties;->INITIALIZATION_PROPERTIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    :try_start_0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/bluetooth/BlueCoveImpl;->accessControlContext:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/intel/bluetooth/BlueCoveImpl;->copySystemProperties(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 321
    return-void

    .line 316
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;)V
    .locals 0

    .prologue
    .line 168
    sput-object p0, Lcom/intel/bluetooth/BlueCoveImpl;->shutdownHookRegistered:Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;

    return-void
.end method

.method static synthetic access$2(Lcom/intel/bluetooth/BlueCoveImpl;)Lcom/intel/bluetooth/BluetoothStack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/intel/bluetooth/BlueCoveImpl;->detectStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    return-object v0
.end method

.method static clearSystemProperties()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 963
    const-string v2, "bluetooth.api.version"

    .line 962
    invoke-static {v2, v3}, Lcom/intel/bluetooth/UtilsJavaSE;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v2, "obex.api.version"

    .line 964
    invoke-static {v2, v3}, Lcom/intel/bluetooth/UtilsJavaSE;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->getSystemPropertiesList()[Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "property":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 970
    return-void

    .line 968
    :cond_0
    aget-object v2, v1, v0

    invoke-static {v2, v3}, Lcom/intel/bluetooth/UtilsJavaSE;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createDetectorOnWindows(Ljava/lang/String;)Lcom/intel/bluetooth/BluetoothStack;
    .locals 5
    .param p1, "stackFirst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 996
    if-eqz p1, :cond_2

    .line 997
    const-string v2, "detector stack"

    invoke-static {v2, p1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v2, "widcomm"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1000
    new-instance v0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    invoke-direct {v0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;-><init>()V

    .line 1001
    .local v0, "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl;->isNativeLibrariesAvailable(Lcom/intel/bluetooth/BluetoothStack;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1031
    .end local v0    # "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    :cond_0
    :goto_0
    return-object v0

    .line 1004
    :cond_1
    const-string v2, "bluesoleil"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1005
    new-instance v0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;

    invoke-direct {v0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;-><init>()V

    .line 1006
    .restart local v0    # "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl;->isNativeLibrariesAvailable(Lcom/intel/bluetooth/BluetoothStack;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1024
    .end local v0    # "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    :cond_2
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-direct {v1}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;-><init>()V

    .line 1025
    .local v1, "stack":Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v1}, Lcom/intel/bluetooth/BlueCoveImpl;->isNativeLibrariesAvailable(Lcom/intel/bluetooth/BluetoothStack;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 1026
    goto :goto_0

    .line 1009
    .end local v1    # "stack":Lcom/intel/bluetooth/BluetoothStack;
    :cond_3
    const-string v2, "winsock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1010
    new-instance v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-direct {v0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;-><init>()V

    .line 1011
    .restart local v0    # "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl;->isNativeLibrariesAvailable(Lcom/intel/bluetooth/BluetoothStack;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1014
    .end local v0    # "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    :cond_4
    const-string v2, "toshiba"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1015
    new-instance v0, Lcom/intel/bluetooth/BluetoothStackToshiba;

    invoke-direct {v0}, Lcom/intel/bluetooth/BluetoothStackToshiba;-><init>()V

    .line 1016
    .restart local v0    # "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl;->isNativeLibrariesAvailable(Lcom/intel/bluetooth/BluetoothStack;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1020
    .end local v0    # "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid BlueCove detector stack ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1020
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1029
    .restart local v1    # "stack":Lcom/intel/bluetooth/BluetoothStack;
    :cond_6
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    .end local v1    # "stack":Lcom/intel/bluetooth/BluetoothStack;
    invoke-direct {v1}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;-><init>()V

    .line 1030
    .restart local v1    # "stack":Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v1}, Lcom/intel/bluetooth/BlueCoveImpl;->isNativeLibrariesAvailable(Lcom/intel/bluetooth/BluetoothStack;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v1

    .line 1031
    goto :goto_0

    .line 1034
    :cond_7
    new-instance v2, Ljavax/bluetooth/BluetoothStateException;

    const-string v3, "BlueCove libraries not available"

    invoke-direct {v2, v3}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized createShutdownHook()V
    .locals 2

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->shutdownHookRegistered:Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    :cond_1
    :try_start_1
    new-instance v0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;

    invoke-direct {v0, p0}, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;-><init>(Lcom/intel/bluetooth/BlueCoveImpl;)V

    .line 333
    .local v0, "shutdownHookThread":Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;
    new-instance v1, Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;

    invoke-direct {v1, p0, v0}, Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;-><init>(Lcom/intel/bluetooth/BlueCoveImpl;Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;)V

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->shutdownHookRegistered:Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;

    invoke-static {v1}, Lcom/intel/bluetooth/UtilsJavaSE;->runtimeAddShutdownHook(Ljava/lang/Thread;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-static {v0}, Lcom/intel/bluetooth/UtilsJavaSE;->threadSetDaemon(Ljava/lang/Thread;)V

    .line 336
    invoke-virtual {v0}, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    .end local v0    # "shutdownHookThread":Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static currentStackHolder(Z)Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    .locals 3
    .param p0, "create"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1112
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    if-eqz v1, :cond_2

    .line 1113
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v1}, Lcom/intel/bluetooth/ThreadLocalWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 1114
    .local v0, "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    if-nez v0, :cond_1

    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStackIDDefault:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    if-eqz v1, :cond_1

    .line 1115
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->threadStackIDDefault:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 1126
    .end local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :cond_0
    :goto_0
    return-object v0

    .line 1117
    .restart local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :cond_1
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1118
    new-instance v0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .end local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    invoke-direct {v0, v2}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;-><init>(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)V

    .line 1119
    .restart local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v1, v0}, Lcom/intel/bluetooth/ThreadLocalWrapper;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1123
    .end local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :cond_2
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    if-nez v1, :cond_3

    if-eqz p0, :cond_3

    .line 1124
    new-instance v1, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    invoke-direct {v1, v2}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;-><init>(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)V

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 1126
    :cond_3
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    goto :goto_0
.end method

.method private detectStack()Lcom/intel/bluetooth/BluetoothStack;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    const v13, 0x1eabf4

    .line 466
    const/4 v4, 0x0

    .line 468
    .local v4, "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    const-string v11, "bluecove.stack.first"

    invoke-static {v11}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 470
    .local v9, "stackFirstDetector":Ljava/lang/String;
    const-string v11, "bluecove.stack"

    invoke-static {v11}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 472
    .local v10, "stackSelected":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 473
    move-object v9, v10

    .line 475
    :cond_0
    const-string v11, "emulator"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 477
    const-string v11, "bluecove.emulator.class"

    .line 478
    const-string v12, "com.intel.bluetooth.BluetoothEmulator"

    .line 476
    invoke-direct {p0, v11, v12}, Lcom/intel/bluetooth/BlueCoveImpl;->loadStack(Ljava/lang/String;Ljava/lang/String;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v4

    .line 519
    :cond_1
    :goto_0
    invoke-interface {v4}, Lcom/intel/bluetooth/BluetoothStack;->getLibraryVersion()I

    move-result v6

    .line 520
    .local v6, "libraryVersion":I
    if-eq v13, v6, :cond_3

    .line 521
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "BlueCove native library version mismatch "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " expected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 523
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 521
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;)V

    .line 524
    new-instance v11, Ljavax/bluetooth/BluetoothStateException;

    .line 525
    const-string v12, "BlueCove native library version mismatch"

    .line 524
    invoke-direct {v11, v12}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 480
    .end local v6    # "libraryVersion":I
    :cond_2
    invoke-static {}, Lcom/intel/bluetooth/NativeLibLoader;->getOS()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 515
    new-instance v11, Ljavax/bluetooth/BluetoothStateException;

    const-string v12, "BlueCove not available"

    invoke-direct {v11, v12}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 484
    :pswitch_0
    const-string v11, "bluecove.bluez.class"

    .line 485
    const-string v12, "com.intel.bluetooth.BluetoothStackBlueZ|com.intel.bluetooth.BluetoothStackBlueZDBus"

    .line 483
    invoke-direct {p0, v11, v12}, Lcom/intel/bluetooth/BlueCoveImpl;->loadStackClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 486
    .local v8, "stackClass":Ljava/lang/Class;
    invoke-direct {p0, v8}, Lcom/intel/bluetooth/BlueCoveImpl;->newStackInstance(Ljava/lang/Class;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v4

    .line 487
    invoke-static {v4}, Lcom/intel/bluetooth/BlueCoveImpl;->loadNativeLibraries(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 488
    invoke-interface {v4}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;

    move-result-object v10

    .line 489
    goto :goto_0

    .line 491
    .end local v8    # "stackClass":Ljava/lang/Class;
    :pswitch_1
    const-string v0, "com.intel.bluetooth.BluetoothStackAndroid"

    .line 494
    .local v0, "androidBluetoothStack":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 495
    .local v1, "androidStackClass":Ljava/lang/Class;
    invoke-direct {p0, v1}, Lcom/intel/bluetooth/BlueCoveImpl;->newStackInstance(Ljava/lang/Class;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v4

    .line 496
    invoke-interface {v4}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    .line 498
    .end local v1    # "androidStackClass":Ljava/lang/Class;
    :catch_0
    move-exception v5

    .line 499
    .local v5, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v11, Ljavax/bluetooth/BluetoothStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "BlueCove "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not available"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 499
    invoke-direct {v11, v12}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 503
    .end local v0    # "androidBluetoothStack":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/ClassNotFoundException;
    :pswitch_2
    new-instance v4, Lcom/intel/bluetooth/BluetoothStackOSX;

    .end local v4    # "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    invoke-direct {v4}, Lcom/intel/bluetooth/BluetoothStackOSX;-><init>()V

    .line 504
    .restart local v4    # "detectorStack":Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v4}, Lcom/intel/bluetooth/BlueCoveImpl;->loadNativeLibraries(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 505
    invoke-interface {v4}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;

    move-result-object v10

    .line 506
    goto/16 :goto_0

    .line 509
    :pswitch_3
    invoke-direct {p0, v9}, Lcom/intel/bluetooth/BlueCoveImpl;->createDetectorOnWindows(Ljava/lang/String;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v4

    .line 510
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 511
    const-class v11, Lcom/intel/bluetooth/DebugLog;

    const/4 v12, 0x1

    invoke-interface {v4, v11, v12}, Lcom/intel/bluetooth/BluetoothStack;->enableNativeDebug(Ljava/lang/Class;Z)V

    goto/16 :goto_0

    .line 528
    .restart local v6    # "libraryVersion":I
    :cond_3
    if-nez v10, :cond_b

    .line 530
    invoke-interface {v4}, Lcom/intel/bluetooth/BluetoothStack;->detectBluetoothStack()I

    move-result v2

    .line 531
    .local v2, "aval":I
    const-string v11, "BluetoothStack detected"

    int-to-long v12, v2

    invoke-static {v11, v12, v13}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 532
    invoke-interface {v4}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/BlueCoveImpl;->getStackId(Ljava/lang/String;)I

    move-result v3

    .line 533
    .local v3, "detectorID":I
    and-int v11, v2, v3

    if-eqz v11, :cond_5

    .line 534
    invoke-interface {v4}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;

    move-result-object v10

    .line 553
    .end local v2    # "aval":I
    .end local v3    # "detectorID":I
    :goto_1
    invoke-direct {p0, v10, v4}, Lcom/intel/bluetooth/BlueCoveImpl;->setBluetoothStack(Ljava/lang/String;Lcom/intel/bluetooth/BluetoothStack;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v7

    .line 554
    .local v7, "stack":Lcom/intel/bluetooth/BluetoothStack;
    invoke-interface {v7}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;

    move-result-object v10

    .line 555
    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/BlueCoveImpl;->copySystemProperties(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 556
    const-string v11, "emulator"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 557
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "BlueCove version "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/intel/bluetooth/BlueCoveImpl;->version:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " on "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 558
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 557
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    :cond_4
    return-object v7

    .line 535
    .end local v7    # "stack":Lcom/intel/bluetooth/BluetoothStack;
    .restart local v2    # "aval":I
    .restart local v3    # "detectorID":I
    :cond_5
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_6

    .line 536
    const-string v10, "winsock"

    goto :goto_1

    .line 537
    :cond_6
    and-int/lit8 v11, v2, 0x2

    if-eqz v11, :cond_7

    .line 538
    const-string v10, "widcomm"

    goto :goto_1

    .line 539
    :cond_7
    and-int/lit8 v11, v2, 0x4

    if-eqz v11, :cond_8

    .line 540
    const-string v10, "bluesoleil"

    goto :goto_1

    .line 541
    :cond_8
    and-int/lit8 v11, v2, 0x8

    if-eqz v11, :cond_9

    .line 542
    const-string v10, "toshiba"

    goto :goto_1

    .line 543
    :cond_9
    and-int/lit8 v11, v2, 0x10

    if-eqz v11, :cond_a

    .line 544
    const-string v10, "mac"

    goto :goto_1

    .line 546
    :cond_a
    const-string v11, "BluetoothStack not detected"

    invoke-static {v11}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;)V

    .line 547
    new-instance v11, Ljavax/bluetooth/BluetoothStateException;

    const-string v12, "BluetoothStack not detected"

    invoke-direct {v11, v12}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 550
    .end local v2    # "aval":I
    .end local v3    # "detectorID":I
    :cond_b
    const-string v11, "BluetoothStack selected"

    invoke-static {v11, v10}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private detectStackPrivileged()Lcom/intel/bluetooth/BluetoothStack;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 1165
    :try_start_0
    new-instance v3, Lcom/intel/bluetooth/BlueCoveImpl$1;

    invoke-direct {v3, p0}, Lcom/intel/bluetooth/BlueCoveImpl$1;-><init>(Lcom/intel/bluetooth/BlueCoveImpl;)V

    .line 1169
    iget-object v2, p0, Lcom/intel/bluetooth/BlueCoveImpl;->accessControlContext:Ljava/lang/Object;

    check-cast v2, Ljava/security/AccessControlContext;

    .line 1164
    invoke-static {v3, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/bluetooth/BluetoothStack;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1170
    :catch_0
    move-exception v1

    .line 1171
    .local v1, "e":Ljava/security/PrivilegedActionException;
    invoke-static {v1}, Lcom/intel/bluetooth/UtilsJavaSE;->getCause(Ljava/security/PrivilegedActionException;)Ljava/lang/Throwable;

    move-result-object v0

    .line 1172
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljavax/bluetooth/BluetoothStateException;

    if-eqz v2, :cond_0

    .line 1173
    check-cast v0, Ljavax/bluetooth/BluetoothStateException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1176
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    new-instance v2, Ljavax/bluetooth/BluetoothStateException;

    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    .line 1175
    invoke-static {v2, v0}, Lcom/intel/bluetooth/UtilsJavaSE;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/bluetooth/BluetoothStateException;

    throw v2
.end method

.method public static getConfigObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 892
    if-nez p0, :cond_0

    .line 893
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "key is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 895
    :cond_0
    const/4 v3, 0x0

    .line 896
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/intel/bluetooth/BlueCoveImpl;->currentStackHolder(Z)Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    move-result-object v2

    .line 897
    .local v2, "sh":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    if-eqz v2, :cond_1

    .line 898
    iget-object v4, v2, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->configProperties:Ljava/util/Hashtable;

    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 900
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    if-nez v3, :cond_6

    .line 902
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v3

    .line 906
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_3

    .line 907
    sget-object v5, Lcom/intel/bluetooth/BlueCoveImpl;->resourceConfigProperties:Ljava/util/Hashtable;

    monitor-enter v5

    .line 908
    :try_start_1
    sget-object v6, Lcom/intel/bluetooth/BlueCoveImpl;->resourceConfigProperties:Ljava/util/Hashtable;

    invoke-virtual {v6, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 909
    .local v1, "casheValue":Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 910
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 911
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .restart local v3    # "value":Ljava/lang/String;
    move-object v4, v3

    .line 907
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit v5

    .line 923
    .end local v1    # "casheValue":Ljava/lang/Object;
    :cond_3
    return-object v4

    .line 903
    :catch_0
    move-exception v4

    move-object v4, v3

    goto :goto_0

    .line 914
    .restart local v1    # "casheValue":Ljava/lang/Object;
    :cond_4
    const-class v4, Lcom/intel/bluetooth/BlueCoveImpl;

    invoke-static {v4, p0}, Lcom/intel/bluetooth/Utils;->getResourceProperty(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 915
    .restart local v3    # "value":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 916
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->resourceConfigProperties:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, p0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    goto :goto_1

    .line 918
    :cond_5
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->resourceConfigProperties:Ljava/util/Hashtable;

    invoke-virtual {v4, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    goto :goto_1

    .line 907
    .end local v1    # "casheValue":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_6
    move-object v4, v3

    goto :goto_0
.end method

.method static getConfigProperty(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 940
    invoke-static {p0}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 942
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 944
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method public static getConfigProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 927
    invoke-static {p0}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getConfigProperty(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 931
    invoke-static {p0}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 933
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 935
    .end local p1    # "defaultValue":Z
    :cond_0
    :goto_0
    return p1

    .line 933
    .restart local p1    # "defaultValue":Z
    :cond_1
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getCurrentThreadBluetoothStackID()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 700
    const-class v1, Lcom/intel/bluetooth/BlueCoveImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 701
    const/4 v0, 0x0

    .line 703
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v0}, Lcom/intel/bluetooth/ThreadLocalWrapper;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLocalDevicesID()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 579
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 581
    .local v2, "v":Ljava/util/Vector;
    # invokes: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$2()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v3

    .line 583
    const-string v4, "bluecove.local_devices_ids"

    .line 582
    invoke-interface {v3, v4}, Lcom/intel/bluetooth/BluetoothStack;->getLocalDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "ids":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 585
    new-instance v1, Lcom/intel/bluetooth/UtilsStringTokenizer;

    const-string v3, ","

    invoke-direct {v1, v0, v3}, Lcom/intel/bluetooth/UtilsStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .local v1, "tok":Lcom/intel/bluetooth/UtilsStringTokenizer;
    :goto_0
    invoke-virtual {v1}, Lcom/intel/bluetooth/UtilsStringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 590
    .end local v1    # "tok":Lcom/intel/bluetooth/UtilsStringTokenizer;
    :cond_0
    return-object v2

    .line 587
    .restart local v1    # "tok":Lcom/intel/bluetooth/UtilsStringTokenizer;
    :cond_1
    invoke-virtual {v1}, Lcom/intel/bluetooth/UtilsStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static getNativeLibraryVersion()I
    .locals 1

    .prologue
    .line 324
    const v0, 0x1eabf4

    return v0
.end method

.method private getStackId(Ljava/lang/String;)I
    .locals 1
    .param p1, "stack"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v0, "widcomm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x2

    .line 358
    :goto_0
    return v0

    .line 343
    :cond_0
    const-string v0, "bluesoleil"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    const/4 v0, 0x4

    goto :goto_0

    .line 345
    :cond_1
    const-string v0, "toshiba"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    const/16 v0, 0x8

    goto :goto_0

    .line 347
    :cond_2
    const-string v0, "winsock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    const/4 v0, 0x1

    goto :goto_0

    .line 349
    :cond_3
    const-string v0, "bluez"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    const/16 v0, 0x20

    goto :goto_0

    .line 351
    :cond_4
    const-string v0, "bluez-dbus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 352
    const/16 v0, 0x80

    goto :goto_0

    .line 353
    :cond_5
    const-string v0, "winsock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 354
    const/16 v0, 0x10

    goto :goto_0

    .line 355
    :cond_6
    const-string v0, "emulator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 356
    const/16 v0, 0x40

    goto :goto_0

    .line 358
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSystemPropertiesList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 949
    const/16 v1, 0x9

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bluetooth.master.switch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 950
    const-string v2, "bluetooth.sd.attr.retrievable.max"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 951
    const-string v2, "bluetooth.connected.devices.max"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 952
    const-string v2, "bluetooth.l2cap.receiveMTU.max"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 953
    const-string v2, "bluetooth.sd.trans.max"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 954
    const-string v2, "bluetooth.connected.inquiry.scan"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 955
    const-string v2, "bluetooth.connected.page.scan"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 956
    const-string v2, "bluetooth.connected.inquiry"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 957
    const-string v2, "bluetooth.connected.page"

    aput-object v2, v0, v1

    .line 958
    .local v0, "p":[Ljava/lang/String;
    return-object v0
.end method

.method public static declared-synchronized getThreadBluetoothStackID()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 687
    const-class v1, Lcom/intel/bluetooth/BlueCoveImpl;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->useThreadLocalBluetoothStack()V

    .line 688
    # invokes: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$2()Lcom/intel/bluetooth/BluetoothStack;

    .line 689
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v0}, Lcom/intel/bluetooth/ThreadLocalWrapper;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized instance()Lcom/intel/bluetooth/BlueCoveImpl;
    .locals 2

    .prologue
    .line 307
    const-class v1, Lcom/intel/bluetooth/BlueCoveImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->instance:Lcom/intel/bluetooth/BlueCoveImpl;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/intel/bluetooth/BlueCoveImpl;

    invoke-direct {v0}, Lcom/intel/bluetooth/BlueCoveImpl;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->instance:Lcom/intel/bluetooth/BlueCoveImpl;

    .line 310
    :cond_0
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->instance:Lcom/intel/bluetooth/BlueCoveImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isNativeLibrariesAvailable(Lcom/intel/bluetooth/BluetoothStack;)Z
    .locals 5
    .param p0, "stack"    # Lcom/intel/bluetooth/BluetoothStack;

    .prologue
    const/4 v3, 0x1

    .line 441
    :try_start_0
    sget-boolean v4, Lcom/intel/bluetooth/UtilsJavaSE;->canCallNotLoadedNativeMethod:Z

    if-eqz v4, :cond_1

    .line 442
    invoke-interface {p0}, Lcom/intel/bluetooth/BluetoothStack;->isNativeCodeLoaded()Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 461
    :cond_0
    :goto_0
    return v3

    .line 444
    :catch_0
    move-exception v4

    .line 447
    :cond_1
    invoke-interface {p0}, Lcom/intel/bluetooth/BluetoothStack;->requireNativeLibraries()[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;

    move-result-object v2

    .line 448
    .local v2, "libs":[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    .line 452
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 453
    aget-object v4, v2, v1

    iget-object v0, v4, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->stackClass:Ljava/lang/Class;

    .line 454
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_2

    .line 455
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 457
    :cond_2
    aget-object v4, v2, v1

    iget-object v4, v4, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->libraryName:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/intel/bluetooth/NativeLibLoader;->isAvailable(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 458
    const/4 v3, 0x0

    goto :goto_0

    .line 452
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static loadNativeLibraries(Lcom/intel/bluetooth/BluetoothStack;)V
    .locals 6
    .param p0, "stack"    # Lcom/intel/bluetooth/BluetoothStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 405
    :try_start_0
    sget-boolean v3, Lcom/intel/bluetooth/UtilsJavaSE;->canCallNotLoadedNativeMethod:Z

    if-eqz v3, :cond_1

    .line 406
    invoke-interface {p0}, Lcom/intel/bluetooth/BluetoothStack;->isNativeCodeLoaded()Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    :cond_0
    return-void

    .line 409
    :catch_0
    move-exception v3

    .line 412
    :cond_1
    invoke-interface {p0}, Lcom/intel/bluetooth/BluetoothStack;->requireNativeLibraries()[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;

    move-result-object v2

    .line 413
    .local v2, "libs":[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 417
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 418
    aget-object v3, v2, v1

    iget-object v0, v3, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->stackClass:Ljava/lang/Class;

    .line 419
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_2

    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 422
    :cond_2
    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->libraryName:Ljava/lang/String;

    .line 423
    aget-object v4, v2, v1

    iget-boolean v4, v4, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->required:Z

    .line 422
    invoke-static {v3, v0, v4}, Lcom/intel/bluetooth/NativeLibLoader;->isAvailable(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 424
    aget-object v3, v2, v1

    iget-boolean v3, v3, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->required:Z

    if-eqz v3, :cond_3

    .line 425
    new-instance v3, Ljavax/bluetooth/BluetoothStateException;

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BlueCove library "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->libraryName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 428
    const-string v5, " not available;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 430
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->libraryName:Ljava/lang/String;

    invoke-static {v5}, Lcom/intel/bluetooth/NativeLibLoader;->getLoadErrors(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 429
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-direct {v3, v4}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "library "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v1

    iget-object v4, v4, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->libraryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 433
    const-string v4, " not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 432
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 417
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadStack(Ljava/lang/String;Ljava/lang/String;)Lcom/intel/bluetooth/BluetoothStack;
    .locals 1
    .param p1, "classPropertyName"    # Ljava/lang/String;
    .param p2, "classNameDefault"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BlueCoveImpl;->loadStackClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/intel/bluetooth/BlueCoveImpl;->newStackInstance(Ljava/lang/Class;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    return-object v0
.end method

.method private loadStackClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "classPropertyName"    # Ljava/lang/String;
    .param p2, "classNamesDefault"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {p1}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "classNames":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 366
    move-object v1, p2

    .line 368
    :cond_0
    new-instance v3, Lcom/intel/bluetooth/UtilsStringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v1, v4}, Lcom/intel/bluetooth/UtilsStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .local v3, "tok":Lcom/intel/bluetooth/UtilsStringTokenizer;
    :goto_0
    invoke-virtual {v3}, Lcom/intel/bluetooth/UtilsStringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1

    .line 377
    new-instance v4, Ljavax/bluetooth/BluetoothStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BlueCove "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 378
    const-string v6, " not available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-direct {v4, v5}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    :cond_1
    invoke-virtual {v3}, Lcom/intel/bluetooth/UtilsStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0, v2}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private newStackInstance(Ljava/lang/Class;)Lcom/intel/bluetooth/BluetoothStack;
    .locals 5
    .param p1, "ctackClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/bluetooth/BluetoothStack;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-static {v0, v1}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :goto_0
    new-instance v2, Ljavax/bluetooth/BluetoothStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BlueCove "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 392
    const-string v4, " can\'t instantiate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-direct {v2, v3}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :catch_1
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v1}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized releaseThreadBluetoothStack()V
    .locals 3

    .prologue
    .line 734
    const-class v1, Lcom/intel/bluetooth/BlueCoveImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 736
    const-string v2, "ThreadLocal configuration is not initialized"

    .line 735
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 738
    :cond_0
    :try_start_1
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/intel/bluetooth/ThreadLocalWrapper;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    monitor-exit v1

    return-void
.end method

.method private declared-synchronized setBluetoothStack(Ljava/lang/String;Lcom/intel/bluetooth/BluetoothStack;)Lcom/intel/bluetooth/BluetoothStack;
    .locals 7
    .param p1, "stack"    # Ljava/lang/String;
    .param p2, "detectorStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    const v6, 0x1eabf4

    .line 1051
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    if-eqz v4, :cond_1

    .line 1052
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v4}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1053
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v4}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v4

    invoke-interface {v4}, Lcom/intel/bluetooth/BluetoothStack;->destroy()V

    .line 1054
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;

    sget-object v5, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v5}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$1(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;Lcom/intel/bluetooth/BluetoothStack;)V

    .line 1066
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 1067
    invoke-interface {p2}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1068
    move-object v1, p2

    .line 1078
    .local v1, "newStack":Lcom/intel/bluetooth/BluetoothStack;
    :goto_1
    invoke-static {v1}, Lcom/intel/bluetooth/BlueCoveImpl;->loadNativeLibraries(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 1079
    invoke-interface {v1}, Lcom/intel/bluetooth/BluetoothStack;->getLibraryVersion()I

    move-result v0

    .line 1080
    .local v0, "libraryVersion":I
    if-eq v6, v0, :cond_6

    .line 1081
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BlueCove native library version mismatch "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1083
    const v5, 0x1eabf4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1081
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;)V

    .line 1084
    new-instance v4, Ljavax/bluetooth/BluetoothStateException;

    .line 1085
    const-string v5, "BlueCove native library version mismatch"

    .line 1084
    invoke-direct {v4, v5}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    .end local v0    # "libraryVersion":I
    .end local v1    # "newStack":Lcom/intel/bluetooth/BluetoothStack;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1057
    :cond_1
    :try_start_1
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    if-eqz v4, :cond_0

    .line 1058
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v4}, Lcom/intel/bluetooth/ThreadLocalWrapper;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 1059
    .local v2, "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    if-eqz v2, :cond_0

    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v2}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1060
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v2}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v4

    invoke-interface {v4}, Lcom/intel/bluetooth/BluetoothStack;->destroy()V

    .line 1061
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;

    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v2}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$1(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;Lcom/intel/bluetooth/BluetoothStack;)V

    goto :goto_0

    .line 1069
    .end local v2    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :cond_2
    const-string v4, "widcomm"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1070
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    invoke-direct {v1}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;-><init>()V

    .restart local v1    # "newStack":Lcom/intel/bluetooth/BluetoothStack;
    goto :goto_1

    .line 1071
    .end local v1    # "newStack":Lcom/intel/bluetooth/BluetoothStack;
    :cond_3
    const-string v4, "bluesoleil"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1072
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;

    invoke-direct {v1}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;-><init>()V

    .restart local v1    # "newStack":Lcom/intel/bluetooth/BluetoothStack;
    goto :goto_1

    .line 1073
    .end local v1    # "newStack":Lcom/intel/bluetooth/BluetoothStack;
    :cond_4
    const-string v4, "toshiba"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1074
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackToshiba;

    invoke-direct {v1}, Lcom/intel/bluetooth/BluetoothStackToshiba;-><init>()V

    .restart local v1    # "newStack":Lcom/intel/bluetooth/BluetoothStack;
    goto/16 :goto_1

    .line 1076
    .end local v1    # "newStack":Lcom/intel/bluetooth/BluetoothStack;
    :cond_5
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-direct {v1}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;-><init>()V

    .restart local v1    # "newStack":Lcom/intel/bluetooth/BluetoothStack;
    goto/16 :goto_1

    .line 1088
    .restart local v0    # "libraryVersion":I
    :cond_6
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1089
    const-class v4, Lcom/intel/bluetooth/DebugLog;

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Lcom/intel/bluetooth/BluetoothStack;->enableNativeDebug(Ljava/lang/Class;Z)V

    .line 1091
    :cond_7
    invoke-interface {v1}, Lcom/intel/bluetooth/BluetoothStack;->initialize()V

    .line 1092
    invoke-direct {p0}, Lcom/intel/bluetooth/BlueCoveImpl;->createShutdownHook()V

    .line 1095
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/intel/bluetooth/BlueCoveImpl;->currentStackHolder(Z)Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    move-result-object v3

    .line 1096
    .local v3, "sh":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    invoke-static {v3, v1}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$1(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;Lcom/intel/bluetooth/BluetoothStack;)V

    .line 1097
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    if-eqz v4, :cond_8

    .line 1099
    sget-object v4, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v4, v3}, Lcom/intel/bluetooth/ThreadLocalWrapper;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1101
    :cond_8
    monitor-exit p0

    return-object v1
.end method

.method public static setConfigObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 875
    if-nez p0, :cond_0

    .line 876
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 878
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/intel/bluetooth/BlueCoveImpl;->currentStackHolder(Z)Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    move-result-object v0

    .line 879
    .local v0, "sh":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 880
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->initializationProperties:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 881
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 882
    const-string v2, "BlueCove Stack already initialized"

    .line 881
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 884
    :cond_1
    if-nez p1, :cond_2

    .line 885
    iget-object v1, v0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->configProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    :goto_0
    return-void

    .line 887
    :cond_2
    iget-object v1, v0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->configProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 854
    invoke-static {p0, p1}, Lcom/intel/bluetooth/BlueCoveImpl;->setConfigObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    return-void
.end method

.method public static declared-synchronized setDefaultThreadBluetoothStackID(Ljava/lang/Object;)V
    .locals 3
    .param p0, "stackID"    # Ljava/lang/Object;

    .prologue
    .line 752
    const-class v1, Lcom/intel/bluetooth/BlueCoveImpl;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    if-nez v0, :cond_0

    .line 753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "stackID is not valid"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    .end local p0    # "stackID":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 755
    .restart local p0    # "stackID":Ljava/lang/Object;
    :cond_0
    :try_start_1
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    if-nez v0, :cond_1

    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 757
    const-string v2, "ThreadLocal configuration is not initialized"

    .line 756
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_1
    check-cast p0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .end local p0    # "stackID":Ljava/lang/Object;
    sput-object p0, Lcom/intel/bluetooth/BlueCoveImpl;->threadStackIDDefault:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    monitor-exit v1

    return-void
.end method

.method static declared-synchronized setThreadBluetoothStack(Lcom/intel/bluetooth/BluetoothStack;)V
    .locals 5
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;

    .prologue
    .line 764
    const-class v3, Lcom/intel/bluetooth/BlueCoveImpl;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 779
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 767
    :cond_1
    :try_start_1
    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v2}, Lcom/intel/bluetooth/ThreadLocalWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 768
    .local v0, "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    if-eqz v0, :cond_2

    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 772
    :cond_2
    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;

    .line 773
    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 774
    .local v1, "sh":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    if-nez v1, :cond_3

    .line 775
    new-instance v2, Ljava/lang/RuntimeException;

    .line 776
    const-string v4, "ThreadLocal not found for BluetoothStack"

    .line 775
    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    .end local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    .end local v1    # "sh":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 778
    .restart local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    .restart local v1    # "sh":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :cond_3
    :try_start_2
    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v2, v1}, Lcom/intel/bluetooth/ThreadLocalWrapper;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized setThreadBluetoothStackID(Ljava/lang/Object;)V
    .locals 3
    .param p0, "stackID"    # Ljava/lang/Object;

    .prologue
    .line 718
    const-class v1, Lcom/intel/bluetooth/BlueCoveImpl;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "stackID is not valid"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 721
    :cond_0
    :try_start_1
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    if-nez v0, :cond_1

    .line 722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 723
    const-string v2, "ThreadLocal configuration is not initialized"

    .line 722
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_1
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v0, p0}, Lcom/intel/bluetooth/ThreadLocalWrapper;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized shutdown()V
    .locals 5

    .prologue
    .line 812
    const-class v3, Lcom/intel/bluetooth/BlueCoveImpl;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    .line 826
    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 827
    const/4 v2, 0x0

    sput-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 828
    const/4 v2, 0x0

    sput-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->threadStackIDDefault:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 829
    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->shutdownHookRegistered:Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;

    if-eqz v2, :cond_1

    .line 830
    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->shutdownHookRegistered:Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;

    invoke-virtual {v2}, Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;->deRegister()V

    .line 832
    :cond_1
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->clearSystemProperties()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    monitor-exit v3

    return-void

    .line 813
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 814
    .local v1, "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    iget-object v2, v1, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->configProperties:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 815
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v1}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 817
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v1}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->shutdownConnections(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 818
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v1}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/bluetooth/RemoteDeviceHelper;->shutdownConnections(Lcom/intel/bluetooth/BluetoothStack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :try_start_2
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v1}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v2

    invoke-interface {v2}, Lcom/intel/bluetooth/BluetoothStack;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 822
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v1, v2}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$1(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;Lcom/intel/bluetooth/BluetoothStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 812
    .end local v1    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 821
    .restart local v1    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :catchall_1
    move-exception v2

    .line 822
    const/4 v4, 0x0

    :try_start_4
    invoke-static {v1, v4}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$1(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;Lcom/intel/bluetooth/BluetoothStack;)V

    .line 823
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static declared-synchronized shutdownThreadBluetoothStack()V
    .locals 4

    .prologue
    .line 787
    const-class v2, Lcom/intel/bluetooth/BlueCoveImpl;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 806
    .local v0, "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 790
    .end local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v1}, Lcom/intel/bluetooth/ThreadLocalWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 791
    .restart local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    if-eqz v0, :cond_0

    .line 794
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStackIDDefault:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    if-ne v1, v0, :cond_2

    .line 795
    const/4 v1, 0x0

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStackIDDefault:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 797
    :cond_2
    iget-object v1, v0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->configProperties:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 798
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 800
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->shutdownConnections(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 801
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->shutdownConnections(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 802
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    invoke-interface {v1}, Lcom/intel/bluetooth/BluetoothStack;->destroy()V

    .line 803
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;

    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$1(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;Lcom/intel/bluetooth/BluetoothStack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 787
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized useThreadLocalBluetoothStack()V
    .locals 3

    .prologue
    .line 660
    const-class v2, Lcom/intel/bluetooth/BlueCoveImpl;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    if-nez v1, :cond_0

    .line 661
    new-instance v1, Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-direct {v1}, Lcom/intel/bluetooth/ThreadLocalWrapper;-><init>()V

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    .line 663
    :cond_0
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v1}, Lcom/intel/bluetooth/ThreadLocalWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 664
    .local v0, "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    if-nez v0, :cond_1

    .line 666
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    if-eqz v1, :cond_2

    .line 667
    sget-object v0, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 668
    const/4 v1, 0x0

    sput-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->singleStack:Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 672
    :goto_0
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    invoke-virtual {v1, v0}, Lcom/intel/bluetooth/ThreadLocalWrapper;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    :cond_1
    monitor-exit v2

    return-void

    .line 670
    :cond_2
    :try_start_1
    new-instance v0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .end local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;-><init>(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    goto :goto_0

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method copySystemProperties(Lcom/intel/bluetooth/BluetoothStack;)V
    .locals 4
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;

    .prologue
    .line 974
    const-string v2, "bluetooth.api.version"

    .line 975
    const-string v3, "1.1.1"

    .line 973
    invoke-static {v2, v3}, Lcom/intel/bluetooth/UtilsJavaSE;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v2, "obex.api.version"

    .line 978
    const-string v3, "1.1.1"

    .line 976
    invoke-static {v2, v3}, Lcom/intel/bluetooth/UtilsJavaSE;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    if-eqz p1, :cond_0

    .line 980
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->getSystemPropertiesList()[Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "property":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 986
    .end local v0    # "i":I
    .end local v1    # "property":[Ljava/lang/String;
    :cond_0
    return-void

    .line 982
    .restart local v0    # "i":I
    .restart local v1    # "property":[Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v0

    .line 983
    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Lcom/intel/bluetooth/BluetoothStack;->getLocalDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 982
    invoke-static {v2, v3}, Lcom/intel/bluetooth/UtilsJavaSE;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public enableNativeDebug(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1105
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/intel/bluetooth/BlueCoveImpl;->currentStackHolder(Z)Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    move-result-object v0

    .line 1106
    .local v0, "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    if-eqz v0, :cond_0

    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1107
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    const-class v2, Lcom/intel/bluetooth/DebugLog;

    invoke-interface {v1, v2, p1}, Lcom/intel/bluetooth/BluetoothStack;->enableNativeDebug(Ljava/lang/Class;Z)V

    .line 1109
    :cond_0
    return-void
.end method

.method public declared-synchronized getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 1143
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->fqcnSet:Ljava/util/Vector;

    invoke-static {v2}, Lcom/intel/bluetooth/Utils;->isLegalAPICall(Ljava/util/Vector;)V

    .line 1144
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/intel/bluetooth/BlueCoveImpl;->currentStackHolder(Z)Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    move-result-object v0

    .line 1145
    .local v0, "sh":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    if-eqz v0, :cond_0

    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1146
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1158
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1147
    :cond_0
    if-nez v0, :cond_1

    :try_start_1
    sget-object v2, Lcom/intel/bluetooth/BlueCoveImpl;->threadStack:Lcom/intel/bluetooth/ThreadLocalWrapper;

    if-eqz v2, :cond_1

    .line 1148
    new-instance v2, Ljavax/bluetooth/BluetoothStateException;

    .line 1149
    const-string v3, "No BluetoothStack or Adapter for current thread"

    .line 1148
    invoke-direct {v2, v3}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1143
    .end local v0    # "sh":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1153
    .restart local v0    # "sh":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/intel/bluetooth/BlueCoveImpl;->accessControlContext:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 1154
    invoke-direct {p0}, Lcom/intel/bluetooth/BlueCoveImpl;->detectStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    .local v1, "stack":Lcom/intel/bluetooth/BluetoothStack;
    goto :goto_0

    .line 1156
    .end local v1    # "stack":Lcom/intel/bluetooth/BluetoothStack;
    :cond_2
    invoke-direct {p0}, Lcom/intel/bluetooth/BlueCoveImpl;->detectStackPrivileged()Lcom/intel/bluetooth/BluetoothStack;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .restart local v1    # "stack":Lcom/intel/bluetooth/BluetoothStack;
    goto :goto_0
.end method

.method public getLocalDeviceFeature(I)Ljava/lang/String;
    .locals 1
    .param p1, "featureID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 990
    # invokes: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$2()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothStack;->getFeatureSet()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    .line 991
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setBluetoothStack(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "stack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 1046
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/intel/bluetooth/BlueCoveImpl;->setBluetoothStack(Ljava/lang/String;Lcom/intel/bluetooth/BluetoothStack;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
