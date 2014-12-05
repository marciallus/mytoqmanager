.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
.super Ljava/lang/Object;
.source "LocalDeckOfCardsManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToqAppletRecord"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x687366ad086a1553L


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    .line 1386
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->setInstalled(Z)V

    .line 1388
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->setRemote(Z)V

    .line 1389
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->getinstallationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    .param p1, "x1"    # Z

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->setInstalled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->setInstallationToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    .param p1, "x1"    # Z

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->setRemote(Z)V

    return-void
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getinstallationToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    const-string v1, "installationToken"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private isInstalled()Z
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    const-string v1, "isInstalled"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isRemote()Z
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    const-string v1, "isRemote"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private setInstallationToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "installationToken"    # Ljava/lang/String;

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    const-string v1, "installationToken"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    return-void
.end method

.method private setInstalled(Z)V
    .locals 3
    .param p1, "isInstalled"    # Z

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    const-string v1, "isInstalled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    return-void
.end method

.method private setRemote(Z)V
    .locals 3
    .param p1, "isRemote"    # Z

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    const-string v1, "isRemote"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1431
    if-ne p0, p1, :cond_0

    .line 1432
    const/4 v0, 0x1

    .line 1439
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 1435
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1439
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    check-cast p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1448
    const/4 v0, 0x5

    .line 1450
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xb9

    .line 1451
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1453
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1463
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isInstalled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isRemote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "installationToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->getinstallationToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "********"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method
