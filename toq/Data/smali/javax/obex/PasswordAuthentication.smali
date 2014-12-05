.class public Ljavax/obex/PasswordAuthentication;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"


# instance fields
.field private password:[B

.field private userName:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 2
    .param p1, "userName"    # [B
    .param p2, "password"    # [B

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/intel/bluetooth/Utils;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/PasswordAuthentication;->userName:[B

    .line 59
    invoke-static {p2}, Lcom/intel/bluetooth/Utils;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/PasswordAuthentication;->password:[B

    .line 60
    return-void
.end method


# virtual methods
.method public getPassword()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljavax/obex/PasswordAuthentication;->password:[B

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getUserName()[B
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ljavax/obex/PasswordAuthentication;->userName:[B

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
