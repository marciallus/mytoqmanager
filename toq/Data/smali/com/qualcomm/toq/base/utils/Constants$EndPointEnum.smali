.class public final enum Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndPointEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

.field public static final enum LeftEarPiece:Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

.field public static final enum RightEarPiece:Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

.field public static final enum WD:Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;


# instance fields
.field private displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 562
    new-instance v0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    const-string v1, "WD"

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->WD:Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    .line 563
    new-instance v0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    const-string v1, "LeftEarPiece"

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->LeftEarPiece:Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    .line 564
    new-instance v0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    const-string v1, "RightEarPiece"

    invoke-direct {v0, v1, v4, v4}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->RightEarPiece:Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    .line 561
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->WD:Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->LeftEarPiece:Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->RightEarPiece:Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->$VALUES:[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "endpointType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 568
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 570
    if-nez p3, :cond_1

    .line 571
    const-string v0, "Toq"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->displayName:Ljava/lang/String;

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 574
    const-string v0, "Left Headset"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 576
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 577
    const-string v0, "Right Headset"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 561
    const-class v0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->$VALUES:[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    invoke-virtual {v0}, [Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->displayName:Ljava/lang/String;

    return-object v0
.end method
