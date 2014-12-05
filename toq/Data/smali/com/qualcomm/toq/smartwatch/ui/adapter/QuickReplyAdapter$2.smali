.class Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$2;
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

.field final synthetic val$positionDummy:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;I)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    iput p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$2;->val$positionDummy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->access$000(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$2;->val$positionDummy:I

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;->deleteQRFromTheList(I)V

    .line 155
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->isOtherDeleteButtonVisible:Z

    .line 156
    return-void
.end method
