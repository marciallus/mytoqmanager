.class public Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
.super Landroid/widget/TextView;
.source "PhubTextView.java"


# instance fields
.field private mResources:Landroid/content/res/Resources;

.field private mTypedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 48
    sget-object v1, Lcom/qualcomm/toq/R$styleable;->custom_text_view:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mTypedArray:Landroid/content/res/TypedArray;

    .line 52
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mTypedArray:Landroid/content/res/TypedArray;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "textType":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->init(Ljava/lang/String;Landroid/content/Context;)V

    .line 59
    .end local v0    # "textType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 30
    sget-object v1, Lcom/qualcomm/toq/R$styleable;->custom_text_view:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mTypedArray:Landroid/content/res/TypedArray;

    .line 34
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mTypedArray:Landroid/content/res/TypedArray;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "textType":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->init(Ljava/lang/String;Landroid/content/Context;)V

    .line 42
    .end local v0    # "textType":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "textType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mResources:Landroid/content/res/Resources;

    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getLightTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getLightTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getMediumTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getMediumTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getThinTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getThinTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
