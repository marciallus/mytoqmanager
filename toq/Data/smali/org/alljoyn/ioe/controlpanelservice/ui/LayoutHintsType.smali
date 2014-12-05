.class public final enum Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;
.super Ljava/lang/Enum;
.source "LayoutHintsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

.field public static final enum HORIZONTAL_LINEAR:Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

.field public static final enum VERTICAL_LINEAR:Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;


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
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    const-string v1, "VERTICAL_LINEAR"

    invoke-direct {v0, v1, v3, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;->VERTICAL_LINEAR:Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    .line 24
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    const-string v1, "HORIZONTAL_LINEAR"

    invoke-direct {v0, v1, v2, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;->HORIZONTAL_LINEAR:Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    .line 22
    new-array v0, v4, [Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;->VERTICAL_LINEAR:Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;->HORIZONTAL_LINEAR:Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

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
    iput-short p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;->ID:S

    .line 38
    return-void
.end method

.method public static getEnumById(S)Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;
    .locals 6
    .param p0, "id"    # S

    .prologue
    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, "retType":Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    move-result-object v0

    .local v0, "arr$":[Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 49
    .local v4, "type":Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;
    iget-short v5, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;->ID:S

    if-ne p0, v5, :cond_1

    .line 50
    move-object v3, v4

    .line 54
    .end local v4    # "type":Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;
    :cond_0
    return-object v3

    .line 48
    .restart local v4    # "type":Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    invoke-virtual {v0}, [Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType;

    return-object v0
.end method
