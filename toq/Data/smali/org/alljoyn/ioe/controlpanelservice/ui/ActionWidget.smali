.class public Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;
.super Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
.source "ActionWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget$2;
    }
.end annotation


# static fields
.field private static final ENABLED_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

.field private bgColor:Ljava/lang/Integer;

.field private enabled:Z

.field private hints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetHintsType;",
            ">;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSuper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

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
    .line 91
    .local p4, "children":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;>;"
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ACTION_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)V

    .line 92
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
    .line 267
    .local p1, "optParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Lorg/alljoyn/bus/Variant;>;"
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    const-string v8, "ActionWidget - scanning optional parameters"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    move-result-object v1

    .local v1, "arr$":[Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 271
    .local v5, "optKeyEnum":Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;
    iget-short v7, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->ID:S

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/alljoyn/bus/Variant;

    .line 273
    .local v6, "optParam":Lorg/alljoyn/bus/Variant;
    if-nez v6, :cond_0

    .line 274
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

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

    .line 269
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_0
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

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

    .line 281
    :try_start_0
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget$2;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ActionWidgetEnum:[I

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 283
    :pswitch_0
    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->label:Ljava/lang/String;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 297
    :catch_0
    move-exception v2

    .line 298
    .local v2, "be":Lorg/alljoyn/bus/BusException;
    new-instance v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to unmarshal optional parameters, Error: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

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

    .line 287
    .end local v2    # "be":Lorg/alljoyn/bus/BusException;
    :pswitch_1
    :try_start_1
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->bgColor:Ljava/lang/Integer;

    goto :goto_1

    .line 291
    :pswitch_2
    const-class v7, [S

    invoke-virtual {v6, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 292
    .local v0, "actHints":[S
    invoke-direct {p0, v0}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->setListOfActionWidgetHints([S)V
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 301
    .end local v0    # "actHints":[S
    .end local v5    # "optKeyEnum":Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;
    .end local v6    # "optParam":Lorg/alljoyn/bus/Variant;
    :cond_1
    return-void

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setListOfActionWidgetHints([S)V
    .locals 8
    .param p1, "hIds"    # [S

    .prologue
    .line 309
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    const-string v6, "Scanning ActionWidgetHints"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->hints:Ljava/util/List;

    .line 312
    move-object v0, p1

    .local v0, "arr$":[S
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-short v1, v0, v3

    .line 313
    .local v1, "hintId":S
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetHintsType;->getEnumById(S)Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetHintsType;

    move-result-object v2

    .line 314
    .local v2, "hintType":Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetHintsType;
    if-nez v2, :cond_0

    .line 315
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unrecognized ActionWidgetHint: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', ignoring..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_0
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->hints:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 321
    .end local v1    # "hintId":S
    .end local v2    # "hintType":Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetHintsType;
    :cond_1
    return-void
.end method


# virtual methods
.method protected createChildWidgets()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->children:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 221
    .local v6, "size":I
    if-nez v6, :cond_0

    .line 222
    sget-object v8, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActionWidget objPath: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', doesn\'t have any child nodes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 227
    :cond_0
    const/4 v8, 0x1

    if-le v6, v8, :cond_1

    .line 228
    new-instance v8, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActionWidget objPath: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' has more than one child nodes: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 231
    :cond_1
    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->children:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    .line 232
    .local v0, "childNode":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getInterfaces()Ljava/util/List;

    move-result-object v3

    .line 236
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    .local v2, "ifName":Ljava/lang/String;
    const-string v8, "org.alljoyn.ControlPanel."

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 238
    sget-object v8, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found not a ControlPanel interface: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    :cond_3
    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getWidgetFactory(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    move-result-object v7

    .line 244
    .local v7, "widgFactory":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    if-nez v7, :cond_4

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received an unknown ControlPanel interface: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "msg":Ljava/lang/String;
    sget-object v8, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v8, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v8, v4}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 251
    .end local v4    # "msg":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getElementType()Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-result-object v8

    sget-object v9, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ALERT_DIALOG:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    if-ne v8, v9, :cond_2

    .line 252
    sget-object v8, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActionWidget objPath: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', has AlertDialog objPath: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', creating..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v8, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    iget-object v9, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getChidren()Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v2, v5, v9, v10}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)V

    iput-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    goto/16 :goto_0

    .line 258
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v7    # "widgFactory":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    :cond_5
    new-instance v8, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActionWidget objPath: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', not found the AlertDialog interface"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public exec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    if-eqz v2, :cond_0

    .line 120
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActionWidget objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', alertDialog is defined, can\'t call exec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exec called, device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSuper;

    invoke-interface {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSuper;->Exec()V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Exec,  objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', Error: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v2, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAlertDialog()Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    return-object v0
.end method

.method public getBgColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->bgColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetHintsType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->hints:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->label:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->enabled:Z

    return v0
.end method

.method protected registerSignalHandler()V
    .locals 5

    .prologue
    .line 175
    const-string v3, "MetadataChanged"

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->getActionMetadataChanged(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 177
    .local v1, "metaDataChangedMethod":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 178
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    const-string v4, "ActionWidget, MetadataChanged method is not defined"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 183
    :cond_0
    :try_start_0
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;

    invoke-direct {v3, p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;)V

    invoke-virtual {p0, v3, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->registerSignalHander(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', ActionWidget, failed to register signal handler, Error: \'"

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

    .line 188
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

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

    .line 200
    :try_start_0
    const-string v3, "States"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 202
    .local v2, "states":I
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->enabled:Z

    .line 212
    .end local v2    # "states":I
    :cond_0
    :goto_1
    return-void

    .line 202
    .restart local v2    # "states":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 204
    .end local v2    # "states":I
    :cond_2
    const-string v3, "OptParams"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget$1;

    invoke-direct {v3, p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;)V

    invoke-virtual {p2, v3}, Lorg/alljoyn/bus/Variant;->getObject(Lorg/alljoyn/bus/VariantTypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 206
    .local v1, "optParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Lorg/alljoyn/bus/Variant;>;"
    invoke-direct {p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->fillOptionalParams(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 209
    .end local v1    # "optParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Lorg/alljoyn/bus/Variant;>;"
    :catch_0
    move-exception v0

    .line 210
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
.end method

.method protected setRemoteController()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->ifName:Ljava/lang/String;

    invoke-static {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getWidgetFactory(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    move-result-object v4

    .line 142
    .local v4, "widgetFactory":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    if-nez v4, :cond_0

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received an unrecognized interface name: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->ifName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "msg":Ljava/lang/String;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v5, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getIfaceClass()Ljava/lang/Class;

    move-result-object v1

    .line 150
    .local v1, "ifClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v6}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSender()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->objectPath:Ljava/lang/String;

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->sessionId:Ljava/lang/Integer;

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

    .line 157
    .local v3, "proxyObj":Lorg/alljoyn/bus/ProxyBusObject;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting remote control ActionWidget, objPath: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-class v5, Lorg/alljoyn/bus/ifaces/Properties;

    invoke-virtual {v3, v5}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/bus/ifaces/Properties;

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->properties:Lorg/alljoyn/bus/ifaces/Properties;

    .line 159
    invoke-virtual {v3, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSuper;

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSuper;

    .line 162
    :try_start_0
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSuper;

    invoke-interface {v5}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSuper;->getVersion()S

    move-result v5

    iput-short v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->version:S
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/alljoyn/bus/BusException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call getVersion for element: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v5, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
