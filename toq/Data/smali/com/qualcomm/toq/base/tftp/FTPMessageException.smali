.class public Lcom/qualcomm/toq/base/tftp/FTPMessageException;
.super Ljava/lang/Exception;
.source "FTPMessageException.java"


# static fields
.field private static final serialVersionUID:J = -0x709d33fb07200fefL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
