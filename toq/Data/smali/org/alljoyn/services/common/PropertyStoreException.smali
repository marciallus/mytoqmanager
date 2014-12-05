.class public Lorg/alljoyn/services/common/PropertyStoreException;
.super Ljava/lang/Exception;
.source "PropertyStoreException.java"


# static fields
.field public static final ILLEGAL_ACCESS:I = 0x2

.field public static final INVALID_VALUE:I = 0x3

.field public static final UNSUPPORTED_KEY:I = 0x0

.field public static final UNSUPPORTED_LANGUAGE:I = 0x1

.field private static final serialVersionUID:J = -0x75cc8a30b1685bfdL


# instance fields
.field private m_reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 50
    iput p1, p0, Lorg/alljoyn/services/common/PropertyStoreException;->m_reason:I

    .line 51
    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/alljoyn/services/common/PropertyStoreException;->m_reason:I

    return v0
.end method
