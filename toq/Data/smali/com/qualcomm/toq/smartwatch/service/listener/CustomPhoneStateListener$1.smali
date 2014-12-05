.class Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;
.super Ljava/lang/Object;
.source "CustomPhoneStateListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

.field final synthetic val$incomingNumber:Ljava/lang/String;

.field final synthetic val$incomingNumberTemp:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iput p2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$state:I

    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumberTemp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 236
    const/4 v10, 0x0

    .line 237
    .local v10, "isFavorite":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerNumber()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$002(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->currentCallState:I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$200(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)I

    move-result v2

    # setter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$102(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;I)I

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$state:I

    # setter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->currentCallState:I
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$202(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;I)I

    .line 240
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentCallState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->currentCallState:I
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$200(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  serviceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->serviceState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prevState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$100(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumberTemp:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->isOnChangeCalled:Z

    if-nez v1, :cond_1

    .line 255
    move-object/from16 v0, p0

    iget v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$state:I

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumberTemp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v21

    .line 260
    .local v21, "contactInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v20, v21, v1

    .line 262
    .local v20, "callerNameTemp":Ljava/lang/String;
    const-string v1, "Unknown"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    const-string v1, "ContactController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallLog Updated set to true : name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-boolean v1, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->isOnChangeCalled:Z

    if-nez v1, :cond_1

    .line 272
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "onChange Not yet called.Setting isCallLogsUpdated to true"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->isCallLogsUpdated:Z

    .line 280
    .end local v20    # "callerNameTemp":Ljava/lang/String;
    .end local v21    # "contactInfo":[Ljava/lang/String;
    :cond_1
    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$400()Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v1

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->ringerMode:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$500(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/media/AudioManager;

    .line 282
    .local v19, "audioManager":Landroid/media/AudioManager;
    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$400()Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v1

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->ringerMode:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$500(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 283
    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$400()Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v1

    const/4 v2, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->ringerMode:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$502(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 286
    .end local v19    # "audioManager":Landroid/media/AudioManager;
    :cond_2
    const/4 v1, 0x4

    :try_start_0
    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 287
    .restart local v21    # "contactInfo":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v21

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x0

    aget-object v2, v21, v2

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x1

    aget-object v2, v21, v2

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerPhoneType:Ljava/lang/String;

    .line 295
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callerName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  callerPhoneType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerPhoneType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$state:I

    packed-switch v1, :pswitch_data_0

    .line 597
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown phone state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .end local v21    # "contactInfo":[Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 300
    .restart local v21    # "contactInfo":[Ljava/lang/String;
    :pswitch_0
    new-instance v24, Landroid/content/Intent;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CALL_STATE_RINGING:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v24, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # invokes: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->sendConnectionBroadcast()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$600(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)V

    .line 304
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone State = CALL_STATE_RINGING:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone Call State: Ringing; BT Conn State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$100(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)I

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 314
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already the Phone is in Active Call with Number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bSecondIncomingCall:Z

    .line 318
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v28

    .line 321
    .local v28, "secondContactInfo":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x0

    aget-object v2, v28, v2

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callWaitingName:Ljava/lang/String;

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callWaitingNumber:Ljava/lang/String;

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerNumber()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$002(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerPhoneType:Ljava/lang/String;

    .line 327
    move-object/from16 v0, v28

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    .line 328
    const/4 v1, 0x3

    aget-object v1, v28, v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 329
    const/4 v10, 0x1

    .line 330
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "Is a favorite"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_5
    :goto_1
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "PhoneStateInd sent with Call Waiting details"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getServiceState()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v9, v11, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v13, v13, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerPhoneType:Ljava/lang/String;

    const v14, 0x8000

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v15, v15, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callWaitingNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callWaitingName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v17

    invoke-virtual/range {v1 .. v17}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->sendPhoneStateIndication(IIIIIILjava/lang/String;Ljava/lang/String;IJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 601
    .end local v21    # "contactInfo":[Ljava/lang/String;
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v28    # "secondContactInfo":[Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 602
    .local v22, "e":Ljava/lang/Exception;
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught Exception for Phone Number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v21    # "contactInfo":[Ljava/lang/String;
    .restart local v24    # "intent":Landroid/content/Intent;
    .restart local v28    # "secondContactInfo":[Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "Is Not a favorite"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 340
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 359
    .end local v28    # "secondContactInfo":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumber:Ljava/lang/String;

    # setter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$002(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 362
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v21

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x0

    aget-object v2, v21, v2

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x1

    aget-object v2, v21, v2

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerPhoneType:Ljava/lang/String;

    .line 373
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bIncomingcall:Z

    .line 374
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callerName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerPhoneType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, v21

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_9

    .line 377
    const/4 v1, 0x3

    aget-object v1, v21, v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 378
    const/4 v10, 0x1

    .line 379
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "Is a favorite"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v9, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    const v11, 0x8001

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v12

    invoke-virtual/range {v5 .. v12}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->sendRingInd(IILjava/lang/String;Ljava/lang/String;III)V

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getServiceState()I

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    :goto_5
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v9, v11, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v13, v13, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerPhoneType:Ljava/lang/String;

    const v14, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v15

    invoke-virtual {v15}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v15

    invoke-virtual/range {v1 .. v15}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->sendPhoneStateIndication(IIIIIILjava/lang/String;Ljava/lang/String;IJLjava/lang/String;II)V

    goto/16 :goto_0

    .line 370
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const-string v2, "Unknown"

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const-string v2, "Unknown"

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerPhoneType:Ljava/lang/String;

    goto/16 :goto_3

    .line 382
    :cond_b
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "Is Not a favorite"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v10, 0x0

    goto :goto_4

    .line 394
    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    .line 419
    .end local v24    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v26, Landroid/content/Intent;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CALL_STATE_OFF_HOOK:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v26, "offHookIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 422
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isPhoneOnActiveCall:Z

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const-string v2, "Unknown"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->setCallerNumber(Ljava/lang/String;)V

    .line 439
    :cond_d
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone State = CALL_STATE_OFFHOOK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-boolean v1, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bSecondIncomingCall:Z

    if-eqz v1, :cond_e

    .line 444
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "Second Incoming call is Rejected"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bSecondIncomingCall:Z

    .line 446
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->disableEndCallReq()V

    goto/16 :goto_0

    .line 451
    :cond_e
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "Phone call state: Active call"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStartTime:J

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$100(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bIncomingcall:Z

    .line 463
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$100(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$100(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 466
    :cond_f
    :try_start_2
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 468
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isPriviledgeContact(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_12

    .line 471
    const/4 v10, 0x1

    .line 484
    :cond_10
    :goto_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getServiceState()I

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_8
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v9, v11, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-wide v11, v11, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStartTime:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v13, v13, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerPhoneType:Ljava/lang/String;

    const v14, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v15

    invoke-virtual {v15}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v15

    invoke-virtual/range {v1 .. v15}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->sendPhoneStateIndication(IIIIIILjava/lang/String;Ljava/lang/String;IJLjava/lang/String;II)V

    goto/16 :goto_0

    .line 460
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bIncomingcall:Z

    goto/16 :goto_6

    .line 474
    :cond_12
    const/4 v10, 0x0

    goto :goto_7

    .line 478
    :catch_1
    move-exception v22

    .line 479
    .restart local v22    # "e":Ljava/lang/Exception;
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPriviledgeContact() Exception 3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 484
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v4, 0x0

    goto :goto_8

    .line 507
    .end local v26    # "offHookIntent":Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;

    move-result-object v8

    .line 508
    .local v8, "tempCallerNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-object v9, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    .line 509
    .local v9, "tempCallerName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->removeCallNumberFromPreference()Z

    .line 510
    new-instance v23, Landroid/content/Intent;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CALL_STATE_IDLE:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v23, "idle":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    const/4 v1, 0x0

    sput-boolean v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isPhoneOnActiveCall:Z

    .line 513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # invokes: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->sendConnectionBroadcast()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$600(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)V

    .line 514
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->disableEndCallReq()V

    .line 516
    sget-object v27, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 517
    .local v27, "product":Ljava/lang/String;
    sget-object v25, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 519
    .local v25, "manufacturer":Ljava/lang/String;
    const-string v1, "htc_ace"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "evita"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "htc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 523
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$100(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    .line 524
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v18

    .line 526
    .local v18, "andUtils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :try_start_4
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getHeadsetBroadCastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 539
    .end local v18    # "andUtils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :cond_15
    :goto_9
    :try_start_5
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "Phone got back to idle state"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone State= CALL_STATE_IDLE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->val$incomingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-boolean v1, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bIncomingcall:Z

    if-nez v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iget-boolean v1, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bIncomingcall:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v1, :cond_18

    .line 546
    :cond_16
    :try_start_6
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 548
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isPriviledgeContact(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v1

    if-eqz v1, :cond_1a

    .line 551
    const/4 v10, 0x1

    .line 564
    :cond_17
    :goto_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getServiceState()I

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x1

    :goto_b
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const v14, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v15

    invoke-virtual {v15}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v15

    invoke-virtual/range {v1 .. v15}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->sendPhoneStateIndication(IIIIIILjava/lang/String;Ljava/lang/String;IJLjava/lang/String;II)V

    .line 580
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bIncomingcall:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 582
    :try_start_8
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v1

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;

    if-eqz v1, :cond_19

    .line 583
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v1

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 584
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 592
    :cond_19
    :goto_c
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->removeHandlerThread()V

    goto/16 :goto_0

    .line 530
    .restart local v18    # "andUtils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :catch_2
    move-exception v22

    .line 531
    .local v22, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "headset receiver not registered"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 554
    .end local v18    # "andUtils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    .end local v22    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1a
    const/4 v10, 0x0

    goto :goto_a

    .line 558
    :catch_3
    move-exception v22

    .line 559
    .local v22, "e":Ljava/lang/Exception;
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPriviledgeContact() Exception 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 564
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_1b
    const/4 v4, 0x0

    goto :goto_b

    .line 587
    :catch_4
    move-exception v22

    .line 588
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mute Timer Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_c

    .line 534
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v18    # "andUtils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :catch_5
    move-exception v1

    goto/16 :goto_9

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
