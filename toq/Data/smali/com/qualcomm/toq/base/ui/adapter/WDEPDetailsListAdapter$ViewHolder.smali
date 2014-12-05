.class Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WDEPDetailsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;
    .param p2, "x1"    # Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;)V

    return-void
.end method
