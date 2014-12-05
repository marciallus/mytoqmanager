.class Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;
.super Ljava/lang/Object;
.source "FileTransferStatusLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->addHeading(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    iput-object p2, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 121
    const-string v1, "FileTransferStatusLogger"

    const-string v2, "Inside Run"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->val$str:Ljava/lang/String;

    const-string v2, "Failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->val$str:Ljava/lang/String;

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->val$str:Ljava/lang/String;

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    # getter for: Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->access$000(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    # getter for: Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->access$000(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    # getter for: Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->access$000(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    # getter for: Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->access$000(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->val$str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    # invokes: Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getFileTransferStatusAdapter()Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->access$100(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    # invokes: Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getFileTransferStatusAdapter()Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->access$100(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_2
    return-void

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->val$str:Ljava/lang/String;

    const-string v2, "Sending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    # getter for: Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->access$000(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->val$str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->val$str:Ljava/lang/String;

    const-string v2, "EPMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    # getter for: Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->access$000(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->val$str:Ljava/lang/String;

    iget-object v3, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->val$str:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "timeAndDate":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;->this$0:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeStamp: started on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->addHeadingDetails(Ljava/lang/String;)V

    goto :goto_0
.end method
