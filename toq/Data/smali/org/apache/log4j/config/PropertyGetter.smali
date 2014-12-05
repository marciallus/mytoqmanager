.class public Lorg/apache/log4j/config/PropertyGetter;
.super Ljava/lang/Object;
.source "PropertyGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/config/PropertyGetter$PropertyCallback;
    }
.end annotation


# static fields
.field protected static final NULL_ARG:[Ljava/lang/Object;

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$apache$log4j$Priority:Ljava/lang/Class;


# instance fields
.field protected obj:Ljava/lang/Object;

.field protected props:[Ljava/beans/PropertyDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/log4j/config/PropertyGetter;->NULL_ARG:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    .line 56
    .local v0, "bi":Ljava/beans/BeanInfo;
    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/config/PropertyGetter;->props:[Ljava/beans/PropertyDescriptor;

    .line 57
    iput-object p1, p0, Lorg/apache/log4j/config/PropertyGetter;->obj:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 102
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

.method public static getProperties(Ljava/lang/Object;Lorg/apache/log4j/config/PropertyGetter$PropertyCallback;Ljava/lang/String;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "callback"    # Lorg/apache/log4j/config/PropertyGetter$PropertyCallback;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    new-instance v1, Lorg/apache/log4j/config/PropertyGetter;

    invoke-direct {v1, p0}, Lorg/apache/log4j/config/PropertyGetter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lorg/apache/log4j/config/PropertyGetter;->getProperties(Lorg/apache/log4j/config/PropertyGetter$PropertyCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/beans/IntrospectionException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to introspect object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getProperties(Lorg/apache/log4j/config/PropertyGetter$PropertyCallback;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Lorg/apache/log4j/config/PropertyGetter$PropertyCallback;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/log4j/config/PropertyGetter;->props:[Ljava/beans/PropertyDescriptor;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 73
    iget-object v5, p0, Lorg/apache/log4j/config/PropertyGetter;->props:[Ljava/beans/PropertyDescriptor;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 74
    .local v1, "getter":Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/log4j/config/PropertyGetter;->isHandledType(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    iget-object v5, p0, Lorg/apache/log4j/config/PropertyGetter;->props:[Ljava/beans/PropertyDescriptor;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lorg/apache/log4j/config/PropertyGetter;->obj:Ljava/lang/Object;

    sget-object v6, Lorg/apache/log4j/config/PropertyGetter;->NULL_ARG:[Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 83
    .local v4, "result":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 84
    iget-object v5, p0, Lorg/apache/log4j/config/PropertyGetter;->obj:Ljava/lang/Object;

    invoke-interface {p1, v5, p2, v3, v4}, Lorg/apache/log4j/config/PropertyGetter$PropertyCallback;->foundProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 86
    .end local v4    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to get value of property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/InterruptedException;

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_3

    .line 91
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 93
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to get value of property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to get value of property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "getter":Ljava/lang/reflect/Method;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected isHandledType(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 102
    sget-object v0, Lorg/apache/log4j/config/PropertyGetter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/config/PropertyGetter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/config/PropertyGetter;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/log4j/config/PropertyGetter;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "org.apache.log4j.Priority"

    invoke-static {v0}, Lorg/apache/log4j/config/PropertyGetter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/config/PropertyGetter;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    sget-object v0, Lorg/apache/log4j/config/PropertyGetter;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/log4j/config/PropertyGetter;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
