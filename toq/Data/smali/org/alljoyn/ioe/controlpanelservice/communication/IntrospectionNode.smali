.class public Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
.super Ljava/lang/Object;
.source "IntrospectionNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;,
        Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$NoOpEntityResolver;
    }
.end annotation


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;",
            ">;"
        }
    .end annotation
.end field

.field private interfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parsed:Z

.field private parser:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parsed:Z

    .line 110
    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->path:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parser:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->children:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->interfaces:Ljava/util/List;

    .line 117
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->path:Ljava/lang/String;

    .line 118
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;

    invoke-direct {v0, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;)V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parser:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parsed:Z

    .line 110
    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->path:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parser:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->children:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->interfaces:Ljava/util/List;

    .line 122
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->path:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parser:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->interfaces:Ljava/util/List;

    return-object v0
.end method

.method public static getInstrospection(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p1, "busName"    # Ljava/lang/String;
    .param p2, "objPath"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 201
    const-string v4, "IntrospectionNode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Introspecting the Object: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', BusUniqueName: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', sessionId: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/alljoyn/bus/ifaces/Introspectable;

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/alljoyn/bus/BusAttachment;->getProxyBusObject(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v3

    .line 204
    .local v3, "proxyObj":Lorg/alljoyn/bus/ProxyBusObject;
    const-class v4, Lorg/alljoyn/bus/ifaces/Introspectable;

    invoke-virtual {v3, v4}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/bus/ifaces/Introspectable;

    .line 208
    .local v1, "introObj":Lorg/alljoyn/bus/ifaces/Introspectable;
    :try_start_0
    invoke-interface {v1}, Lorg/alljoyn/bus/ifaces/Introspectable;->Introspect()Ljava/lang/String;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 214
    .local v2, "introXML":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v3}, Lorg/alljoyn/bus/ProxyBusObject;->release()V

    .line 218
    :cond_0
    return-object v2

    .line 210
    .end local v2    # "introXML":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get introspection of: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', Error: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method protected addChild(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->children:Ljava/util/List;

    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parser:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;

    invoke-direct {v2, v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;-><init>(Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public getChidren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public getInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->interfaces:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isParsed()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parsed:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parser:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;

    invoke-virtual {v0, p0, p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode$IntrospectionParser;->parse(Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parsed:Z

    .line 180
    return-void
.end method

.method public parse(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;I)V
    .locals 4
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p2, "busName"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->path:Ljava/lang/String;

    invoke-static {p1, p2, v3, p3}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getInstrospection(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "xml":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parse(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    .line 168
    .local v0, "childNode":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    invoke-virtual {v0, p1, p2, p3}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parse(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;I)V

    goto :goto_0

    .line 170
    .end local v0    # "childNode":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    :cond_0
    return-void
.end method

.method public parseOneLevel(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;I)V
    .locals 2
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p2, "busName"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->path:Ljava/lang/String;

    invoke-static {p1, p2, v1, p3}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getInstrospection(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "xml":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parse(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-boolean v4, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parsed:Z

    if-nez v4, :cond_0

    .line 147
    const-string v4, " Not parsed\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    :goto_0
    return-object v4

    .line 151
    :cond_0
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->interfaces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .local v1, "ifc":Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 157
    .end local v1    # "ifc":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    .line 158
    .local v2, "node":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 161
    .end local v2    # "node":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
