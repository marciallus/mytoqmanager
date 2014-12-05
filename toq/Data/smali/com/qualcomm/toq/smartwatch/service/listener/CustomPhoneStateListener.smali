.class public Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CustomPhoneStateListener.java"


# static fields
.field private static final CALL_NUMBER_SHARED_PREFS_FILE:Ljava/lang/String; = "call_number__pref"

.field private static final TAG:Ljava/lang/String; = "CustomPhoneStateListener"

.field private static instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

.field public static isPhoneOnActiveCall:Z


# instance fields
.field private CALLER_NUMBER:Ljava/lang/String;

.field private final UNKNOWN_NUMBER:Ljava/lang/String;

.field public bIncomingcall:Z

.field public bSecondIncomingCall:Z

.field public callStartTime:J

.field public callStateHandler:Landroid/os/Handler;

.field public callStateHandlerThread:Landroid/os/HandlerThread;

.field public callWaitingName:Ljava/lang/String;

.field public callWaitingNumber:Ljava/lang/String;

.field public callerName:Ljava/lang/String;

.field private volatile callerNumber:Ljava/lang/String;

.field public callerPhoneType:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentCallState:I

.field private currentState:I

.field private isSet:Z

.field public looper:Landroid/os/Looper;

.field private prevCallState:I

.field private ringerMode:Ljava/lang/Integer;

.field public serviceState:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isPhoneOnActiveCall:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 40
    const-string v0, "callernumber"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->CALLER_NUMBER:Ljava/lang/String;

    .line 41
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->UNKNOWN_NUMBER:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->ringerMode:Ljava/lang/Integer;

    .line 51
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->serviceState:Ljava/lang/Integer;

    .line 52
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bIncomingcall:Z

    .line 53
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bSecondIncomingCall:Z

    .line 54
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStateHandlerThread:Landroid/os/HandlerThread;

    .line 55
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->looper:Landroid/os/Looper;

    .line 56
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStateHandler:Landroid/os/Handler;

    .line 58
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isSet:Z

    .line 71
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;

    .line 72
    iput v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->currentCallState:I

    .line 73
    iput v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    .prologue
    .line 35
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I

    return v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I

    return p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    .prologue
    .line 35
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->currentCallState:I

    return v0
.end method

