.class public Lorg/apache/log4j/spi/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NA:Ljava/lang/String; = "?"

.field public static final NA_LOCATION_INFO:Lorg/apache/log4j/spi/LocationInfo;

.field static class$java$lang$Throwable:Ljava/lang/Class; = null

.field private static getClassNameMethod:Ljava/lang/reflect/Method; = null

.field private static getFileNameMethod:Ljava/lang/reflect/Method; = null

.field private static getLineNumberMethod:Ljava/lang/reflect/Method; = null

.field private static getMethodNameMethod:Ljava/lang/reflect/Method; = null

.field private static getStackTraceMethod:Ljava/lang/reflect/Method; = null

.field static inVisualAge:Z = false

.field private static pw:Ljava/io/PrintWriter; = null

.field static final serialVersionUID:J = -0x1266441eb56e5a84L

.field private static sw:Ljava/io/StringWriter;


# instance fields
.field transient className:Ljava/lang/String;

.field transient fileName:Ljava/lang/String;

.field public fullInfo:Ljava/lang/String;

.field transient lineNumber:Ljava/lang/String;

.field transient methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    sput-object v4, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    .line 61
    new-instance v4, Ljava/io/PrintWriter;

    sget-object v5, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v4, Lorg/apache/log4j/spi/LocationInfo;->pw:Ljava/io/PrintWriter;

    .line 82
    new-instance v4, Lorg/apache/log4j/spi/LocationInfo;

    const-string v5, "?"

    const-string v6, "?"

    const-string v7, "?"

    const-string v8, "?"

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/apache/log4j/spi/LocationInfo;->NA_LOCATION_INFO:Lorg/apache/log4j/spi/LocationInfo;

    .line 88
    sput-boolean v3, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    .line 91
    :try_start_0
    const-string v4, "com.ibm.uvm.tools.DebugSupport"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    sput-boolean v3, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    .line 92
    const-string v3, "Detected IBM VisualAge environment."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    :goto_0
    const/4 v1, 0x0

    .line 98
    .local v1, "noArgs":[Ljava/lang/Class;
    :try_start_1
    sget-object v3, Lorg/apache/log4j/spi/LocationInfo;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "java.lang.Throwable"

    invoke-static {v3}, Lorg/apache/log4j/spi/LocationInfo;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/spi/LocationInfo;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_1
    const-string v4, "getStackTrace"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/spi/LocationInfo;->getStackTraceMethod:Ljava/lang/reflect/Method;

    .line 99
    const-string v3, "java.lang.StackTraceElement"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 100
    .local v2, "stackTraceElementClass":Ljava/lang/Class;
    const-string v3, "getClassName"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/spi/LocationInfo;->getClassNameMethod:Ljava/lang/reflect/Method;

    .line 101
    const-string v3, "getMethodName"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/spi/LocationInfo;->getMethodNameMethod:Ljava/lang/reflect/Method;

    .line 102
    const-string v3, "getFileName"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/spi/LocationInfo;->getFileNameMethod:Ljava/lang/reflect/Method;

    .line 103
    const-string v3, "getLineNumber"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/spi/LocationInfo;->getLineNumberMethod:Ljava/lang/reflect/Method;

    .line 109
    .end local v2    # "stackTraceElementClass":Ljava/lang/Class;
    :goto_2
    return-void

    .line 98
    :cond_1
    sget-object v3, Lorg/apache/log4j/spi/LocationInfo;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v3, "LocationInfo will use pre-JDK 1.4 methods to determine location."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 106
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v3, "LocationInfo will use pre-JDK 1.4 methods to determine location."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 93
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v1    # "noArgs":[Ljava/lang/Class;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "line"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 280
    iput-object p2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    .line 281
    iput-object p3, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    .line 282
    iput-object p4, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {v0, p2}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 285
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    invoke-static {v0, p3}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 287
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-static {v0, p1}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 289
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-static {v0, p4}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 291
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 16
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "fqnOfCallingClass"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sget-object v13, Lorg/apache/log4j/spi/LocationInfo;->getLineNumberMethod:Ljava/lang/reflect/Method;

    if-eqz v13, :cond_3

    .line 138
    const/4 v9, 0x0

    .line 139
    .local v9, "noArgs":[Ljava/lang/Object;
    :try_start_0
    sget-object v13, Lorg/apache/log4j/spi/LocationInfo;->getStackTraceMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 140
    .local v3, "elements":[Ljava/lang/Object;
    const-string v10, "?"

    .line 141
    .local v10, "prevClass":Ljava/lang/String;
    array-length v13, v3

    add-int/lit8 v5, v13, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_0

    .line 142
    sget-object v13, Lorg/apache/log4j/spi/LocationInfo;->getClassNameMethod:Ljava/lang/reflect/Method;

    aget-object v14, v3, v5

    invoke-virtual {v13, v14, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 143
    .local v12, "thisClass":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 144
    add-int/lit8 v2, v5, 0x1

    .line 145
    .local v2, "caller":I
    array-length v13, v3

    if-ge v2, v13, :cond_0

    .line 146
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    .line 147
    sget-object v13, Lorg/apache/log4j/spi/LocationInfo;->getMethodNameMethod:Ljava/lang/reflect/Method;

    aget-object v14, v3, v2

    invoke-virtual {v13, v14, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    .line 148
    sget-object v13, Lorg/apache/log4j/spi/LocationInfo;->getFileNameMethod:Ljava/lang/reflect/Method;

    aget-object v14, v3, v2

    invoke-virtual {v13, v14, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    if-nez v13, :cond_2

    .line 150
    const-string v13, "?"

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 152
    :cond_2
    sget-object v13, Lorg/apache/log4j/spi/LocationInfo;->getLineNumberMethod:Ljava/lang/reflect/Method;

    aget-object v14, v3, v2

    invoke-virtual {v13, v14, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 153
    .local v8, "line":I
    if-gez v8, :cond_6

    .line 154
    const-string v13, "?"

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    .line 158
    :goto_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v13, "."

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v13, "("

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v13, ":"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v13, ")"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 174
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "caller":I
    .end local v3    # "elements":[Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v8    # "line":I
    .end local v10    # "prevClass":Ljava/lang/String;
    .end local v12    # "thisClass":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 175
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    const-string v13, "LocationInfo failed using JDK 1.4 methods"

    invoke-static {v13, v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    .end local v9    # "noArgs":[Ljava/lang/Object;
    :cond_3
    :goto_3
    sget-object v14, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    monitor-enter v14

    .line 190
    :try_start_1
    sget-object v13, Lorg/apache/log4j/spi/LocationInfo;->pw:Ljava/io/PrintWriter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 191
    sget-object v13, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-virtual {v13}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v11

    .line 192
    .local v11, "s":Ljava/lang/String;
    sget-object v13, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-virtual {v13}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 193
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 205
    .local v6, "ibegin":I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_0

    .line 215
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_4

    .line 217
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 218
    .restart local v5    # "i":I
    const/4 v13, -0x1

    if-eq v5, v13, :cond_4

    .line 219
    move v6, v5

    .line 224
    .end local v5    # "i":I
    :cond_4
    sget-object v13, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v11, v13, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 225
    const/4 v13, -0x1

    if-eq v6, v13, :cond_0

    .line 227
    sget v13, Lorg/apache/log4j/Layout;->LINE_SEP_LEN:I

    add-int/2addr v6, v13

    .line 230
    sget-object v13, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v11, v13, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 231
    .local v7, "iend":I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_0

    .line 236
    sget-boolean v13, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    if-nez v13, :cond_5

    .line 238
    const-string v13, "at "

    invoke-virtual {v11, v13, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v6

    .line 239
    const/4 v13, -0x1

    if-eq v6, v13, :cond_0

    .line 242
    add-int/lit8 v6, v6, 0x3

    .line 245
    :cond_5
    invoke-virtual {v11, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 156
    .end local v6    # "ibegin":I
    .end local v7    # "iend":I
    .end local v11    # "s":Ljava/lang/String;
    .restart local v2    # "caller":I
    .restart local v3    # "elements":[Ljava/lang/Object;
    .restart local v5    # "i":I
    .restart local v8    # "line":I
    .restart local v9    # "noArgs":[Ljava/lang/Object;
    .restart local v10    # "prevClass":Ljava/lang/String;
    .restart local v12    # "thisClass":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 176
    .end local v2    # "caller":I
    .end local v3    # "elements":[Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v8    # "line":I
    .end local v10    # "prevClass":Ljava/lang/String;
    .end local v12    # "thisClass":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 177
    .local v4, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v13

    instance-of v13, v13, Ljava/lang/InterruptedException;

    if-nez v13, :cond_7

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v13

    instance-of v13, v13, Ljava/io/InterruptedIOException;

    if-eqz v13, :cond_8

    .line 179
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->interrupt()V

    .line 181
    :cond_8
    const-string v13, "LocationInfo failed using JDK 1.4 methods"

    invoke-static {v13, v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 171
    .end local v4    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "elements":[Ljava/lang/Object;
    .restart local v5    # "i":I
    .restart local v10    # "prevClass":Ljava/lang/String;
    .restart local v12    # "thisClass":Ljava/lang/String;
    :cond_9
    move-object v10, v12

    .line 141
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 182
    .end local v3    # "elements":[Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v10    # "prevClass":Ljava/lang/String;
    .end local v12    # "thisClass":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 183
    .local v4, "ex":Ljava/lang/RuntimeException;
    const-string v13, "LocationInfo failed using JDK 1.4 methods"

    invoke-static {v13, v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 193
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .end local v9    # "noArgs":[Ljava/lang/Object;
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13
.end method

.method private static final appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 301
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "?"

    .line 331
    :goto_0
    return-object v2

    .line 302
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 305
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 306
    .local v1, "iend":I
    if-ne v1, v4, :cond_2

    .line 307
    const-string v2, "?"

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    .line 331
    .end local v1    # "iend":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_0

    .line 309
    .restart local v1    # "iend":I
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "ibegin":I
    sget-boolean v2, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    if-eqz v2, :cond_3

    .line 322
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 325
    :cond_3
    if-ne v1, v4, :cond_4

    .line 326
    const-string v2, "?"

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_4
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 341
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "?"

    .line 352
    :goto_0
    return-object v2

    .line 343
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 344
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 345
    .local v1, "iend":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 346
    const-string v2, "?"

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 352
    .end local v1    # "iend":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 348
    .restart local v1    # "iend":I
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x28

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 349
    .local v0, "ibegin":I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getLineNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 362
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "?"

    .line 372
    :goto_0
    return-object v2

    .line 364
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 365
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 366
    .local v1, "iend":I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x3a

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 367
    .local v0, "ibegin":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 368
    const-string v2, "?"

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    .line 372
    .end local v0    # "ibegin":I
    .end local v1    # "iend":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    goto :goto_0

    .line 370
    .restart local v0    # "ibegin":I
    .restart local v1    # "iend":I
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 380
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "?"

    .line 389
    :goto_0
    return-object v2

    .line 381
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 382
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 383
    .local v1, "iend":I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 384
    .local v0, "ibegin":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 385
    const-string v2, "?"

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    .line 389
    .end local v0    # "ibegin":I
    .end local v1    # "iend":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    goto :goto_0

    .line 387
    .restart local v0    # "ibegin":I
    .restart local v1    # "iend":I
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    goto :goto_1
.end method
