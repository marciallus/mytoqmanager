.class public final enum Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;
.super Ljava/lang/Enum;
.source "PropertyWidgetEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

.field public static final enum BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

.field public static final enum CONSTRAINT_TO_VALUES:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

.field public static final enum HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

.field public static final enum LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

.field public static final enum RANGE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

.field public static final enum UNIT_OF_MEASURE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;


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
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    const-string v1, "LABEL"

    invoke-direct {v0, v1, v4, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    .line 24
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    const-string v1, "BG_COLOR"

    invoke-direct {v0, v1, v5, v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    .line 25
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    const-string v1, "HINTS"

    invoke-direct {v0, v1, v6, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    .line 26
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    const-string v1, "UNIT_OF_MEASURE"

    invoke-direct {v0, v1, v7, v7}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->UNIT_OF_MEASURE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    .line 27
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    const-string v1, "CONSTRAINT_TO_VALUES"

    invoke-direct {v0, v1, v8, v8}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->CONSTRAINT_TO_VALUES:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    .line 28
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    const-string v1, "RANGE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->RANGE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->BG_COLOR:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    aput-object v1, v0, v5

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->HINTS:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    aput-object v1, v0, v6

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->UNIT_OF_MEASURE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    aput-object v1, v0, v7

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->CONSTRAINT_TO_VALUES:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->RANGE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    aput-object v2, v0, v1

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-short p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->ID:S

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    invoke-virtual {v0}, [Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetEnum;

    return-object v0
.end method
