.class Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppletMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field appIconView:Landroid/widget/ImageView;

.field appTitleTextView:Landroid/widget/TextView;

.field cancelImageView:Landroid/widget/ImageView;

.field deleteButton:Landroid/widget/Button;

.field divider:Landroid/view/View;

.field dragImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
