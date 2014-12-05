.class public Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
.super Landroid/app/ListActivity;
.source "MoreAppletsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletInstallationListenerImpl;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;
    }
.end annotation


# static fields
.field private static final INSTALL_ERROR_DIALOG:Ljava/lang/String; = "install_error_dialog"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final UNINSTALL_ERROR_DIALOG:Ljava/lang/String; = "uninstall_error_dialog"


# instance fields
.field private appletArrayAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

.field private dialog:Landroid/app/Dialog;

.field private listener:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 528
    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->updateAppletList()V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->installApplet(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->uninstallApplet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->showUninstallDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->updateList()V

    return-void
.end method

.method private getCustomDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 564
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 565
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->dialog:Landroid/app/Dialog;

    .line 566
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 567
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 569
    .local v0, "installDialogLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 570
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 571
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v2, v2, -0x32

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 573
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->dialog:Landroid/app/Dialog;

    const v2, 0x7f090103

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 577
    .end local v0    # "installDialogLayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->dialog:Landroid/app/Dialog;

    return-object v1
.end method

.method private installApplet(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isInstallApproved"    # Z

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v1

    .line 324
    .local v1, "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    invoke-virtual {v1, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->completeInstallationRequest(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v1    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v2, "DeckOfCards"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoreAppletsActivity.installApplet - error handling installation request for packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    const-string v2, "install_error_dialog"

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 6
    .param p1, "errorDialogType"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    .line 703
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->dialog:Landroid/app/Dialog;

    .line 704
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v3

    const v4, 0x7f090102

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 706
    .local v2, "dialogTitle":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v3

    const v4, 0x7f090108

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 707
    .local v0, "dialogContent":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 709
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v3

    const v4, 0x7f090104

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 712
    const-string v3, "install_error_dialog"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 713
    const v3, 0x7f0a00d8

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    const v3, 0x7f0a00dc

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v3

    const v4, 0x7f09010a

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 722
    .local v1, "dialogOkButton":Landroid/widget/Button;
    const v3, 0x7f0a00e4

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 723
    const v3, 0x7f02009d

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 725
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v3

    const v4, 0x7f09010b

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 728
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 729
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 733
    :cond_0
    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$3;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 740
    return-void

    .line 717
    .end local v1    # "dialogOkButton":Landroid/widget/Button;
    :cond_1
    const v3, 0x7f0a00d9

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    const v3, 0x7f0a00df

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showInstallDialog(Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090102

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 586
    .local v7, "dialogTitle":Landroid/widget/TextView;
    const v10, 0x7f0a00da

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v9

    .line 589
    .local v9, "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-virtual {v9, p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 590
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9, p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "appName":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 593
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090105

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 594
    .local v1, "appIconView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090106

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 596
    .local v3, "appNameView":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    if-eqz v0, :cond_2

    .line 598
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090104

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 612
    .end local v1    # "appIconView":Landroid/widget/ImageView;
    .end local v3    # "appNameView":Landroid/widget/TextView;
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090108

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 613
    .local v6, "dialogContent":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07001a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    const v10, 0x7f0a00db

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f09010a

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 617
    .local v5, "dialogCancelButton":Landroid/widget/Button;
    const v10, 0x7f02009d

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 618
    const v10, 0x7f0a00e3

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 619
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 621
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f09010b

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 622
    .local v4, "dialogAddButton":Landroid/widget/Button;
    const v10, 0x7f02009d

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 623
    const v10, 0x7f0a00e1

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 624
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 626
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 627
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 629
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 633
    :cond_0
    new-instance v8, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;

    const/4 v10, 0x0

    invoke-direct {v8, p0, p1, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;)V

    .line 634
    .local v8, "listener":Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 638
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 640
    :cond_1
    return-void

    .line 602
    .end local v4    # "dialogAddButton":Landroid/widget/Button;
    .end local v5    # "dialogCancelButton":Landroid/widget/Button;
    .end local v6    # "dialogContent":Landroid/widget/TextView;
    .end local v8    # "listener":Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogInstallOnClickListener;
    .restart local v1    # "appIconView":Landroid/widget/ImageView;
    .restart local v3    # "appNameView":Landroid/widget/TextView;
    :cond_2
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 608
    .end local v1    # "appIconView":Landroid/widget/ImageView;
    .end local v3    # "appNameView":Landroid/widget/TextView;
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090104

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showUninstallDialog(Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090102

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 645
    .local v7, "dialogTitle":Landroid/widget/TextView;
    const v10, 0x7f0a00dd

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v9

    .line 648
    .local v9, "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-virtual {v9, p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 649
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9, p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "appName":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 652
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090105

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 653
    .local v1, "appIconView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090106

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 655
    .local v3, "appNameView":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    if-eqz v0, :cond_2

    .line 657
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090104

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 671
    .end local v1    # "appIconView":Landroid/widget/ImageView;
    .end local v3    # "appNameView":Landroid/widget/TextView;
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090108

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 672
    .local v6, "dialogContent":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07001a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 673
    const v10, 0x7f0a00de

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f09010a

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 676
    .local v5, "dialogCancelButton":Landroid/widget/Button;
    const v10, 0x7f02009d

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 677
    const v10, 0x7f0a00e3

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 678
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 680
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f09010b

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 681
    .local v4, "dialogAddButton":Landroid/widget/Button;
    const v10, 0x7f02009d

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 682
    const v10, 0x7f0a00e2

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 683
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 685
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 686
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 688
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 692
    :cond_0
    new-instance v8, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;

    const/4 v10, 0x0

    invoke-direct {v8, p0, p1, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;)V

    .line 693
    .local v8, "listener":Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 697
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 699
    :cond_1
    return-void

    .line 661
    .end local v4    # "dialogAddButton":Landroid/widget/Button;
    .end local v5    # "dialogCancelButton":Landroid/widget/Button;
    .end local v6    # "dialogContent":Landroid/widget/TextView;
    .end local v8    # "listener":Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$DialogUninstallOnClickListener;
    .restart local v1    # "appIconView":Landroid/widget/ImageView;
    .restart local v3    # "appNameView":Landroid/widget/TextView;
    :cond_2
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 667
    .end local v1    # "appIconView":Landroid/widget/ImageView;
    .end local v3    # "appNameView":Landroid/widget/TextView;
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f090104

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 747
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 749
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->unbindDrawables(Landroid/view/View;)V

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 751
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 752
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 757
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 755
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method

.method private uninstallApplet(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 342
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v1

    .line 343
    .local v1, "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->manualUninstall(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v1    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v2, "DeckOfCards"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoreAppletsActivity.uninstallApplet - error handling uninstallation request for packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    const-string v2, "uninstall_error_dialog"

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAppletList()V
    .locals 14

    .prologue
    .line 242
    :try_start_0
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->appletArrayAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->clear()V

    .line 244
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v9

    .line 247
    .local v9, "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getExternalInstalledAppletPackageNames()[Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "externalInstalledAppPackageNames":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 251
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, v3

    if-ge v5, v11, :cond_1

    .line 253
    aget-object v10, v3, v5

    .line 255
    .local v10, "packageName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 256
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    const/4 v11, 0x1

    invoke-direct {v0, v10, v11}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;-><init>(Ljava/lang/String;Z)V

    .line 258
    .local v0, "appletDetails":Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->appletArrayAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    invoke-virtual {v11, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->add(Ljava/lang/Object;)V

    .line 259
    const-string v11, "DeckOfCards"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MoreAppletsActivity.updateAppletList - adding external installed app details: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v0    # "appletDetails":Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 269
    .end local v5    # "i":I
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getExternalNotInstalledAppletPackageNames()[Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "externalNotInstalledAppPackageNames":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 273
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    array-length v11, v4

    if-ge v5, v11, :cond_3

    .line 275
    aget-object v10, v4, v5

    .line 277
    .restart local v10    # "packageName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 278
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    const/4 v11, 0x0

    invoke-direct {v0, v10, v11}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;-><init>(Ljava/lang/String;Z)V

    .line 280
    .restart local v0    # "appletDetails":Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->appletArrayAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    invoke-virtual {v11, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->add(Ljava/lang/Object;)V

    .line 281
    const-string v11, "DeckOfCards"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MoreAppletsActivity.updateAppletList - adding external not installed app details: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v0    # "appletDetails":Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 292
    .end local v3    # "externalInstalledAppPackageNames":[Ljava/lang/String;
    .end local v4    # "externalNotInstalledAppPackageNames":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v9    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    .end local v10    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v11, "DeckOfCards"

    const-string v12, "MoreAppletsActivity.updateAppletList - error getting app details"

    invoke-static {v11, v12, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    .end local v2    # "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :cond_3
    const v11, 0x7f090204

    invoke-virtual {p0, v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 300
    .local v8, "listEmptyTextView":Landroid/widget/TextView;
    const v11, 0x7f090205

    invoke-virtual {p0, v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 301
    .local v6, "listEmptyLinkTextView":Landroid/widget/TextView;
    const v11, 0x7f090206

    invoke-virtual {p0, v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 304
    .local v7, "listEmptyLinkView":Landroid/widget/TextView;
    const v11, 0x7f090200

    invoke-virtual {p0, v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 306
    .local v1, "arrangeLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->appletArrayAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 307
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    :goto_2
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->appletArrayAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->notifyDataSetChanged()V

    .line 317
    return-void

    .line 311
    :cond_4
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 763
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 770
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v2, "DeckOfCards"

    const-string v3, "MoreAppletsActivity.onCreate..."

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const v2, 0x7f03003a

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->setContentView(I)V

    .line 73
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 74
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 76
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, p0, v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/util/List;Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->appletArrayAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    .line 77
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->appletArrayAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletInstallationListenerImpl;

    invoke-direct {v2, p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletInstallationListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->listener:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;

    .line 81
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 85
    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "DeckOfCards"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoreAppletsActivity.onCreate - packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->showInstallDialog(Ljava/lang/String;)V

    .line 97
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 200
    const v3, 0x7f0901fb

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->unbindDrawables(Landroid/view/View;)V

    .line 201
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->appletArrayAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    .line 202
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->listener:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;

    .line 203
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 204
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->dialog:Landroid/app/Dialog;

    .line 210
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v2

    .line 211
    .local v2, "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getRemoteCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    .line 212
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 213
    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$2;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->setRemoteCallbackThread(Landroid/os/HandlerThread;)V

    .line 224
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->setRemoteCallbackHandler(Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v3, "DeckOfCards"

    const-string v4, "Unable to quit the remoteCallbackThread looper"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 106
    const-string v2, "DeckOfCards"

    const-string v3, "MoreAppletsActivity.onNewIntent..."

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 114
    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "DeckOfCards"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoreAppletsActivity.onNewIntent - packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->showInstallDialog(Ljava/lang/String;)V

    .line 126
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 150
    const v1, 0x7f0901fd

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 151
    .local v0, "backButtonView":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 134
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->updateAppletList()V

    .line 137
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v0

    .line 138
    .local v0, "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->listener:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->addAppletInstallationListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 188
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v0

    .line 189
    .local v0, "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->listener:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->removeAppletInstallationListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0
.end method
