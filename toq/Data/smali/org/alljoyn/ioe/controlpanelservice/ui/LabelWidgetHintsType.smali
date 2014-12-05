.class public final enum Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
.super Ljava/lang/Enum;
.source "LabelWidgetHintsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

.field public static final enum TEXT_LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;


# instance fields
.field public final ID:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

    const-string v1, "TEXT_LABEL"

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;->TEXT_LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

    .line 22
    new-array v0, v3, [Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;->TEXT_LABEL:Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-short p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;->ID:S

    .line 37
    return-void
.end method

.method public static getEnumById(S)Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
    .locals 6
    .param p0, "id"    # S

    .prologue
    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, "retType":Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

    move-result-object v0

    .local v0, "arr$":[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 48
    .local v4, "type":Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
    iget-short v5, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;->ID:S

    if-ne p0, v5, :cond_1

    .line 49
    move-object v3, v4

    .line 53
    .end local v4    # "type":Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
    :cond_0
    return-object v3

    .line 47
    .restart local v4    # "type":Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

    invoke-virtual {v0}, [Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidgetHintsType;

    return-object v0
.end method
