.class public Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
.super Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
.source "PropertyWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$2;,
        Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;,
        Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;,
        Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;,
        Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;,
        Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;
    }
.end annotation


# static fields
.field private static final ENABLED_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final WRITABLE_MASK:I = 0x2


# instance fields
.field private bgColor:Ljava/lang/Integer;

.field private conversionType:Ljava/lang/reflect/Type;

.field private enabled:Z

.field private hints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;",
            ">;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private listOfValuesConstraint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues",
            "<*>;>;"
        }
    .end annotation
.end field

.field private optParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lorg/alljoyn/bus/Variant;",
            ">;"
        }
    .end annotation
.end field

.field private propertyRangeConstraint:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint",
            "<*>;"
        }
    .end annotation
.end field

.field private remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;

.field private signature:Ljava/lang/String;

.field private unitOfMeasure:Ljava/lang/String;

.field private valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

.field private writable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

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
    .line 341
    .local p4, "children":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;>;"
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)V

    .line 342
    return-void
.end method

.method private definePropertyType(Lorg/alljoyn/bus/Variant;)V
    .locals 4
    .param p1, "value"    # Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 621
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    if-eqz v1, :cond_0

    .line 634
    :goto_0
    return-void

    .line 626
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/alljoyn/bus/VariantUtil;->getSignature(Lorg/alljoyn/bus/Variant;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    .line 627
    invoke-direct {p0, p1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->fromDbusSignatureToType(Lorg/alljoyn/bus/Variant;)V

    .line 629
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The PropertyWidget objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', type is: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', DbusSign: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read the property objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' value, Error: \'"

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

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fillOptionalParams(Ljava/util/Map;)V
    .locals 13
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
    .line 710
    .local p1, "optParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Lorg/alljoyn/bus/Variant;>;"
    sget-object v10, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    const-string v11, "PropertyWidget - scanning optional parameters"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    move-result-object v0

    .local v0, "arr$":[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 714
    .local v5, "optKeyEnum":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;
    iget-short v10, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->ID:S

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/alljoyn/bus/Variant;

    .line 716
    .local v6, "optParam":Lorg/alljoyn/bus/Variant;
    if-nez v6, :cond_0

    .line 717
    sget-object v10, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OptionalParameter: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\', is not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    :cond_0
    sget-object v10, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found OptionalParameter: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :try_start_0
    sget-object v10, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$2;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetEnum:[I

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 726
    :pswitch_0
    const-class v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->label:Ljava/lang/String;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 760
    :catch_0
    move-exception v1

    .line 761
    .local v1, "be":Lorg/alljoyn/bus/BusException;
    new-instance v10, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to unmarshal optional parameters for PropertyWidget objPath: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 730
    .end local v1    # "be":Lorg/alljoyn/bus/BusException;
    :pswitch_1
    :try_start_1
    const-class v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->unitOfMeasure:Ljava/lang/String;

    goto :goto_1

    .line 734
    :pswitch_2
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v10}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    iput-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->bgColor:Ljava/lang/Integer;

    goto :goto_1

    .line 738
    :pswitch_3
    const-class v10, [Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;

    invoke-virtual {v6, v10}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;

    .line 739
    .local v4, "lovConsAJ":[Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;
    invoke-direct {p0, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->setListOfValuesConstraints([Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;)V

    goto :goto_1

    .line 743
    .end local v4    # "lovConsAJ":[Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;
    :pswitch_4
    const-class v10, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;

    invoke-virtual {v6, v10}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;

    .line 744
    .local v8, "propRangeConsAJ":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;
    iget-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    invoke-virtual {v8, v10}, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->getPropertyWidgetRangeConstraint(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;)Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;

    move-result-object v7

    .line 746
    .local v7, "propRangeCons":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint<*>;"
    if-nez v7, :cond_1

    .line 747
    new-instance v10, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail to unmarshal a range constraint for PropertyWidget objPath: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 750
    :cond_1
    iput-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->propertyRangeConstraint:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;

    goto/16 :goto_1

    .line 754
    .end local v7    # "propRangeCons":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint<*>;"
    .end local v8    # "propRangeConsAJ":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;
    :pswitch_5
    const-class v10, [S

    invoke-virtual {v6, v10}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [S

    .line 755
    .local v9, "propertyWidgetHints":[S
    invoke-direct {p0, v9}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->setListOfPropertyWidgetHints([S)V
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 765
    .end local v5    # "optKeyEnum":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;
    .end local v6    # "optParam":Lorg/alljoyn/bus/Variant;
    .end local v9    # "propertyWidgetHints":[S
    :cond_2
    return-void

    .line 724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private fromDbusSignatureToType(Lorg/alljoyn/bus/Variant;)V
    .locals 5
    .param p1, "propValue"    # Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 642
    const-string v2, "b"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->BOOLEAN:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 644
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->conversionType:Ljava/lang/reflect/Type;

    .line 701
    :goto_0
    return-void

    .line 646
    :cond_0
    const-string v2, "d"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->DOUBLE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 648
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->conversionType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 650
    :cond_1
    const-string v2, "s"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 651
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->STRING:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 652
    const-class v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->conversionType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 654
    :cond_2
    const-string v2, "y"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 655
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->BYTE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 656
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->conversionType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 658
    :cond_3
    const-string v2, "n"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "q"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 659
    :cond_4
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->SHORT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 660
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->conversionType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 662
    :cond_5
    const-string v2, "i"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "u"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 663
    :cond_6
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->INT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 664
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->conversionType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 666
    :cond_7
    const-string v2, "t"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "x"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 667
    :cond_8
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->LONG:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 668
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->conversionType:Ljava/lang/reflect/Type;

    goto/16 :goto_0

    .line 671
    :cond_9
    const-string v2, "(q(qqq))"

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 675
    :try_start_0
    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;

    invoke-virtual {p1, v2}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .local v1, "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    iget-short v2, v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->dataType:S

    packed-switch v2, :pswitch_data_0

    .line 693
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PropertyWidget objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' belongs to an unsupported composite type: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 677
    .end local v1    # "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    :catch_0
    move-exception v0

    .line 678
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PropertyWidget objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', failed to unmarshal value of sugnature: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 683
    .end local v0    # "be":Lorg/alljoyn/bus/BusException;
    .restart local v1    # "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    :pswitch_0
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->DATE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 684
    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->conversionType:Ljava/lang/reflect/Type;

    goto/16 :goto_0

    .line 688
    :pswitch_1
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->TIME:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 689
    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;

    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->conversionType:Ljava/lang/reflect/Type;

    goto/16 :goto_0

    .line 699
    .end local v1    # "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    :cond_a
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PropertyWidget objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' belongs to an unsupported type: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setListOfPropertyWidgetHints([S)V
    .locals 8
    .param p1, "hintIds"    # [S

    .prologue
    .line 794
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PropertyWidget objPath: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', filling PropertyWidget hints"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->hints:Ljava/util/List;

    .line 797
    move-object v0, p1

    .local v0, "arr$":[S
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-short v1, v0, v3

    .line 798
    .local v1, "hId":S
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->getEnumById(S)Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    move-result-object v2

    .line 799
    .local v2, "hintType":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    if-nez v2, :cond_0

    .line 800
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

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

    .line 797
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 804
    :cond_0
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->hints:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 806
    .end local v1    # "hId":S
    .end local v2    # "hintType":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    :cond_1
    return-void
.end method

.method private setListOfValuesConstraints([Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;)V
    .locals 8
    .param p1, "lovConsAJ"    # [Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 777
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->listOfValuesConstraint:Ljava/util/List;

    .line 779
    move-object v0, p1

    .local v0, "arr$":[Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 780
    .local v2, "consValueAJ":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    invoke-virtual {v2, v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->getPropertyWidgetConstrainToValues(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;)Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;

    move-result-object v1

    .line 781
    .local v1, "consValue":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues<*>;"
    if-nez v1, :cond_0

    .line 782
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PropertyWidget objPath: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', failed to unmarshal constraint value object"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 784
    :cond_0
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->listOfValuesConstraint:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 786
    .end local v1    # "consValue":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues<*>;"
    .end local v2    # "consValueAJ":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;
    :cond_1
    return-void
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
    .line 608
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 609
    .local v0, "size":I
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test PropertyWidget validity - PropertyWidget can\'t has child nodes. #ChildNodes: \'"

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

    .line 610
    if-lez v0, :cond_0

    .line 611
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The PropertyWidget objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

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

    .line 613
    :cond_0
    return-void
.end method

.method public getBgColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->bgColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 350
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentValue called, device: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v6}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' objPath: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :try_start_0
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;

    invoke-interface {v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;->getValue()Lorg/alljoyn/bus/Variant;

    move-result-object v1

    .line 354
    .local v1, "currValVar":Lorg/alljoyn/bus/Variant;
    invoke-virtual {p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->unmarshalCurrentValue(Lorg/alljoyn/bus/Variant;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 362
    .local v3, "retValue":Ljava/lang/Object;
    return-object v3

    .line 356
    .end local v1    # "currValVar":Lorg/alljoyn/bus/Variant;
    .end local v3    # "retValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to\tgetCurrentValue,  objPath: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

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

    move-result-object v2

    .line 358
    .local v2, "msg":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v4, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getHints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->hints:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getListOfConstraint()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->listOfValuesConstraint:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyRangeConstraint()Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->propertyRangeConstraint:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitOfMeasure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->unitOfMeasure:Ljava/lang/String;

    return-object v0
.end method

.method public getValueType()Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->enabled:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->writable:Z

    return v0
.end method

.method protected registerSignalHandler()V
    .locals 7

    .prologue
    .line 538
    :try_start_0
    const-string v4, "MetadataChanged"

    invoke-static {v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->getPropertyMetadataChanged(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 539
    .local v2, "propertyMetaDataChanged":Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    .line 540
    const-string v1, "PropertyWidget, MetadataChanged method isn\'t defined"

    .line 541
    .local v1, "msg":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v4, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "propertyMetaDataChanged":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 559
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', PropertyWidget, failed to register signal handler, Error: \'"

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

    move-result-object v1

    .line 561
    .restart local v1    # "msg":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-interface {v4, v5, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V

    .line 564
    .end local v0    # "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return-void

    .line 545
    .restart local v2    # "propertyMetaDataChanged":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    const-string v4, "ValueChanged"

    invoke-static {v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->getPropertyValueChanged(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 546
    .local v3, "propertyValueChanged":Ljava/lang/reflect/Method;
    if-nez v3, :cond_1

    .line 547
    const-string v1, "PropertyWidget, ValueChanged method isn\'t defined"

    .line 548
    .restart local v1    # "msg":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v4, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 552
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PropertyWidget objPath: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', registering signal handler \'MetadataChanged\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;

    invoke-direct {v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;)V

    invoke-virtual {p0, v4, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->registerSignalHander(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 555
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PropertyWidget objPath: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', registering signal handler \'ValueChanged\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;

    invoke-direct {v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;)V

    invoke-virtual {p0, v4, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->registerSignalHander(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setCurrentValue(Ljava/lang/Object;)V
    .locals 9
    .param p1, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 370
    sget-object v6, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCurrentValue called, device: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v8}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' objPath: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', value: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-nez p1, :cond_0

    .line 373
    new-instance v6, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PropertyWidget: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', the new value can\'t be NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 377
    :cond_0
    :try_start_0
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->DATE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    if-ne v6, v7, :cond_1

    .line 378
    move-object v0, p1

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;

    move-object v2, v0

    .line 379
    .local v2, "dt":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;

    invoke-direct {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;-><init>()V

    .line 380
    .local v4, "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    const/4 v6, 0x0

    iput-short v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->dataType:S

    .line 381
    new-instance v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    invoke-direct {v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;-><init>()V

    iput-object v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    .line 382
    iget-object v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->day:S
    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->access$000(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;)S

    move-result v7

    iput-short v7, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var1:S

    .line 383
    iget-object v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->month:S
    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->access$100(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;)S

    move-result v7

    iput-short v7, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var2:S

    .line 384
    iget-object v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->year:S
    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->access$200(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;)S

    move-result v7

    iput-short v7, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var3:S

    .line 385
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;

    new-instance v7, Lorg/alljoyn/bus/Variant;

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-direct {v7, v4, v8}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;->setValue(Lorg/alljoyn/bus/Variant;)V

    .line 406
    .end local v2    # "dt":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;
    .end local v4    # "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->TIME:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    if-ne v6, v7, :cond_2

    .line 388
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;

    invoke-direct {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;-><init>()V

    .line 389
    .restart local v4    # "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    move-object v0, p1

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;

    move-object v5, v0

    .line 390
    .local v5, "time":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;
    const/4 v6, 0x1

    iput-short v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->dataType:S

    .line 391
    new-instance v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    invoke-direct {v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;-><init>()V

    iput-object v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    .line 392
    iget-object v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->hour:S
    invoke-static {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->access$300(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;)S

    move-result v7

    iput-short v7, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var1:S

    .line 393
    iget-object v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->minute:S
    invoke-static {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->access$400(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;)S

    move-result v7

    iput-short v7, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var2:S

    .line 394
    iget-object v6, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->second:S
    invoke-static {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->access$500(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;)S

    move-result v7

    iput-short v7, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var3:S

    .line 395
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;

    new-instance v7, Lorg/alljoyn/bus/Variant;

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-direct {v7, v4, v8}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;->setValue(Lorg/alljoyn/bus/Variant;)V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    .end local v4    # "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    .end local v5    # "time":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "be":Lorg/alljoyn/bus/BusException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to setCurrentValue objPath: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', Error: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "msg":Ljava/lang/String;
    sget-object v6, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v6, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v6, v3}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 398
    .end local v1    # "be":Lorg/alljoyn/bus/BusException;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;

    new-instance v7, Lorg/alljoyn/bus/Variant;

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->signature:Ljava/lang/String;

    invoke-direct {v7, p1, v8}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;->setValue(Lorg/alljoyn/bus/Variant;)V
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Lorg/alljoyn/bus/Variant;)V
    .locals 7
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 576
    :try_start_0
    const-string v3, "States"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 577
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 578
    .local v1, "states":I
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->enabled:Z

    .line 579
    and-int/lit8 v3, v1, 0x2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->writable:Z

    .line 600
    .end local v1    # "states":I
    :cond_0
    :goto_2
    return-void

    .restart local v1    # "states":I
    :cond_1
    move v3, v5

    .line 578
    goto :goto_0

    :cond_2
    move v3, v5

    .line 579
    goto :goto_1

    .line 581
    .end local v1    # "states":I
    :cond_3
    const-string v3, "OptParams"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 582
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$1;

    invoke-direct {v3, p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;)V

    invoke-virtual {p2, v3}, Lorg/alljoyn/bus/Variant;->getObject(Lorg/alljoyn/bus/VariantTypeReference;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->optParams:Ljava/util/Map;

    .line 583
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    if-eqz v3, :cond_0

    .line 584
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->optParams:Ljava/util/Map;

    invoke-direct {p0, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->fillOptionalParams(Ljava/util/Map;)V

    .line 585
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->optParams:Ljava/util/Map;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 597
    :catch_0
    move-exception v0

    .line 598
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

    .line 588
    .end local v0    # "be":Lorg/alljoyn/bus/BusException;
    :cond_4
    :try_start_1
    const-string v3, "Value"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    const-class v3, Lorg/alljoyn/bus/Variant;

    invoke-virtual {p2, v3}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/bus/Variant;

    .line 590
    .local v2, "value":Lorg/alljoyn/bus/Variant;
    invoke-direct {p0, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->definePropertyType(Lorg/alljoyn/bus/Variant;)V

    .line 591
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->optParams:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 592
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->optParams:Ljava/util/Map;

    invoke-direct {p0, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->fillOptionalParams(Ljava/util/Map;)V

    .line 593
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->optParams:Ljava/util/Map;
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected setRemoteController()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->ifName:Ljava/lang/String;

    invoke-static {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getWidgetFactory(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    move-result-object v4

    .line 504
    .local v4, "widgetFactory":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    if-nez v4, :cond_0

    .line 505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received an unrecognized interface name: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->ifName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "msg":Ljava/lang/String;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v5, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 510
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getIfaceClass()Ljava/lang/Class;

    move-result-object v1

    .line 512
    .local v1, "ifClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v6}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSender()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->sessionId:Ljava/lang/Integer;

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

    .line 519
    .local v3, "proxyObj":Lorg/alljoyn/bus/ProxyBusObject;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting remote control PropertyWidget, objPath: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-class v5, Lorg/alljoyn/bus/ifaces/Properties;

    invoke-virtual {v3, v5}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/bus/ifaces/Properties;

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->properties:Lorg/alljoyn/bus/ifaces/Properties;

    .line 521
    invoke-virtual {v3, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;

    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;

    .line 524
    :try_start_0
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;

    invoke-interface {v5}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;->getVersion()S

    move-result v5

    iput-short v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->version:S
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Lorg/alljoyn/bus/BusException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call getVersion for element: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v5, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method unmarshalCurrentValue(Lorg/alljoyn/bus/Variant;)Ljava/lang/Object;
    .locals 8
    .param p1, "curValVar"    # Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 468
    :try_start_0
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->DATE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    if-ne v6, v7, :cond_0

    .line 469
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;

    invoke-direct {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;-><init>()V

    .line 470
    .local v2, "retDate":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;
    const-class v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;

    invoke-virtual {p1, v6}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;

    .line 471
    .local v5, "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    iget-object v6, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    iget-short v6, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var1:S

    # setter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->day:S
    invoke-static {v2, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->access$002(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;S)S

    .line 472
    iget-object v6, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    iget-short v6, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var2:S

    # setter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->month:S
    invoke-static {v2, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->access$102(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;S)S

    .line 473
    iget-object v6, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    iget-short v6, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var3:S

    # setter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->year:S
    invoke-static {v2, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;->access$202(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;S)S

    .line 474
    move-object v4, v2

    .line 494
    .end local v2    # "retDate":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Date;
    .end local v5    # "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    :goto_0
    return-object v4

    .line 476
    :cond_0
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->valueType:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->TIME:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    if-ne v6, v7, :cond_1

    .line 477
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;

    invoke-direct {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;-><init>()V

    .line 478
    .local v3, "retTime":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;
    const-class v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;

    invoke-virtual {p1, v6}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;

    .line 479
    .restart local v5    # "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    iget-object v6, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    iget-short v6, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var1:S

    # setter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->hour:S
    invoke-static {v3, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->access$302(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;S)S

    .line 480
    iget-object v6, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    iget-short v6, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var2:S

    # setter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->minute:S
    invoke-static {v3, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->access$402(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;S)S

    .line 481
    iget-object v6, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;->data:Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;

    iget-short v6, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ$ThreeShortAJ;->var3:S

    # setter for: Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->second:S
    invoke-static {v3, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;->access$502(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;S)S

    .line 482
    move-object v4, v3

    .line 483
    .local v4, "retVal":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;
    goto :goto_0

    .line 485
    .end local v3    # "retTime":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;
    .end local v4    # "retVal":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$Time;
    .end local v5    # "struct":Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetThreeShortAJ;
    :cond_1
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->conversionType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v6}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 488
    .end local v4    # "retVal":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unmarshal current property value, Error: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "msg":Ljava/lang/String;
    sget-object v6, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v6, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v6, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
