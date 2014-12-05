.class public final enum Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
.super Ljava/lang/Enum;
.source "PropertyWidgetHintsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum CHECKBOX:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum DATE_PICKER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum EDIT_TEXT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum NUMBER_PICKER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum NUMERIC_KEYPAD:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum NUMERIC_VIEW:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum RADIO_BUTTON:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum ROTARY_KNOB:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum SLIDER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum SPINNER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum SWITCH:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum TEXT_VIEW:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

.field public static final enum TIME_PICKER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;


# instance fields
.field public final ID:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 23
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "SWITCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->SWITCH:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 24
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "CHECKBOX"

    invoke-direct {v0, v1, v4, v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->CHECKBOX:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 25
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "SPINNER"

    invoke-direct {v0, v1, v5, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->SPINNER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 26
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "RADIO_BUTTON"

    invoke-direct {v0, v1, v6, v7}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->RADIO_BUTTON:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 27
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "SLIDER"

    invoke-direct {v0, v1, v7, v8}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->SLIDER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 28
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "TIME_PICKER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->TIME_PICKER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 29
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "DATE_PICKER"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->DATE_PICKER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 30
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "NUMBER_PICKER"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->NUMBER_PICKER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 31
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "NUMERIC_KEYPAD"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->NUMERIC_KEYPAD:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 32
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "ROTARY_KNOB"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->ROTARY_KNOB:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 33
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "TEXT_VIEW"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->TEXT_VIEW:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 34
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "NUMERIC_VIEW"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->NUMERIC_VIEW:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 35
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const-string v1, "EDIT_TEXT"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->EDIT_TEXT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    .line 22
    const/16 v0, 0xd

    new-array v0, v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    const/4 v1, 0x0

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->SWITCH:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v2, v0, v1

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->CHECKBOX:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->SPINNER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->RADIO_BUTTON:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->SLIDER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->TIME_PICKER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->DATE_PICKER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->NUMBER_PICKER:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->NUMERIC_KEYPAD:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->ROTARY_KNOB:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->TEXT_VIEW:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->NUMERIC_VIEW:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->EDIT_TEXT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-short p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->ID:S

    .line 49
    return-void
.end method

.method public static getEnumById(S)Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    .locals 6
    .param p0, "id"    # S

    .prologue
    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, "retType":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->values()[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    move-result-object v0

    .local v0, "arr$":[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 60
    .local v4, "type":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    iget-short v5, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->ID:S

    if-ne p0, v5, :cond_1

    .line 61
    move-object v3, v4

    .line 65
    .end local v4    # "type":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    :cond_0
    return-object v3

    .line 59
    .restart local v4    # "type":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    invoke-virtual {v0}, [Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    return-object v0
.end method
