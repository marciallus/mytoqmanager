.class public final enum Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;
.super Ljava/lang/Enum;
.source "ActionWidgetEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

.field public static final enum BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

.field public static final enum HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

.field public static final enum LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;


# instance fields
.field public final ID:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    const-string v1, "LABEL"

    invoke-direct {v0, v1, v2, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    .line 24
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    const-string v1, "BG_COLOR"

    invoke-direct {v0, v1, v3, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    .line 25
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    const-string v1, "HINTS"

    invoke-direct {v0, v1, v4, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    aput-object v1, v0, v2

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    aput-object v1, v0, v3

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    aput-object v1, v0, v4

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-short p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->ID:S

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    invoke-virtual {v0}, [Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetEnum;

    return-object v0
.end method
