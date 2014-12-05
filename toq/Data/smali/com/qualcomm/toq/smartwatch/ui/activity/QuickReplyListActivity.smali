.class public Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;
.super Landroid/app/ListActivity;
.source "QuickReplyListActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;
.implements Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;


# static fields
.field private static final MAXSIZE_OF_CHARACTERS:I = 0xa0

.field private static final MAX_LINE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "QuickReplyListActivity"


# instance fields
.field editTextFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

.field editTextOnKeyListener:Landroid/view/View$OnKeyListener;

.field private lengthOfQRString:I

.field private mCharacterCountText:Landroid/widget/TextView;

.field private mCurrentQuickReplys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

.field private mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNewQRDialog:Landroid/app/Dialog;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private mQRAcceptButtonView:Landroid/widget/LinearLayout;

.field private mQRAddImageView:Landroid/widget/LinearLayout;

.field private mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

.field private mQuickReplyFirstTimeDispKeyOnLocale:Ljava/lang/String;

.field private mQuickReplyList:Landroid/widget/ListView;

.field private mQuickReplyOverFlowMenu:Landroid/widget/LinearLayout;

.field private mQuickReplyPrefsKeyOnLocale:Ljava/lang/String;

.field private mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

.field qrDialogButtonsListener:Landroid/view/View$OnClickListener;

.field qrScreenButtonsListener:Landroid/view/View$OnClickListener;

