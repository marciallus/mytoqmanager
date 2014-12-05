.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClockSettingsGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private clockSelectedHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private clockTypeImages:[Ljava/lang/Integer;

.field private clockTypeText:[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isLocalWeatherOverlay:Z

.field private isStockOverlay:Z

.field private isWorldClockOverlay:Z

.field private layoutInflator:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clockTypeImages"    # [Ljava/lang/Integer;
    .param p3, "clockTypeText"    # [Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->layoutInflator:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeImages:[Ljava/lang/Integer;

    .line 46
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeText:[Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->context:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeImages:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public getHashMapForClocks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockSelectedHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockSelectedHashMap:Ljava/util/HashMap;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeImages:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    new-instance v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;

    invoke-direct {v6, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;)V

    .line 83
    .local v6, "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;
    if-nez p2, :cond_4

    .line 84
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->layoutInflator:Landroid/view/LayoutInflater;

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    const v7, 0x7f0900f8

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockSettingsImageView:Landroid/widget/ImageView;

    .line 87
    const v7, 0x7f0900fb

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockSettingsTextView:Landroid/widget/TextView;

    .line 88
    const v7, 0x7f0900fa

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockSettingsSelected:Landroid/widget/ImageView;

    .line 89
    const v7, 0x7f0900f9

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockOveralayImage:Landroid/view/View;

    .line 90
    const v7, 0x7f0900fc

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockBottomMargin:Landroid/view/View;

    .line 91
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockOveralayImage:Landroid/view/View;

    const v8, 0x7f020012

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeImages:[Ljava/lang/Integer;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_5

    .line 102
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "clock_settings_pref"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 106
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "clock_data"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 109
    .local v1, "clockInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    const-string v3, ""

    .line 110
    .local v3, "imageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 111
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getIconName()Ljava/lang/String;

    move-result-object v3

    .line 114
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/Clocks"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 123
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockSettingsImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "clockInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockSettingsTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeText:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockSelectedHashMap:Ljava/util/HashMap;

    if-nez v7, :cond_2

    .line 142
    const-string v7, "MainActivity"

    const-string v8, "clockSelectedHashMap is NULL"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->getHashMapForClocks()Ljava/util/HashMap;

    move-result-object v5

    .line 147
    .local v5, "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v5, :cond_6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeText:[Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeText:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 151
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockSettingsSelected:Landroid/widget/ImageView;

    const v8, 0x7f020118

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    :goto_2
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeText:[Ljava/lang/String;

    aget-object v7, v7, p1

    const-string v8, "Stocks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 159
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->isStockOverlay()Z

    move-result v7

    if-nez v7, :cond_7

    .line 160
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockOveralayImage:Landroid/view/View;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070013

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 189
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeText:[Ljava/lang/String;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeText:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_c

    .line 190
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockBottomMargin:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :goto_4
    return-object p2

    .line 94
    .end local v5    # "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;
    check-cast v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;

    .restart local v6    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;
    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 137
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockSettingsImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeImages:[Ljava/lang/Integer;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 155
    .restart local v5    # "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_6
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockSettingsSelected:Landroid/widget/ImageView;

    const v8, 0x7f02013c

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 164
    :cond_7
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockOveralayImage:Landroid/view/View;

    const v8, 0x7f020012

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 167
    :cond_8
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeText:[Ljava/lang/String;

    aget-object v7, v7, p1

    const-string v8, "Weather Grid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 168
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->isLocalWeatherOverlay()Z

    move-result v7

    if-nez v7, :cond_9

    .line 169
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockOveralayImage:Landroid/view/View;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070013

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 173
    :cond_9
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockOveralayImage:Landroid/view/View;

    const v8, 0x7f020012

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 176
    :cond_a
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockTypeText:[Ljava/lang/String;

    aget-object v7, v7, p1

    const-string v8, "World Time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->isWorldClockOverlay()Z

    move-result v7

    if-nez v7, :cond_b

    .line 178
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockOveralayImage:Landroid/view/View;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070013

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 182
    :cond_b
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockOveralayImage:Landroid/view/View;

    const v8, 0x7f020012

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 193
    :cond_c
    iget-object v7, v6, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->clockBottomMargin:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public isLocalWeatherOverlay()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->isLocalWeatherOverlay:Z

    return v0
.end method

.method public isStockOverlay()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->isStockOverlay:Z

    return v0
.end method

.method public isWorldClockOverlay()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->isWorldClockOverlay:Z

    return v0
.end method

.method public setLocalWeatherOverlay(Z)V
    .locals 0
    .param p1, "isLocalWeatherOverlay"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->isLocalWeatherOverlay:Z

    .line 222
    return-void
.end method

.method public setStockOverlay(Z)V
    .locals 0
    .param p1, "isStockOverlay"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->isStockOverlay:Z

    .line 214
    return-void
.end method

.method public setWorldClockOverlay(Z)V
    .locals 0
    .param p1, "isWorldClockOverlay"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->isWorldClockOverlay:Z

    .line 230
    return-void
.end method

.method public updateClocksHashMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->clockSelectedHashMap:Ljava/util/HashMap;

    .line 53
    return-void
.end method
