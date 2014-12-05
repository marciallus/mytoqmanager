.class Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity$1;
.super Ljava/lang/Object;
.source "ImageSharingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->initializeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->launchGallery()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;)V

    .line 159
    return-void
.end method
