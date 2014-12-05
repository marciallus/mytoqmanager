.class public Lorg/apache/log4j/Hierarchy;
.super Ljava/lang/Object;
.source "Hierarchy.java"

# interfaces
.implements Lorg/apache/log4j/spi/LoggerRepository;
.implements Lorg/apache/log4j/spi/RendererSupport;
.implements Lorg/apache/log4j/spi/ThrowableRendererSupport;


# instance fields
.field private defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

.field emittedNoAppenderWarning:Z

.field emittedNoResourceBundleWarning:Z

.field ht:Ljava/util/Hashtable;

.field private listeners:Ljava/util/Vector;

.field rendererMap:Lorg/apache/log4j/or/RendererMap;

.field root:Lorg/apache/log4j/Logger;

.field threshold:Lorg/apache/log4j/Level;

.field thresholdInt:I

.field private throwableRenderer:Lorg/apache/log4j/spi/ThrowableRenderer;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 2
    .param p1, "root"    # Lorg/apache/log4j/Logger;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    .line 79
    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoResourceBundleWarning:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->throwableRenderer:Lorg/apache/log4j/spi/ThrowableRenderer;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    .line 92
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    .line 93
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    .line 95
    sget-object v0, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 96
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 97
    new-instance v0, Lorg/apache/log4j/or/RendererMap;

    invoke-direct {v0}, Lorg/apache/log4j/or/RendererMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    .line 98
    new-instance v0, Lorg/apache/log4j/DefaultCategoryFactory;

    invoke-direct {v0}, Lorg/apache/log4j/DefaultCategoryFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 99
    return-void
.end method

.method private final updateChildren(Lorg/apache/log4j/ProvisionNode;Lorg/apache/log4j/Logger;)V
    .locals 5
    .param p1, "pn"    # Lorg/apache/log4j/ProvisionNode;
    .param p2, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    .line 560
    invoke-virtual {p1}, Lorg/apache/log4j/ProvisionNode;->size()I

    move-result v2

    .line 562
    .local v2, "last":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 563
    invoke-virtual {p1, v0}, Lorg/apache/log4j/ProvisionNode;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Logger;

    .line 568
    .local v1, "l":Lorg/apache/log4j/Logger;
    iget-object v3, v1, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    iget-object v3, v3, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    iget-object v4, p2, Lorg/apache/log4j/Logger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 569
    iget-object v3, v1, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    iput-object v3, p2, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    .line 570
    iput-object p2, v1, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    .line 562
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    .end local v1    # "l":Lorg/apache/log4j/Logger;
    :cond_1
    return-void
.end method

.method private final updateParents(Lorg/apache/log4j/Logger;)V
    .locals 12
    .param p1, "cat"    # Lorg/apache/log4j/Logger;

    .prologue
    const/16 v11, 0x2e

    .line 504
    iget-object v4, p1, Lorg/apache/log4j/Logger;->name:Ljava/lang/String;

    .line 505
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 506
    .local v3, "length":I
    const/4 v6, 0x0

    .line 511
    .local v6, "parentFound":Z
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v4, v11, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 513
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 516
    .local v8, "substr":Ljava/lang/String;
    new-instance v2, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v2, v8}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    .line 517
    .local v2, "key":Lorg/apache/log4j/CategoryKey;
    iget-object v9, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 519
    .local v5, "o":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 521
    new-instance v7, Lorg/apache/log4j/ProvisionNode;

    invoke-direct {v7, p1}, Lorg/apache/log4j/ProvisionNode;-><init>(Lorg/apache/log4j/Logger;)V

    .line 522
    .local v7, "pn":Lorg/apache/log4j/ProvisionNode;
    iget-object v9, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v9, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .end local v5    # "o":Ljava/lang/Object;
    .end local v7    # "pn":Lorg/apache/log4j/ProvisionNode;
    :goto_1
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v4, v11, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    goto :goto_0

    .line 523
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v9, v5, Lorg/apache/log4j/Category;

    if-eqz v9, :cond_3

    .line 524
    const/4 v6, 0x1

    .line 525
    check-cast v5, Lorg/apache/log4j/Category;

    .end local v5    # "o":Ljava/lang/Object;
    iput-object v5, p1, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    .line 537
    .end local v2    # "key":Lorg/apache/log4j/CategoryKey;
    .end local v8    # "substr":Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_2

    .line 538
    iget-object v9, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    iput-object v9, p1, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    .line 539
    :cond_2
    return-void

    .line 528
    .restart local v2    # "key":Lorg/apache/log4j/CategoryKey;
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v8    # "substr":Ljava/lang/String;
    :cond_3
    instance-of v9, v5, Lorg/apache/log4j/ProvisionNode;

    if-eqz v9, :cond_4

    .line 529
    check-cast v5, Lorg/apache/log4j/ProvisionNode;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {v5, p1}, Lorg/apache/log4j/ProvisionNode;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 531
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "unexpected object type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " in ht."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addHierarchyEventListener(Lorg/apache/log4j/spi/HierarchyEventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/log4j/spi/HierarchyEventListener;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "Ignoring attempt to add an existent listener."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .locals 1
    .param p1, "classToRender"    # Ljava/lang/Class;
    .param p2, "or"    # Lorg/apache/log4j/or/ObjectRenderer;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/or/RendererMap;->put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V

    .line 107
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 131
    return-void
