.class Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppletGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field appImage:Landroid/widget/ImageView;

.field app_bottom_margin:Landroid/view/View;

.field app_name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$1;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;)V

    return-void
.end method
