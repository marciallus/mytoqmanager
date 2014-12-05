.class public Lorg/apache/log4j/xml/DOMConfigurator;
.super Ljava/lang/Object;
.source "DOMConfigurator.java"

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    }
.end annotation


# static fields
.field static final ADDITIVITY_ATTR:Ljava/lang/String; = "additivity"

.field static final APPENDER_REF_TAG:Ljava/lang/String; = "appender-ref"

.field static final APPENDER_TAG:Ljava/lang/String; = "appender"

.field static final CATEGORY:Ljava/lang/String; = "category"

.field static final CATEGORY_FACTORY_TAG:Ljava/lang/String; = "categoryFactory"

.field static final CLASS_ATTR:Ljava/lang/String; = "class"

.field static final CONFIGURATION_TAG:Ljava/lang/String; = "log4j:configuration"

.field static final CONFIG_DEBUG_ATTR:Ljava/lang/String; = "configDebug"

.field static final EMPTY_STR:Ljava/lang/String; = ""

.field static final ERROR_HANDLER_TAG:Ljava/lang/String; = "errorHandler"

.field static final FILTER_TAG:Ljava/lang/String; = "filter"

.field static final INTERNAL_DEBUG_ATTR:Ljava/lang/String; = "debug"

.field static final LAYOUT_TAG:Ljava/lang/String; = "layout"

.field static final LEVEL_TAG:Ljava/lang/String; = "level"

.field static final LOGGER:Ljava/lang/String; = "logger"

.field static final LOGGER_FACTORY_TAG:Ljava/lang/String; = "loggerFactory"

.field static final LOGGER_REF:Ljava/lang/String; = "logger-ref"

.field static final NAME_ATTR:Ljava/lang/String; = "name"

.field static final OLD_CONFIGURATION_TAG:Ljava/lang/String; = "configuration"

