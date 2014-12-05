.class public final enum Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;
.super Ljava/lang/Enum;
.source "AlertDialogWidgetEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

.field public static final enum BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

.field public static final enum HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

.field public static final enum LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

.field public static final enum LABEL_ACTION1:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

.field public static final enum LABEL_ACTION2:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

.field public static final enum LABEL_ACTION3:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;


# instance fields
.field public final ID:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    const-string v1, "LABEL"

    invoke-direct {v0, v1, v4, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    .line 24
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    const-string v1, "BG_COLOR"

    invoke-direct {v0, v1, v5, v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    .line 25
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    const-string v1, "HINTS"

    invoke-direct {v0, v1, v6, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    .line 26
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    const-string v1, "LABEL_ACTION1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->LABEL_ACTION1:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    .line 27
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    const-string v1, "LABEL_ACTION2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->LABEL_ACTION2:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    .line 28
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    const-string v1, "LABEL_ACTION3"

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->LABEL_ACTION3:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    aput-object v1, v0, v5

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    aput-object v1, v0, v6

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->LABEL_ACTION1:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    aput-object v1, v0, v7

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->LABEL_ACTION2:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->LABEL_ACTION3:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    aput-object v2, v0, v1

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-short p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->ID:S

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    invoke-virtual {v0}, [Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetEnum;

    return-object v0
.end method
