.class Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;
.super Ljava/lang/Object;
.source "BusAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/BusAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthListenerInternal"
.end annotation


# static fields
.field private static final CERT_CHAIN:I = 0x4

.field private static final EXPIRATION:I = 0x20

.field private static final LOGON_ENTRY:I = 0x10

.field private static final NEW_PASSWORD:I = 0x1001

.field private static final ONE_TIME_PWD:I = 0x2001

.field private static final PASSWORD:I = 0x1

.field private static final PRIVATE_KEY:I = 0x8

.field private static final USER_NAME:I = 0x2


# instance fields
.field private authListener:Lorg/alljoyn/bus/AuthListener;

.field final synthetic this$0:Lorg/alljoyn/bus/BusAttachment;

.field private violationListener:Lorg/alljoyn/bus/SecurityViolationListener;


# direct methods
.method private constructor <init>(Lorg/alljoyn/bus/BusAttachment;)V
    .locals 1

    .prologue
    .line 597
    iput-object p1, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->this$0:Lorg/alljoyn/bus/BusAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->authListener:Lorg/alljoyn/bus/AuthListener;

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/bus/BusAttachment$1;)V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;-><init>(Lorg/alljoyn/bus/BusAttachment;)V

    return-void
.end method


# virtual methods
.method public authListenerSet()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->authListener:Lorg/alljoyn/bus/AuthListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public authenticationComplete(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->authListener:Lorg/alljoyn/bus/AuthListener;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->authListener:Lorg/alljoyn/bus/AuthListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/alljoyn/bus/AuthListener;->completed(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 684
    :cond_0
    return-void
.end method

.method public requestCredentials(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/alljoyn/bus/AuthListener$Credentials;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 625
    iget-object v2, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->authListener:Lorg/alljoyn/bus/AuthListener;

    if-nez v2, :cond_0

    .line 626
    new-instance v0, Lorg/alljoyn/bus/BusException;

    const-string v1, "No registered application AuthListener"

    invoke-direct {v0, v1}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_0
    new-instance v6, Lorg/alljoyn/bus/AuthListener$Credentials;

    invoke-direct {v6}, Lorg/alljoyn/bus/AuthListener$Credentials;-><init>()V

    .line 630
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 631
    and-int/lit8 v2, p5, 0x1

    if-ne v2, v0, :cond_1

    .line 632
    and-int/lit16 v2, p5, 0x1001

    const/16 v4, 0x1001

    if-ne v2, v4, :cond_6

    move v2, v0

    .line 633
    :goto_0
    and-int/lit16 v4, p5, 0x2001

    const/16 v5, 0x2001

    if-ne v4, v5, :cond_7

    .line 634
    :goto_1
    new-instance v4, Lorg/alljoyn/bus/AuthListener$PasswordRequest;

    invoke-direct {v4, v6, v2, v0}, Lorg/alljoyn/bus/AuthListener$PasswordRequest;-><init>(Lorg/alljoyn/bus/AuthListener$Credentials;ZZ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_1
    and-int/lit8 v0, p5, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 637
    new-instance v0, Lorg/alljoyn/bus/AuthListener$UserNameRequest;

    invoke-direct {v0, v6}, Lorg/alljoyn/bus/AuthListener$UserNameRequest;-><init>(Lorg/alljoyn/bus/AuthListener$Credentials;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_2
    and-int/lit8 v0, p5, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 640
    new-instance v0, Lorg/alljoyn/bus/AuthListener$CertificateRequest;

    invoke-direct {v0, v6}, Lorg/alljoyn/bus/AuthListener$CertificateRequest;-><init>(Lorg/alljoyn/bus/AuthListener$Credentials;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_3
    and-int/lit8 v0, p5, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    .line 643
    new-instance v0, Lorg/alljoyn/bus/AuthListener$PrivateKeyRequest;

    invoke-direct {v0, v6}, Lorg/alljoyn/bus/AuthListener$PrivateKeyRequest;-><init>(Lorg/alljoyn/bus/AuthListener$Credentials;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_4
    and-int/lit8 v0, p5, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_5

    .line 646
    new-instance v0, Lorg/alljoyn/bus/AuthListener$LogonEntryRequest;

    invoke-direct {v0, v6}, Lorg/alljoyn/bus/AuthListener$LogonEntryRequest;-><init>(Lorg/alljoyn/bus/AuthListener$Credentials;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_5
    new-instance v0, Lorg/alljoyn/bus/AuthListener$ExpirationRequest;

    invoke-direct {v0, v6}, Lorg/alljoyn/bus/AuthListener$ExpirationRequest;-><init>(Lorg/alljoyn/bus/AuthListener$Credentials;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->authListener:Lorg/alljoyn/bus/AuthListener;

    new-array v1, v1, [Lorg/alljoyn/bus/AuthListener$AuthRequest;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/alljoyn/bus/AuthListener$AuthRequest;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/alljoyn/bus/AuthListener;->requested(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lorg/alljoyn/bus/AuthListener$AuthRequest;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v6

    .line 657
    :goto_2
    return-object v0

    :cond_6
    move v2, v1

    .line 632
    goto :goto_0

    :cond_7
    move v0, v1

    .line 633
    goto :goto_1

    .line 657
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public securityViolation(Lorg/alljoyn/bus/Status;)V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->violationListener:Lorg/alljoyn/bus/SecurityViolationListener;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->violationListener:Lorg/alljoyn/bus/SecurityViolationListener;

    invoke-interface {v0, p1}, Lorg/alljoyn/bus/SecurityViolationListener;->violated(Lorg/alljoyn/bus/Status;)V

    .line 678
    :cond_0
    return-void
.end method

.method public setAuthListener(Lorg/alljoyn/bus/AuthListener;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->authListener:Lorg/alljoyn/bus/AuthListener;

    .line 613
    return-void
.end method

.method public setSecurityViolationListener(Lorg/alljoyn/bus/SecurityViolationListener;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->violationListener:Lorg/alljoyn/bus/SecurityViolationListener;

    .line 621
    return-void
.end method

.method public verifyCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 662
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->authListener:Lorg/alljoyn/bus/AuthListener;

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lorg/alljoyn/bus/BusException;

    const-string v1, "No registered application AuthListener"

    invoke-direct {v0, v1}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/bus/BusAttachment$AuthListenerInternal;->authListener:Lorg/alljoyn/bus/AuthListener;

    if-nez p3, :cond_1

    const-string v4, ""

    :goto_0
    const/4 v1, 0x1

    new-array v5, v1, [Lorg/alljoyn/bus/AuthListener$AuthRequest;

    new-instance v1, Lorg/alljoyn/bus/AuthListener$VerifyRequest;

    invoke-direct {v1, p4}, Lorg/alljoyn/bus/AuthListener$VerifyRequest;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v3

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lorg/alljoyn/bus/AuthListener;->requested(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lorg/alljoyn/bus/AuthListener$AuthRequest;)Z

    move-result v0

    return v0

    :cond_1
    move-object v4, p3

    goto :goto_0
.end method
