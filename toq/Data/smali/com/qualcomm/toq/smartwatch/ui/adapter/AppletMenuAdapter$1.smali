.class Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;
.super Ljava/lang/Object;
.source "AppletMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

.field final synthetic val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;

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

    .line 119
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->isOtherDeleteButtonVisible:Z

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 122
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->dragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->isOtherDeleteButtonVisible:Z

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->val$holder:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->access$000(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;->refreshAppletMenuList()V

    .line 131
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->isOtherDeleteButtonVisible:Z

    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->access$000(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;->refreshAppletMenuList()V

    .line 136
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->isOtherDeleteButtonVisible:Z

    goto :goto_0
.end method
