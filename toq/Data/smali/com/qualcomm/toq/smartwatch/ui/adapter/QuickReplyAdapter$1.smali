.class Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;
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

.field final synthetic val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->isOtherDeleteButtonVisible:Z

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 131
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->dragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->isOtherDeleteButtonVisible:Z

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->access$000(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;->refreshQuickReplyList()V

    .line 140
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->isOtherDeleteButtonVisible:Z

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->access$000(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$QRListAdapterInterface;->refreshQuickReplyList()V

    .line 145
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->isOtherDeleteButtonVisible:Z

    goto :goto_0
.end method
