.class Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MoreAppletsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppletArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter$CheckBoxClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/util/List;)V
    .locals 2
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
    .line 432
    .local p2, "appDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    .line 433
    const v0, 0x7f03003b

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 429
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/util/List;Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;

    .prologue
    .line 427
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 444
    move-object v4, p2

    .line 446
    .local v4, "rowView":Landroid/view/View;
    if-nez v4, :cond_0

    .line 447
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03003b

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 451
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    .line 453
    .local v0, "appletDetails":Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;
    const v6, 0x7f090208

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 454
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const v6, 0x7f090207

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 457
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    const v6, 0x7f09020a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 460
    .local v1, "checkBox":Landroid/widget/CheckBox;
    new-instance v6, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter$CheckBoxClickListener;

    invoke-direct {v6, p0, v0, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter$CheckBoxClickListener;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    const v6, 0x7f090209

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 463
    .local v3, "installTextView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 464
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    const v7, 0x7f0a00e6

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 472
    :goto_0
    return-object v4

    .line 468
    :cond_1
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    const v7, 0x7f0a00e7

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
