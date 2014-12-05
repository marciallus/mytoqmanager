.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StockListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$AdapterInterface;,
        Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientListAdapter"


# instance fields
.field final CLICKED:Ljava/lang/String;

.field final UNCLICKED:Ljava/lang/String;

.field private activityRef:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$AdapterInterface;

.field private ambientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field deleteSelectedPosition:I

.field isDeleteVisible:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$AdapterInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityRef"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$AdapterInterface;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->activityRef:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$AdapterInterface;

    .line 35
    const-string v0, "clicked"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->CLICKED:Ljava/lang/String;

    .line 36
    const-string v0, "unclicked"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->UNCLICKED:Ljava/lang/String;

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->deleteSelectedPosition:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->isDeleteVisible:Z

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->activityRef:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$AdapterInterface;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$AdapterInterface;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->activityRef:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$AdapterInterface;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->ambientList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->ambientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 93
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStringAtPosition(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->ambientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    move v1, p1

    .line 123
    .local v1, "stock_position":I
    const-string v3, "AmbientListAdapter"

    const-string v4, "-----------------AmbientListAdapter----------"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-nez p2, :cond_3

    .line 125
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030010

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 130
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;

    invoke-direct {v0, p0, v7}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$1;)V

    .line 131
    .local v0, "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;
    const v3, 0x7f090099

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->tvName1:Landroid/widget/TextView;

    .line 132
    const v3, 0x7f09009a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->tvName2:Landroid/widget/TextView;

    .line 133
    const v3, 0x7f090086

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->view:Landroid/widget/ImageView;

    .line 134
    const v3, 0x7f09008a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->dragImage:Landroid/widget/ImageView;

    .line 135
    const v3, 0x7f090043

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 136
    const v3, 0x7f090089

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->delete:Landroid/widget/Button;

    .line 137
    const v3, 0x7f090098

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    .line 138
    const v3, 0x7f09009c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->emptyView:Landroid/view/View;

    .line 140
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->delete:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 151
    :cond_0
    iput-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->isDeleteVisible:Z

    .line 153
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->ambientList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "token":[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v6, :cond_1

    aget-object v3, v2, v5

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->tvName1:Landroid/widget/TextView;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    aget-object v3, v2, v6

    if-eqz v3, :cond_2

    .line 158
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->tvName2:Landroid/widget/TextView;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_2
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->view:Landroid/widget/ImageView;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->delete:Landroid/widget/Button;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$2;

    invoke-direct {v4, p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$3;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->divider:Landroid/view/View;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$4;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->emptyView:Landroid/view/View;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$5;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->delete:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    return-object p2

    .line 145
    .end local v0    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;
    .end local v2    # "token":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;
    goto/16 :goto_0
.end method

.method public setLists(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->ambientList:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public setUpdateList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->ambientList:Ljava/util/ArrayList;

    .line 67
    return-void
.end method
