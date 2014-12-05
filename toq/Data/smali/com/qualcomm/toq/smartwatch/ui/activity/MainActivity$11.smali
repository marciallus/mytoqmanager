.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showUninstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 3899
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3902
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3904
    const-string v2, "package:com.qualcomm.phub"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3905
    .local v0, "packageUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3907
    .local v1, "uninstallIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 3909
    return-void
.end method
