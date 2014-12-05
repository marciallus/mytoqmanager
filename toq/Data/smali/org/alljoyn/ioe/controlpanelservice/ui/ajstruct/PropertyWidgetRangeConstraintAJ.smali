.class public Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;
.super Ljava/lang/Object;
.source "PropertyWidgetRangeConstraintAJ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ$1;
    }
.end annotation


# instance fields
.field public increment:Lorg/alljoyn/bus/Variant;
    .annotation runtime Lorg/alljoyn/bus/annotation/Position;
        value = 0x2
    .end annotation
.end field

.field public max:Lorg/alljoyn/bus/Variant;
    .annotation runtime Lorg/alljoyn/bus/annotation/Position;
        value = 0x1
    .end annotation
.end field

.field public min:Lorg/alljoyn/bus/Variant;
    .annotation runtime Lorg/alljoyn/bus/annotation/Position;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public getPropertyWidgetRangeConstraint(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;)Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;
    .locals 9
    .param p1, "valueType"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;",
            ")",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpan"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Unmarshalling PropertyWidget range constraint"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ$1;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType:[I

    invoke-virtual {p1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->ordinal()I

    move-result v7

    aget v5, v5, v7
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v5, :pswitch_data_0

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpan"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Failed to unmarshal Range constraint"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 99
    :goto_0
    return-object v5

    .line 60
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->min:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    .line 61
    .local v4, "minCast":Ljava/lang/Byte;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->max:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    .line 62
    .local v3, "maxCast":Ljava/lang/Byte;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->increment:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 63
    .local v1, "incrementCast":Ljava/lang/Byte;
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;

    invoke-direct {v5, v4, v3, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 94
    .end local v1    # "incrementCast":Ljava/lang/Byte;
    .end local v3    # "maxCast":Ljava/lang/Byte;
    .end local v4    # "minCast":Ljava/lang/Byte;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpan"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to unmarshal Range constraint: Error: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 96
    goto :goto_0

    .line 66
    .end local v0    # "be":Lorg/alljoyn/bus/BusException;
    :pswitch_1
    :try_start_2
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->min:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 67
    .local v4, "minCast":Ljava/lang/Double;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->max:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 68
    .local v3, "maxCast":Ljava/lang/Double;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->increment:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 69
    .local v1, "incrementCast":Ljava/lang/Double;
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;

    invoke-direct {v5, v4, v3, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 72
    .end local v1    # "incrementCast":Ljava/lang/Double;
    .end local v3    # "maxCast":Ljava/lang/Double;
    .end local v4    # "minCast":Ljava/lang/Double;
    :pswitch_2
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->min:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 73
    .local v4, "minCast":Ljava/lang/Integer;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->max:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 74
    .local v3, "maxCast":Ljava/lang/Integer;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->increment:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 75
    .local v1, "incrementCast":Ljava/lang/Integer;
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;

    invoke-direct {v5, v4, v3, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 78
    .end local v1    # "incrementCast":Ljava/lang/Integer;
    .end local v3    # "maxCast":Ljava/lang/Integer;
    .end local v4    # "minCast":Ljava/lang/Integer;
    :pswitch_3
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->min:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 79
    .local v4, "minCast":Ljava/lang/Long;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->max:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 80
    .local v3, "maxCast":Ljava/lang/Long;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->increment:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 81
    .local v1, "incrementCast":Ljava/lang/Long;
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;

    invoke-direct {v5, v4, v3, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 84
    .end local v1    # "incrementCast":Ljava/lang/Long;
    .end local v3    # "maxCast":Ljava/lang/Long;
    .end local v4    # "minCast":Ljava/lang/Long;
    :pswitch_4
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->min:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    .line 85
    .local v4, "minCast":Ljava/lang/Short;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->max:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    .line 86
    .local v3, "maxCast":Ljava/lang/Short;
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetRangeConstraintAJ;->increment:Lorg/alljoyn/bus/Variant;

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    .line 87
    .local v2, "incrementVal":Ljava/lang/Short;
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;

    invoke-direct {v5, v4, v3, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/alljoyn/bus/BusException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
