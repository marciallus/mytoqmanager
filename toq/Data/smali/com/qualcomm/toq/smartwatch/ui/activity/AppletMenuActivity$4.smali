.class Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$4;
.super Ljava/lang/Object;
.source "AppletMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->updateAppletMenuListView()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V

    .line 606
    return-void
.end method
