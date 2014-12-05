.class public Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;
.super Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
.source "LabelWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget$2;
    }
.end annotation


# static fields
.field private static final ENABLED_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bgColor:Ljava/lang/Integer;

.field private enabled:Z

.field private hints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;",
            ">;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/Label;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)V
    .locals 6
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "objectPath"    # Ljava/lang/String;
    .param p3, "controlPanel"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 77
    .local p4, "children":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;>;"
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->LABEL_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)V

    .line 78
    return-void
.end method

.method private fillLabelHints([S)V
    .locals 8
    .param p1, "hIds"    # [S

    .prologue
    .line 236
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->hints:Ljava/util/List;

    .line 238
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    const-string v6, "Searching for LabelWidget hints"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object v0, p1

    .local v0, "arr$":[S
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-short v1, v0, v3

    .line 242
    .local v1, "hintId":S
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;->getEnumById(S)Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

    move-result-object v2

    .line 243
    .local v2, "hintType":Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
    if-eqz v2, :cond_0

    .line 244
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found LabelWidget hint: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', adding"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->hints:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_0
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LabelWidget hint id: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is unknown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 251
    .end local v1    # "hintId":S
    .end local v2    # "hintType":Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
    :cond_1
    return-void
.end method

.method private fillOptionalParams(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lorg/alljoyn/bus/Variant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "optParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Lorg/alljoyn/bus/Variant;>;"
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    const-string v8, "LabelWidget - scanning optional parameters"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    move-result-object v0

    .local v0, "arr$":[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 203
    .local v5, "optKeyEnum":Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;
    iget-short v7, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->ID:S

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/alljoyn/bus/Variant;

    .line 205
    .local v6, "optParam":Lorg/alljoyn/bus/Variant;
    if-nez v6, :cond_0

    .line 206
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OptionalParameter: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', is not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_0
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found OptionalParameter: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_start_0
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget$2;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$LabelWidgetEnum:[I

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 215
    :pswitch_0
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->bgColor:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "be":Lorg/alljoyn/bus/BusException;
    new-instance v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to unmarshal optional parameters, Error: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 219
    .end local v1    # "be":Lorg/alljoyn/bus/BusException;
    :pswitch_1
    :try_start_1
    const-class v7, [S

    invoke-virtual {v6, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    .line 220
    .local v3, "labelHints":[S
    invoke-direct {p0, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->fillLabelHints([S)V
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 229
    .end local v3    # "labelHints":[S
    .end local v5    # "optKeyEnum":Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;
    .end local v6    # "optParam":Lorg/alljoyn/bus/Variant;
    :cond_1
    return-void

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected createChildWidgets()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 186
    .local v0, "size":I
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test LabelWidget validity - LabelWidget can\'t has child nodes. #ChildNodes: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-lez v0, :cond_0

    .line 188
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The LabelWidget objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not valid, found \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' child nodes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    return-void
.end method

.method public getBgColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->bgColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->hints:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->label:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->enabled:Z

    return v0
.end method

.method protected registerSignalHandler()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v3, "MetadataChanged"

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->getLabelWidgetMetadataChanged(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 138
    .local v1, "labelMetadataChanged":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 139
    const-string v2, "LabelWidget, MetadataChanged method isn\'t defined"

    .line 140
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v3, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetSignalHandler;

    invoke-direct {v3, p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetSignalHandler;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;)V

    invoke-virtual {p0, v3, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->registerSignalHander(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', LabelWidget, failed to register signal handler, Error: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-interface {v3, v4, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Lorg/alljoyn/bus/Variant;)V
    .locals 6
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 162
    :try_start_0
    const-string v3, "States"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 164
    .local v2, "states":I
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->enabled:Z

    .line 177
    .end local v2    # "states":I
    :cond_0
    :goto_1
    return-void

    .line 164
    .restart local v2    # "states":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 166
    .end local v2    # "states":I
    :cond_2
    const-string v3, "Label"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    const-class v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->label:Ljava/lang/String;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmarshal the property: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', Error: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    .end local v0    # "be":Lorg/alljoyn/bus/BusException;
    :cond_3
    :try_start_1
    const-string v3, "OptParams"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget$1;

    invoke-direct {v3, p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;)V

    invoke-virtual {p2, v3}, Lorg/alljoyn/bus/Variant;->getObject(Lorg/alljoyn/bus/VariantTypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 171
    .local v1, "optParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Lorg/alljoyn/bus/Variant;>;"
    invoke-direct {p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->fillOptionalParams(Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected setRemoteController()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->ifName:Ljava/lang/String;

    invoke-static {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getWidgetFactory(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    move-result-object v4

    .line 103
    .local v4, "widgetFactory":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    if-nez v4, :cond_0

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received an unrecognized interface name: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->ifName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "msg":Ljava/lang/String;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v5, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 109
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getIfaceClass()Ljava/lang/Class;

    move-result-object v1

    .line 111
    .local v1, "ifClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v6}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSender()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->objectPath:Ljava/lang/String;

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->sessionId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    const-class v11, Lorg/alljoyn/bus/ifaces/Properties;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getProxyObject(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v3

    .line 118
    .local v3, "proxyObj":Lorg/alljoyn/bus/ProxyBusObject;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting remote control LabelWidget, objPath: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-class v5, Lorg/alljoyn/bus/ifaces/Properties;

    invoke-virtual {v3, v5}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/bus/ifaces/Properties;

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->properties:Lorg/alljoyn/bus/ifaces/Properties;

    .line 120
    invoke-virtual {v3, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/Label;

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/Label;

    .line 123
    :try_start_0
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/Label;

    invoke-interface {v5}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/Label;->getVersion()S

    move-result v5

    iput-short v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->version:S
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/alljoyn/bus/BusException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call getVersion for element: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v5, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
