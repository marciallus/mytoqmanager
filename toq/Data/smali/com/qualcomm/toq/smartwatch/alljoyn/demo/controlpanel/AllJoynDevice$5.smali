.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;
.super Ljava/lang/Object;
.source "AllJoynDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->handlePicklistAction(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$itemId:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;->val$id:Ljava/lang/String;

    iput p3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;->val$itemId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1257
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->propertyWidgets:Ljava/util/Map;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;->val$id:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1258
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->propertyWidgets:Ljava/util/Map;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;->val$id:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    .line 1259
    .local v2, "pw":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getHints()Ljava/util/List;

    move-result-object v1

    .line 1260
    .local v1, "hints":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1261
    .local v0, "hint":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    :goto_0
    sget-object v3, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType:[I

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1269
    .end local v0    # "hint":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    .end local v1    # "hints":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;>;"
    .end local v2    # "pw":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    :cond_1
    :goto_1
    return-void

    .line 1260
    .restart local v1    # "hints":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;>;"
    .restart local v2    # "pw":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    move-object v0, v3

    goto :goto_0

    .line 1263
    .restart local v0    # "hint":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    :pswitch_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    iget v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;->val$itemId:I

    # invokes: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setValue(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;I)V
    invoke-static {v3, v2, v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->access$400(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;I)V

    goto :goto_1

    .line 1261
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
