.class Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$6;
.super Ljava/lang/Object;
.source "ClockSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->initiateDoneChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1123
    return-void
.end method
