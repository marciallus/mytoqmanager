.class Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$2;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$2;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1001
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "ACTION_HEADSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    const-string v3, "ACTION_HEADSET_RESPONSE_SUBSTATE"

    const/16 v4, 0x66

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1006
    .local v2, "subState":I
    const-string v3, "ACTION_HEADSET_RESPONSE_CODE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1009
    .local v1, "responseCode":I
    const-string v3, "HeadsetAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BR Onreceive() subState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subenum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->values()[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    move-result-object v5

    add-int/lit8 v6, v2, -0x64

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", responseCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$2;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    invoke-virtual {v3, v2, v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateCurrentActionState(II)V

    .line 1018
    .end local v1    # "responseCode":I
    .end local v2    # "subState":I
    :cond_0
    return-void
.end method