.field static final ONE_STRING_PARAM:[Ljava/lang/Class;

.field static final PARAM_TAG:Ljava/lang/String; = "param"

.field static final PRIORITY_TAG:Ljava/lang/String; = "priority"

.field static final REF_ATTR:Ljava/lang/String; = "ref"

.field static final RENDERED_CLASS_ATTR:Ljava/lang/String; = "renderedClass"

.field static final RENDERER_TAG:Ljava/lang/String; = "renderer"

.field static final RENDERING_CLASS_ATTR:Ljava/lang/String; = "renderingClass"

.field private static final RESET_ATTR:Ljava/lang/String; = "reset"

.field static final ROOT_REF:Ljava/lang/String; = "root-ref"

.field static final ROOT_TAG:Ljava/lang/String; = "root"

.field static final THRESHOLD_ATTR:Ljava/lang/String; = "threshold"

.field private static final THROWABLE_RENDERER_TAG:Ljava/lang/String; = "throwableRenderer"

.field static final VALUE_ATTR:Ljava/lang/String; = "value"

.field static class$java$lang$String:Ljava/lang/Class; = null

.field static class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class; = null

.field static class$org$apache$log4j$spi$Filter:Ljava/lang/Class; = null

.field static class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class; = null

.field static final dbfKey:Ljava/lang/String; = "javax.xml.parsers.DocumentBuilderFactory"


# instance fields
.field appenderBag:Ljava/util/Hashtable;

.field protected catFactory:Lorg/apache/log4j/spi/LoggerFactory;

.field props:Ljava/util/Properties;

.field repository:Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 142
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    .line 143
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 124
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

.method public static configure(Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 896
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 898
    return-void
.end method

.method public static configure(Ljava/net/URL;)V
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 906
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 907
    return-void
.end method

.method public static configure(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p0, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 703
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    .line 704
    .local v0, "configurator":Lorg/apache/log4j/xml/DOMConfigurator;
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/w3c/dom/Element;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 705
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;)V
    .locals 2
    .param p0, "configFilename"    # Ljava/lang/String;

    .prologue
    .line 718
    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->configureAndWatch(Ljava/lang/String;J)V

    .line 719
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;J)V
    .locals 1
    .param p0, "configFilename"    # Ljava/lang/String;
    .param p1, "delay"    # J

    .prologue
    .line 735
    new-instance v0, Lorg/apache/log4j/xml/XMLWatchdog;

    invoke-direct {v0, p0}, Lorg/apache/log4j/xml/XMLWatchdog;-><init>(Ljava/lang/String;)V

    .line 736
    .local v0, "xdog":Lorg/apache/log4j/xml/XMLWatchdog;
    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/xml/XMLWatchdog;->setDelay(J)V

    .line 737
    invoke-virtual {v0}, Lorg/apache/log4j/xml/XMLWatchdog;->start()V

    .line 738
    return-void
.end method

.method private final doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 8
    .param p1, "action"    # Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 851
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "System property is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "javax.xml.parsers.DocumentBuilderFactory"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 854
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 855
    const-string v5, "Standard DocumentBuilderFactory search succeded."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 856
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "DocumentBuilderFactory is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 866
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 868
    .local v2, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/apache/log4j/xml/SAXErrorHandler;

    invoke-direct {v5}, Lorg/apache/log4j/xml/SAXErrorHandler;-><init>()V

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 869
    new-instance v5, Lorg/apache/log4j/xml/Log4jEntityResolver;

    invoke-direct {v5}, Lorg/apache/log4j/xml/Log4jEntityResolver;-><init>()V

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 871
    invoke-interface {p1, v2}, Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;->parse(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 872
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->parse(Lorg/w3c/dom/Element;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 880
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v4

    .line 858
    .local v4, "fce":Ljavax/xml/parsers/FactoryConfigurationError;
    invoke-virtual {v4}, Ljavax/xml/parsers/FactoryConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 859
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Could not instantiate a DocumentBuilderFactory."

    invoke-static {v5, v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 860
    throw v4

    .line 873
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fce":Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_1
    move-exception v3

    .line 874
    .restart local v3    # "e":Ljava/lang/Exception;
    instance-of v5, v3, Ljava/lang/InterruptedException;

    if-nez v5, :cond_0

    instance-of v5, v3, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_1

    .line 875
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 878
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Could not parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseElement(Lorg/w3c/dom/Element;Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "expectedClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1085
    const-string v10, "class"

    invoke-interface {p0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, "clazz":Ljava/lang/String;
    invoke-static {v1, p2, v9}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1089
    .local v4, "instance":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 1090
    new-instance v7, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v7, v4}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 1091
    .local v7, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1092
    .local v0, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 1094
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "loop":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 1095
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1096
    .local v3, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    move-object v2, v3

    .line 1097
    check-cast v2, Lorg/w3c/dom/Element;

    .line 1098
    .local v2, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    .line 1099
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "param"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1100
    invoke-static {v2, v7, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;Ljava/util/Properties;)V

    .line 1094
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1102
    .restart local v2    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v8    # "tagName":Ljava/lang/String;
    :cond_1
    invoke-static {v4, v2, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_1

    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v3    # "currentNode":Lorg/w3c/dom/Node;
    .end local v5    # "length":I
    .end local v6    # "loop":I
    .end local v7    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_2
    move-object v4, v9

    .line 1108
    .end local v4    # "instance":Ljava/lang/Object;
    :cond_3
    return-object v4
.end method

.method private static parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    .locals 3
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "recognized":Z
    instance-of v1, p0, Lorg/apache/log4j/xml/UnrecognizedElementHandler;

    if-eqz v1, :cond_0

    .line 209
    check-cast p0, Lorg/apache/log4j/xml/UnrecognizedElementHandler;

    .end local p0    # "instance":Ljava/lang/Object;
    invoke-interface {p0, p1, p2}, Lorg/apache/log4j/xml/UnrecognizedElementHandler;->parseUnrecognizedElement(Lorg/w3c/dom/Element;Ljava/util/Properties;)Z

    move-result v0

    .line 212
    :cond_0
    if-nez v0, :cond_1

    .line 213
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unrecognized element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 215
    :cond_1
    return-void
.end method

.method private static quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    .locals 2
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "props"    # Ljava/util/Properties;

    .prologue
    .line 230
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 235
    :cond_1
    const-string v1, "Error in extension content: "

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;Ljava/util/Properties;)V
    .locals 3
    .param p0, "elem"    # Lorg/w3c/dom/Element;
    .param p1, "propSetter"    # Lorg/apache/log4j/config/PropertySetter;
    .param p2, "props"    # Ljava/util/Properties;

    .prologue
    .line 1062
    const-string v2, "name"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, "name":Ljava/lang/String;
    const-string v2, "value"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/log4j/helpers/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-virtual {p1, v0, v1}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method public static subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 1043
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/log4j/helpers/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 1046
    .end local p0    # "value":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1044
    .restart local p0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Could not perform variable substitution."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public doConfigure(Ljava/io/InputStream;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 789
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$3;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/io/InputStream;)V

    .line 799
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 800
    return-void
.end method

.method public doConfigure(Ljava/io/Reader;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 810
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$4;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/io/Reader;)V

    .line 820
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 821
    return-void
.end method

.method public doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 747
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$1;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/lang/String;)V

    .line 755
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 756
    return-void
.end method

.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 761
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$2;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/net/URL;)V

    .line 778
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 779
    return-void
.end method

.method public doConfigure(Lorg/w3c/dom/Element;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 0
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 886
    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 887
    invoke-virtual {p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->parse(Lorg/w3c/dom/Element;)V

    .line 888
    return-void
.end method

.method protected doConfigure(Lorg/xml/sax/InputSource;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 2
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 831
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 832
    const-string v1, "dummy://log4j.dtd"

    invoke-virtual {p1, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 834
    :cond_0
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$5;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Lorg/xml/sax/InputSource;)V

    .line 842
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 843
    return-void
.end method

.method protected findAppenderByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 9
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "appenderName"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    invoke-virtual {v7, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 152
    .local v0, "appender":Lorg/apache/log4j/Appender;
    if-eqz v0, :cond_0

    move-object v7, v0

    .line 180
    :goto_0
    return-object v7

    .line 159
    :cond_0
    const/4 v2, 0x0

    .line 160
    .local v2, "element":Lorg/w3c/dom/Element;
    const-string v7, "appender"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 161
    .local v3, "list":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "t":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 162
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 163
    .local v5, "node":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 164
    .local v4, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v7, "name"

    invoke-interface {v4, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 165
    .local v1, "attrNode":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v2, v5

    .line 166
    check-cast v2, Lorg/w3c/dom/Element;

    .line 172
    .end local v1    # "attrNode":Lorg/w3c/dom/Node;
    .end local v4    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "node":Lorg/w3c/dom/Node;
    :cond_1
    if-nez v2, :cond_3

    .line 173
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "No appender named ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] could be found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 174
    const/4 v7, 0x0

    goto :goto_0

    .line 161
    .restart local v1    # "attrNode":Lorg/w3c/dom/Node;
    .restart local v4    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v5    # "node":Lorg/w3c/dom/Node;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 176
    .end local v1    # "attrNode":Lorg/w3c/dom/Node;
    .end local v4    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "node":Lorg/w3c/dom/Node;
    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseAppender(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_4

    .line 178
    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    invoke-virtual {v7, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v7, v0

    .line 180
    goto :goto_0
.end method

.method protected findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;
    .locals 3
    .param p1, "appenderRef"    # Lorg/w3c/dom/Element;

    .prologue
    .line 189
    const-string v2, "ref"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "appenderName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 191
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v2

    return-object v2
.end method

.method protected parse(Lorg/w3c/dom/Element;)V
    .locals 14
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 918
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    .line 920
    .local v8, "rootElementName":Ljava/lang/String;
    const-string v12, "log4j:configuration"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 921
    const-string v12, "configuration"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 922
    const-string v12, "The <configuration> element has been deprecated."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 924
    const-string v12, "Use the <log4j:configuration> element instead."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 932
    :cond_0
    const-string v12, "debug"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 934
    .local v4, "debugAttrib":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "debug attribute= \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\"."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 937
    const-string v12, ""

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "null"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 938
    const/4 v12, 0x1

    invoke-static {v4, v12}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 947
    :goto_0
    const-string v12, "reset"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 948
    .local v7, "resetAttrib":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "reset attribute= \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\"."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 949
    const-string v12, ""

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 950
    const/4 v12, 0x0

    invoke-static {v7, v12}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 951
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v12}, Lorg/apache/log4j/spi/LoggerRepository;->resetConfiguration()V

    .line 957
    :cond_1
    const-string v12, "configDebug"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "confDebug":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "null"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 959
    const-string v12, "The \"configDebug\" attribute is deprecated."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 960
    const-string v12, "Use the \"debug\" attribute instead."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 961
    const/4 v12, 0x1

    invoke-static {v1, v12}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 964
    :cond_2
    const-string v12, "threshold"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 965
    .local v10, "thresholdStr":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Threshold =\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\"."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 966
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "null"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 967
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v12, v10}, Lorg/apache/log4j/spi/LoggerRepository;->setThreshold(Ljava/lang/String;)V

    .line 979
    :cond_3
    const/4 v9, 0x0

    .line 980
    .local v9, "tagName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 981
    .local v2, "currentElement":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 982
    .local v3, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 983
    .local v0, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 985
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "loop":I
    :goto_1
    if-ge v6, v5, :cond_9

    .line 986
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 987
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    move-object v2, v3

    .line 988
    check-cast v2, Lorg/w3c/dom/Element;

    .line 989
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 991
    const-string v12, "categoryFactory"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "loggerFactory"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 992
    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseCategoryFactory(Lorg/w3c/dom/Element;)V

    .line 985
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 926
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v1    # "confDebug":Ljava/lang/String;
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v3    # "currentNode":Lorg/w3c/dom/Node;
    .end local v4    # "debugAttrib":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "loop":I
    .end local v7    # "resetAttrib":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "thresholdStr":Ljava/lang/String;
    :cond_6
    const-string v12, "DOM element is - not a <log4j:configuration> element."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 1023
    :cond_7
    return-void

    .line 940
    .restart local v4    # "debugAttrib":Ljava/lang/String;
    :cond_8
    const-string v12, "Ignoring debug attribute."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 997
    .restart local v0    # "children":Lorg/w3c/dom/NodeList;
    .restart local v1    # "confDebug":Ljava/lang/String;
    .restart local v2    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v3    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v5    # "length":I
    .restart local v6    # "loop":I
    .restart local v7    # "resetAttrib":Ljava/lang/String;
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "thresholdStr":Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_7

    .line 998
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 999
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    move-object v2, v3

    .line 1000
    check-cast v2, Lorg/w3c/dom/Element;

    .line 1001
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 1003
    const-string v12, "category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "logger"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1004
    :cond_a
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseCategory(Lorg/w3c/dom/Element;)V

    .line 997
    :cond_b
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1005
    :cond_c
    const-string v12, "root"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1006
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseRoot(Lorg/w3c/dom/Element;)V

    goto :goto_3

    .line 1007
    :cond_d
    const-string v12, "renderer"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1008
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseRenderer(Lorg/w3c/dom/Element;)V

    goto :goto_3

    .line 1009
    :cond_e
    const-string v12, "throwableRenderer"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1010
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    instance-of v12, v12, Lorg/apache/log4j/spi/ThrowableRendererSupport;

    if-eqz v12, :cond_b

    .line 1011
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseThrowableRenderer(Lorg/w3c/dom/Element;)Lorg/apache/log4j/spi/ThrowableRenderer;

    move-result-object v11

    .line 1012
    .local v11, "tr":Lorg/apache/log4j/spi/ThrowableRenderer;
    if-eqz v11, :cond_b

    .line 1013
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    check-cast v12, Lorg/apache/log4j/spi/ThrowableRendererSupport;

    invoke-interface {v12, v11}, Lorg/apache/log4j/spi/ThrowableRendererSupport;->setThrowableRenderer(Lorg/apache/log4j/spi/ThrowableRenderer;)V

    goto :goto_3

    .line 1016
    .end local v11    # "tr":Lorg/apache/log4j/spi/ThrowableRenderer;
    :cond_f
    const-string v12, "appender"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "categoryFactory"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "loggerFactory"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 1019
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget-object v13, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v12, v2, v13}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_3
.end method

.method protected parseAppender(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;
    .locals 15
    .param p1, "appenderElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 244
    const-string v13, "class"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "className":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Class name: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const/16 v14, 0x5d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 247
    :try_start_0
    invoke-static {v4}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 248
    .local v7, "instance":Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Lorg/apache/log4j/Appender;

    move-object v2, v0

    .line 249
    .local v2, "appender":Lorg/apache/log4j/Appender;
    new-instance v11, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v11, v2}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 251
    .local v11, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    const-string v13, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Lorg/apache/log4j/Appender;->setName(Ljava/lang/String;)V

    .line 253
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 254
    .local v3, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 256
    .local v8, "length":I
    const/4 v9, 0x0

    .local v9, "loop":I
    :goto_0
    if-ge v9, v8, :cond_9

    .line 257
    invoke-interface {v3, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 260
    .local v6, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 261
    move-object v0, v6

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v5, v0

    .line 264
    .local v5, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "param"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 265
    invoke-virtual {p0, v5, v11}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 256
    .end local v5    # "currentElement":Lorg/w3c/dom/Element;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 268
    .restart local v5    # "currentElement":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "layout"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 269
    invoke-virtual {p0, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLayout(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Layout;

    move-result-object v13

    invoke-interface {v2, v13}, Lorg/apache/log4j/Appender;->setLayout(Lorg/apache/log4j/Layout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    .end local v2    # "appender":Lorg/apache/log4j/Appender;
    .end local v3    # "children":Lorg/w3c/dom/NodeList;
    .end local v5    # "currentElement":Lorg/w3c/dom/Element;
    .end local v6    # "currentNode":Lorg/w3c/dom/Node;
    .end local v7    # "instance":Ljava/lang/Object;
    .end local v8    # "length":I
    .end local v9    # "loop":I
    .end local v11    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :catch_0
    move-exception v10

    .line 301
    .local v10, "oops":Ljava/lang/Exception;
    instance-of v13, v10, Ljava/lang/InterruptedException;

    if-nez v13, :cond_2

    instance-of v13, v10, Ljava/io/InterruptedIOException;

    if-eqz v13, :cond_3

    .line 302
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->interrupt()V

    .line 304
    :cond_3
    const-string v13, "Could not create an Appender. Reported error follows."

    invoke-static {v13, v10}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    const/4 v2, 0x0

    .end local v10    # "oops":Ljava/lang/Exception;
    :goto_2
    return-object v2

    .line 272
    .restart local v2    # "appender":Lorg/apache/log4j/Appender;
    .restart local v3    # "children":Lorg/w3c/dom/NodeList;
    .restart local v5    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v6    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v7    # "instance":Ljava/lang/Object;
    .restart local v8    # "length":I
    .restart local v9    # "loop":I
    .restart local v11    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_4
    :try_start_1
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "filter"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 273
    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseFilters(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V

    goto :goto_1

    .line 275
    :cond_5
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "errorHandler"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 276
    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseErrorHandler(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V

    goto :goto_1

    .line 278
    :cond_6
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "appender-ref"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 279
    const-string v13, "ref"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 280
    .local v12, "refName":Ljava/lang/String;
    instance-of v13, v2, Lorg/apache/log4j/spi/AppenderAttachable;

    if-eqz v13, :cond_7

    .line 281
    move-object v0, v2

    check-cast v0, Lorg/apache/log4j/spi/AppenderAttachable;

    move-object v1, v0

    .line 282
    .local v1, "aa":Lorg/apache/log4j/spi/AppenderAttachable;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Attaching appender named ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "] to appender named ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-interface {v2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "]."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v13

    invoke-interface {v1, v13}, Lorg/apache/log4j/spi/AppenderAttachable;->addAppender(Lorg/apache/log4j/Appender;)V

    goto/16 :goto_1

    .line 286
    .end local v1    # "aa":Lorg/apache/log4j/spi/AppenderAttachable;
    :cond_7
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Requesting attachment of appender named ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "] to appender named ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-interface {v2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "] which does not implement org.apache.log4j.spi.AppenderAttachable."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 291
    .end local v12    # "refName":Ljava/lang/String;
    :cond_8
    iget-object v13, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v7, v5, v13}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto/16 :goto_1

    .line 295
    .end local v5    # "currentElement":Lorg/w3c/dom/Element;
    .end local v6    # "currentNode":Lorg/w3c/dom/Node;
    :cond_9
    invoke-virtual {v11}, Lorg/apache/log4j/config/PropertySetter;->activate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected parseCategory(Lorg/w3c/dom/Element;)V
    .locals 10
    .param p1, "loggerElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 393
    const-string v7, "name"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "catName":Ljava/lang/String;
    const-string v7, "class"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "className":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 401
    const-string v7, "Retreiving an instance of org.apache.log4j.Logger."

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 402
    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v7, v2}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    .line 429
    .local v1, "cat":Lorg/apache/log4j/Logger;
    :goto_0
    monitor-enter v1

    .line 430
    :try_start_0
    const-string v7, "additivity"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 434
    .local v0, "additivity":Z
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Setting ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] additivity to ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1, v0}, Lorg/apache/log4j/Logger;->setAdditivity(Z)V

    .line 436
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v1, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    .line 437
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    .end local v0    # "additivity":Z
    .end local v1    # "cat":Lorg/apache/log4j/Logger;
    :goto_1
    return-void

    .line 402
    :cond_0
    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget-object v8, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-interface {v7, v2, v8}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v1

    goto :goto_0

    .line 405
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Desired logger sub-class: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 407
    :try_start_1
    invoke-static {v3}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 408
    .local v4, "clazz":Ljava/lang/Class;
    const-string v7, "getLogger"

    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 410
    .local v5, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Logger;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1    # "cat":Lorg/apache/log4j/Logger;
    goto/16 :goto_0

    .line 411
    .end local v1    # "cat":Lorg/apache/log4j/Logger;
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v5    # "getInstanceMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    .line 412
    .local v6, "oops":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/InterruptedException;

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/io/InterruptedIOException;

    if-eqz v7, :cond_3

    .line 414
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 416
    :cond_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not retrieve category ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]. Reported error follows."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 419
    .end local v6    # "oops":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v6

    .line 420
    .local v6, "oops":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not retrieve category ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]. Reported error follows."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 437
    .end local v6    # "oops":Ljava/lang/Exception;
    .restart local v1    # "cat":Lorg/apache/log4j/Logger;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method protected parseCategoryFactory(Lorg/w3c/dom/Element;)V
    .locals 10
    .param p1, "factoryElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 446
    const-string v8, "class"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "className":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 449
    const-string v8, "Category Factory tag class attribute not found."

    invoke-static {v8}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 450
    const-string v8, "No Category Factory configured."

    invoke-static {v8}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 481
    :cond_0
    return-void

    .line 453
    :cond_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Desired category factory: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 454
    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    if-nez v8, :cond_3

    const-string v8, "org.apache.log4j.spi.LoggerFactory"

    invoke-static {v8}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    :goto_0
    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 457
    .local v4, "factory":Ljava/lang/Object;
    instance-of v8, v4, Lorg/apache/log4j/spi/LoggerFactory;

    if-eqz v8, :cond_4

    move-object v8, v4

    .line 458
    check-cast v8, Lorg/apache/log4j/spi/LoggerFactory;

    iput-object v8, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 462
    :goto_1
    new-instance v7, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v7, v4}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 464
    .local v7, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    const/4 v2, 0x0

    .line 465
    .local v2, "currentElement":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 466
    .local v3, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 467
    .local v0, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 469
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "loop":I
    :goto_2
    if-ge v6, v5, :cond_0

    .line 470
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 471
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    move-object v2, v3

    .line 472
    check-cast v2, Lorg/w3c/dom/Element;

    .line 473
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "param"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 474
    invoke-virtual {p0, v2, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 469
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 454
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v3    # "currentNode":Lorg/w3c/dom/Node;
    .end local v4    # "factory":Ljava/lang/Object;
    .end local v5    # "length":I
    .end local v6    # "loop":I
    .end local v7    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_3
    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    goto :goto_0

    .line 460
    .restart local v4    # "factory":Ljava/lang/Object;
    :cond_4
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Category Factory class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " does not implement org.apache.log4j.LoggerFactory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 476
    .restart local v0    # "children":Lorg/w3c/dom/NodeList;
    .restart local v2    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v3    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v5    # "length":I
    .restart local v6    # "loop":I
    .restart local v7    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_5
    iget-object v8, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v4, v2, v8}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_3
.end method

.method protected parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V
    .locals 12
    .param p1, "catElement"    # Lorg/w3c/dom/Element;
    .param p2, "cat"    # Lorg/apache/log4j/Logger;
    .param p3, "isRoot"    # Z

    .prologue
    .line 504
    new-instance v7, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v7, p2}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 508
    .local v7, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->removeAllAppenders()V

    .line 511
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 512
    .local v2, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 514
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "loop":I
    :goto_0
    if-ge v6, v5, :cond_6

    .line 515
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 517
    .local v4, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    move-object v3, v4

    .line 518
    check-cast v3, Lorg/w3c/dom/Element;

    .line 519
    .local v3, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 521
    .local v9, "tagName":Ljava/lang/String;
    const-string v10, "appender-ref"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v1, v4

    .line 522
    check-cast v1, Lorg/w3c/dom/Element;

    .line 523
    .local v1, "appenderRef":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v0

    .line 524
    .local v0, "appender":Lorg/apache/log4j/Appender;
    const-string v10, "ref"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, "refName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 526
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Adding appender named ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "] to category ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "]."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 531
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 514
    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    .end local v1    # "appenderRef":Lorg/w3c/dom/Element;
    .end local v3    # "currentElement":Lorg/w3c/dom/Element;
    .end local v8    # "refName":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 529
    .restart local v0    # "appender":Lorg/apache/log4j/Appender;
    .restart local v1    # "appenderRef":Lorg/w3c/dom/Element;
    .restart local v3    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v8    # "refName":Ljava/lang/String;
    .restart local v9    # "tagName":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Appender named ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "] not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 533
    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    .end local v1    # "appenderRef":Lorg/w3c/dom/Element;
    .end local v8    # "refName":Ljava/lang/String;
    :cond_2
    const-string v10, "level"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 534
    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    goto :goto_2

    .line 535
    :cond_3
    const-string v10, "priority"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 536
    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    goto :goto_2

    .line 537
    :cond_4
    const-string v10, "param"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 538
    invoke-virtual {p0, v3, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto :goto_2

    .line 540
    :cond_5
    iget-object v10, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {p2, v3, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_2

    .line 544
    .end local v3    # "currentElement":Lorg/w3c/dom/Element;
    .end local v4    # "currentNode":Lorg/w3c/dom/Node;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v7}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 545
    return-void
.end method

.method protected parseErrorHandler(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V
    .locals 15
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 315
    const-string v12, "class"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v12, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    if-nez v12, :cond_1

    const-string v12, "org.apache.log4j.spi.ErrorHandler"

    invoke-static {v12}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    :goto_0
    const/4 v14, 0x0

    invoke-static {v13, v12, v14}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/spi/ErrorHandler;

    .line 320
    .local v4, "eh":Lorg/apache/log4j/spi/ErrorHandler;
    if-eqz v4, :cond_8

    .line 321
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lorg/apache/log4j/spi/ErrorHandler;->setAppender(Lorg/apache/log4j/Appender;)V

    .line 323
    new-instance v9, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v9, v4}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 324
    .local v9, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 325
    .local v1, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 327
    .local v5, "length":I
    const/4 v8, 0x0

    .local v8, "loop":I
    :goto_1
    if-ge v8, v5, :cond_7

    .line 328
    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 329
    .local v3, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    move-object v2, v3

    .line 330
    check-cast v2, Lorg/w3c/dom/Element;

    .line 331
    .local v2, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    .line 332
    .local v11, "tagName":Ljava/lang/String;
    const-string v12, "param"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 333
    invoke-virtual {p0, v2, v9}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 327
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 315
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "currentNode":Lorg/w3c/dom/Node;
    .end local v4    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    .end local v5    # "length":I
    .end local v8    # "loop":I
    .end local v9    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_1
    sget-object v12, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    goto :goto_0

    .line 334
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v2    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v3    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v4    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    .restart local v5    # "length":I
    .restart local v8    # "loop":I
    .restart local v9    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .restart local v11    # "tagName":Ljava/lang/String;
    :cond_2
    const-string v12, "appender-ref"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 335
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v12

    invoke-interface {v4, v12}, Lorg/apache/log4j/spi/ErrorHandler;->setBackupAppender(Lorg/apache/log4j/Appender;)V

    goto :goto_2

    .line 336
    :cond_3
    const-string v12, "logger-ref"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 337
    const-string v12, "ref"

    invoke-interface {v2, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, "loggerName":Ljava/lang/String;
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    if-nez v12, :cond_4

    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v12, v7}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v6

    .line 340
    .local v6, "logger":Lorg/apache/log4j/Logger;
    :goto_3
    invoke-interface {v4, v6}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    goto :goto_2

    .line 338
    .end local v6    # "logger":Lorg/apache/log4j/Logger;
    :cond_4
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget-object v13, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-interface {v12, v7, v13}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v6

    goto :goto_3

    .line 341
    .end local v7    # "loggerName":Ljava/lang/String;
    :cond_5
    const-string v12, "root-ref"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 342
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v12}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v10

    .line 343
    .local v10, "root":Lorg/apache/log4j/Logger;
    invoke-interface {v4, v10}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    goto :goto_2

    .line 345
    .end local v10    # "root":Lorg/apache/log4j/Logger;
    :cond_6
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v4, v2, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_2

    .line 349
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v3    # "currentNode":Lorg/w3c/dom/Node;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 350
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lorg/apache/log4j/Appender;->setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V

    .line 352
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v5    # "length":I
    .end local v8    # "loop":I
    .end local v9    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_8
    return-void
.end method

.method protected parseFilters(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V
    .locals 11
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 359
    const-string v9, "class"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "clazz":Ljava/lang/String;
    sget-object v9, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    if-nez v9, :cond_1

    const-string v9, "org.apache.log4j.spi.Filter"

    invoke-static {v9}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    :goto_0
    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/spi/Filter;

    .line 363
    .local v4, "filter":Lorg/apache/log4j/spi/Filter;
    if-eqz v4, :cond_4

    .line 364
    new-instance v7, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v7, v4}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 365
    .local v7, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 366
    .local v0, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 368
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "loop":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 369
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 370
    .local v3, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    move-object v2, v3

    .line 371
    check-cast v2, Lorg/w3c/dom/Element;

    .line 372
    .local v2, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    .line 373
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "param"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 374
    invoke-virtual {p0, v2, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 368
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 360
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "currentNode":Lorg/w3c/dom/Node;
    .end local v4    # "filter":Lorg/apache/log4j/spi/Filter;
    .end local v5    # "length":I
    .end local v6    # "loop":I
    .end local v7    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_1
    sget-object v9, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    goto :goto_0

    .line 376
    .restart local v0    # "children":Lorg/w3c/dom/NodeList;
    .restart local v2    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v3    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v4    # "filter":Lorg/apache/log4j/spi/Filter;
    .restart local v5    # "length":I
    .restart local v6    # "loop":I
    .restart local v7    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .restart local v8    # "tagName":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v4, v2, v9}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_2

    .line 380
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v3    # "currentNode":Lorg/w3c/dom/Node;
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 381
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Adding filter of type ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "] to appender named ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-interface {p2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 383
    invoke-interface {p2, v4}, Lorg/apache/log4j/Appender;->addFilter(Lorg/apache/log4j/spi/Filter;)V

    .line 385
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v5    # "length":I
    .end local v6    # "loop":I
    .end local v7    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_4
    return-void
.end method

.method protected parseLayout(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Layout;
    .locals 14
    .param p1, "layout_element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 552
    const-string v12, "class"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "className":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Parsing layout of class: \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 555
    :try_start_0
    invoke-static {v1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 556
    .local v4, "instance":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lorg/apache/log4j/Layout;

    move-object v5, v0

    .line 557
    .local v5, "layout":Lorg/apache/log4j/Layout;
    new-instance v10, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v10, v5}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 559
    .local v10, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 560
    .local v9, "params":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 562
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "loop":I
    :goto_0
    if-ge v7, v6, :cond_4

    .line 563
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 564
    .local v3, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 565
    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    .line 566
    .local v2, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    .line 567
    .local v11, "tagName":Ljava/lang/String;
    const-string v12, "param"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 568
    invoke-virtual {p0, v2, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 562
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 570
    .restart local v2    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v11    # "tagName":Ljava/lang/String;
    :cond_1
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v4, v2, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 578
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v3    # "currentNode":Lorg/w3c/dom/Node;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "layout":Lorg/apache/log4j/Layout;
    .end local v6    # "length":I
    .end local v7    # "loop":I
    .end local v9    # "params":Lorg/w3c/dom/NodeList;
    .end local v10    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 579
    .local v8, "oops":Ljava/lang/Exception;
    instance-of v12, v8, Ljava/lang/InterruptedException;

    if-nez v12, :cond_2

    instance-of v12, v8, Ljava/io/InterruptedIOException;

    if-eqz v12, :cond_3

    .line 580
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    .line 582
    :cond_3
    const-string v12, "Could not create the Layout. Reported error follows."

    invoke-static {v12, v8}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    const/4 v5, 0x0

    .end local v8    # "oops":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 575
    .restart local v4    # "instance":Ljava/lang/Object;
    .restart local v5    # "layout":Lorg/apache/log4j/Layout;
    .restart local v6    # "length":I
    .restart local v7    # "loop":I
    .restart local v9    # "params":Lorg/w3c/dom/NodeList;
    .restart local v10    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_4
    :try_start_1
    invoke-virtual {v10}, Lorg/apache/log4j/config/PropertySetter;->activate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V
    .locals 10
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "logger"    # Lorg/apache/log4j/Logger;
    .param p3, "isRoot"    # Z

    .prologue
    const/4 v9, 0x0

    .line 646
    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "catName":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 648
    const-string v0, "root"

    .line 651
    :cond_0
    const-string v7, "value"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 652
    .local v5, "priStr":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Level value for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " is  ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 654
    const-string v7, "inherited"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 655
    :cond_1
    if-eqz p3, :cond_2

    .line 656
    const-string v7, "Root level cannot be inherited. Ignoring directive."

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 683
    :goto_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " level set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 684
    :goto_1
    return-void

    .line 658
    :cond_2
    invoke-virtual {p2, v9}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_0

    .line 661
    :cond_3
    const-string v7, "class"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "className":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 663
    sget-object v7, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {v5, v7}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_0

    .line 665
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Desired Level sub-class: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 667
    :try_start_0
    invoke-static {v1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 668
    .local v2, "clazz":Ljava/lang/Class;
    const-string v7, "toLevel"

    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 670
    .local v6, "toLevelMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/Level;

    .line 672
    .local v4, "pri":Lorg/apache/log4j/Level;
    invoke-virtual {p2, v4}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "pri":Lorg/apache/log4j/Level;
    .end local v6    # "toLevelMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 674
    .local v3, "oops":Ljava/lang/Exception;
    instance-of v7, v3, Ljava/lang/InterruptedException;

    if-nez v7, :cond_5

    instance-of v7, v3, Ljava/io/InterruptedIOException;

    if-eqz v7, :cond_6

    .line 675
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 677
    :cond_6
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not create level ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]. Reported error follows."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method protected parseRenderer(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 590
    const-string v2, "renderingClass"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "renderingClass":Ljava/lang/String;
    const-string v2, "renderedClass"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "renderedClass":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    instance-of v2, v2, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    check-cast v2, Lorg/apache/log4j/spi/RendererSupport;

    invoke-static {v2, v0, v1}, Lorg/apache/log4j/or/RendererMap;->addRenderer(Lorg/apache/log4j/spi/RendererSupport;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_0
    return-void
.end method

.method protected parseRoot(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "rootElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 489
    iget-object v1, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v1}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 491
    .local v0, "root":Lorg/apache/log4j/Logger;
    monitor-enter v0

    .line 492
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected parseThrowableRenderer(Lorg/w3c/dom/Element;)Lorg/apache/log4j/spi/ThrowableRenderer;
    .locals 14
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 605
    const-string v12, "class"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "className":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Parsing throwableRenderer of class: \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 608
    :try_start_0
    invoke-static {v1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 609
    .local v4, "instance":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lorg/apache/log4j/spi/ThrowableRenderer;

    move-object v11, v0

    .line 610
    .local v11, "tr":Lorg/apache/log4j/spi/ThrowableRenderer;
    new-instance v9, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v9, v11}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 612
    .local v9, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 613
    .local v8, "params":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 615
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "loop":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 616
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 617
    .local v3, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 618
    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    .line 619
    .local v2, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    .line 620
    .local v10, "tagName":Ljava/lang/String;
    const-string v12, "param"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 621
    invoke-virtual {p0, v2, v9}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 615
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 623
    .restart local v2    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v10    # "tagName":Ljava/lang/String;
    :cond_1
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v4, v2, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 631
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v3    # "currentNode":Lorg/w3c/dom/Node;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "length":I
    .end local v6    # "loop":I
    .end local v8    # "params":Lorg/w3c/dom/NodeList;
    .end local v9    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "tr":Lorg/apache/log4j/spi/ThrowableRenderer;
    :catch_0
    move-exception v7

    .line 632
    .local v7, "oops":Ljava/lang/Exception;
    instance-of v12, v7, Ljava/lang/InterruptedException;

    if-nez v12, :cond_2

    instance-of v12, v7, Ljava/io/InterruptedIOException;

    if-eqz v12, :cond_3

    .line 633
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    .line 635
    :cond_3
    const-string v12, "Could not create the ThrowableRenderer. Reported error follows."

    invoke-static {v12, v7}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 637
    const/4 v11, 0x0

    .end local v7    # "oops":Ljava/lang/Exception;
    :goto_2
    return-object v11

    .line 628
    .restart local v4    # "instance":Ljava/lang/Object;
    .restart local v5    # "length":I
    .restart local v6    # "loop":I
    .restart local v8    # "params":Lorg/w3c/dom/NodeList;
    .restart local v9    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .restart local v11    # "tr":Lorg/apache/log4j/spi/ThrowableRenderer;
    :cond_4
    :try_start_1
    invoke-virtual {v9}, Lorg/apache/log4j/config/PropertySetter;->activate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V
    .locals 3
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .param p2, "propSetter"    # Lorg/apache/log4j/config/PropertySetter;

    .prologue
    .line 688
    const-string v2, "name"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "name":Ljava/lang/String;
    const-string v2, "value"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/log4j/helpers/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    invoke-virtual {p2, v0, v1}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method protected subst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1028
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
