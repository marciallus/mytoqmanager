.class Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$QcomTypeFace;
.super Landroid/text/style/TypefaceSpan;
.source "AndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QcomTypeFace"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "type"    # Landroid/graphics/Typeface;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$QcomTypeFace;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    .line 985
    invoke-direct {p0, p2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 986
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$QcomTypeFace;->typeface:Landroid/graphics/Typeface;

    .line 987
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 991
    invoke-super {p0, p1}, Landroid/text/style/TypefaceSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 992
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$QcomTypeFace;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 994
    return-void
.end method
