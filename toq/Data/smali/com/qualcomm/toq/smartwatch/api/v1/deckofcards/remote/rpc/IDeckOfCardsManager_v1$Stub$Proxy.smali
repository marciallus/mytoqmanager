.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDeckOfCardsManager_v1.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 291
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;)V
    .locals 5
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 502
    if-eqz p1, :cond_1

    .line 503
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    .line 509
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    if-eqz p4, :cond_2

    invoke-interface {p4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 512
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 522
    return-void

    .line 507
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v2

    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    throw v2

    .line 511
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    return-object v0
.end method

.method public installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;)V
    .locals 5
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .param p4, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    .param p5, "installationCallback"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 362
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    if-eqz p1, :cond_1

    .line 364
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    .line 370
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    if-eqz p3, :cond_2

    .line 372
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;->writeToParcel(Landroid/os/Parcel;I)V

    .line 378
    :goto_1
    if-eqz p4, :cond_3

    .line 379
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;->writeToParcel(Landroid/os/Parcel;I)V

    .line 385
    :goto_2
    if-eqz p5, :cond_4

    invoke-interface {p5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 386
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    return-void

    .line 368
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v2

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    throw v2

    .line 376
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 383
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 385
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public isToqWatchConnected(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;)Z
    .locals 7
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 303
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    if-eqz p1, :cond_1

    .line 308
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    .line 314
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 318
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 326
    return v2

    .line 312
    .end local v2    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v3

    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 325
    throw v3

    :cond_2
    move v2, v3

    .line 317
    goto :goto_1
.end method

.method public isValidInstall(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    if-eqz p1, :cond_1

    .line 336
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    .line 342
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    return v2

    .line 340
    .end local v2    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v3

    .line 352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    throw v3

    :cond_2
    move v2, v3

    .line 346
    goto :goto_1
.end method

.method public removeCallback(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 528
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 529
    if-eqz p1, :cond_1

    .line 530
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    .line 536
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    return-void

    .line 534
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v2

    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 547
    throw v2
.end method

.method public sendNotification(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;)V
    .locals 5
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "notification"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 468
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 469
    if-eqz p1, :cond_1

    .line 470
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    .line 476
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    if-eqz p4, :cond_2

    .line 479
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 485
    :goto_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    return-void

    .line 474
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v2

    .line 492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    throw v2

    .line 483
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public uninstallDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 440
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 442
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    if-eqz p1, :cond_1

    .line 444
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    .line 450
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    return-void

    .line 448
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v2

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    throw v2
.end method

.method public updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V
    .locals 5
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .param p5, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 400
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    if-eqz p1, :cond_1

    .line 404
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    .line 410
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    if-eqz p4, :cond_2

    .line 413
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;->writeToParcel(Landroid/os/Parcel;I)V

    .line 419
    :goto_1
    if-eqz p5, :cond_3

    .line 420
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;->writeToParcel(Landroid/os/Parcel;I)V

    .line 426
    :goto_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    return-void

    .line 408
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v2

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    throw v2

    .line 417
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 424
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
