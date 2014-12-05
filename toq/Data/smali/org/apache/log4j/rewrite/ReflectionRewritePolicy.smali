.class public Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;
.super Ljava/lang/Object;
.source "ReflectionRewritePolicy.java"

# interfaces
.implements Lorg/apache/log4j/rewrite/RewritePolicy;


# static fields
.field static class$java$lang$Object:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
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
.method public rewrite(Lorg/apache/log4j/spi/LoggingEvent;)Lorg/apache/log4j/spi/LoggingEvent;
    .locals 18
    .param p1, "source"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v15

    .line 47
    .local v15, "msg":Ljava/lang/Object;
    instance-of v1, v15, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 48
    move-object v7, v15

    .line 49
    .local v7, "newMsg":Ljava/lang/Object;
    new-instance v12, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 52
    .local v12, "rewriteProps":Ljava/util/Map;
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v1, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$java$lang$Object:Ljava/lang/Class;

    :goto_0
    invoke-static {v2, v1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v1

    invoke-interface {v1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v17

    .line 54
    .local v17, "props":[Ljava/beans/PropertyDescriptor;
    move-object/from16 v0, v17

    array-length v1, v0

    if-lez v1, :cond_2

    .line 55
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, v17

    array-length v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v14, v1, :cond_3

    .line 57
    :try_start_1
    aget-object v1, v17, v14

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v15, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 60
    .local v16, "propertyValue":Ljava/lang/Object;
    const-string v1, "message"

    aget-object v2, v17, v14

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    move-object/from16 v7, v16

    .line 55
    .end local v16    # "propertyValue":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 52
    .end local v14    # "i":I
    .end local v17    # "props":[Ljava/beans/PropertyDescriptor;
    :cond_0
    :try_start_2
    sget-object v1, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$java$lang$Object:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 63
    .restart local v14    # "i":I
    .restart local v16    # "propertyValue":Ljava/lang/Object;
    .restart local v17    # "props":[Ljava/beans/PropertyDescriptor;
    :cond_1
    :try_start_3
    aget-object v1, v17, v14

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 65
    .end local v16    # "propertyValue":Ljava/lang/Object;
    :catch_0
    move-exception v13

    .line 66
    .local v13, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unable to evaluate property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v2, v17, v14

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 82
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "i":I
    .end local v17    # "props":[Ljava/beans/PropertyDescriptor;
    :catch_1
    move-exception v13

    .line 83
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v1, "Unable to get property descriptors"

    invoke-static {v1, v13}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "newMsg":Ljava/lang/Object;
    .end local v12    # "rewriteProps":Ljava/util/Map;
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v1, p1

    .line 87
    :goto_3
    return-object v1

    .line 70
    .restart local v7    # "newMsg":Ljava/lang/Object;
    .restart local v12    # "rewriteProps":Ljava/util/Map;
    .restart local v14    # "i":I
    .restart local v17    # "props":[Ljava/beans/PropertyDescriptor;
    :cond_3
    :try_start_5
    new-instance v1, Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getFQNOfLoggerClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLogger()Lorg/apache/log4j/Category;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLogger()Lorg/apache/log4j/Category;

    move-result-object v3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v11

    invoke-direct/range {v1 .. v12}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Level;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/spi/ThrowableInformation;Ljava/lang/String;Lorg/apache/log4j/spi/LocationInfo;Ljava/util/Map;)V

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v3

    goto :goto_4
.end method
