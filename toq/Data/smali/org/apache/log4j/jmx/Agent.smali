.class public Lorg/apache/log4j/jmx/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# static fields
.field static class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

.field static log:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/apache/log4j/jmx/Agent;->class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.jmx.Agent"

    invoke-static {v0}, Lorg/apache/log4j/jmx/Agent;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/Agent;->class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/jmx/Agent;->class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
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

.method private static createServer()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "newInstance":Ljava/lang/Object;
    :try_start_0
    const-string v2, "com.sun.jdmk.comm.HtmlAdapterServer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 73
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static startServer(Ljava/lang/Object;)V
    .locals 5
    .param p0, "server"    # Ljava/lang/Object;

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "start"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 88
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 89
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 90
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    if-eqz v0, :cond_3

    .line 91
    instance-of v2, v0, Ljava/lang/InterruptedException;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_2

    .line 93
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 95
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 99
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 102
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public start()V
    .locals 6

    .prologue
    .line 113
    invoke-static {}, Ljavax/management/MBeanServerFactory;->createMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v3

    .line 114
    .local v3, "server":Ljavax/management/MBeanServer;
    invoke-static {}, Lorg/apache/log4j/jmx/Agent;->createServer()Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, "html":Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    const-string v5, "Registering HtmlAdaptorServer instance."

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 118
    new-instance v4, Ljavax/management/ObjectName;

    const-string v5, "Adaptor:name=html,port=8082"

    invoke-direct {v4, v5}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 119
    sget-object v4, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    const-string v5, "Registering HierarchyDynamicMBean instance."

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 120
    new-instance v1, Lorg/apache/log4j/jmx/HierarchyDynamicMBean;

    invoke-direct {v1}, Lorg/apache/log4j/jmx/HierarchyDynamicMBean;-><init>()V

    .line 121
    .local v1, "hdm":Lorg/apache/log4j/jmx/HierarchyDynamicMBean;
    new-instance v4, Ljavax/management/ObjectName;

    const-string v5, "log4j:hiearchy=default"

    invoke-direct {v4, v5}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    invoke-static {v2}, Lorg/apache/log4j/jmx/Agent;->startServer(Ljava/lang/Object;)V

    .line 130
    .end local v1    # "hdm":Lorg/apache/log4j/jmx/HierarchyDynamicMBean;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljavax/management/JMException;
    sget-object v4, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    const-string v5, "Problem while registering MBeans instances."

    invoke-virtual {v4, v5, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljavax/management/JMException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    const-string v5, "Problem while registering MBeans instances."

    invoke-virtual {v4, v5, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
