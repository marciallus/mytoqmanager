.class public Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;
.super Ljava/lang/Object;
.source "PropertyWidgetConstrainToValuesAJ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ$1;
    }
.end annotation


# instance fields
.field public label:Ljava/lang/String;
    .annotation runtime Lorg/alljoyn/bus/annotation/Position;
        value = 0x1
    .end annotation
.end field

.field public value:Lorg/alljoyn/bus/Variant;
    .annotation runtime Lorg/alljoyn/bus/annotation/Position;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public getPropertyWidgetConstrainToValues(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;)Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;
    .locals 6
    .param p1, "valueType"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;",
            ")",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpan"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unmarshalling PropertyWidget LOV constraint, label: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :try_start_0
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ$1;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType:[I

    invoke-virtual {p1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->ordinal()I

    move-result v4

    aget v2, v2, v4
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpan"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Failed to unmarshal PropertyWidget LOV"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 82
    :goto_0
    return-object v2

    .line 45
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->value:Lorg/alljoyn/bus/Variant;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 46
    .local v1, "valueCast":Ljava/lang/Boolean;
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->label:Ljava/lang/String;

    invoke-direct {v2, v1, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 77
    .end local v1    # "valueCast":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpan"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmarshal PropertyWidget LOV - Error: \'"

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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 79
    goto :goto_0

    .line 49
    .end local v0    # "be":Lorg/alljoyn/bus/BusException;
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->value:Lorg/alljoyn/bus/Variant;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 50
    .local v1, "valueCast":Ljava/lang/Byte;
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->label:Ljava/lang/String;

    invoke-direct {v2, v1, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v1    # "valueCast":Ljava/lang/Byte;
    :pswitch_2
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->value:Lorg/alljoyn/bus/Variant;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 54
    .local v1, "valueCast":Ljava/lang/Double;
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->label:Ljava/lang/String;

    invoke-direct {v2, v1, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v1    # "valueCast":Ljava/lang/Double;
    :pswitch_3
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->value:Lorg/alljoyn/bus/Variant;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 58
    .local v1, "valueCast":Ljava/lang/Integer;
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->label:Ljava/lang/String;

    invoke-direct {v2, v1, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    .end local v1    # "valueCast":Ljava/lang/Integer;
    :pswitch_4
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->value:Lorg/alljoyn/bus/Variant;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 62
    .local v1, "valueCast":Ljava/lang/Long;
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->label:Ljava/lang/String;

    invoke-direct {v2, v1, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    .end local v1    # "valueCast":Ljava/lang/Long;
    :pswitch_5
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->value:Lorg/alljoyn/bus/Variant;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    .line 66
    .local v1, "valueCast":Ljava/lang/Short;
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->label:Ljava/lang/String;

    invoke-direct {v2, v1, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    .end local v1    # "valueCast":Ljava/lang/Short;
    :pswitch_6
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->value:Lorg/alljoyn/bus/Variant;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, "valueCast":Ljava/lang/String;
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/PropertyWidgetConstrainToValuesAJ;->label:Ljava/lang/String;

    invoke-direct {v2, v1, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/alljoyn/bus/BusException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
