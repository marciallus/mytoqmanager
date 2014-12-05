.class Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AutoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field lowerItem:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

.field upperItem:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;)V

    return-void
.end method
