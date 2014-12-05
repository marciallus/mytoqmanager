.class Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StockListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field delete:Landroid/widget/Button;

.field public divider:Landroid/view/View;

.field dragImage:Landroid/widget/ImageView;

.field emptyView:Landroid/view/View;

.field layout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

.field tvName1:Landroid/widget/TextView;

.field tvName2:Landroid/widget/TextView;

.field view:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$1;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;)V

    return-void
.end method
