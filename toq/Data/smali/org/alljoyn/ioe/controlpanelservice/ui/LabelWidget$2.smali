.class synthetic Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget$2;
.super Ljava/lang/Object;
.source "LabelWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$LabelWidgetEnum:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 213
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget$2;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$LabelWidgetEnum:[I

    :try_start_0
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget$2;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$LabelWidgetEnum:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget$2;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$LabelWidgetEnum:[I

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