.end method

.method public emitNoAppenderWarning(Lorg/apache/log4j/Category;)V
    .locals 2
    .param p1, "cat"    # Lorg/apache/log4j/Category;

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No appenders could be found for logger ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 139
    const-string v0, "Please initialize the log4j system properly."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 140
    const-string v0, "See http://logging.apache.org/log4j/1.2/faq.html#noconfig for more info."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    .line 143
    :cond_0
    return-void
.end method

.method public exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    new-instance v2, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v2, p1}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/log4j/Logger;

    if-eqz v1, :cond_0

    .line 156
    check-cast v0, Lorg/apache/log4j/Logger;

    .line 158
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fireAddAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .locals 4
    .param p1, "logger"    # Lorg/apache/log4j/Category;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 192
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 195
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 196
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 197
    .local v1, "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    invoke-interface {v1, p1, p2}, Lorg/apache/log4j/spi/HierarchyEventListener;->addAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    .end local v1    # "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method fireRemoveAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .locals 4
    .param p1, "logger"    # Lorg/apache/log4j/Category;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 203
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 204
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 206
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 207
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 208
    .local v1, "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    invoke-interface {v1, p1, p2}, Lorg/apache/log4j/spi/HierarchyEventListener;->removeAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    .end local v1    # "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method public getCurrentCategories()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLoggers()Ljava/util/Enumeration;
    .locals 4

    .prologue
    .line 309
    new-instance v2, Ljava/util/Vector;

    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 311
    .local v2, "v":Ljava/util/Vector;
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 312
    .local v0, "elems":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 314
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Lorg/apache/log4j/Logger;

    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 318
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/Hierarchy;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/log4j/spi/LoggerFactory;

    .prologue
    .line 266
    new-instance v0, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v0, p1}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "key":Lorg/apache/log4j/CategoryKey;
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v4

    .line 273
    :try_start_0
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 274
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 275
    invoke-interface {p2, p1}, Lorg/apache/log4j/spi/LoggerFactory;->makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    .line 276
    .local v1, "logger":Lorg/apache/log4j/Logger;
    invoke-virtual {v1, p0}, Lorg/apache/log4j/Logger;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 277
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-direct {p0, v1}, Lorg/apache/log4j/Hierarchy;->updateParents(Lorg/apache/log4j/Logger;)V

    .line 279
    monitor-exit v4

    .line 293
    .end local v1    # "logger":Lorg/apache/log4j/Logger;
    .end local v2    # "o":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 280
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v3, v2, Lorg/apache/log4j/Logger;

    if-eqz v3, :cond_1

    .line 281
    check-cast v2, Lorg/apache/log4j/Logger;

    .end local v2    # "o":Ljava/lang/Object;
    monitor-exit v4

    move-object v1, v2

    goto :goto_0

    .line 282
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lorg/apache/log4j/ProvisionNode;

    if-eqz v3, :cond_2

    .line 284
    invoke-interface {p2, p1}, Lorg/apache/log4j/spi/LoggerFactory;->makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    .line 285
    .restart local v1    # "logger":Lorg/apache/log4j/Logger;
    invoke-virtual {v1, p0}, Lorg/apache/log4j/Logger;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 286
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    check-cast v2, Lorg/apache/log4j/ProvisionNode;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-direct {p0, v2, v1}, Lorg/apache/log4j/Hierarchy;->updateChildren(Lorg/apache/log4j/ProvisionNode;Lorg/apache/log4j/Logger;)V

    .line 288
    invoke-direct {p0, v1}, Lorg/apache/log4j/Hierarchy;->updateParents(Lorg/apache/log4j/Logger;)V

    .line 289
    monitor-exit v4

    goto :goto_0

    .line 295
    .end local v1    # "logger":Lorg/apache/log4j/Logger;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 293
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getRendererMap()Lorg/apache/log4j/or/RendererMap;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    return-object v0
.end method

