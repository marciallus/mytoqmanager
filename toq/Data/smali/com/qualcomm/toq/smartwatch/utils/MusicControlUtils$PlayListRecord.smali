.class public Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;
.super Ljava/lang/Object;
.source "MusicControlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayListRecord"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1793
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;->id:Ljava/lang/String;

    .line 1794
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;->name:Ljava/lang/String;

    .line 1795
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;->name:Ljava/lang/String;

    return-object v0
.end method
