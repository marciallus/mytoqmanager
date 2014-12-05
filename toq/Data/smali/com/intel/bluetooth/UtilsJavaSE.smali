.class public Lcom/intel/bluetooth/UtilsJavaSE;
.super Ljava/lang/Object;
.source "UtilsJavaSE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/UtilsJavaSE$JavaSE5Features;,
        Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;
    }
.end annotation


# static fields
.field static final canCallNotLoadedNativeMethod:Z

.field static detectJava5Helper:Z

.field static final ibmJ9midp:Z

.field static java13:Z

.field static java14:Z

.field static java5Helper:Lcom/intel/bluetooth/UtilsJavaSE$JavaSE5Features;

.field static final javaSECompiledOut:Z

.field static final javaSpecificationVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->getJavaSpecificationVersion()I

    move-result v2

    sput v2, Lcom/intel/bluetooth/UtilsJavaSE;->javaSpecificationVersion:I

    .line 61
    sput-boolean v0, Lcom/intel/bluetooth/UtilsJavaSE;->java13:Z

    .line 63
    sput-boolean v0, Lcom/intel/bluetooth/UtilsJavaSE;->java14:Z

    .line 65
    sput-boolean v1, Lcom/intel/bluetooth/UtilsJavaSE;->detectJava5Helper:Z

    .line 69
    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->detectJ9midp()Z

    move-result v2

    sput-boolean v2, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    .line 71
    sget-boolean v2, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/intel/bluetooth/UtilsJavaSE;->canCallNotLoadedNativeMethod:Z

    .line 38
    return-void

    :cond_0
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method private static detectJ9midp()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 80
    :try_start_0
    const-string v3, "com.ibm.oti.configuration"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    .local v0, "ibmJ9config":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "midp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    .end local v0    # "ibmJ9config":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "webstart":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private static detectJava5Helper()V
    .locals 3

    .prologue
    .line 100
    sget-boolean v1, Lcom/intel/bluetooth/UtilsJavaSE;->java13:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/intel/bluetooth/UtilsJavaSE;->detectJava5Helper:Z

    if-eqz v1, :cond_0

    .line 101
    sget v1, Lcom/intel/bluetooth/UtilsJavaSE;->javaSpecificationVersion:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 111
    .local v0, "klass":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 104
    .end local v0    # "klass":Ljava/lang/Class;
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/intel/bluetooth/UtilsJavaSE;->detectJava5Helper:Z

    .line 106
    :try_start_0
    const-string v1, "com.intel.bluetooth.UtilsJavaSE5"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 107
    .restart local v0    # "klass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/bluetooth/UtilsJavaSE$JavaSE5Features;

    sput-object v1, Lcom/intel/bluetooth/UtilsJavaSE;->java5Helper:Lcom/intel/bluetooth/UtilsJavaSE$JavaSE5Features;

    .line 108
    const-string v1, "Use java 1.5+ features:"

    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->vmInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static getCause(Ljava/security/PrivilegedActionException;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "e"    # Ljava/security/PrivilegedActionException;

    .prologue
    .line 274
    :try_start_0
    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 279
    :try_start_1
    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 280
    :catch_1
    move-exception v0

    .line 282
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getJavaSpecificationVersion()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 89
    :try_start_0
    const-string v3, "java.specification.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "javaV":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method static getLocation(Ljava/util/Vector;)Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;
    .locals 5
    .param p0, "fqcnSet"    # Ljava/util/Vector;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 114
    sget-boolean v2, Lcom/intel/bluetooth/UtilsJavaSE;->java13:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-eqz v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v1

    .line 118
    :cond_1
    sget-boolean v2, Lcom/intel/bluetooth/UtilsJavaSE;->java14:Z

    if-nez v2, :cond_2

    .line 120
    :try_start_0
    const-string v2, "java.lang.StackTraceElement"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 121
    const/4 v2, 0x1

    sput-boolean v2, Lcom/intel/bluetooth/UtilsJavaSE;->java14:Z

    .line 122
    const-string v2, "Java 1.4+ detected:"

    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->vmInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/intel/bluetooth/UtilsJavaSE;->getLocationJava14(Ljava/util/Vector;)Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v4, Lcom/intel/bluetooth/UtilsJavaSE;->java13:Z

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v4, Lcom/intel/bluetooth/UtilsJavaSE;->java13:Z

    goto :goto_0
.end method

.method private static getLocationJava14(Ljava/util/Vector;)Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;
    .locals 6
    .param p0, "fqcnSet"    # Ljava/util/Vector;

    .prologue
    .line 149
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 150
    .local v4, "ste":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lt v0, v5, :cond_0

    .line 169
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 151
    :cond_0
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "nextClassName":Ljava/lang/String;
    const-string v5, "java."

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    const-string v5, "sun."

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    .end local v2    # "nextClassName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .restart local v2    # "nextClassName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 158
    add-int/lit8 v5, v0, 0x1

    aget-object v3, v4, v5

    .line 159
    .local v3, "st":Ljava/lang/StackTraceElement;
    new-instance v1, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;

    invoke-direct {v1}, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;-><init>()V

    .line 160
    .local v1, "loc":Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;->className:Ljava/lang/String;

    .line 161
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;->methodName:Ljava/lang/String;

    .line 162
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;->fileName:Ljava/lang/String;

    .line 163
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    iput v5, v1, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;->lineNumber:I

    goto :goto_1
.end method

.method public static initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    sget-boolean v1, Lcom/intel/bluetooth/UtilsJavaSE;->java14:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 254
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object p0

    .line 252
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "j9pp10":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method static isCurrentThreadInterrupted()Z
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    goto :goto_0
.end method

.method static runtimeAddShutdownHook(Ljava/lang/Thread;)Z
    .locals 2
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    const/4 v0, 0x1

    .line 191
    :try_start_0
    sget-boolean v1, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-eqz v1, :cond_0

    .line 192
    invoke-static {p0}, Lcom/intel/bluetooth/IBMJ9Helper;->addShutdownClass(Ljava/lang/Runnable;)V

    .line 201
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 201
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static runtimeRemoveShutdownHook(Ljava/lang/Thread;)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 207
    :try_start_0
    sget-boolean v0, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "propertyValue"    # Ljava/lang/String;

    .prologue
    .line 215
    sget-boolean v2, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-eqz v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    .line 220
    .local v0, "propertySet":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 221
    .local v1, "props":Ljava/util/Properties;
    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 231
    .end local v1    # "props":Ljava/util/Properties;
    :goto_1
    if-nez v0, :cond_0

    .line 234
    if-eqz p1, :cond_4

    .line 235
    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    goto :goto_0

    .line 226
    .restart local v1    # "props":Ljava/util/Properties;
    :cond_2
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 237
    .end local v1    # "props":Ljava/util/Properties;
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->detectJava5Helper()V

    .line 238
    sget-object v2, Lcom/intel/bluetooth/UtilsJavaSE;->java5Helper:Lcom/intel/bluetooth/UtilsJavaSE$JavaSE5Features;

    if-eqz v2, :cond_0

    .line 239
    sget-object v2, Lcom/intel/bluetooth/UtilsJavaSE;->java5Helper:Lcom/intel/bluetooth/UtilsJavaSE$JavaSE5Features;

    invoke-interface {v2, p0}, Lcom/intel/bluetooth/UtilsJavaSE$JavaSE5Features;->clearProperty(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 229
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static threadSetDaemon(Ljava/lang/Thread;)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 180
    :try_start_0
    sget-boolean v0, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static vmInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    const-string v2, "java.vm.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    .local v0, "ignore":Ljava/lang/SecurityException;
    :goto_0
    return-object v1

    .line 142
    .end local v0    # "ignore":Ljava/lang/SecurityException;
    :catch_0
    move-exception v0

    .line 143
    .restart local v0    # "ignore":Ljava/lang/SecurityException;
    const-string v1, ""

    goto :goto_0
.end method
