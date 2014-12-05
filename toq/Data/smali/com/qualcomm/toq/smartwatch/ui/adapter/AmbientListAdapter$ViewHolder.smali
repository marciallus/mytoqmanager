.class Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AmbientListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;

.field tvName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;)V

    return-void
.end method
