.class Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WeatherListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;
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

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

.field tvName1:Landroid/widget/TextView;

.field tvName2:Landroid/widget/TextView;

.field view:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$1;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;)V

    return-void
.end method
