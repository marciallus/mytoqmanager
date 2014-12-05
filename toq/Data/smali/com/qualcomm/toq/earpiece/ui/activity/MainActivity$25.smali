.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$25;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

.field final synthetic val$dialogType:I

.field final synthetic val$endpointType:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;II)V
    .locals 0

    .prologue
    .line 7302
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$25;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iput p2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$25;->val$dialogType:I

    iput p3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$25;->val$endpointType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 7306
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 7307
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$25;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$25;->val$dialogType:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$25;->val$endpointType:I

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dialogResponseHandler(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$9200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;III)V

    .line 7310
    return-void
.end method
