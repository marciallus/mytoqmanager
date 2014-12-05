.class Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PrefsScreenExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field childItemsImage:Landroid/widget/ImageView;

.field childItemsPartnerText:Landroid/widget/TextView;

.field childItemsSecondaryText:Landroid/widget/TextView;

.field childItemsText:Landroid/widget/TextView;

.field groupIndicator:Landroid/widget/ImageView;

.field groupItemBelowSpace:Landroid/view/View;

.field groupItemsLayout:Landroid/widget/RelativeLayout;

.field groupItemsText:Landroid/widget/TextView;

.field groupRootLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
