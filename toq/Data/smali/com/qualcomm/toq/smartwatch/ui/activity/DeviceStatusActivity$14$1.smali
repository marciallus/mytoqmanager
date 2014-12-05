.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14$1;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1167
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1168
    return-void
.end method
