.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "PrefsScreenExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final SECONDARY_TEXT_TOTAL_PADDING:I = 0x55


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivityMonitoring:Z

.field private mAlljoynState:Z

.field private mCitiesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGroupItems:[Ljava/lang/String;

.field private mIconsArray:[[I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResources:Landroid/content/res/Resources;

.field private mSelectedMusicPlayer:Ljava/lang/String;

.field private mStockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleTextArray:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 42
    const-string v1, "PrefsScreenExpandableAdapter"

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->TAG:Ljava/lang/String;

    .line 46
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mAlljoynState:Z

    .line 48
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mActivityMonitoring:Z

    .line 52
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    .line 54
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mSelectedMusicPlayer:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    .line 58
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mStockList:Ljava/util/ArrayList;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 66
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 67
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 68
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    .line 71
    return-void
.end method

.method private getSizeInPixels(FI)F
    .locals 1
    .param p1, "size"    # F
    .param p2, "conversionUnit"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private isTooLarge(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 586
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 587
    .local v2, "textWidth":F
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const/high16 v6, 0x42aa0000

    invoke-direct {p0, v6, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->getSizeInPixels(FI)F

    move-result v6

    sub-float v0, v5, v6

    .line 591
    .local v0, "textViewWidth":F
    invoke-direct {p0, v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->getSizeInPixels(FI)F

    move-result v1

    .line 594
    .local v1, "textViewWidthInPx":F
    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->getSizeInPixels(FI)F

    move-result v3

    .line 597
    .local v3, "textWidthInPx":F
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Comapairing ext :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "TEXT width in pixels"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    cmpl-float v5, v3, v1

    if-ltz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateAmbientSecondaryText(Landroid/widget/TextView;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 24
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p3, "ambientType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 667
    .local p2, "ambientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .local v4, "ambientStringBuilder":Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .local v19, "tempAmbientStringBuilder":Ljava/lang/StringBuilder;
    const/4 v13, 0x1

    .line 675
    .local v13, "isAmbientNamesFitting":Z
    if-eqz p2, :cond_b

    .line 678
    const/4 v9, 0x0

    .line 680
    .local v9, "currentLocationChecked":Z
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "ambient__pref"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 683
    .local v15, "prefs":Landroid/content/SharedPreferences;
    if-eqz v15, :cond_0

    .line 684
    const-string v21, "WeatherCurrentCityUpdate"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 689
    :cond_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0a0165

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    if-eqz v9, :cond_1

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0a0179

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 698
    .local v5, "ambientValue":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 700
    .local v3, "ambientName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 701
    if-eqz p3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0a0165

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 703
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 704
    .local v7, "cityName":[Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 705
    const/16 v21, 0x0

    aget-object v5, v7, v21

    .line 714
    .end local v7    # "cityName":[Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 721
    .local v17, "stringBuilderParts":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v17, v21

    if-eqz v21, :cond_4

    .line 722
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-object v22, v17, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->isTooLarge(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 727
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    :cond_5
    :goto_2
    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 916
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 708
    .end local v17    # "stringBuilderParts":[Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0a0168

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 710
    move-object v5, v3

    goto/16 :goto_1

    .line 737
    .restart local v17    # "stringBuilderParts":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 738
    const/16 v16, 0x0

    .line 739
    .local v16, "remainingCountOfAmbientNames":I
    const/4 v8, 0x0

    .line 740
    .local v8, "count":I
    const/4 v13, 0x0

    .line 741
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .local v11, "i":I
    :goto_3
    if-ltz v11, :cond_8

    .line 751
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    sub-int v16, v21, v11

    .line 755
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 757
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 760
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v17, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    if-lez v8, :cond_e

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Ambient names length : "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 781
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 783
    .local v20, "tempString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v14, v21, -0x3

    .local v14, "j":I
    :goto_4
    if-lez v14, :cond_8

    .line 789
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 790
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 797
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a017a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a017b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->isTooLarge(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 803
    add-int/lit8 v21, v14, -0x3

    const-string v22, "..."

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v14, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a017a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a017b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .end local v3    # "ambientName":Ljava/lang/String;
    .end local v8    # "count":I
    .end local v11    # "i":I
    .end local v14    # "j":I
    .end local v16    # "remainingCountOfAmbientNames":I
    .end local v17    # "stringBuilderParts":[Ljava/lang/String;
    .end local v20    # "tempString":Ljava/lang/String;
    :cond_8
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 925
    .local v18, "stringParts":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v18, v21

    if-eqz v21, :cond_9

    .line 927
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 928
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v18, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    :try_start_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v18, v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x20

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 931
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 932
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 933
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    aget-object v22, v18, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 943
    :cond_9
    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_14

    .line 948
    if-eqz v13, :cond_a

    .line 949
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 950
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    const-string v23, "."

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    :cond_a
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 966
    :goto_7
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 967
    const/4 v4, 0x0

    .line 969
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 970
    const/16 v19, 0x0

    .line 972
    .end local v5    # "ambientValue":Ljava/lang/String;
    .end local v9    # "currentLocationChecked":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "prefs":Landroid/content/SharedPreferences;
    .end local v18    # "stringParts":[Ljava/lang/String;
    :cond_b
    return-void

    .line 783
    .restart local v3    # "ambientName":Ljava/lang/String;
    .restart local v5    # "ambientValue":Ljava/lang/String;
    .restart local v8    # "count":I
    .restart local v9    # "currentLocationChecked":Z
    .restart local v11    # "i":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "j":I
    .restart local v15    # "prefs":Landroid/content/SharedPreferences;
    .restart local v16    # "remainingCountOfAmbientNames":I
    .restart local v17    # "stringBuilderParts":[Ljava/lang/String;
    .restart local v20    # "tempString":Ljava/lang/String;
    :cond_c
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_4

    .line 824
    .end local v14    # "j":I
    .end local v20    # "tempString":Ljava/lang/String;
    :cond_d
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 826
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    sub-int v21, v22, v21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    sub-int v21, v22, v21

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 853
    :cond_e
    :goto_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a017a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a017b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->isTooLarge(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 859
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a017a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a017b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 836
    :cond_f
    const/16 v21, 0x0

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x3

    sub-int v21, v22, v21

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    .line 845
    :catch_0
    move-exception v10

    .line 846
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Excetion in deleting the characters in the string builder"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 864
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 741
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    .line 876
    .end local v8    # "count":I
    .end local v11    # "i":I
    .end local v16    # "remainingCountOfAmbientNames":I
    :cond_11
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 878
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 879
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v17, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 881
    .local v6, "ambientValueStrings":[Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_9
    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_5

    .line 883
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v22, v6, v11

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->isTooLarge(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 887
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v22, v6, v11

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 891
    :cond_12
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 892
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v22, v6, v11

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 899
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    const-string v23, ", "

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 905
    :cond_13
    const-string v21, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v22, v6, v11

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 938
    .end local v3    # "ambientName":Ljava/lang/String;
    .end local v6    # "ambientValueStrings":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v17    # "stringBuilderParts":[Ljava/lang/String;
    .restart local v18    # "stringParts":[Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 939
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 957
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 958
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 962
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_14
    const/16 v21, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private updateArraylistForStocks()V
    .locals 9

    .prologue
    .line 606
    const/4 v5, 0x0

    .line 607
    .local v5, "stocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "ambient__pref"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 610
    .local v4, "prefs":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mStockList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 611
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 617
    :goto_0
    if-eqz v4, :cond_2

    .line 619
    :try_start_0
    const-string v6, "StockSymbols"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    .line 622
    if-eqz v5, :cond_2

    .line 623
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 624
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 625
    .local v1, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    if-eqz v1, :cond_0

    .line 626
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 623
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 614
    .end local v1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v3    # "index":I
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mStockList:Ljava/util/ArrayList;

    goto :goto_0

    .line 631
    :catch_0
    move-exception v2

    .line 632
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 642
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 634
    :catch_1
    move-exception v2

    .line 635
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 637
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private updateArraylistForWeather()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 526
    const/4 v2, 0x0

    .line 527
    .local v2, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ambient__pref"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 530
    .local v5, "prefs":Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 531
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 537
    :goto_0
    if-eqz v5, :cond_3

    .line 540
    :try_start_0
    const-string v7, "WeatherCities"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 543
    if-eqz v2, :cond_3

    .line 545
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 546
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 547
    .local v1, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Local City,Default Admin,Default Country"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 554
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, "token":[Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 557
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 545
    .end local v6    # "token":[Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 534
    .end local v1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v4    # "index":I
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    goto :goto_0

    .line 561
    .restart local v1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .restart local v4    # "index":I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 562
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 571
    .end local v1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v4    # "index":I
    :catch_0
    move-exception v3

    .line 572
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 583
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    return-void

    .line 574
    :catch_1
    move-exception v3

    .line 575
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 577
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 578
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private updateGroupsStateSharedPrefs(ZI)V
    .locals 5
    .param p1, "isExpanded"    # Z
    .param p2, "groupPos"    # I

    .prologue
    .line 367
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferences_expandable_list_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 370
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 372
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 373
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 374
    packed-switch p2, :pswitch_data_0

    .line 396
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 399
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 377
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_0
    const-string v2, "preference_appearance_group_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 382
    :pswitch_1
    const-string v2, "preference_notification_group_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 387
    :pswitch_2
    const-string v2, "preference_applet_group_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 392
    :pswitch_3
    const-string v2, "preference_advanced_group_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSecondaryTextForCalendar(Landroid/widget/TextView;)V
    .locals 9
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v1, "calendarNamesBuilder":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v5, "tempStringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getAvailableCalendars(Landroid/content/Context;)[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    move-result-object v0

    .line 456
    .local v0, "availableCalendars":[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    if-eqz p1, :cond_3

    .line 459
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v6, v6, -0x5f

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setWidth(I)V

    .line 462
    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    .line 463
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_2

    .line 467
    aget-object v6, v0, v3

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 476
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "stringBuilderParts":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->isTooLarge(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 482
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v0, v3

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 463
    .end local v4    # "stringBuilderParts":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 486
    .restart local v4    # "stringBuilderParts":[Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 498
    .end local v3    # "i":I
    .end local v4    # "stringBuilderParts":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 500
    :try_start_0
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v7, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const-string v8, ". "

    invoke-virtual {v1, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    :cond_3
    :goto_3
    return-void

    .line 506
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const-string v8, ""

    invoke-virtual {v1, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 513
    :catch_0
    move-exception v2

    .line 514
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 518
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public clearAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 645
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mGroupItems:[Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 649
    :cond_0
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    move-object v0, v1

    .line 650
    check-cast v0, [[I

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mIconsArray:[[I

    .line 651
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mSelectedMusicPlayer:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mStockList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 655
    :cond_1
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mStockList:Ljava/util/ArrayList;

    move-object v0, v1

    .line 657
    check-cast v0, [[I

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    .line 658
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    .line 660
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 107
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 112
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f0a0168

    const v7, 0x7f0a0165

    const v6, 0x7f090241

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 120
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get child view called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-nez p4, :cond_2

    .line 124
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->TAG:Ljava/lang/String;

    const-string v2, "convert view null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;)V

    .line 126
    .local v0, "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030046

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 128
    const v1, 0x7f09023e

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsText:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f09023d

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsImage:Landroid/widget/ImageView;

    .line 130
    const v1, 0x7f090240

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f09023f

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsPartnerText:Landroid/widget/TextView;

    .line 132
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    :goto_0
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsPartnerText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mIconsArray:[[I

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mIconsArray:[[I

    aget-object v2, v2, p1

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    :cond_0
    if-eqz p3, :cond_3

    .line 147
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    aget-object v2, v2, p1

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsText:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 159
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Inside Communications"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a015f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    :goto_2
    return-object p4

    .line 135
    .end local v0    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;
    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 167
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0160

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mSelectedMusicPlayer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 173
    :cond_5
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsText:Landroid/widget/TextView;

    const/high16 v2, 0x41900000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 177
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsPartnerText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsPartnerText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->updateArraylistForWeather()V

    .line 181
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->updateAmbientSecondaryText(Landroid/widget/TextView;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 186
    :cond_6
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 188
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsPartnerText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsPartnerText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0174

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->updateArraylistForStocks()V

    .line 192
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mStockList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->updateAmbientSecondaryText(Landroid/widget/TextView;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 196
    :cond_7
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 198
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->updateSecondaryTextForCalendar(Landroid/widget/TextView;)V

    goto/16 :goto_2

    .line 201
    :cond_8
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 203
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mAlljoynState:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0177

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0178

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 207
    :cond_a
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->childItemsSecondaryText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mActivityMonitoring:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0175

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0176

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    aget-object v0, v0, p1

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    aget-object v0, v0, p1

    array-length v0, v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mGroupItems:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mGroupItems:[Ljava/lang/String;

    array-length v0, v0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 243
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x41a80000

    const/4 v4, 0x1

    .line 266
    if-nez p3, :cond_4

    .line 267
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;)V

    .line 268
    .local v1, "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030045

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 270
    const v2, 0x7f09023a

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupItemsText:Landroid/widget/TextView;

    .line 271
    const v2, 0x7f09023b

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupIndicator:Landroid/widget/ImageView;

    .line 272
    const v2, 0x7f090239

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupItemsLayout:Landroid/widget/RelativeLayout;

    .line 273
    const v2, 0x7f090238

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupRootLayout:Landroid/widget/LinearLayout;

    .line 274
    const v2, 0x7f09023c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupItemBelowSpace:Landroid/view/View;

    .line 275
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 284
    :goto_0
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupItemsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 285
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 289
    if-nez p1, :cond_5

    .line 290
    invoke-direct {p0, v5, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->getSizeInPixels(FI)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x41a00000

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->getSizeInPixels(FI)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v5, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->getSizeInPixels(FI)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 297
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupRootLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0200a1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 311
    :goto_1
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupItemsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    :cond_0
    if-eqz p2, :cond_6

    .line 315
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupIndicator:Landroid/widget/ImageView;

    const v3, 0x7f020114

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mGroupItems:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0163

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mGroupItems:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 329
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupItemsText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mGroupItems:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_2
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupItemBelowSpace:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mGroupItems:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mGroupItems:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_3

    if-nez p2, :cond_3

    .line 338
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupItemBelowSpace:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_3
    return-object p3

    .line 278
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;
    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;
    goto :goto_0

    .line 302
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-direct {p0, v5, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->getSizeInPixels(FI)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x41f00000

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->getSizeInPixels(FI)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v5, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->getSizeInPixels(FI)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 309
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupRootLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f020115

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 322
    :cond_6
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 323
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 324
    iput-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mCitiesList:Ljava/util/ArrayList;

    .line 326
    :cond_7
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->groupIndicator:Landroid/widget/ImageView;

    const v3, 0x7f020113

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public loadPrefsChildIcons([[I)V
    .locals 1
    .param p1, "iconsArray"    # [[I

    .prologue
    .line 100
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 101
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mIconsArray:[[I

    .line 103
    :cond_0
    return-void
.end method

.method public loadPrefsChildText([[I)V
    .locals 1
    .param p1, "textArray"    # [[I

    .prologue
    .line 94
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 95
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mTitleTextArray:[[I

    .line 97
    :cond_0
    return-void
.end method

.method public loadPrefsGroupItems([Ljava/lang/String;)V
    .locals 0
    .param p1, "groupItems"    # [Ljava/lang/String;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mGroupItems:[Ljava/lang/String;

    .line 77
    :cond_0
    return-void
.end method

.method public loadSelectedActivityMonitoringState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mActivityMonitoring:Z

    .line 91
    return-void
.end method

.method public loadSelectedAlljoynState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mAlljoynState:Z

    .line 87
    return-void
.end method

.method public loadSelectedMusicPlayer(Ljava/lang/String;)V
    .locals 0
    .param p1, "playerName"    # Ljava/lang/String;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->mSelectedMusicPlayer:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->updateGroupsStateSharedPrefs(ZI)V

    .line 347
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 351
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 352
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->updateGroupsStateSharedPrefs(ZI)V

    .line 353
    return-void
.end method
