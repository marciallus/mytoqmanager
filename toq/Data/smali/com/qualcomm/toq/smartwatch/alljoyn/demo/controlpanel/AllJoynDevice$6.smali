.class synthetic Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;
.super Ljava/lang/Object;
.source "AllJoynDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$alljoyn$bus$Status:[I

.field static final synthetic $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType:[I

.field static final synthetic $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType:[I

.field static final synthetic $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1276
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType:[I

    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->BYTE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->INT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->SHORT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->LONG:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->DOUBLE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    .line 1112
    :goto_4
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType:[I

    :try_start_5
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->SLIDER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->SPINNER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    .line 1032
    :goto_6
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType:[I

    :try_start_7
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ACTION_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->CONTAINER:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->LABEL_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    .line 536
    :goto_a
    invoke-static {}, Lorg/alljoyn/bus/Status;->values()[Lorg/alljoyn/bus/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$bus$Status:[I

    :try_start_b
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$bus$Status:[I

    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    invoke-virtual {v1}, Lorg/alljoyn/bus/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$bus$Status:[I

    sget-object v1, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED:Lorg/alljoyn/bus/Status;

    invoke-virtual {v1}, Lorg/alljoyn/bus/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$bus$Status:[I

    sget-object v1, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    invoke-virtual {v1}, Lorg/alljoyn/bus/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$bus$Status:[I

    sget-object v1, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_UNREACHABLE:Lorg/alljoyn/bus/Status;

    invoke-virtual {v1}, Lorg/alljoyn/bus/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$bus$Status:[I

    sget-object v1, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_REJECTED:Lorg/alljoyn/bus/Status;

    invoke-virtual {v1}, Lorg/alljoyn/bus/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    return-void

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    .line 1032
    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_7

    .line 1112
    :catch_9
    move-exception v0

    goto/16 :goto_6

    :catch_a
    move-exception v0

    goto/16 :goto_5

    .line 1276
    :catch_b
    move-exception v0

    goto/16 :goto_4

    :catch_c
    move-exception v0

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_1

    :catch_f
    move-exception v0

    goto/16 :goto_0
.end method
