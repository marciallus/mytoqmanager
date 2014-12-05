.class public final Lcom/qualcomm/toq/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final custom_text_view:[I

.field public static final custom_text_view_font:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2271
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f010000

    aput v2, v0, v1

    sput-object v0, Lcom/qualcomm/toq/R$styleable;->custom_text_view:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
