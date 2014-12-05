.class public final enum Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
.super Ljava/lang/Enum;
.source "UIElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

.field public static final enum ACTION_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

.field public static final enum ALERT_DIALOG:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

.field public static final enum CONTAINER:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

.field public static final enum ERROR_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

.field public static final enum LABEL_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

.field public static final enum LIST_PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

.field public static final enum PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const-string v1, "CONTAINER"

    invoke-direct {v0, v1, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->CONTAINER:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    .line 24
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const-string v1, "PROPERTY_WIDGET"

    invoke-direct {v0, v1, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    .line 25
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const-string v1, "LIST_PROPERTY_WIDGET"

    invoke-direct {v0, v1, v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->LIST_PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    .line 26
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const-string v1, "ACTION_WIDGET"

    invoke-direct {v0, v1, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ACTION_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    .line 27
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const-string v1, "ALERT_DIALOG"

    invoke-direct {v0, v1, v7}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ALERT_DIALOG:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    .line 28
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const-string v1, "LABEL_WIDGET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->LABEL_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    .line 29
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const-string v1, "ERROR_WIDGET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ERROR_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->CONTAINER:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->LIST_PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ACTION_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ALERT_DIALOG:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->LABEL_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ERROR_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v0}, [Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    return-object v0
.end method
