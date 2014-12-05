.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity$1;
.super Ljava/lang/Object;
.source "ActivityDayScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->finish()V

    .line 104
    return-void
.end method
