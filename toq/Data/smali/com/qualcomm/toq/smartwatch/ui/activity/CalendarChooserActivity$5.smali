.class Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$5;
.super Ljava/lang/Object;
.source "CalendarChooserActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 7
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 557
    const-string v4, "CalendarChooserActivity"

    const-string v5, "Accounts updated"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    move-object v1, p1

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 559
    .local v0, "account":Landroid/accounts/Account;
    const-string v4, "CalendarChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Calendar Account added ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    const/4 v5, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->isCalendarAccountsListUpdated:Z
    invoke-static {v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;Z)Z

    .line 562
    return-void
.end method