.method public getRootLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public getThreshold()Lorg/apache/log4j/Level;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->threshold:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getThrowableRenderer()Lorg/apache/log4j/spi/ThrowableRenderer;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->throwableRenderer:Lorg/apache/log4j/spi/ThrowableRenderer;

    return-object v0
.end method

.method public isDisabled(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 356
    iget v0, p0, Lorg/apache/log4j/Hierarchy;->thresholdInt:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideAsNeeded(Ljava/lang/String;)V
    .locals 1
    .param p1, "override"    # Ljava/lang/String;

    .prologue
    .line 364
    const-string v0, "The Hiearchy.overrideAsNeeded method has been deprecated."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public resetConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    .line 385
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    invoke-virtual {v2, v4}, Lorg/apache/log4j/Logger;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 386
    sget-object v2, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 390
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v3

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->shutdown()V

    .line 393
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v1

    .line 394
    .local v1, "cats":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Logger;

    .line 396
    .local v0, "c":Lorg/apache/log4j/Logger;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    .line 397
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/log4j/Logger;->setAdditivity(Z)V

    .line 398
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/log4j/Logger;->setResourceBundle(Ljava/util/ResourceBundle;)V

    goto :goto_0

    .line 400
    .end local v0    # "c":Lorg/apache/log4j/Logger;
    .end local v1    # "cats":Ljava/util/Enumeration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "cats":Ljava/util/Enumeration;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v2}, Lorg/apache/log4j/or/RendererMap;->clear()V

    .line 402
    iput-object v4, p0, Lorg/apache/log4j/Hierarchy;->throwableRenderer:Lorg/apache/log4j/spi/ThrowableRenderer;

    .line 403
    return-void
.end method

.method public setDisableOverride(Ljava/lang/String;)V
    .locals 1
    .param p1, "override"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string v0, "The Hiearchy.setDisableOverride method has been deprecated."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .locals 1
    .param p1, "renderedClass"    # Ljava/lang/Class;
    .param p2, "renderer"    # Lorg/apache/log4j/or/ObjectRenderer;

    .prologue
    .line 422
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/or/RendererMap;->put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V

    .line 423
    return-void
.end method

.method public setThreshold(Ljava/lang/String;)V
    .locals 3
    .param p1, "levelStr"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    .line 168
    .local v0, "l":Lorg/apache/log4j/Level;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not convert ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] to Level."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setThreshold(Lorg/apache/log4j/Level;)V
    .locals 1
    .param p1, "l"    # Lorg/apache/log4j/Level;

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget v0, p1, Lorg/apache/log4j/Level;->level:I

    iput v0, p0, Lorg/apache/log4j/Hierarchy;->thresholdInt:I

    .line 186
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->threshold:Lorg/apache/log4j/Level;

    .line 188
    :cond_0
    return-void
.end method

.method public setThrowableRenderer(Lorg/apache/log4j/spi/ThrowableRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lorg/apache/log4j/spi/ThrowableRenderer;

    .prologue
    .line 429
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->throwableRenderer:Lorg/apache/log4j/spi/ThrowableRenderer;

    .line 430
    return-void
.end method

.method public shutdown()V
    .locals 5

    .prologue
    .line 458
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    .line 461
    .local v2, "root":Lorg/apache/log4j/Logger;
    invoke-virtual {v2}, Lorg/apache/log4j/Logger;->closeNestedAppenders()V

    .line 463
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v4

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v1

    .line 465
    .local v1, "cats":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Logger;

    .line 467
    .local v0, "c":Lorg/apache/log4j/Logger;
    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->closeNestedAppenders()V

    goto :goto_0

    .line 477
    .end local v0    # "c":Lorg/apache/log4j/Logger;
    .end local v1    # "cats":Ljava/util/Enumeration;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 471
    .restart local v1    # "cats":Ljava/util/Enumeration;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/log4j/Logger;->removeAllAppenders()V

    .line 472
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v1

    .line 473
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Logger;

    .line 475
    .restart local v0    # "c":Lorg/apache/log4j/Logger;
    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->removeAllAppenders()V

    goto :goto_1

    .line 477
    .end local v0    # "c":Lorg/apache/log4j/Logger;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    return-void
.end method
