.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WeatherListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;,
        Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientListAdapter"


# instance fields
.field final CLICKED:Ljava/lang/String;

.field final UNCLICKED:Ljava/lang/String;

.field private activityRef:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;

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
.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityRef"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->activityRef:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;

    .line 41
    const-string v0, "clicked"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->CLICKED:Ljava/lang/String;

    .line 42
    const-string v0, "unclicked"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->UNCLICKED:Ljava/lang/String;

    .line 43
    const/16 v0, 0x64

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->deleteSelectedPosition:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->isDeleteVisible:Z

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->activityRef:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->activityRef:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->ambientList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->ambientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStringAtPosition(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->ambientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 125
    move v0, p1

    .line 128
    .local v0, "city_position":I
    const-string v3, "AmbientListAdapter"

    const-string v4, "-----------------AmbientListAdapter----------"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-nez p2, :cond_3

    .line 130
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030010

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 135
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;

    invoke-direct {v1, p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$1;)V

    .line 136
    .local v1, "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;
    const v3, 0x7f090099

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->tvName1:Landroid/widget/TextView;

    .line 137
    const v3, 0x7f09009a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->tvName2:Landroid/widget/TextView;

    .line 138
    const v3, 0x7f090086

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->view:Landroid/widget/ImageView;

    .line 139
    const v3, 0x7f09008a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->dragImage:Landroid/widget/ImageView;

    .line 140
    const v3, 0x7f090043

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 141
    const v3, 0x7f090089

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->delete:Landroid/widget/Button;

    .line 142
    const v3, 0x7f090098

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    .line 143
    const v3, 0x7f09009c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->emptyView:Landroid/view/View;

    .line 145
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->delete:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 156
    :cond_0
    iput-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->isDeleteVisible:Z

    .line 158
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->ambientList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "token":[Ljava/lang/String;
    const-string v3, "AmbientListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name of the entries:   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    array-length v3, v2

    if-lt v3, v6, :cond_1

    aget-object v3, v2, v7

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->tvName1:Landroid/widget/TextView;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1
    array-length v3, v2

    if-ne v3, v8, :cond_4

    aget-object v3, v2, v6

    if-eqz v3, :cond_4

    .line 166
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->tvName2:Landroid/widget/TextView;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_2
    :goto_1
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->view:Landroid/widget/ImageView;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->delete:Landroid/widget/Button;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$3;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->divider:Landroid/view/View;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$4;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->emptyView:Landroid/view/View;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$5;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->delete:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    return-object p2

    .line 150
    .end local v1    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;
    .end local v2    # "token":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 168
    .restart local v2    # "token":[Ljava/lang/String;
    :cond_4
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    aget-object v3, v2, v6

    if-eqz v3, :cond_2

    aget-object v3, v2, v8

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->tvName2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
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
    .line 62
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->ambientList:Ljava/util/ArrayList;

    .line 63
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
    .line 71
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->ambientList:Ljava/util/ArrayList;

    .line 72
    return-void
.end method
