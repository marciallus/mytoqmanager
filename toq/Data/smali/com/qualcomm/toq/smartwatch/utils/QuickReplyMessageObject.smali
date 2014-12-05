.class public Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;
.super Ljava/lang/Object;
.source "QuickReplyMessageObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4329c0f2a6015c46L


# instance fields
.field private defaultMessage:Z

.field private quickReplyMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "defaultMessage"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->quickReplyMessage:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->defaultMessage:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getQRMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->quickReplyMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->defaultMessage:Z

    return v0
.end method
