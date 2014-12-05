.class Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient$1;
.super Ljava/lang/Thread;
.source "TFTPFiletransferClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->sendFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient$1;->this$0:Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

    iput-object p2, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient$1;->this$0:Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

    iget-object v1, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient$1;->val$fileName:Ljava/lang/String;

    # invokes: Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->sendFileThreadUsingTFTP(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->access$000(Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
