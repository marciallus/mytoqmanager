.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppletMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;,
        Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppletMenuAdapter"


# instance fields
.field private adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;

.field isOtherDeleteButtonVisible:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterInterface"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->isOtherDeleteButtonVisible:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->mListItems:Ljava/util/List;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->mListItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 69
    move v0, p1

    .line 72
    .local v0, "appletposition":I
    const-string v2, "AppletMenuAdapter"

    const-string v3, "-----------------Applet Menu Adapter----------"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez p2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030048

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;)V

    .line 78
    .local v1, "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;
    const v2, 0x7f090249

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->appTitleTextView:Landroid/widget/TextView;

    .line 79
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->appTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 81
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->appTitleTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 83
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->appTitleTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    const v2, 0x7f090248

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->appIconView:Landroid/widget/ImageView;

    .line 86
    const v2, 0x7f090247

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->cancelImageView:Landroid/widget/ImageView;

    .line 88
    const v2, 0x7f09024b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    .line 90
    const v2, 0x7f09008a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->dragImageView:Landroid/widget/ImageView;

    .line 92
    const v2, 0x7f09024a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->mListItems:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 102
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->appTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->appIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_0
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->appIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->dragImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    :cond_1
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->cancelImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->divider:Landroid/view/View;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$3;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->appTitleTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$4;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->appIconView:Landroid/widget/ImageView;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$5;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-object p2

    .line 99
    .end local v1    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;
    goto/16 :goto_0
.end method

.method public updateAppletMenuList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "listItems":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->mListItems:Ljava/util/List;

    .line 57
    return-void
.end method
