.class public final enum Lorg/alljoyn/services/common/PropertyStore$Filter;
.super Ljava/lang/Enum;
.source "PropertyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/services/common/PropertyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/services/common/PropertyStore$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/services/common/PropertyStore$Filter;

.field public static final enum ANNOUNCE:Lorg/alljoyn/services/common/PropertyStore$Filter;

.field public static final enum READ:Lorg/alljoyn/services/common/PropertyStore$Filter;

.field public static final enum WRITE:Lorg/alljoyn/services/common/PropertyStore$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lorg/alljoyn/services/common/PropertyStore$Filter;

    const-string v1, "ANNOUNCE"

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/services/common/PropertyStore$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/services/common/PropertyStore$Filter;->ANNOUNCE:Lorg/alljoyn/services/common/PropertyStore$Filter;

    .line 40
    new-instance v0, Lorg/alljoyn/services/common/PropertyStore$Filter;

    const-string v1, "READ"

    invoke-direct {v0, v1, v3}, Lorg/alljoyn/services/common/PropertyStore$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/services/common/PropertyStore$Filter;->READ:Lorg/alljoyn/services/common/PropertyStore$Filter;

    .line 45
    new-instance v0, Lorg/alljoyn/services/common/PropertyStore$Filter;

    const-string v1, "WRITE"

    invoke-direct {v0, v1, v4}, Lorg/alljoyn/services/common/PropertyStore$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/alljoyn/services/common/PropertyStore$Filter;->WRITE:Lorg/alljoyn/services/common/PropertyStore$Filter;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/alljoyn/services/common/PropertyStore$Filter;

    sget-object v1, Lorg/alljoyn/services/common/PropertyStore$Filter;->ANNOUNCE:Lorg/alljoyn/services/common/PropertyStore$Filter;

    aput-object v1, v0, v2

    sget-object v1, Lorg/alljoyn/services/common/PropertyStore$Filter;->READ:Lorg/alljoyn/services/common/PropertyStore$Filter;

    aput-object v1, v0, v3

    sget-object v1, Lorg/alljoyn/services/common/PropertyStore$Filter;->WRITE:Lorg/alljoyn/services/common/PropertyStore$Filter;

    aput-object v1, v0, v4

    sput-object v0, Lorg/alljoyn/services/common/PropertyStore$Filter;->$VALUES:[Lorg/alljoyn/services/common/PropertyStore$Filter;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/services/common/PropertyStore$Filter;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/alljoyn/services/common/PropertyStore$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/services/common/PropertyStore$Filter;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/services/common/PropertyStore$Filter;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/alljoyn/services/common/PropertyStore$Filter;->$VALUES:[Lorg/alljoyn/services/common/PropertyStore$Filter;

    invoke-virtual {v0}, [Lorg/alljoyn/services/common/PropertyStore$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/services/common/PropertyStore$Filter;

    return-object v0
.end method
