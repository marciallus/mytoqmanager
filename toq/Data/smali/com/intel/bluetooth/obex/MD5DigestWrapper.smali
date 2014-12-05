.class Lcom/intel/bluetooth/obex/MD5DigestWrapper;
.super Ljava/lang/Object;
.source "MD5DigestWrapper.java"


# instance fields
.field private md5impl:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->md5impl:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method digest()[B
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->md5impl:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method update([B)V
    .locals 1
    .param p1, "input"    # [B

    .prologue
    .line 47
    iget-object v0, p0, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->md5impl:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    return-void
.end method
