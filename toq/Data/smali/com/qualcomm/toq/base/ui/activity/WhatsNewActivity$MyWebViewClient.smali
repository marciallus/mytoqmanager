.class Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WhatsNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$MyWebViewClient;->this$0:Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$MyWebViewClient;->this$0:Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WhatsNewActivity"

    const-string v3, "Activity Not Found Exception:No Web Browser detected that can open the url"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->showBrowserNotInstalledToast()V

    goto :goto_0

    .line 86
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
