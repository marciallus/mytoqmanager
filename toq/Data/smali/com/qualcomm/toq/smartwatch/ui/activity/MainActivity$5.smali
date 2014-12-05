.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 2276
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showToqVideo()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2100(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    .line 2281
    return-void
.end method
