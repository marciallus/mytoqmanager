.class Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$1;
.super Ljava/lang/Object;
.source "PopUpWindowUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$1;->this$0:Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$1;->this$0:Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    # getter for: Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->mActivityRef:Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->access$000(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;)Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$1;->this$0:Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    # getter for: Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->mActivityRef:Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->access$000(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;)Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;->processPopUpItemClick(Ljava/lang/String;)V

    .line 71
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method
