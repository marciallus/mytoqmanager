.class public Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;
.super Landroid/app/Activity;
.source "WhatsNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WhatsNewActivity"


# instance fields
.field private final WHATS_NEW_URL_LINK:Ljava/lang/String;

.field private mWebViewContainer:Landroid/widget/FrameLayout;

.field private mWhatsNewWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    .line 29
    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    .line 30
    const-string v0, "file:///android_asset/whatsNewScreenContent.html"

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->WHATS_NEW_URL_LINK:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private getWebViewContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 34
    const v0, 0x7f09026e

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 49
    const v1, 0x7f09026d

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 51
    .local v0, "whatsNewBackImageLayout":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$1;-><init>(Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    .line 61
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$MyWebViewClient;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$MyWebViewClient;-><init>(Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 63
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/whatsNewScreenContent.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 65
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 66
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->getWebViewContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 133
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 135
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->unbindDrawables(Landroid/view/View;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 138
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 143
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 141
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->initViews()V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    const v0, 0x7f09026b

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->unbindDrawables(Landroid/view/View;)V

    .line 111
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->getWebViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->getWebViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 114
    :cond_0
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 119
    :cond_1
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->mWhatsNewWebView:Landroid/webkit/WebView;

    .line 120
    return-void
.end method
