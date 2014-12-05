.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;
.super Ljava/lang/Object;
.source "AllJoynDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->handleSliderAction(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$isUp:Z


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;->val$id:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;->val$isUp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1214
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->propertyWidgets:Ljava/util/Map;
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;->val$id:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1215
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->propertyWidgets:Ljava/util/Map;
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;->val$id:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    .line 1216
    .local v8, "pw":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    invoke-virtual {v8}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getHints()Ljava/util/List;

    move-result-object v3

    .line 1217
    .local v3, "hints":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 1218
    .local v2, "hint":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    :goto_0
    sget-object v9, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType:[I

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1248
    .end local v2    # "hint":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    .end local v3    # "hints":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;>;"
    .end local v8    # "pw":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    :cond_1
    :goto_1
    return-void

    .line 1217
    .restart local v3    # "hints":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;>;"
    .restart local v8    # "pw":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    :cond_2
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    move-object v2, v9

    goto :goto_0

    .line 1220
    .restart local v2    # "hint":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    :pswitch_0
    invoke-virtual {v8}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getPropertyRangeConstraint()Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;

    move-result-object v0

    .line 1221
    .local v0, "constraints":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint<*>;"
    const/4 v1, 0x0

    .line 1223
    .local v1, "curr":I
    :try_start_0
    invoke-virtual {v8}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getCurrentValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1225
    :goto_2
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;->getIncrement()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1226
    .local v4, "inc":I
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;->getMax()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1227
    .local v5, "max":I
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;->getMin()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1229
    .local v6, "min":I
    const/16 v9, 0x14

    if-le v5, v9, :cond_5

    const/16 v9, 0x64

    if-gt v5, v9, :cond_5

    .line 1230
    div-int/lit8 v4, v5, 0xa

    .line 1235
    :cond_3
    :goto_3
    iget-boolean v9, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;->val$isUp:Z

    if-eqz v9, :cond_7

    add-int v7, v1, v4

    .line 1236
    .local v7, "newVal":I
    :goto_4
    if-le v7, v5, :cond_8

    .line 1237
    move v7, v5

    .line 1240
    :cond_4
    :goto_5
    if-eq v1, v7, :cond_1

    .line 1241
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    # invokes: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setValue(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;I)V
    invoke-static {v9, v8, v7}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->access$400(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;I)V

    goto :goto_1

    .line 1231
    .end local v7    # "newVal":I
    :cond_5
    rem-int/lit8 v9, v5, 0x64

    if-nez v9, :cond_6

    .line 1232
    const/16 v4, 0x64

    goto :goto_3

    .line 1233
    :cond_6
    const/16 v9, 0x3e8

    if-lt v5, v9, :cond_3

    .line 1234
    div-int/lit16 v4, v5, 0x3e8

    goto :goto_3

    .line 1235
    :cond_7
    sub-int v7, v1, v4

    goto :goto_4

    .line 1238
    .restart local v7    # "newVal":I
    :cond_8
    if-ge v7, v6, :cond_4

    .line 1239
    move v7, v6

    goto :goto_5

    .line 1224
    .end local v4    # "inc":I
    .end local v5    # "max":I
    .end local v6    # "min":I
    .end local v7    # "newVal":I
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
