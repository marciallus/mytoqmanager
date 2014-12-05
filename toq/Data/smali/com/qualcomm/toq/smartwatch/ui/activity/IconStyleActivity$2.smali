.class Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$2;
.super Ljava/lang/Object;
.source "IconStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->initiateDoneChanges()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)V

    .line 152
    return-void
.end method
