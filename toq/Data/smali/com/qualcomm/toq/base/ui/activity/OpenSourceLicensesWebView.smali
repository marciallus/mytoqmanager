.class public Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;
.super Landroid/app/Activity;
.source "OpenSourceLicensesWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView$MyWebViewClient;
    }
.end annotation


# instance fields
.field private openSourceWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    return-void
.end method

.method private initWebView()V
    .locals 3

    .prologue
    .line 36
    const v1, 0x7f090233

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;->openSourceWebView:Landroid/webkit/WebView;

    .line 37
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;->openSourceWebView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/openSourceLicenses.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;->openSourceWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView$MyWebViewClient;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView$MyWebViewClient;-><init>(Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 41
    const v1, 0x7f090230

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    .local v0, "openSrcBackImageLayout":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView$1;-><init>(Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;->initWebView()V

    .line 32
    return-void
.end method
