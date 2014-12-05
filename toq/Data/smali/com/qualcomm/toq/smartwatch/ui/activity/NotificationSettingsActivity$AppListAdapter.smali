.class public Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationSettingsActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final REGEX_ENGLISH_PATTERN:Ljava/lang/String; = "^[A-Za-z0-9!@#$%^&*()-+_={}<>:\';\"?/|\\,. ]+$"


# instance fields
.field private allAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private filteredAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/util/Locale;

.field private mAppsFilter:Landroid/widget/Filter;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 697
    const v0, 0x7f030040

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 693
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->locale:Ljava/util/Locale;

    .line 698
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 699
    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->filteredAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->filteredAppsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->locale:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public getAllAppsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->allAppsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->allAppsList:Ljava/util/List;

    .line 719
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->mAppsFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->mAppsFilter:Landroid/widget/Filter;

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->mAppsFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 731
    if-nez p2, :cond_1

    .line 733
    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)V

    .line 735
    .local v3, "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030040

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 737
    const v4, 0x7f09022d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 738
    const v4, 0x7f09022e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 739
    const v4, 0x7f09022c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 741
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 748
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;

    .line 754
    .local v1, "item":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "appEntryName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "^[A-Za-z0-9!@#$%^&*()-+_={}<>:\';\"?/|\\,. ]+$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 758
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0065

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 763
    .local v2, "robotoLightTf":Landroid/graphics/Typeface;
    iget-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 765
    .end local v2    # "robotoLightTf":Landroid/graphics/Typeface;
    :cond_0
    iget-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_2

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 768
    iget-object v5, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 771
    :goto_1
    iget-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 773
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getCheckBox()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 774
    iget-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 780
    :goto_2
    return-object p2

    .line 745
    .end local v0    # "appEntryName":Ljava/lang/String;
    .end local v1    # "item":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
    .end local v3    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;
    goto :goto_0

    .line 770
    .restart local v0    # "appEntryName":Ljava/lang/String;
    .restart local v1    # "item":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
    :cond_2
    iget-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getCheckBox()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 777
    :cond_3
    iget-object v4, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2
.end method

.method public setAllAppsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;"
    if-eqz p1, :cond_0

    .line 710
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->allAppsList:Ljava/util/List;

    .line 712
    :cond_0
    return-void
.end method

.method public setAppsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;"
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->clear()V

    .line 703
    if-eqz p1, :cond_0

    .line 704
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 706
    :cond_0
    return-void
.end method
