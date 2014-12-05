.class public Lorg/alljoyn/bus/VariantUtil;
.super Ljava/lang/Object;
.source "VariantUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSignature(Lorg/alljoyn/bus/Variant;)Ljava/lang/String;
    .locals 4
    .param p0, "aVariant"    # Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/alljoyn/bus/Variant;->getMsgArg()J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lorg/alljoyn/bus/MsgArg;->getSignature([J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
