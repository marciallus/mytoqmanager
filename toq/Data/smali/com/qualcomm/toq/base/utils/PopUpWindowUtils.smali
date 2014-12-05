.class public Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;
.super Ljava/lang/Object;
.source "PopUpWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;
    }
.end annotation


# instance fields
.field listItemClickListener:Landroid/view/View$OnClickListener;

.field private mActivityRef:Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V
    .locals 1
    .param p1, "ref"    # Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$1;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->listItemClickListener:Landroid/view/View$OnClickListener;

    .line 29
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->mActivityRef:Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;)Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->mActivityRef:Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;

    return-object v0
.end method


# virtual methods
.method public getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 11
    .param p1, "list"    # [Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x2

    .line 40
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 41
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f030042

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 42
    .local v6, "pop_up_row":Landroid/view/View;
    const v7, 0x7f090234

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 43
    .local v2, "ll":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_0

    .line 44
    const v7, 0x7f030043

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 45
    .local v4, "popUpRow":Landroid/view/View;
    const v7, 0x7f090235

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 46
    .local v5, "popUpText":Landroid/widget/TextView;
    aget-object v7, p1, v0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    aget-object v7, p1, v0

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object v7, p0, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->listItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v4    # "popUpRow":Landroid/view/View;
    .end local v5    # "popUpText":Landroid/widget/TextView;
    :cond_0
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v6, v8, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 57
    .local v3, "popUp":Landroid/widget/PopupWindow;
    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 58
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-object v3
.end method
