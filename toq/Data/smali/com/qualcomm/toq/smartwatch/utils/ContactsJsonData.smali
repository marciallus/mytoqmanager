.class public Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;
.super Ljava/lang/Object;
.source "ContactsJsonData.java"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mSingleRecord:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getmSingleRecord()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;->mSingleRecord:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setmDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDisplayName"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;->mDisplayName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setmSingleRecord(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "mSingleRecord"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;->mSingleRecord:Lorg/json/JSONObject;

    .line 26
    return-void
.end method
