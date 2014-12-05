.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceInfoDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 4366
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$16;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 4370
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$16;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceInfoDialog()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 4371
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$16;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 4373
    return-void
.end method