.field private textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCharacterCountText:Landroid/widget/TextView;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I

    .line 93
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    .line 97
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 110
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyPrefsKeyOnLocale:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyFirstTimeDispKeyOnLocale:Ljava/lang/String;

    .line 267
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->qrScreenButtonsListener:Landroid/view/View$OnClickListener;

    .line 357
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->editTextOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 374
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->editTextFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    .line 388
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->qrDialogButtonsListener:Landroid/view/View$OnClickListener;

    .line 416
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->textWatcher:Landroid/text/TextWatcher;

    .line 574
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$6;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    .line 599
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->initiateDoneChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->createNewQRMessage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$202(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->saveNewQuickReply(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I

    return v0
.end method

.method static synthetic access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I

    return p1
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCharacterCountText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createNewQRMessage()V
    .locals 7

    .prologue
    .line 321
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03003e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 324
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v4, v4, -0x32

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 327
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    const v4, 0x7f090219

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 328
    .local v2, "dialogTitleText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    const v4, 0x7f09021f

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 331
    .local v0, "dialogAcceptButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    const v4, 0x7f09021e

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 333
    .local v1, "dialogDeclineButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 336
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 337
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 339
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 343
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    const v4, 0x7f09021a

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    .line 344
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    const v4, 0x7f09021c

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCharacterCountText:Landroid/widget/TextView;

    .line 346
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    if-eqz v3, :cond_1

    .line 347
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 348
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->editTextOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 349
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->editTextFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 352
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->qrDialogButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->qrDialogButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 355
    return-void
.end method

.method private deleteQuickReplyAt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 645
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 646
    const-string v0, "QuickReplyListActivity"

    const-string v1, "Either Quick Reply is null or size is zero"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "QuickReplyListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 657
    const-string v0, "QuickReplyListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->setUpdateList(Ljava/util/ArrayList;)V

    .line 665
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->notifyDataSetChanged()V

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 669
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method private getOverFlowMenu()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyOverFlowMenu:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 122
    const v0, 0x7f090250

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyOverFlowMenu:Landroid/widget/LinearLayout;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyOverFlowMenu:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initiateDoneChanges()V
    .locals 6

    .prologue
    .line 856
    const-string v3, "sms_pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 860
    .local v2, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyPrefsKeyOnLocale:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyPrefsKeyOnLocale:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->isAnyChangeInArraylist(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 882
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 884
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->isFirstTimeDefaultQRListShown()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyFirstTimeDispKeyOnLocale:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 886
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyFirstTimeDispKeyOnLocale:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 889
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyPrefsKeyOnLocale:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 891
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyPrefsKeyOnLocale:Ljava/lang/String;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 898
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 899
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 902
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->storeUpdateQuickReplyToFile(Landroid/content/Context;)V

    .line 907
    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->finish()V

    .line 908
    return-void

    .line 873
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 876
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 877
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 879
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v0

    .line 880
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 895
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_3
    move-exception v0

    .line 896
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private isAnyChangeInArraylist(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "tempArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;>;"
    const/4 v2, 0x1

    .line 803
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 804
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 805
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->getQRMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->getQRMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 814
    .end local v0    # "index":I
    :goto_1
    return v1

    .line 804
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .end local v0    # "index":I
    :cond_2
    move v1, v2

    .line 814
    goto :goto_1
.end method

.method private isFirstTimeDefaultQRListShown()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 840
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sms_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 844
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 846
    .local v0, "isQuickReplyShown":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyFirstTimeDispKeyOnLocale:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 848
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyFirstTimeDispKeyOnLocale:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 851
    :cond_0
    return v0
.end method

.method private loadCurrentQuickReplyList()V
    .locals 5

    .prologue
    .line 731
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sms_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 735
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyPrefsKeyOnLocale:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 737
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyPrefsKeyOnLocale:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    .line 739
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->isFirstTimeDefaultQRListShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 740
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->loadDefaultQuickReplyList()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 758
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 751
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 754
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadDefaultQuickReplyList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 822
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 823
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    const v2, 0x7f0a0033

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    const v2, 0x7f0a0034

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    const v2, 0x7f0a0035

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    const v2, 0x7f0a0036

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    const v2, 0x7f0a0031

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    const v2, 0x7f0a0032

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    const v2, 0x7f0a0037

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    return-void
.end method

.method private restoreQuickReplyMessages()V
    .locals 4

    .prologue
    .line 765
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 767
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 769
    .local v1, "tempArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;>;"
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->loadDefaultQuickReplyList()V

    .line 771
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 772
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 773
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->isDefault()Z

    move-result v2

    if-nez v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    .end local v0    # "index":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->isAnyChangeInArraylist(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 780
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    if-eqz v2, :cond_3

    .line 781
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->setUpdateList(Ljava/util/ArrayList;)V

    .line 782
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->notifyDataSetChanged()V

    .line 785
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    if-eqz v2, :cond_4

    .line 786
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 787
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 790
    .end local v1    # "tempArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;>;"
    :cond_4
    return-void
.end method

.method private saveNewQuickReply(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 685
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 689
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-direct {v1, p1, v2}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->setUpdateList(Ljava/util/ArrayList;)V

    .line 694
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->notifyDataSetChanged()V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 699
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 710
    :cond_1
    :goto_0
    return-void

    .line 703
    :cond_2
    const-string v0, "QuickReplyListActivity"

    const-string v1, "Quick replies list is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_3
    const-string v0, "QuickReplyListActivity"

    const-string v1, "Quick Reply text is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 208
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 210
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->unbindDrawables(Landroid/view/View;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 213
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 218
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 216
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method


# virtual methods
.method public deleteQRFromTheList(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->deleteQuickReplyAt(I)V

    .line 715
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 231
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 233
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    .line 235
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    .line 237
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 239
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 241
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 243
    const v1, 0x7f09024f

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQRAcceptButtonView:Landroid/widget/LinearLayout;

    .line 245
    const v1, 0x7f090251

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQRAddImageView:Landroid/widget/LinearLayout;

    .line 248
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "localeKey":Ljava/lang/String;
    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/Utils;->getQuickReplyPrefsKeyForLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyPrefsKeyOnLocale:Ljava/lang/String;

    .line 254
    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/Utils;->getFirstTimeQRDispPrefsKeyForLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyFirstTimeDispKeyOnLocale:Ljava/lang/String;

    .line 256
    const-string v1, "QuickReplyListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " QR locale key ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyPrefsKeyOnLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " First time QR locale key ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyFirstTimeDispKeyOnLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->loadCurrentQuickReplyList()V

    .line 262
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-direct {v1, v2, p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    .line 265
    return-void
.end method

.method public moveListItem(II)V
    .locals 3
    .param p1, "index1"    # I
    .param p2, "index2"    # I

    .prologue
    .line 625
    monitor-enter p0

    .line 626
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 627
    .local v0, "noOfItems":I
    if-lt p1, v0, :cond_0

    .line 628
    add-int/lit8 p1, v0, -0x1

    .line 630
    :cond_0
    if-lt p2, v0, :cond_1

    .line 631
    add-int/lit8 p2, v0, -0x1

    .line 634
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    .line 635
    .local v1, "temp":Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 636
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 637
    monitor-exit p0

    .line 638
    return-void

    .line 637
    .end local v0    # "noOfItems":I
    .end local v1    # "temp":Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->setContentView(I)V

    .line 136
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->init()V

    .line 137
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    check-cast v0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setDropListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;)V

    .line 138
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    check-cast v0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setRemoveListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;)V

    .line 139
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 198
    const v0, 0x7f09024d

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->unbindDrawables(Landroid/view/View;)V

    .line 199
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 200
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 186
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->initiateDoneChanges()V

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 174
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->setUpdateList(Ljava/util/ArrayList;)V

    .line 161
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQRAcceptButtonView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->qrScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQRAddImageView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->qrScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getOverFlowMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->qrScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 146
    const-string v0, "QuickReplyListActivity"

    const-string v1, "QuickReplyListActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 180
    const-string v0, "QuickReplyListActivity"

    const-string v1, "QuickReplyListActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 915
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 919
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->restoreQuickReplyMessages()V

    .line 927
    :cond_1
    :goto_0
    return-void

    .line 921
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->finish()V

    goto :goto_0
.end method

.method public refreshQuickReplyList()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->notifyDataSetChanged()V

    .line 720
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 721
    return-void
.end method
