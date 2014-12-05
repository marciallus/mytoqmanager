.class public Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;
.super Ljava/lang/Object;
.source "FTPFileBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public file:Ljava/lang/String;

.field public icon:I

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;->file:Ljava/lang/String;

    .line 529
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;->icon:I

    .line 530
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;->file:Ljava/lang/String;

    return-object v0
.end method
