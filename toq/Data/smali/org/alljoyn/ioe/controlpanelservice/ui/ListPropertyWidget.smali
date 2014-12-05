.class public Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;
.super Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
.source "ListPropertyWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$2;,
        Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;
    }
.end annotation


# static fields
.field private static final ENABLED_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bgColor:Ljava/lang/Integer;

.field private containerIfname:Ljava/lang/String;

.field private containerIntroNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

.field private enabled:Z

.field private hints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetHintsType;",
            ">;"
        }
    .end annotation
.end field

.field private inputFormContainer:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

.field private label:Ljava/lang/String;

.field private remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

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
    .line 143
    .local p4, "children":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;>;"
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->LIST_PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)V

    .line 144
    return-void
.end method

.method private createContainerWidget()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->containerIntroNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->containerIfname:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 451
    :cond_0
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListProperty objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' can\'t create the input form ContainerWidget, IntrospectionNode is undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_1
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->containerIntroNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListProperty objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', has a Container element, objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', creating..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->containerIfname:Ljava/lang/String;

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->containerIntroNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getChidren()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)V

    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->inputFormContainer:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    .line 457
    return-void
.end method

.method private createListOfRecords([Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;)Ljava/util/List;
    .locals 9
    .param p1, "recordsAJ"    # [Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 467
    .local v5, "records":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;>;"
    if-nez p1, :cond_1

    .line 476
    :cond_0
    return-object v5

    .line 471
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 472
    .local v4, "recordAJ":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;

    iget-short v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;->recordId:S

    iget-object v7, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;->label:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v3, v6, v7, v8}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;-><init>(SLjava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$1;)V

    .line 473
    .local v3, "record":Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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
    .line 487
    .local p1, "optParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Lorg/alljoyn/bus/Variant;>;"
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    const-string v8, "ListOfProperties - scanning optional parameters"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetEnum;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetEnum;

    move-result-object v0

    .local v0, "arr$":[Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetEnum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 491
    .local v5, "optKeyEnum":Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetEnum;
    iget-short v7, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetEnum;->ID:S

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/alljoyn/bus/Variant;

    .line 493
    .local v6, "optParam":Lorg/alljoyn/bus/Variant;
    if-nez v6, :cond_0

    .line 494
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

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

    .line 489
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    :cond_0
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

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

    .line 501
    :try_start_0
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$2;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ListPropertyWidgetEnum:[I

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetEnum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 503
    :pswitch_0
    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->label:Ljava/lang/String;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, "be":Lorg/alljoyn/bus/BusException;
    new-instance v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to unmarshal optional parameters for ListOfProperties objPath: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 507
    .end local v1    # "be":Lorg/alljoyn/bus/BusException;
    :pswitch_1
    :try_start_1
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->bgColor:Ljava/lang/Integer;

    goto :goto_1

    .line 511
    :pswitch_2
    const-class v7, [S

    invoke-virtual {v6, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [S

    .line 512
    .local v4, "listOfPropertiesHints":[S
    invoke-direct {p0, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->setListOfPropertyWidgetHints([S)V
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 522
    .end local v4    # "listOfPropertiesHints":[S
    .end local v5    # "optKeyEnum":Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetEnum;
    .end local v6    # "optParam":Lorg/alljoyn/bus/Variant;
    :cond_1
    return-void

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setListOfPropertyWidgetHints([S)V
    .locals 8
    .param p1, "hintIds"    # [S

    .prologue
    .line 530
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ListOfProperty objPath: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', filling ListOfProperties hints"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->hints:Ljava/util/List;

    .line 533
    move-object v0, p1

    .local v0, "arr$":[S
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-short v1, v0, v3

    .line 534
    .local v1, "hId":S
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetHintsType;->getEnumById(S)Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetHintsType;

    move-result-object v2

    .line 535
    .local v2, "hintType":Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetHintsType;
    if-nez v2, :cond_0

    .line 536
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unrecognized hintId: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 539
    :cond_0
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->hints:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 542
    .end local v1    # "hId":S
    .end local v2    # "hintType":Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetHintsType;
    :cond_1
    return-void
.end method


# virtual methods
.method public add()Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 191
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add() called, device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    invoke-interface {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;->Add()V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->inputFormContainer:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    if-nez v2, :cond_0

    .line 203
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->createContainerWidget()V

    .line 206
    :cond_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->inputFormContainer:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    return-object v2

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Add(),  objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

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

    .line 198
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v2, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cancel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 301
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel() called, device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :try_start_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    invoke-interface {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;->Cancel()V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call  Cancel(),  objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

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

    .line 308
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v2, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public confirm()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 284
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Confirm() called, device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :try_start_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    invoke-interface {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;->Confirm()V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call  Confirm(),  objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

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

    .line 291
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v2, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected createChildWidgets()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->children:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 412
    .local v5, "size":I
    if-eqz v5, :cond_0

    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    .line 413
    :cond_0
    new-instance v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ListPropertyWidget has a wrong number of child elements, the child num is: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 416
    :cond_1
    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->children:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    .line 417
    .local v0, "childNode":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getInterfaces()Ljava/util/List;

    move-result-object v3

    .line 420
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 421
    .local v2, "ifName":Ljava/lang/String;
    const-string v7, "org.alljoyn.ControlPanel."

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 422
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found not a ControlPanel interface: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_3
    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getWidgetFactory(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    move-result-object v6

    .line 428
    .local v6, "widgFactory":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    if-nez v6, :cond_4

    .line 429
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received an unknown ControlPanel interface: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "msg":Ljava/lang/String;
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v7, v4}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 435
    .end local v4    # "msg":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getElementType()Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-result-object v7

    sget-object v8, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->CONTAINER:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    if-ne v7, v8, :cond_2

    .line 436
    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->containerIntroNode:Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    .line 437
    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->containerIfname:Ljava/lang/String;

    .line 438
    return-void

    .line 442
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v6    # "widgFactory":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    :cond_5
    new-instance v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ListPropertyWidget objPath: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', does not have a ContainerWidget interface"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public delete(S)V
    .locals 5
    .param p1, "recordId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 216
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete() called, device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :try_start_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    invoke-interface {v2, p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;->Delete(S)V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Delete(),  objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

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

    .line 223
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v2, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getBgColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->bgColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetHintsType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->hints:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 168
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValue() called, device: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v6}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' objPath: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_0
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    invoke-interface {v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;->getValue()[Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;

    move-result-object v3

    .line 173
    .local v3, "recordsAJ":[Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;
    invoke-direct {p0, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->createListOfRecords([Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;)Ljava/util/List;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 181
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;>;"
    return-object v2

    .line 175
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;>;"
    .end local v3    # "recordsAJ":[Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call getValue(),  objPath: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-result-object v1

    .line 177
    .local v1, "msg":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v4, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->enabled:Z

    return v0
.end method

.method protected registerSignalHandler()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 356
    const-string v4, "MetadataChanged"

    invoke-static {v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->getListPropertyWidgetSignal(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 357
    .local v1, "listMetaDataChanged":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 358
    const-string v3, "ListPropertyWidget, MetadataChanged method isn\'t defined"

    .line 359
    .local v3, "msg":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v4, v3}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 363
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    const-string v4, "ValueChanged"

    invoke-static {v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->getListPropertyWidgetSignal(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 364
    .local v2, "listValueChanged":Ljava/lang/reflect/Method;
    if-nez v2, :cond_1

    .line 365
    const-string v3, "ListPropertyWidget, ValueChanged method isn\'t defined"

    .line 366
    .restart local v3    # "msg":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v4, v3}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 371
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ListPropertyWidget objPath: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', registering signal handler \'MetadataChanged\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;

    invoke-direct {v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;)V

    invoke-virtual {p0, v4, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->registerSignalHander(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 374
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ListPropertyWidget objPath: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', registering signal handler \'ValueChanged\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;

    invoke-direct {v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;)V

    invoke-virtual {p0, v4, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->registerSignalHander(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', ListPropertyWidget, failed to register signal handler, Error: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    .restart local v3    # "msg":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-interface {v4, v5, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V

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

    .line 391
    :try_start_0
    const-string v3, "States"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 393
    .local v2, "states":I
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->enabled:Z

    .line 403
    .end local v2    # "states":I
    :cond_0
    :goto_1
    return-void

    .line 393
    .restart local v2    # "states":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 395
    .end local v2    # "states":I
    :cond_2
    const-string v3, "OptParams"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$1;

    invoke-direct {v3, p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;)V

    invoke-virtual {p2, v3}, Lorg/alljoyn/bus/Variant;->getObject(Lorg/alljoyn/bus/VariantTypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 397
    .local v1, "optParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Lorg/alljoyn/bus/Variant;>;"
    invoke-direct {p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->fillOptionalParams(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 400
    .end local v1    # "optParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Lorg/alljoyn/bus/Variant;>;"
    :catch_0
    move-exception v0

    .line 401
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
    .line 320
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->ifName:Ljava/lang/String;

    invoke-static {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getWidgetFactory(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    move-result-object v4

    .line 322
    .local v4, "widgetFactory":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    if-nez v4, :cond_0

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received an unrecognized interface name: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->ifName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "msg":Ljava/lang/String;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v5, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 328
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getIfaceClass()Ljava/lang/Class;

    move-result-object v1

    .line 330
    .local v1, "ifClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v6}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSender()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->sessionId:Ljava/lang/Integer;

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

    .line 337
    .local v3, "proxyObj":Lorg/alljoyn/bus/ProxyBusObject;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting remote control ListOfProperties widget, objPath: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-class v5, Lorg/alljoyn/bus/ifaces/Properties;

    invoke-virtual {v3, v5}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/bus/ifaces/Properties;

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->properties:Lorg/alljoyn/bus/ifaces/Properties;

    .line 339
    invoke-virtual {v3, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    .line 342
    :try_start_0
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    invoke-interface {v5}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;->getVersion()S

    move-result v5

    iput-short v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->version:S
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Lorg/alljoyn/bus/BusException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call getVersion for element: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v5, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public update(S)Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;
    .locals 5
    .param p1, "recordId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 261
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update() called, device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    invoke-interface {v2, p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;->Update(S)V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->inputFormContainer:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    if-nez v2, :cond_0

    .line 273
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->createContainerWidget()V

    .line 276
    :cond_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->inputFormContainer:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    return-object v2

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call  Update(),  objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

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

    .line 268
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v2, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public view(S)Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;
    .locals 5
    .param p1, "recordId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 235
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View() called, device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    invoke-interface {v2, p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;->View(S)V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->inputFormContainer:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    if-nez v2, :cond_0

    .line 247
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->createContainerWidget()V

    .line 250
    :cond_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->inputFormContainer:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    return-object v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call  View(),  objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

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

    .line 242
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v2, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
