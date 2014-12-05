.class public final enum Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;
.super Ljava/lang/Enum;
.source "PropertyWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

.field public static final enum BOOLEAN:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

.field public static final enum BYTE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

.field public static final enum DATE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

.field public static final enum DOUBLE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

.field public static final enum INT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

.field public static final enum LONG:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

.field public static final enum SHORT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

.field public static final enum STRING:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

.field public static final enum TIME:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->BOOLEAN:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 55
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->DOUBLE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 56
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->INT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 57
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v6}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->SHORT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 58
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v7}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->STRING:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 59
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    const-string v1, "LONG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->LONG:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 60
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    const-string v1, "BYTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->BYTE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 61
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    const-string v1, "DATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->DATE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 62
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    const-string v1, "TIME"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->TIME:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->BOOLEAN:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->DOUBLE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->INT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->SHORT:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->STRING:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->LONG:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->BYTE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->DATE:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->TIME:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->$VALUES:[Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    invoke-virtual {v0}, [Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    return-object v0
.end method
