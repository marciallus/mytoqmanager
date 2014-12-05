.class Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "QuickReplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cancelImageView:Landroid/widget/ImageView;

.field deleteButton:Landroid/widget/Button;

.field divider:Landroid/view/View;

.field dragImageView:Landroid/widget/ImageView;

.field qrTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
