.class Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$3;
.super Ljava/lang/Object;
.source "QuickReplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->access$000(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;->refreshQuickReplyList()V

    .line 166
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->isOtherDeleteButtonVisible:Z

    .line 167
    return-void
.end method
