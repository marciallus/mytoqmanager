.class Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$4;
.super Ljava/lang/Object;
.source "MoreAppletsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->updateAppletList()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V

    .line 768
    return-void
.end method
