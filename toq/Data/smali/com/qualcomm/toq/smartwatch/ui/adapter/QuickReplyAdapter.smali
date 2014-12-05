.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickReplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;,
        Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;

.field isOtherDeleteButtonVisible:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "QuickReplyAdapter"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterInterface"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->isOtherDeleteButtonVisible:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mItems:Ljava/util/ArrayList;

    .line 47
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mItems:Ljava/util/ArrayList;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;

    .line 51
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 215
    int-to-long v0, p1

    return-wide v0
.end method

.method public getUpdateList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    move v1, p1

    .line 88
    .local v1, "positionDummy":I
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030048

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;)V

    .line 96
    .local v0, "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;
    if-eqz v0, :cond_0

    .line 97
    const v2, 0x7f090249

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->qrTextView:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f090247

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->cancelImageView:Landroid/widget/ImageView;

    .line 101
    const v2, 0x7f09024b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    .line 103
    const v2, 0x7f09008a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->dragImageView:Landroid/widget/ImageView;

    .line 105
    const v2, 0x7f09024a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 113
    :cond_0
    sget-object v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->getQRMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "    isDafault: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->isDefault()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->qrTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->getQRMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->dragImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 124
    :cond_1
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->cancelImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$2;

    invoke-direct {v3, p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->divider:Landroid/view/View;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$3;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->qrTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$4;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-object p2
.end method

.method public setUpdateList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->mItems:Ljava/util/ArrayList;

    .line 60
    return-void
.end method
