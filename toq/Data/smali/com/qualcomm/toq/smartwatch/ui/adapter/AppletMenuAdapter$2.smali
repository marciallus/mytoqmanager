.class Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$2;
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

.field final synthetic val$appletposition:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;I)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    iput p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$2;->val$appletposition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->adapterInterface:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->access$000(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$2;->val$appletposition:I

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;->deleteAppFromTheList(I)V

    .line 146
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->isOtherDeleteButtonVisible:Z

    .line 147
    return-void
.end method
