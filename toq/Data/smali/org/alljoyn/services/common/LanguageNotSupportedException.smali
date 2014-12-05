.class public Lorg/alljoyn/services/common/LanguageNotSupportedException;
.super Lorg/alljoyn/bus/ErrorReplyBusException;
.source "LanguageNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = -0x711aab84ec5bac76L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "org.alljoyn.Error.LanguageNotSupported"

    const-string v1, "The language specified is not supported"

    invoke-direct {p0, v0, v1}, Lorg/alljoyn/bus/ErrorReplyBusException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method
