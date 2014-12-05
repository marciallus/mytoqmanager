.class public Lorg/alljoyn/bus/ErrorReplyBusException;
.super Lorg/alljoyn/bus/BusException;
.source "ErrorReplyBusException.java"


# instance fields
.field private final message:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final status:Lorg/alljoyn/bus/Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lorg/alljoyn/bus/Status;->BUS_REPLY_IS_ERROR_MESSAGE:Lorg/alljoyn/bus/Status;

    iput-object v0, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->status:Lorg/alljoyn/bus/Status;

    .line 54
    iput-object p1, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->name:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->message:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lorg/alljoyn/bus/Status;->BUS_REPLY_IS_ERROR_MESSAGE:Lorg/alljoyn/bus/Status;

    iput-object v0, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->status:Lorg/alljoyn/bus/Status;

    .line 68
    iput-object p1, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->name:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->message:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/bus/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, "org.alljoyn.Bus.ErStatus"

    invoke-direct {p0, v0}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->status:Lorg/alljoyn/bus/Status;

    .line 41
    iput-object v1, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->name:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->message:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorStatus()Lorg/alljoyn/bus/Status;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/alljoyn/bus/ErrorReplyBusException;->status:Lorg/alljoyn/bus/Status;

    return-object v0
.end method