.method static synthetic access$202(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->currentCallState:I

    return p1
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->ringerMode:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->ringerMode:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->sendConnectionBroadcast()V

    return-void
.end method

.method public static getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    .line 84
    :goto_0
    const-string v0, "CustomPhoneStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomPhoneStateListener inst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    return-object v0

    .line 82
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    iput-object p0, v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;

    goto :goto_0
.end method

.method private sendConnectionBroadcast()V
    .locals 2

    .prologue
    .line 619
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getLastSentBroadcastIntent()Landroid/content/Intent;

    move-result-object v0

    .line 621
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 622
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 624
    :cond_0
    return-void
.end method


# virtual methods
.method public getCallStartTime()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStartTime:J

    return-wide v0
.end method

.method public getCallWaitingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callWaitingName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallWaitingNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callWaitingNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 118
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "call_number__pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->CALLER_NUMBER:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 129
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerPhoneType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCallState()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->currentCallState:I

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->currentState:I

    return v0
.end method

.method public getPreviousCallState()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->prevCallState:I

    return v0
.end method

.method public getRingerMode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->ringerMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getServiceState()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->serviceState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isCallWaiting()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->bSecondIncomingCall:Z

    return v0
.end method

.method public isOutgoingActive()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isSet:Z

    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumberTemp"    # Ljava/lang/String;

    .prologue
    .line 200
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->currentState:I

    .line 201
    invoke-static {p2}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "incomingNumber":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 209
    if-nez p1, :cond_1

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "Setting isOnChangeCalled to false"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x0

    sput-boolean v1, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->isOnChangeCalled:Z

    .line 216
    :cond_1
    const-string v1, "CustomPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nincomingNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ncallerNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 219
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "Incoming Number from Android System is Empty"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    invoke-super {p0, p1, v0}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStateHandler:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 226
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "Handler Null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CustomPhoneStateListener"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStateHandlerThread:Landroid/os/HandlerThread;

    .line 228
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStateHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 229
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStateHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->looper:Landroid/os/Looper;

    .line 230
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->looper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStateHandler:Landroid/os/Handler;

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener$1;-><init>(Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    return-void
.end method

.method public onDataActivity(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    .line 629
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->serviceState:Ljava/lang/Integer;

    .line 639
    const-string v0, "CustomPhoneStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceChanged called State"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->serviceState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 641
    return-void
.end method

.method public removeCallNumberFromPreference()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isOutgoingActive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;

    const-string v5, "call_number__pref"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 161
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 162
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 163
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->CALLER_NUMBER:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "callNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->CALLER_NUMBER:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v3, "CustomPhoneStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call Number removed from preference:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    const-string v3, ""

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    .line 170
    const-string v3, ""

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerName:Ljava/lang/String;

    .line 171
    const/4 v3, 0x1

    .line 178
    .end local v0    # "callNumber":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v3

    .line 174
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const-string v4, "CustomPhoneStateListener"

    const-string v5, "Call Number not removed from preference:  "

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->setOutgoingActive(Z)V

    goto :goto_0
.end method

.method public removeHandlerThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 610
    const-string v0, "CustomPhoneStateListener"

    const-string v1, "Removed handler called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->currentState:I

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 613
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStateHandler:Landroid/os/Handler;

    .line 614
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callStateHandlerThread:Landroid/os/HandlerThread;

    .line 616
    :cond_0
    return-void
.end method

.method public sendPhoneStateIndication(IIIIIILjava/lang/String;Ljava/lang/String;IJLjava/lang/String;II)V
    .locals 14
    .param p1, "sourceAdd"    # I
    .param p2, "destAdd"    # I
    .param p3, "service"    # I
    .param p4, "call_status"    # I
    .param p5, "call_setup_status"    # I
    .param p6, "call_held"    # I
    .param p7, "caller_id"    # Ljava/lang/String;
    .param p8, "caller_name"    # Ljava/lang/String;
    .param p9, "isFavorite"    # I
    .param p10, "call_time"    # J
    .param p12, "call_id_type"    # Ljava/lang/String;
    .param p13, "indicationID"    # I
    .param p14, "transactionID"    # I

    .prologue
    .line 650
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 652
    .local v6, "jsonString":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "service"

    move/from16 v0, p3

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 653
    const-string v3, "call_status"

    move/from16 v0, p4

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 654
    const-string v3, "call_setup_status"

    move/from16 v0, p5

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 655
    const-string v3, "call_held"

    move/from16 v0, p6

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 656
    if-eqz p7, :cond_0

    .line 657
    const-string v3, "caller_id"

    move-object/from16 v0, p7

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    :cond_0
    if-eqz p8, :cond_1

    .line 660
    const-string v3, "caller_name"

    move-object/from16 v0, p8

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p10, v3

    if-eqz v3, :cond_2

    .line 663
    const-string v3, "call_time"

    move-wide/from16 v0, p10

    invoke-virtual {v6, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 665
    :cond_2
    if-eqz p12, :cond_3

    const-string v3, "Unknown"

    move-object/from16 v0, p12

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 667
    const-string v3, "caller_id_type"

    move-object/from16 v0, p12

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    :cond_3
    const-string v3, "privileged"

    move/from16 v0, p9

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 670
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->isMicroPhoneMute()Z

    move-result v11

    .line 672
    .local v11, "isMicrophoneMute":Z
    const-string v4, "mic_mute"

    if-eqz v11, :cond_7

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 674
    const/4 v13, 0x0

    .line 675
    .local v13, "silence_mode":I
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 676
    .local v9, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v12

    .line 677
    .local v12, "ringingMode":I
    const/4 v3, 0x1

    if-eq v12, v3, :cond_4

    if-nez v12, :cond_5

    .line 679
    :cond_4
    const/4 v13, 0x1

    .line 681
    :cond_5
    const-string v3, "silence_mode"

    invoke-virtual {v6, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    .end local v9    # "audioManager":Landroid/media/AudioManager;
    .end local v11    # "isMicrophoneMute":Z
    .end local v12    # "ringingMode":I
    .end local v13    # "silence_mode":I
    :goto_1
    const-string v3, "CustomPhoneStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneStateInd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 689
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v2

    .line 690
    .local v2, "serviceInstance":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v2, :cond_6

    .line 691
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    move v4, p1

    move/from16 v5, p2

    move/from16 v7, p13

    move/from16 v8, p14

    invoke-virtual/range {v2 .. v8}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 701
    .end local v2    # "serviceInstance":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :cond_6
    return-void

    .line 672
    .restart local v11    # "isMicrophoneMute":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    .line 683
    .end local v11    # "isMicrophoneMute":Z
    :catch_0
    move-exception v10

    .line 684
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendPhoneStateIndication(IIIIIILjava/lang/String;Ljava/lang/String;IJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 15
    .param p1, "sourceAdd"    # I
    .param p2, "destAdd"    # I
    .param p3, "service"    # I
    .param p4, "call_status"    # I
    .param p5, "call_setup_status"    # I
    .param p6, "call_held"    # I
    .param p7, "caller_id"    # Ljava/lang/String;
    .param p8, "caller_name"    # Ljava/lang/String;
    .param p9, "isFavorite"    # I
    .param p10, "call_time"    # J
    .param p12, "call_id_type"    # Ljava/lang/String;
    .param p13, "indicationID"    # I
    .param p14, "secondNumber"    # Ljava/lang/String;
    .param p15, "secondName"    # Ljava/lang/String;
    .param p16, "transactionID"    # I

    .prologue
    .line 711
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 713
    .local v6, "jsonString":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "CustomPhoneStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending call status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v3, "service"

    move/from16 v0, p3

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 716
    const-string v3, "call_status"

    move/from16 v0, p4

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 717
    const-string v3, "call_setup_status"

    move/from16 v0, p5

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 718
    const-string v3, "call_held"

    move/from16 v0, p6

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 719
    if-eqz p7, :cond_0

    .line 720
    const-string v3, "caller_id"

    move-object/from16 v0, p7

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    :cond_0
    if-eqz p8, :cond_1

    .line 723
    const-string v3, "caller_name"

    move-object/from16 v0, p8

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p10, v3

    if-eqz v3, :cond_2

    .line 726
    const-string v3, "call_time"

    move-wide/from16 v0, p10

    invoke-virtual {v6, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 728
    :cond_2
    if-eqz p12, :cond_3

    const-string v3, "Unknown"

    move-object/from16 v0, p12

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 730
    const-string v3, "caller_id_type"

    move-object/from16 v0, p12

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    :cond_3
    const-string v3, "privileged"

    move/from16 v0, p9

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 733
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->isMicroPhoneMute()Z

    move-result v11

    .line 735
    .local v11, "isMicrophoneMute":Z
    const-string v4, "mic_mute"

    if-eqz v11, :cond_9

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 737
    const/4 v14, 0x0

    .line 738
    .local v14, "silence_mode":I
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 739
    .local v9, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v12

    .line 740
    .local v12, "ringingMode":I
    const/4 v3, 0x1

    if-eq v12, v3, :cond_4

    if-nez v12, :cond_5

    .line 742
    :cond_4
    const/4 v14, 0x1

    .line 744
    :cond_5
    const-string v3, "silence_mode"

    invoke-virtual {v6, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 746
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 747
    .local v13, "secondCallJson":Lorg/json/JSONObject;
    if-eqz p14, :cond_6

    .line 748
    const-string v3, "caller_id"

    move-object/from16 v0, p14

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    :cond_6
    if-eqz p15, :cond_7

    .line 751
    const-string v3, "caller_name"

    move-object/from16 v0, p15

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 753
    :cond_7
    const-string v3, "call_waiting"

    invoke-virtual {v6, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v9    # "audioManager":Landroid/media/AudioManager;
    .end local v11    # "isMicrophoneMute":Z
    .end local v12    # "ringingMode":I
    .end local v13    # "secondCallJson":Lorg/json/JSONObject;
    .end local v14    # "silence_mode":I
    :goto_1
    const-string v3, "CustomPhoneStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneStateInd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 761
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v2

    .line 762
    .local v2, "serviceInstance":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v2, :cond_8

    .line 763
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v7, p13

    move/from16 v8, p16

    invoke-virtual/range {v2 .. v8}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 773
    .end local v2    # "serviceInstance":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :cond_8
    return-void

    .line 735
    .restart local v11    # "isMicrophoneMute":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_0

    .line 755
    .end local v11    # "isMicrophoneMute":Z
    :catch_0
    move-exception v10

    .line 756
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendRingInd(IILjava/lang/String;Ljava/lang/String;III)V
    .locals 8
    .param p1, "sourceAdd"    # I
    .param p2, "destAdd"    # I
    .param p3, "callerID"    # Ljava/lang/String;
    .param p4, "callerName"    # Ljava/lang/String;
    .param p5, "isFavorite"    # I
    .param p6, "indicationID"    # I
    .param p7, "transactionID"    # I

    .prologue
    const/4 v2, 0x0

    .line 778
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 780
    .local v4, "jsonString":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "caller_id_present"

    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 782
    const-string v1, "caller_id"

    invoke-virtual {v4, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 783
    const-string v1, "caller_name"

    invoke-virtual {v4, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    const-string v1, "privileged"

    invoke-virtual {v4, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 792
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v0

    .line 793
    .local v0, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v0, :cond_1

    .line 794
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    move v2, p1

    move v3, p2

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 804
    .end local v0    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :cond_1
    return-void

    .line 780
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 786
    :catch_0
    move-exception v7

    .line 787
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized setCallerNumber(Ljava/lang/String;)V
    .locals 5
    .param p1, "callerNumber"    # Ljava/lang/String;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->callerNumber:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;

    const-string v3, "call_number__pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 145
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->CALLER_NUMBER:Ljava/lang/String;

    invoke-static {p1}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    const-string v2, "CustomPhoneStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Call Number in preference:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setOutgoingActive(Z)V
    .locals 0
    .param p1, "isSet"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isSet:Z

    .line 138
    return-void
.end method

.method public setRingerMode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ringerMode"    # Ljava/lang/Integer;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->ringerMode:Ljava/lang/Integer;

    .line 90
    return-void
.end method

.method public unRegisterListener()V
    .locals 3

    .prologue
    .line 807
    sget-object v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    move-object v0, v1

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 809
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    sget-object v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 810
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->instance:Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    .line 814
    const-string v1, "CustomPhoneStateListener"

    const-string v2, "unregistering listener"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method
