.class public Lorg/apache/log4j/jmx/AppenderDynamicMBean;
.super Lorg/apache/log4j/jmx/AbstractDynamicMBean;
.source "AppenderDynamicMBean.java"


# static fields
.field private static cat:Lorg/apache/log4j/Logger;

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$apache$log4j$Layout:Ljava/lang/Class;

.field static class$org$apache$log4j$Priority:Ljava/lang/Class;

.field static class$org$apache$log4j$jmx$AppenderDynamicMBean:Ljava/lang/Class;


# instance fields
.field private appender:Lorg/apache/log4j/Appender;

.field private dAttributes:Ljava/util/Vector;

.field private dClassName:Ljava/lang/String;

.field private dConstructors:[Ljavax/management/MBeanConstructorInfo;

.field private dDescription:Ljava/lang/String;

.field private dOperations:[Ljavax/management/MBeanOperationInfo;

.field private dynamicProps:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$jmx$AppenderDynamicMBean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.jmx.AppenderDynamicMBean"

    invoke-static {v0}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$jmx$AppenderDynamicMBean:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$jmx$AppenderDynamicMBean:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/log4j/Appender;)V
    .locals 2
    .param p1, "appender"    # Lorg/apache/log4j/Appender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;-><init>()V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/management/MBeanConstructorInfo;

    iput-object v0, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dConstructors:[Ljavax/management/MBeanConstructorInfo;

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dAttributes:Ljava/util/Vector;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dClassName:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dynamicProps:Ljava/util/Hashtable;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/management/MBeanOperationInfo;

    iput-object v0, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dOperations:[Ljavax/management/MBeanOperationInfo;

    .line 63
    const-string v0, "This MBean acts as a management facade for log4j appenders."

    iput-object v0, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dDescription:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->appender:Lorg/apache/log4j/Appender;

    .line 74
    invoke-direct {p0}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->buildDynamicMBeanInfo()V

    .line 75
    return-void
.end method

.method private buildDynamicMBeanInfo()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 80
    .local v11, "constructors":[Ljava/lang/reflect/Constructor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dConstructors:[Ljavax/management/MBeanConstructorInfo;

    const/4 v4, 0x0

    new-instance v5, Ljavax/management/MBeanConstructorInfo;

    const-string v6, "AppenderDynamicMBean(): Constructs a AppenderDynamicMBean instance"

    const/4 v8, 0x0

    aget-object v8, v11, v8

    invoke-direct {v5, v6, v8}, Ljavax/management/MBeanConstructorInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    aput-object v5, v1, v4

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->appender:Lorg/apache/log4j/Appender;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v10

    .line 86
    .local v10, "bi":Ljava/beans/BeanInfo;
    invoke-interface {v10}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v13

    .line 88
    .local v13, "pd":[Ljava/beans/PropertyDescriptor;
    array-length v0, v13

    move/from16 v16, v0

    .line 90
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 91
    aget-object v1, v13, v12

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "name":Ljava/lang/String;
    aget-object v1, v13, v12

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    .line 93
    .local v14, "readMethod":Ljava/lang/reflect/Method;
    aget-object v1, v13, v12

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v17

    .line 94
    .local v17, "writeMethod":Ljava/lang/reflect/Method;
    if-eqz v14, :cond_0

    .line 95
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    .line 96
    .local v15, "returnClass":Ljava/lang/Class;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->isSupportedType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.log4j.Priority"

    invoke-static {v1}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v15, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    const-string v3, "java.lang.String"

    .line 104
    .local v3, "returnClassName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dAttributes:Ljava/util/Vector;

    new-instance v1, Ljavax/management/MBeanAttributeInfo;

    const-string v4, "Dynamic"

    const/4 v5, 0x1

    if-eqz v17, :cond_3

    const/4 v6, 0x1

    :goto_3
    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v8, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dynamicProps:Ljava/util/Hashtable;

    new-instance v4, Lorg/apache/log4j/jmx/MethodUnion;

    move-object/from16 v0, v17

    invoke-direct {v4, v14, v0}, Lorg/apache/log4j/jmx/MethodUnion;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v3    # "returnClassName":Ljava/lang/String;
    .end local v15    # "returnClass":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 98
    .restart local v15    # "returnClass":Ljava/lang/Class;
    :cond_1
    sget-object v1, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "returnClassName":Ljava/lang/String;
    goto :goto_2

    .line 104
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 115
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "returnClassName":Ljava/lang/String;
    .end local v14    # "readMethod":Ljava/lang/reflect/Method;
    .end local v15    # "returnClass":Ljava/lang/Class;
    .end local v17    # "writeMethod":Ljava/lang/reflect/Method;
    :cond_4
    const/4 v1, 0x0

    new-array v7, v1, [Ljavax/management/MBeanParameterInfo;

    .line 117
    .local v7, "params":[Ljavax/management/MBeanParameterInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dOperations:[Ljavax/management/MBeanOperationInfo;

    const/16 v18, 0x0

    new-instance v4, Ljavax/management/MBeanOperationInfo;

    const-string v5, "activateOptions"

    const-string v6, "activateOptions(): add an appender"

    const-string v8, "void"

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    aput-object v4, v1, v18

    .line 123
    const/4 v1, 0x1

    new-array v7, v1, [Ljavax/management/MBeanParameterInfo;

    .line 124
    const/4 v1, 0x0

    new-instance v4, Ljavax/management/MBeanParameterInfo;

    const-string v5, "layout class"

    const-string v6, "java.lang.String"

    const-string v8, "layout class"

    invoke-direct {v4, v5, v6, v8}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v7, v1

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dOperations:[Ljavax/management/MBeanOperationInfo;

    const/16 v18, 0x1

    new-instance v4, Ljavax/management/MBeanOperationInfo;

    const-string v5, "setLayout"

    const-string v6, "setLayout(): add a layout"

    const-string v8, "void"

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    aput-object v4, v1, v18

    .line 132
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 67
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

.method private isSupportedType(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 149
    :goto_0
    return v0

    .line 140
    :cond_0
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    if-ne p1, v0, :cond_2

    move v0, v1

    .line 141
    goto :goto_0

    .line 140
    :cond_1
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1

    .line 145
    :cond_2
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "org.apache.log4j.Priority"

    invoke-static {v0}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 146
    goto :goto_0

    .line 145
    :cond_3
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    goto :goto_2

    .line 149
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v2, Ljavax/management/RuntimeOperationsException;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Attribute name cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cannot invoke a getter of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " with null attribute name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_0
    sget-object v2, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "getAttribute called with ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 236
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "appender="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->appender:Lorg/apache/log4j/Appender;

    invoke-interface {v4}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ",layout"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :try_start_0
    new-instance v2, Ljavax/management/ObjectName;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "log4j:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :goto_0
    return-object v2

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljavax/management/MalformedObjectNameException;
    sget-object v2, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    const-string v4, "attributeName"

    invoke-virtual {v2, v4, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 246
    .end local v0    # "e":Ljavax/management/MalformedObjectNameException;
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dynamicProps:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/jmx/MethodUnion;

    .line 250
    .local v1, "mu":Lorg/apache/log4j/jmx/MethodUnion;
    if-eqz v1, :cond_4

    iget-object v2, v1, Lorg/apache/log4j/jmx/MethodUnion;->readMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_4

    .line 252
    :try_start_1
    iget-object v2, v1, Lorg/apache/log4j/jmx/MethodUnion;->readMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->appender:Lorg/apache/log4j/Appender;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    goto :goto_0

    .line 241
    .end local v1    # "mu":Lorg/apache/log4j/jmx/MethodUnion;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    const-string v4, "attributeName"

    invoke-virtual {v2, v4, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 253
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "mu":Lorg/apache/log4j/jmx/MethodUnion;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    move-object v2, v3

    .line 254
    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_3

    .line 258
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    move-object v2, v3

    .line 260
    goto :goto_0

    .line 261
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v2, v3

    .line 262
    goto :goto_0

    .line 269
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4
    new-instance v2, Ljavax/management/AttributeNotFoundException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " attribute in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public getMBeanInfo()Ljavax/management/MBeanInfo;
    .locals 7

    .prologue
    .line 158
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    const-string v1, "getMBeanInfo called."

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dAttributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v3, v0, [Ljavax/management/MBeanAttributeInfo;

    .line 161
    .local v3, "attribs":[Ljavax/management/MBeanAttributeInfo;
    iget-object v0, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dAttributes:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    new-instance v0, Ljavax/management/MBeanInfo;

    iget-object v1, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dClassName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dDescription:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dConstructors:[Ljavax/management/MBeanConstructorInfo;

    iget-object v5, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dOperations:[Ljavax/management/MBeanOperationInfo;

    const/4 v6, 0x0

    new-array v6, v6, [Ljavax/management/MBeanNotificationInfo;

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanAttributeInfo;[Ljavax/management/MBeanConstructorInfo;[Ljavax/management/MBeanOperationInfo;[Ljavax/management/MBeanNotificationInfo;)V

    return-object v0
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "operationName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "signature"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 176
    const-string v2, "activateOptions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->appender:Lorg/apache/log4j/Appender;

    instance-of v2, v2, Lorg/apache/log4j/spi/OptionHandler;

    if-eqz v2, :cond_0

    .line 178
    iget-object v1, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->appender:Lorg/apache/log4j/Appender;

    check-cast v1, Lorg/apache/log4j/spi/OptionHandler;

    .line 179
    .local v1, "oh":Lorg/apache/log4j/spi/OptionHandler;
    invoke-interface {v1}, Lorg/apache/log4j/spi/OptionHandler;->activateOptions()V

    .line 180
    const-string v2, "Options activated."

    .line 189
    .end local v1    # "oh":Lorg/apache/log4j/spi/OptionHandler;
    :goto_0
    return-object v2

    .line 181
    :cond_0
    const-string v2, "setLayout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Layout:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "org.apache.log4j.Layout"

    invoke-static {v3}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Layout:Ljava/lang/Class;

    :goto_1
    invoke-static {v2, v3, v4}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Layout;

    .line 186
    .local v0, "layout":Lorg/apache/log4j/Layout;
    iget-object v2, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->appender:Lorg/apache/log4j/Appender;

    invoke-interface {v2, v0}, Lorg/apache/log4j/Appender;->setLayout(Lorg/apache/log4j/Layout;)V

    .line 187
    invoke-virtual {p0, v0}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->registerLayoutMBean(Lorg/apache/log4j/Layout;)V

    .end local v0    # "layout":Lorg/apache/log4j/Layout;
    :cond_1
    move-object v2, v4

    .line 189
    goto :goto_0

    .line 182
    :cond_2
    sget-object v3, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Layout:Ljava/lang/Class;

    goto :goto_1
.end method

.method public preRegister(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;)Ljavax/management/ObjectName;
    .locals 3
    .param p1, "server"    # Ljavax/management/MBeanServer;
    .param p2, "name"    # Ljavax/management/ObjectName;

    .prologue
    .line 337
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "preRegister called. Server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 338
    iput-object p1, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->server:Ljavax/management/MBeanServer;

    .line 339
    iget-object v0, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->appender:Lorg/apache/log4j/Appender;

    invoke-interface {v0}, Lorg/apache/log4j/Appender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->registerLayoutMBean(Lorg/apache/log4j/Layout;)V

    .line 341
    return-object p2
.end method

.method registerLayoutMBean(Lorg/apache/log4j/Layout;)V
    .locals 13
    .param p1, "layout"    # Lorg/apache/log4j/Layout;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->appender:Lorg/apache/log4j/Appender;

    invoke-static {v1}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->getAppenderName(Lorg/apache/log4j/Appender;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "name":Ljava/lang/String;
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Adding LayoutMBean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 198
    const/4 v10, 0x0

    .line 200
    .local v10, "objectName":Ljavax/management/ObjectName;
    :try_start_0
    new-instance v7, Lorg/apache/log4j/jmx/LayoutDynamicMBean;

    invoke-direct {v7, p1}, Lorg/apache/log4j/jmx/LayoutDynamicMBean;-><init>(Lorg/apache/log4j/Layout;)V

    .line 201
    .local v7, "appenderMBean":Lorg/apache/log4j/jmx/LayoutDynamicMBean;
    new-instance v11, Ljavax/management/ObjectName;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "log4j:appender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 202
    .end local v10    # "objectName":Ljavax/management/ObjectName;
    .local v11, "objectName":Ljavax/management/ObjectName;
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->server:Ljavax/management/MBeanServer;

    invoke-interface {v0, v11}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p0, v7, v11}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)V

    .line 204
    iget-object v12, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dAttributes:Ljava/util/Vector;

    new-instance v0, Ljavax/management/MBeanAttributeInfo;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "appender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javax.management.ObjectName"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " layout."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/management/JMException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/beans/IntrospectionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    move-object v10, v11

    .line 214
    .end local v11    # "objectName":Ljavax/management/ObjectName;
    .restart local v10    # "objectName":Ljavax/management/ObjectName;
    goto/16 :goto_0

    .line 208
    .end local v7    # "appenderMBean":Lorg/apache/log4j/jmx/LayoutDynamicMBean;
    :catch_0
    move-exception v8

    .line 209
    .local v8, "e":Ljavax/management/JMException;
    :goto_1
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not add DynamicLayoutMBean for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 210
    .end local v8    # "e":Ljavax/management/JMException;
    :catch_1
    move-exception v8

    .line 211
    .local v8, "e":Ljava/beans/IntrospectionException;
    :goto_2
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not add DynamicLayoutMBean for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 212
    .end local v8    # "e":Ljava/beans/IntrospectionException;
    :catch_2
    move-exception v8

    .line 213
    .local v8, "e":Ljava/lang/RuntimeException;
    :goto_3
    sget-object v0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not add DynamicLayoutMBean for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 212
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "objectName":Ljavax/management/ObjectName;
    .restart local v7    # "appenderMBean":Lorg/apache/log4j/jmx/LayoutDynamicMBean;
    .restart local v11    # "objectName":Ljavax/management/ObjectName;
    :catch_3
    move-exception v8

    move-object v10, v11

    .end local v11    # "objectName":Ljavax/management/ObjectName;
    .restart local v10    # "objectName":Ljavax/management/ObjectName;
    goto :goto_3

    .line 210
    .end local v10    # "objectName":Ljavax/management/ObjectName;
    .restart local v11    # "objectName":Ljavax/management/ObjectName;
    :catch_4
    move-exception v8

    move-object v10, v11

    .end local v11    # "objectName":Ljavax/management/ObjectName;
    .restart local v10    # "objectName":Ljavax/management/ObjectName;
    goto :goto_2

    .line 208
    .end local v10    # "objectName":Ljavax/management/ObjectName;
    .restart local v11    # "objectName":Ljavax/management/ObjectName;
    :catch_5
    move-exception v8

    move-object v10, v11

    .end local v11    # "objectName":Ljavax/management/ObjectName;
    .restart local v10    # "objectName":Ljavax/management/ObjectName;
    goto :goto_1
.end method

.method public setAttribute(Ljavax/management/Attribute;)V
    .locals 10
    .param p1, "attribute"    # Ljavax/management/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 282
    if-nez p1, :cond_0

    .line 283
    new-instance v6, Ljavax/management/RuntimeOperationsException;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Attribute cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Cannot invoke a setter of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " with null attribute"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v6

    .line 288
    :cond_0
    invoke-virtual {p1}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/management/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 291
    .local v5, "value":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 292
    new-instance v6, Ljavax/management/RuntimeOperationsException;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Attribute name cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Cannot invoke the setter of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " with null attribute name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v6

    .line 300
    :cond_1
    iget-object v6, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->dynamicProps:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/jmx/MethodUnion;

    .line 302
    .local v1, "mu":Lorg/apache/log4j/jmx/MethodUnion;
    if-eqz v1, :cond_7

    iget-object v6, v1, Lorg/apache/log4j/jmx/MethodUnion;->writeMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_7

    .line 303
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    .line 305
    .local v3, "o":[Ljava/lang/Object;
    iget-object v6, v1, Lorg/apache/log4j/jmx/MethodUnion;->writeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 306
    .local v4, "params":[Ljava/lang/Class;
    aget-object v7, v4, v8

    sget-object v6, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    if-nez v6, :cond_4

    const-string v6, "org.apache.log4j.Priority"

    invoke-static {v6}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    :goto_0
    if-ne v7, v6, :cond_2

    .line 307
    check-cast v5, Ljava/lang/String;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/log4j/Level;

    invoke-static {v5, v6}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v5

    .line 310
    :cond_2
    aput-object v5, v3, v8

    .line 313
    :try_start_0
    iget-object v6, v1, Lorg/apache/log4j/jmx/MethodUnion;->writeMethod:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->appender:Lorg/apache/log4j/Appender;

    invoke-virtual {v6, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 333
    .end local v3    # "o":[Ljava/lang/Object;
    .end local v4    # "params":[Ljava/lang/Class;
    :cond_3
    :goto_1
    return-void

    .line 306
    .restart local v3    # "o":[Ljava/lang/Object;
    .restart local v4    # "params":[Ljava/lang/Class;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_4
    sget-object v6, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    goto :goto_0

    .line 315
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/InterruptedException;

    if-nez v6, :cond_5

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/io/InterruptedIOException;

    if-eqz v6, :cond_6

    .line 318
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 320
    :cond_6
    sget-object v6, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    const-string v7, "FIXME"

    invoke-virtual {v6, v7, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 321
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v6, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    const-string v7, "FIXME"

    invoke-virtual {v6, v7, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 323
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v6, Lorg/apache/log4j/jmx/AppenderDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    const-string v7, "FIXME"

    invoke-virtual {v6, v7, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 326
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "o":[Ljava/lang/Object;
    .end local v4    # "params":[Ljava/lang/Class;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_7
    const-string v6, ".layout"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 329
    new-instance v6, Ljavax/management/AttributeNotFoundException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Attribute "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " not found in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
