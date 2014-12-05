.class public final Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;
.super Landroid/os/Handler;
.source "HeadsetAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    .line 63
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 35
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EPMessage:handleMessage what:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", arg1 = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    const/16 v33, 0x1

    const/16 v34, 0x7

    invoke-static/range {v30 .. v34}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 75
    const/16 v21, 0x0

    .line 76
    .local v21, "queueStates":[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    .line 436
    :goto_0
    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_1

    .line 438
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 440
    .local v10, "endPointType":I
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EPMessage:Process queueStates length :"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v10, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 448
    new-instance v8, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;

    const/16 v30, 0x0

    aget v30, v21, v30

    const/16 v31, 0x64

    const/16 v32, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v8, v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;-><init>(III)V

    .line 451
    .local v8, "currentHeadsetState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EPMessage: br while:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    move-object/from16 v32, v0

    const/16 v33, 0x3e7

    invoke-virtual/range {v32 .. v33}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->hasMessages(I)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v10, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 463
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_0

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "currentHeadsetState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    check-cast v8, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;

    .line 468
    .restart local v8    # "currentHeadsetState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1, v10}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->processSubState(Lcom/qualcomm/toq/earpiece/utils/HeadsetState;[II)V

    .line 472
    invoke-virtual {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getSubState()I

    move-result v30

    const/16 v31, 0x64

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 476
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EPMessage:Process :"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "   state:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->values()[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    move-result-object v32

    invoke-virtual {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v33

    aget-object v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "   subState:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->values()[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    move-result-object v32

    invoke-virtual {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getSubState()I

    move-result v33

    add-int/lit8 v33, v33, -0x64

    aget-object v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v10, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 490
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v10}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->processState(Lcom/qualcomm/toq/earpiece/utils/HeadsetState;I)V

    .line 493
    const-string v30, "HeadsetAction"

    const-string v32, "br wait()"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->wait()V

    .line 495
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    :goto_1
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EPMessage:Process action(ar) :"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "   state:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->values()[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    move-result-object v32

    invoke-virtual {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v33

    aget-object v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "   subState:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->values()[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    move-result-object v32

    invoke-virtual {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getSubState()I

    move-result v33

    add-int/lit8 v33, v33, -0x64

    aget-object v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v10, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 513
    invoke-virtual {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v30

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    invoke-virtual {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getSubState()I

    move-result v30

    const/16 v31, 0x65

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 523
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EPMessage: ar while:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    move-object/from16 v32, v0

    const/16 v33, 0x3e7

    invoke-virtual/range {v32 .. v33}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->hasMessages(I)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v10, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 530
    const-string v30, "HeadsetAction"

    const-string v31, "EPMessage:Process end of while:"

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v10, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 536
    .end local v8    # "currentHeadsetState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    .end local v10    # "endPointType":I
    :cond_1
    :goto_2
    return-void

    .line 78
    :sswitch_0
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v31, "assigning queue states to ACTION_INSTALL_UPDATE_STATES"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v21, Lcom/qualcomm/toq/earpiece/utils/IHeadsetAction;->ACTION_INSTALL_UPDATE_STATES:[I

    .line 81
    goto/16 :goto_0

    .line 83
    :sswitch_1
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v31, "assigning queue states to ACTION_SWAP_ROLES"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v21, Lcom/qualcomm/toq/earpiece/utils/IHeadsetAction;->ACTION_SWAP_ROLES__STATES:[I

    .line 86
    goto/16 :goto_0

    .line 88
    :sswitch_2
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v31, "assigning queue states to ACTION_CHECK_STATUS"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v21, Lcom/qualcomm/toq/earpiece/utils/IHeadsetAction;->ACTION_CHECK_STATUS_STATES:[I

    .line 91
    goto/16 :goto_0

    .line 93
    :sswitch_3
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v31, "assigning queue states to ACTION_BASS_BOOST"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v21, Lcom/qualcomm/toq/earpiece/utils/IHeadsetAction;->ACTION_BASS_BOOST__STATES:[I

    .line 96
    goto/16 :goto_0

    .line 98
    :sswitch_4
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v31, "destroying queue states to START"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v12, "MMMM dd, h:mm a"

    .line 101
    .local v12, "format":Ljava/lang/String;
    new-instance v27, Ljava/text/SimpleDateFormat;

    sget-object v30, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v12, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 103
    .local v27, "sdf":Ljava/text/SimpleDateFormat;
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "DATE: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    new-instance v32, Ljava/util/Date;

    invoke-direct/range {v32 .. v32}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v30

    const-string v31, "last_status_checked"

    new-instance v32, Ljava/util/Date;

    invoke-direct/range {v32 .. v32}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->currentAction:I
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$000(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)I

    move-result v29

    .line 110
    .local v29, "tempAction":I
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    .line 111
    .local v7, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 113
    .local v14, "isLeftBonded":Ljava/lang/Boolean;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 115
    .local v15, "isRightBonded":Ljava/lang/Boolean;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v30

    const-string v31, "current_status_text2"

    const-string v32, ""

    invoke-virtual/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 119
    .local v22, "rStatus":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v30

    const-string v31, "current_status_text1"

    const-string v32, ""

    invoke-virtual/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, "lStatus":Ljava/lang/String;
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_2

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_c

    :cond_2
    const/16 v30, 0x1

    :goto_3
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 126
    .local v23, "rStatusFlag":Ljava/lang/Boolean;
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_3

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_d

    :cond_3
    const/16 v30, 0x1

    :goto_4
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 129
    .local v17, "lStatusFlag":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v20

    .line 130
    .local v20, "leftLinkKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v26

    .line 132
    .local v26, "rightLinkKey":Ljava/lang/String;
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_4

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_5

    :cond_4
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_e

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_e

    :cond_5
    const/16 v30, 0x1

    :goto_5
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 135
    .local v28, "statusFlag":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v18

    .line 136
    .local v18, "leftEPMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v24

    .line 138
    .local v24, "rightEPMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v19

    .line 139
    .local v19, "leftEPRole":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v25

    .line 141
    .local v25, "rightEPRole":Ljava/lang/String;
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_f

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_f

    const/4 v13, 0x1

    .line 143
    .local v13, "isConnectable":Z
    :goto_6
    const/4 v4, -0x1

    .line 145
    .local v4, "PBEEndPoint":I
    const-string v30, "Primary"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 146
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[BassBoost] Storing primary headset while destroyingEndPoints = 2, rightEPRole = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v4, 0x2

    .line 151
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v30

    const-string v31, "last_known_primary_headset"

    const/16 v32, 0x2

    invoke-virtual/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putInteger(Ljava/lang/String;I)V

    .line 174
    :goto_7
    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    # setter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->currentAction:I
    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$002(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;I)I

    .line 178
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 180
    .local v6, "checkHeadset":Ljava/lang/Boolean;
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_13

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_13

    .line 181
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v30

    if-nez v30, :cond_12

    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v30

    if-nez v30, :cond_12

    const-string v30, "OK"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    const-string v30, "OK"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    const/16 v30, 0x1

    :goto_8
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 192
    :cond_6
    :goto_9
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "isLeftBonded = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", isRightBonded = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", checkHeadset = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "rStatus ="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", lStatus = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "L UpgradeState = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", R UpgradeState = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x2

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-nez v29, :cond_17

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_17

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getCustomsBuildFlag()Z

    move-result v30

    if-nez v30, :cond_17

    .line 207
    const-string v30, "HeadsetAction"

    const-string v31, "ACTION_INSTALL_UPDATE && SAME_FIRMEARE_INFO"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const-string v32, "SAME_FIRMEARE_INFO"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    .line 306
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$300(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v30

    if-nez v30, :cond_7

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v31

    # setter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$302(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;Lcom/qualcomm/toq/base/factory/ConnectionFactory;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 309
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$300(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v30

    if-eqz v30, :cond_8

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$300(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v5

    .line 311
    .local v5, "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v5, :cond_8

    .line 312
    invoke-virtual {v5}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPLeft()V

    .line 313
    invoke-virtual {v5}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPRight()V

    .line 319
    .end local v5    # "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 320
    const/16 v30, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetAction:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$502(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mServiceLooper:Landroid/os/Looper;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mServiceLooper:Landroid/os/Looper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/Looper;->quit()V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mServiceLooper:Landroid/os/Looper;

    .line 326
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_a

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->clear()V

    .line 331
    .end local v6    # "checkHeadset":Ljava/lang/Boolean;
    :cond_a
    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_b

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2e

    .line 345
    :cond_b
    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_25

    .line 347
    const-string v30, "Primary"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_24

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v4, v0, :cond_24

    .line 349
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_25

    const-string v30, "Operational"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_25

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    const/16 v31, 0x3

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    const-string v32, "PERFORM_BASS_BOOST"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    goto/16 :goto_2

    .line 124
    .end local v4    # "PBEEndPoint":I
    .end local v13    # "isConnectable":Z
    .end local v17    # "lStatusFlag":Ljava/lang/Boolean;
    .end local v18    # "leftEPMode":Ljava/lang/String;
    .end local v19    # "leftEPRole":Ljava/lang/String;
    .end local v20    # "leftLinkKey":Ljava/lang/String;
    .end local v23    # "rStatusFlag":Ljava/lang/Boolean;
    .end local v24    # "rightEPMode":Ljava/lang/String;
    .end local v25    # "rightEPRole":Ljava/lang/String;
    .end local v26    # "rightLinkKey":Ljava/lang/String;
    .end local v28    # "statusFlag":Ljava/lang/Boolean;
    :cond_c
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 126
    .restart local v23    # "rStatusFlag":Ljava/lang/Boolean;
    :cond_d
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 132
    .restart local v17    # "lStatusFlag":Ljava/lang/Boolean;
    .restart local v20    # "leftLinkKey":Ljava/lang/String;
    .restart local v26    # "rightLinkKey":Ljava/lang/String;
    :cond_e
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 141
    .restart local v18    # "leftEPMode":Ljava/lang/String;
    .restart local v19    # "leftEPRole":Ljava/lang/String;
    .restart local v24    # "rightEPMode":Ljava/lang/String;
    .restart local v25    # "rightEPRole":Ljava/lang/String;
    .restart local v28    # "statusFlag":Ljava/lang/Boolean;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 155
    .restart local v4    # "PBEEndPoint":I
    .restart local v13    # "isConnectable":Z
    :cond_10
    const-string v30, "Primary"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 156
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[BassBoost] Storing primary headset while destroyingEndPoints = 1, leftEPRole = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v4, 0x1

    .line 161
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v30

    const-string v31, "last_known_primary_headset"

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putInteger(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 166
    :cond_11
    const/4 v4, -0x1

    .line 167
    const-string v30, "HeadsetAction"

    const-string v31, "[BassBoost] setting -1 for PBE primay headset while destroyingEndPoints"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v30

    const-string v31, "last_known_primary_headset"

    const/16 v32, -0x1

    invoke-virtual/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putInteger(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 181
    .restart local v6    # "checkHeadset":Ljava/lang/Boolean;
    :cond_12
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 185
    :cond_13
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_15

    .line 186
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v30

    if-nez v30, :cond_14

    const-string v30, "OK"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    const/16 v30, 0x1

    :goto_b
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_9

    :cond_14
    const/16 v30, 0x0

    goto :goto_b

    .line 188
    :cond_15
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_6

    .line 189
    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v30

    if-nez v30, :cond_16

    const-string v30, "OK"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/16 v30, 0x1

    :goto_c
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_9

    :cond_16
    const/16 v30, 0x0

    goto :goto_c

    .line 212
    :cond_17
    if-nez v29, :cond_18

    .line 213
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v11, "fileTransferErrorIntent":Landroid/content/Intent;
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_UI_UPDATE:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v30, "endpointtype"

    const/16 v31, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v30, "state"

    const/16 v31, 0x7e5

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v30, "ep_firmware_update_error"

    const/16 v31, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 223
    .end local v11    # "fileTransferErrorIntent":Landroid/content/Intent;
    :cond_18
    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_23

    .line 225
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_19

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_19

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "Secondary"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "Secondary"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_19

    .line 232
    const-string v30, "HeadsetAction"

    const-string v31, "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS Both headaests are Secondary"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const-string v32, "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 238
    :cond_19
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1b

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1b

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1b

    if-eqz v13, :cond_1b

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1a

    const-string v30, "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1a

    const-string v30, "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1a

    if-eqz v20, :cond_1a

    if-eqz v26, :cond_1a

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_1a

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 248
    :cond_1a
    const-string v30, "HeadsetAction"

    const-string v31, "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS Both headaests are not having association"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const-string v32, "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 255
    :cond_1b
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1c

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1c

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "Primary"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "Primary"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1c

    .line 262
    const-string v30, "HeadsetAction"

    const-string v31, "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS Both headaests are Primary"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const-string v32, "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 268
    :cond_1c
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1e

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1d

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "Secondary"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 272
    const-string v30, "HeadsetAction"

    const-string v31, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET Only R connected & Secondary "

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const-string v32, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET_IN_VIEW_STATUS"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 278
    :cond_1e
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_20

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1f

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "Secondary"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_20

    .line 282
    const-string v30, "HeadsetAction"

    const-string v31, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET Only L connected & Secondary"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const-string v32, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET_IN_VIEW_STATUS"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 290
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$300(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v30

    if-nez v30, :cond_21

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v31

    # setter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$302(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;Lcom/qualcomm/toq/base/factory/ConnectionFactory;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 292
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$300(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v30

    if-eqz v30, :cond_22

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$300(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v5

    .line 294
    .restart local v5    # "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v5, :cond_22

    .line 295
    invoke-virtual {v5}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPLeft()V

    .line 296
    invoke-virtual {v5}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPRight()V

    .line 300
    .end local v5    # "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(I)V
    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$400(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;I)V

    goto/16 :goto_a

    .line 304
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(I)V
    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$400(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;I)V

    goto/16 :goto_a

    .line 358
    .end local v6    # "checkHeadset":Ljava/lang/Boolean;
    :cond_24
    const-string v30, "Primary"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_25

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v4, v0, :cond_25

    .line 360
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_25

    const-string v30, "Operational"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_25

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    const/16 v31, 0x3

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    const-string v32, "PERFORM_BASS_BOOST"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    goto/16 :goto_2

    .line 371
    :cond_25
    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_26

    .line 372
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_26

    const-string v30, "Operational"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_26

    const-string v30, "Operational"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_26

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const-string v32, "PERFORM_CHANGE_ROLE"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    goto/16 :goto_2

    .line 383
    :cond_26
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_28

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_28

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_27

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "Secondary"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_28

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_28

    .line 388
    const-string v30, "HeadsetAction"

    const-string v31, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET Only R connected & Secondary "

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const-string v32, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET_IN_VIEW_STATUS"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 394
    :cond_28
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_2a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_2a

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_29

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "Secondary"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_2a

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2a

    .line 399
    const-string v30, "HeadsetAction"

    const-string v31, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET Only L connected & Secondary"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const-string v32, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET_IN_VIEW_STATUS"

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 406
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    # invokes: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(I)V
    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$400(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;I)V

    .line 407
    const-string v30, "Config"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2b

    const-string v30, "Config"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2c

    .line 409
    :cond_2b
    const-string v30, "HeadsetAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Left or Right headset are in CONFIG mode leftEPMode = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", rightEPMode = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 417
    const/16 v30, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetAction:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$502(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mServiceLooper:Landroid/os/Looper;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2d

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mServiceLooper:Landroid/os/Looper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/Looper;->quit()V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mServiceLooper:Landroid/os/Looper;

    .line 423
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_2e

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->clear()V

    .line 428
    :cond_2e
    const/16 v29, -0x1

    .line 430
    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v31, "destroying queue states to END"

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 495
    .end local v4    # "PBEEndPoint":I
    .end local v7    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .end local v12    # "format":Ljava/lang/String;
    .end local v13    # "isConnectable":Z
    .end local v14    # "isLeftBonded":Ljava/lang/Boolean;
    .end local v15    # "isRightBonded":Ljava/lang/Boolean;
    .end local v16    # "lStatus":Ljava/lang/String;
    .end local v17    # "lStatusFlag":Ljava/lang/Boolean;
    .end local v18    # "leftEPMode":Ljava/lang/String;
    .end local v19    # "leftEPRole":Ljava/lang/String;
    .end local v20    # "leftLinkKey":Ljava/lang/String;
    .end local v22    # "rStatus":Ljava/lang/String;
    .end local v23    # "rStatusFlag":Ljava/lang/Boolean;
    .end local v24    # "rightEPMode":Ljava/lang/String;
    .end local v25    # "rightEPRole":Ljava/lang/String;
    .end local v26    # "rightLinkKey":Ljava/lang/String;
    .end local v27    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v28    # "statusFlag":Ljava/lang/Boolean;
    .end local v29    # "tempAction":I
    .restart local v8    # "currentHeadsetState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    .restart local v10    # "endPointType":I
    :catchall_0
    move-exception v30

    :try_start_2
    monitor-exit v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v30
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 497
    :catch_0
    move-exception v9

    .line 498
    .local v9, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x3e7 -> :sswitch_4
    .end sparse-switch
.end method
