.class Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$1;
.super Ljava/lang/Object;
.source "WhatsNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;->finish()V

    .line 56
    return-void
.end method
