.class public Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
.super Ljava/lang/Object;
.source "FileTransferStatusLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileTransferStatusLogger"

.field private static handler:Landroid/os/Handler;

.field private static mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;


# instance fields
.field private endpointType:I

.field private lstr:Ljava/lang/String;

.field private mFileTransferStatusAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

.field private mHeading:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadingDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadingTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "endpointType"    # I

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingTemp:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingDetails:Ljava/util/ArrayList;

    .line 31
    iput-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mFileTransferStatusAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    .line 33
    iput-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->lstr:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->setEndpointType(I)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getFileTransferStatusAdapter()Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getFileTransferStatusAdapter()Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mFileTransferStatusAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(I)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    .locals 2
    .param p0, "endpointType"    # I

    .prologue
    .line 52
    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    sput-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    .line 55
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    if-eqz v0, :cond_4

    .line 56
    if-nez p0, :cond_2

    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    aget-object v0, v0, p0

    if-nez v0, :cond_2

    .line 58
    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;-><init>(I)V

    aput-object v1, v0, p0

    .line 59
    const-string v0, "FileTransferStatusLogger"

    const-string v1, "WD Logger is null. Initiated new Logger."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    aget-object v0, v0, p0

    .line 73
    :goto_1
    return-object v0

    .line 61
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    aget-object v0, v0, p0

    if-nez v0, :cond_3

    .line 63
    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;-><init>(I)V

    aput-object v1, v0, p0

    .line 64
    const-string v0, "FileTransferStatusLogger"

    const-string v1, "EP-L Logger is null. Initiated new Logger."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mInstance:[Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;-><init>(I)V

    aput-object v1, v0, p0

    .line 69
    const-string v0, "FileTransferStatusLogger"

    const-string v1, "EP-R Logger is null. Initiated new Logger."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized setFileTransferStatusAdapter(Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;)V
    .locals 1
    .param p1, "fileTransferStatusAdapter"    # Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mFileTransferStatusAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addHeading(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v1, "Failed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Success"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bytes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingTemp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingTemp:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingTemp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getFileTransferStatusAdapter()Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 113
    const-string v1, "FileTransferStatusLogger"

    const-string v2, "Inside add heading mFileTransferStatusAdapter  not null...Ready to post"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "FileTransferStatusLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 118
    sget-object v1, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;

    invoke-direct {v2, p0, p1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$1;-><init>(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_2
    :goto_1
    return-void

    .line 102
    :cond_3
    const-string v1, "Sending"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingTemp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_4
    const-string v1, "EPMessage:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingTemp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_5
    const-string v1, "Failed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Success"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "bytes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    :cond_7
    const-string v1, "Sending"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 160
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    :cond_8
    const-string v1, "EPMessage:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "timeAndDate":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeStamp: started on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->addHeadingDetails(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public addHeadingDetails(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingTemp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 182
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 186
    .local v0, "updateIdx":I
    if-ltz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->lstr:Ljava/lang/String;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->lstr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->lstr:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingDetails:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->lstr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearHeaderList()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingDetails:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getFileTransferStatusAdapter()Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->updateUI()V

    goto :goto_0
.end method

.method public getEndpointType()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->endpointType:I

    return v0
.end method

.method public getHeading()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeadingDetails()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeadingDetails:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 229
    sput-object v1, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->handler:Landroid/os/Handler;

    .line 233
    :cond_0
    invoke-direct {p0, v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->setFileTransferStatusAdapter(Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;)V

    .line 235
    return-void
.end method

.method public setEndpointType(I)V
    .locals 0
    .param p1, "endpointType"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->endpointType:I

    .line 243
    return-void
.end method

.method public setFileTransferAdapter(Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;Landroid/os/Handler;)V
    .locals 2
    .param p1, "mFileTransferStatusAdapter"    # Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mFileTransferStatusAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    .line 79
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mFileTransferStatusAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeading()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->setList(Ljava/util/ArrayList;)V

    .line 80
    sput-object p2, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->handler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method public setHeading(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "mHeading":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->mHeading:Ljava/util/ArrayList;

    .line 89
    return-void
.end method

.method public updateUI()V
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger$2;-><init>(Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    :cond_0
    return-void
.end method
