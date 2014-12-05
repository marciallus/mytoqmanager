.class Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1$1;
.super Ljava/lang/Object;
.source "AboutScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 492
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 493
    return-void
.end method
