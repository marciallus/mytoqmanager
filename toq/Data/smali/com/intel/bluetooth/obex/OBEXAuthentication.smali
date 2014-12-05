.class Lcom/intel/bluetooth/obex/OBEXAuthentication;
.super Ljava/lang/Object;
.source "OBEXAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;,
        Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;
    }
.end annotation


# static fields
.field private static final COLUMN:[B

.field private static privateKey:[B

.field private static uniqueTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/intel/bluetooth/obex/OBEXAuthentication;->uniqueTimestamp:J

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    sput-object v0, Lcom/intel/bluetooth/obex/OBEXAuthentication;->COLUMN:[B

    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createChallenge(Ljava/lang/String;ZZ)[B
    .locals 2
    .param p0, "realm"    # Ljava/lang/String;
    .param p1, "isUserIdRequired"    # Z
    .param p2, "isFullAccess"    # Z

    .prologue
    .line 228
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;

    .line 229
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXAuthentication;->createNonce()[B

    move-result-object v1

    .line 228
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;-><init>(Ljava/lang/String;ZZ[B)V

    .line 230
    .local v0, "challenge":Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;
    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->write()[B

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized createNonce()[B
    .locals 3

    .prologue
    .line 325
    const-class v2, Lcom/intel/bluetooth/obex/OBEXAuthentication;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/intel/bluetooth/obex/MD5DigestWrapper;

    invoke-direct {v0}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;-><init>()V

    .line 326
    .local v0, "md5":Lcom/intel/bluetooth/obex/MD5DigestWrapper;
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXAuthentication;->createTimestamp()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->update([B)V

    .line 327
    sget-object v1, Lcom/intel/bluetooth/obex/OBEXAuthentication;->COLUMN:[B

    invoke-virtual {v0, v1}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->update([B)V

    .line 328
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXAuthentication;->getPrivateKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->update([B)V

    .line 329
    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->digest()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized createTimestamp()[B
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 352
    const-class v5, Lcom/intel/bluetooth/obex/OBEXAuthentication;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 353
    .local v2, "t":J
    sget-wide v6, Lcom/intel/bluetooth/obex/OBEXAuthentication;->uniqueTimestamp:J

    cmp-long v4, v2, v6

    if-gtz v4, :cond_0

    .line 354
    sget-wide v6, Lcom/intel/bluetooth/obex/OBEXAuthentication;->uniqueTimestamp:J

    const-wide/16 v8, 0x1

    add-long v2, v6, v8

    .line 356
    :cond_0
    sput-wide v2, Lcom/intel/bluetooth/obex/OBEXAuthentication;->uniqueTimestamp:J

    .line 357
    const/16 v4, 0x8

    new-array v0, v4, [B

    .line 358
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v4, :cond_1

    .line 362
    monitor-exit v5

    return-object v0

    .line 359
    :cond_1
    :try_start_1
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    shl-int/lit8 v4, v4, 0x3

    shr-long v6, v2, v4

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    shl-long/2addr v2, v10

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "buf":[B
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static equals([B[B)Z
    .locals 3
    .param p0, "digest1"    # [B
    .param p1, "digest2"    # [B

    .prologue
    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 338
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 334
    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1

    .line 335
    const/4 v1, 0x0

    goto :goto_1

    .line 333
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized getPrivateKey()[B
    .locals 3

    .prologue
    .line 342
    const-class v2, Lcom/intel/bluetooth/obex/OBEXAuthentication;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/intel/bluetooth/obex/OBEXAuthentication;->privateKey:[B

    if-eqz v1, :cond_0

    .line 343
    sget-object v1, Lcom/intel/bluetooth/obex/OBEXAuthentication;->privateKey:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .local v0, "md5":Lcom/intel/bluetooth/obex/MD5DigestWrapper;
    :goto_0
    monitor-exit v2

    return-object v1

    .line 345
    .end local v0    # "md5":Lcom/intel/bluetooth/obex/MD5DigestWrapper;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/intel/bluetooth/obex/MD5DigestWrapper;

    invoke-direct {v0}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;-><init>()V

    .line 346
    .restart local v0    # "md5":Lcom/intel/bluetooth/obex/MD5DigestWrapper;
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXAuthentication;->createTimestamp()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->update([B)V

    .line 347
    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->digest()[B

    move-result-object v1

    sput-object v1, Lcom/intel/bluetooth/obex/OBEXAuthentication;->privateKey:[B

    .line 348
    sget-object v1, Lcom/intel/bluetooth/obex/OBEXAuthentication;->privateKey:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/Authenticator;)V
    .locals 9
    .param p0, "incomingHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .param p1, "replyHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .param p2, "authenticator"    # Ljavax/obex/Authenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationChallenge()Z

    move-result v6

    if-nez v6, :cond_1

    .line 322
    :cond_0
    return-void

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->getAuthenticationChallenges()Ljava/util/Enumeration;

    move-result-object v3

    .line 299
    .local v3, "iter":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    .line 298
    if-eqz v6, :cond_0

    .line 300
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 301
    .local v0, "authChallenge":[B
    new-instance v1, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;

    invoke-direct {v1, v0}, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;-><init>([B)V

    .line 303
    .local v1, "challenge":Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;
    invoke-virtual {v1}, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->getRealm()Ljava/lang/String;

    move-result-object v6

    .line 304
    invoke-virtual {v1}, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isUserIdRequired()Z

    move-result v7

    .line 305
    invoke-virtual {v1}, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isFullAccess()Z

    move-result v8

    .line 303
    invoke-interface {p2, v6, v7, v8}, Ljavax/obex/Authenticator;->onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;

    move-result-object v5

    .line 306
    .local v5, "pwd":Ljavax/obex/PasswordAuthentication;
    new-instance v2, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;

    invoke-direct {v2}, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;-><init>()V

    .line 307
    .local v2, "dr":Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;
    iget-object v6, v1, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->nonce:[B

    iput-object v6, v2, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->nonce:[B

    .line 308
    const-string v6, "got nonce"

    iget-object v7, v2, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->nonce:[B

    invoke-static {v6, v7}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;[B)V

    .line 309
    invoke-virtual {v1}, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isUserIdRequired()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 310
    invoke-virtual {v5}, Ljavax/obex/PasswordAuthentication;->getUserName()[B

    move-result-object v6

    iput-object v6, v2, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->userName:[B

    .line 312
    :cond_2
    new-instance v4, Lcom/intel/bluetooth/obex/MD5DigestWrapper;

    invoke-direct {v4}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;-><init>()V

    .line 313
    .local v4, "md5":Lcom/intel/bluetooth/obex/MD5DigestWrapper;
    iget-object v6, v2, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->nonce:[B

    invoke-virtual {v4, v6}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->update([B)V

    .line 314
    sget-object v6, Lcom/intel/bluetooth/obex/OBEXAuthentication;->COLUMN:[B

    invoke-virtual {v4, v6}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->update([B)V

    .line 315
    invoke-virtual {v5}, Ljavax/obex/PasswordAuthentication;->getPassword()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->update([B)V

    .line 316
    invoke-virtual {v4}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->digest()[B

    move-result-object v6

    iput-object v6, v2, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->requestDigest:[B

    .line 319
    const-string v6, "send digest"

    iget-object v7, v2, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->requestDigest:[B

    invoke-static {v6, v7}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;[B)V

    .line 320
    invoke-virtual {v2}, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->write()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->addAuthenticationResponse([B)V

    goto :goto_0
.end method

.method static handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/Authenticator;Ljavax/obex/ServerRequestHandler;Ljava/util/Vector;)Z
    .locals 12
    .param p0, "incomingHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .param p1, "authenticator"    # Ljavax/obex/Authenticator;
    .param p2, "serverHandler"    # Ljavax/obex/ServerRequestHandler;
    .param p3, "authChallengesSent"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationResponses()Z

    move-result v10

    if-nez v10, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v9

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->getAuthenticationResponses()Ljava/util/Enumeration;

    move-result-object v6

    .line 241
    .local v6, "iter":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    .line 240
    if-eqz v10, :cond_0

    .line 242
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 243
    .local v0, "authResponse":[B
    new-instance v5, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;

    invoke-direct {v5}, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;-><init>()V

    .line 244
    .local v5, "dr":Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;
    invoke-virtual {v5, v0}, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->read([B)V

    .line 245
    const-string v10, "got nonce"

    iget-object v11, v5, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->nonce:[B

    invoke-static {v10, v11}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;[B)V

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, "challengeSent":Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;
    invoke-virtual {p3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 251
    .local v2, "challengeIter":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    .line 250
    if-nez v10, :cond_3

    .line 258
    :goto_2
    if-nez v3, :cond_4

    .line 259
    new-instance v9, Ljava/io/IOException;

    .line 260
    const-string v10, "Authentication response for unknown challenge"

    .line 259
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 252
    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;

    .line 253
    .local v1, "c":Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;
    iget-object v10, v1, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->nonce:[B

    iget-object v11, v5, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->nonce:[B

    invoke-static {v10, v11}, Lcom/intel/bluetooth/obex/OBEXAuthentication;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 254
    move-object v3, v1

    .line 255
    goto :goto_2

    .line 264
    .end local v1    # "c":Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;
    :cond_4
    iget-object v10, v5, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->userName:[B

    invoke-interface {p1, v10}, Ljavax/obex/Authenticator;->onAuthenticationResponse([B)[B

    move-result-object v8

    .line 265
    .local v8, "password":[B
    if-nez v8, :cond_5

    .line 266
    new-instance v9, Ljava/io/IOException;

    .line 267
    const-string v10, "Authentication request failed, password is not supplied"

    .line 266
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 272
    :cond_5
    new-instance v7, Lcom/intel/bluetooth/obex/MD5DigestWrapper;

    invoke-direct {v7}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;-><init>()V

    .line 273
    .local v7, "md5":Lcom/intel/bluetooth/obex/MD5DigestWrapper;
    iget-object v10, v5, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->nonce:[B

    invoke-virtual {v7, v10}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->update([B)V

    .line 274
    sget-object v10, Lcom/intel/bluetooth/obex/OBEXAuthentication;->COLUMN:[B

    invoke-virtual {v7, v10}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->update([B)V

    .line 275
    invoke-virtual {v7, v8}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->update([B)V

    .line 276
    invoke-virtual {v7}, Lcom/intel/bluetooth/obex/MD5DigestWrapper;->digest()[B

    move-result-object v4

    .line 277
    .local v4, "claulated":[B
    iget-object v10, v5, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->requestDigest:[B

    invoke-static {v10, v4}, Lcom/intel/bluetooth/obex/OBEXAuthentication;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_7

    .line 278
    const-string v10, "got digest"

    iget-object v11, v5, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->requestDigest:[B

    invoke-static {v10, v11}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;[B)V

    .line 279
    const-string v10, "  expected"

    invoke-static {v10, v4}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;[B)V

    .line 280
    if-eqz p2, :cond_6

    .line 281
    iget-object v10, v5, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->userName:[B

    invoke-virtual {p2, v10}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    goto/16 :goto_1

    .line 283
    :cond_6
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Authentication failure"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 286
    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_0
.end method
