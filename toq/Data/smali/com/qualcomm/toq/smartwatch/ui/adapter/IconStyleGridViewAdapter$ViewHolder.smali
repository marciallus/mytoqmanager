.class Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IconStyleGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field iconStyleImageView:Landroid/widget/ImageView;

.field iconStyleSelected:Landroid/widget/ImageView;

.field iconStyleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
