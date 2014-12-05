.class Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ClockSettingsGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field clockBottomMargin:Landroid/view/View;

.field clockOveralayImage:Landroid/view/View;

.field clockSettingsImageView:Landroid/widget/ImageView;

.field clockSettingsSelected:Landroid/widget/ImageView;

.field clockSettingsTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
