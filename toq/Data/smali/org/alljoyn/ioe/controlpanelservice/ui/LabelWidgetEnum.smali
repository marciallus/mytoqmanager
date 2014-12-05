.class public final enum Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;
.super Ljava/lang/Enum;
.source "LabelWidgetEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

.field public static final enum BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

.field public static final enum HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;


# instance fields
.field public final ID:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    const-string v1, "BG_COLOR"

    invoke-direct {v0, v1, v3, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    .line 24
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    const-string v1, "HINTS"

    invoke-direct {v0, v1, v2, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    .line 22
    new-array v0, v4, [Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    aput-object v1, v0, v3

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    aput-object v1, v0, v2

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .param p3, "id"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-short p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->ID:S

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    invoke-virtual {v0}, [Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetEnum;

    return-object v0
.end method
