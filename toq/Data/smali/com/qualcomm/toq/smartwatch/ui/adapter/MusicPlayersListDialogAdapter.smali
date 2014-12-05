.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "MusicPlayersListDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field appEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field inflator:Landroid/view/LayoutInflater;

.field initialValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "appEntryList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->inflator:Landroid/view/LayoutInflater;

    .line 35
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->appEntryList:Ljava/util/List;

    .line 36
    iput p3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->initialValue:I

    .line 37
    return-void
.end method


# virtual methods
.method public clearAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->appEntryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->appEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    :cond_0
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->appEntryList:Ljava/util/List;

    .line 109
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->inflator:Landroid/view/LayoutInflater;

    .line 111
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->appEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->appEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 57
    if-nez p2, :cond_1

    .line 58
    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;)V

    .line 60
    .local v3, "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->inflator:Landroid/view/LayoutInflater;

    const v5, 0x7f03003c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    const v4, 0x7f09020b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 63
    const v4, 0x7f09020c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 64
    const v4, 0x7f09020d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 65
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v5, v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->appEntryList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->appEntryList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 74
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 78
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->appEntryList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 81
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    iget v4, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;->initialValue:I

    if-ne v4, p1, :cond_2

    .line 90
    iget-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 95
    :goto_2
    return-object p2

    .line 68
    .end local v3    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;
    goto :goto_0

    .line 83
    .restart local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MusicControlUtils"

    const-string v5, "!!! Exceptino in getting the app icon"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2
.end method
