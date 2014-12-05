.class Lcom/intel/bluetooth/DebugLog4jAppender;
.super Ljava/lang/Object;
.source "DebugLog4jAppender.java"

# interfaces
.implements Lcom/intel/bluetooth/DebugLog$LoggerAppenderExt;


# static fields
.field private static final FQCN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/intel/bluetooth/DebugLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intel/bluetooth/DebugLog4jAppender;->FQCN:Ljava/lang/String;

    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public appendLog(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 62
    :pswitch_0
    return-void

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isLogEnabled(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 76
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 74
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
