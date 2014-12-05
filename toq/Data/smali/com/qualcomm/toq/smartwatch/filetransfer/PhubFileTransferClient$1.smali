.class Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient$1;
.super Ljava/lang/Thread;
.source "PhubFileTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->sendFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient$1;->this$0:Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient$1;->this$0:Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient$1;->val$fileName:Ljava/lang/String;

    # invokes: Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->sendFileThread(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->access$000(Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method
