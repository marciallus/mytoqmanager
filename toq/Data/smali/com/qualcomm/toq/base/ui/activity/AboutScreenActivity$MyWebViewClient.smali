.class Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AboutScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$MyWebViewClient;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 678
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$MyWebViewClient;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$MyWebViewClient;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$MyWebViewClient;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 682
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 666
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 667
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$MyWebViewClient;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->showBrowserNotInstalledToast()V

    .line 671
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
