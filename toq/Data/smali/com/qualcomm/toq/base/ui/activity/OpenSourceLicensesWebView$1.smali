.class Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView$1;
.super Ljava/lang/Object;
.source "OpenSourceLicensesWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;->finish()V

    .line 48
    return-void
.end method
