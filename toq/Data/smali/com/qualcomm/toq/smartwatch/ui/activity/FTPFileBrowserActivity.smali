.class public Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
.super Landroid/app/Activity;
.source "FTPFileBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;
    }
.end annotation


# static fields
.field public static final PROGRESS_BAR_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FTPFileBrowserActivity"

.field private static conn:Ljavax/obex/ClientSession;

.field public static connectionInProgress:Z


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private browseSessionStarted:Ljava/lang/Boolean;

.field private endTime:J

.field private eventType1:I

.field private fileLength:Ljava/lang/Integer;

.field private folder:Ljava/lang/String;

.field private folderPath:Ljava/lang/String;

.field private ftpUrl:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private header:Ljavax/obex/HeaderSet;

.field private item:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private len:Ljava/lang/Integer;

.field private mDeviceAddr:Ljava/lang/String;

.field private mDirText:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/TextView;

.field private mfileBrowserListView:Landroid/widget/ListView;

.field private op:Ljavax/obex/Operation;

.field out:Ljava/io/DataOutputStream;

.field private pDialog:Landroid/app/ProgressDialog;

.field private pathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressUpdateLen:Ljava/lang/Integer;

.field private startTime:J

.field private timeDiff:J

.field private timeUnit:Ljava/lang/String;

.field private totalBytesTransferred:Ljava/lang/Integer;

.field private viewTemp:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->connectionInProgress:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    .line 60
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mfileBrowserListView:Landroid/widget/ListView;

    .line 61
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDirText:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mProgress:Landroid/widget/TextView;

    .line 64
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 66
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->handler:Landroid/os/Handler;

    .line 67
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->item:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->fileLength:Ljava/lang/Integer;

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->len:Ljava/lang/Integer;

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->progressUpdateLen:Ljava/lang/Integer;

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->totalBytesTransferred:Ljava/lang/Integer;

    .line 76
    iput-wide v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startTime:J

    .line 77
    iput-wide v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->endTime:J

    .line 78
    iput-wide v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->timeDiff:J

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->ftpUrl:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDeviceAddr:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folderPath:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->timeUnit:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I

    .line 86
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->out:Ljava/io/DataOutputStream;

    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseSessionStarted:Ljava/lang/Boolean;

    .line 523
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->loadAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mfileBrowserListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->getFolderPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDirText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folderPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folderPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1484(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folderPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mProgress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I

    return v0
.end method

.method static synthetic access$1602(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I

    return p1
.end method

.method static synthetic access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->item:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;)Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->item:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljavax/obex/Operation;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljavax/obex/Operation;)Ljavax/obex/Operation;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # Ljavax/obex/Operation;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->progressUpdateLen:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->progressUpdateLen:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->getFileFromFtpServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->totalBytesTransferred:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->fileLength:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->timeDiff:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->timeUnit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->deleteFileFromFTPServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseSessionStarted:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->viewTemp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->viewTemp:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startBrowseSession(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->ftpUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseFTPSession(Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized browseFTPSession(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "backup"    # Z

    .prologue
    .line 339
    monitor-enter p0

    const/4 v6, 0x0

    :try_start_0
    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    .line 340
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseSessionStarted:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :try_start_1
    const-string v6, ""

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folder:Ljava/lang/String;

    .line 344
    move-object v4, p1

    .line 345
    .local v4, "serverURL":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->getFolderPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folder:Ljava/lang/String;

    .line 346
    const-string v6, "FTPFileBrowserActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Backup= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    if-eqz p2, :cond_0

    .line 348
    const-string v6, ""

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folder:Ljava/lang/String;

    .line 351
    :cond_0
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;

    invoke-direct {v7, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    const-string v6, "FTPFileBrowserActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serverURL = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v6, "FTPFileBrowserActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PathList"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v6, "FTPFileBrowserActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "folder = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v6, "FTPFileBrowserActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection status =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    if-nez v6, :cond_1

    .line 373
    const-string v6, "FTPFileBrowserActivity"

    const-string v7, "Connection null"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v6

    check-cast v6, Ljavax/obex/ClientSession;

    sput-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    .line 377
    const-string v6, "FTPFileBrowserActivity"

    const-string v7, "Connection Success = "

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/16 v6, 0x10

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    .line 385
    .local v0, "FBUiid":[B
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-interface {v6}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    .line 386
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    const/16 v7, 0x46

    invoke-interface {v6, v7, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 387
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    invoke-interface {v6, v7}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 392
    .end local v0    # "FBUiid":[B
    :cond_1
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-interface {v6}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    .line 393
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folder:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 394
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    const/4 v8, 0x0

    invoke-interface {v6, v7, p2, v8}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    .line 397
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-interface {v6}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    .line 398
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    const/16 v7, 0x42

    const-string v8, "x-obex/folder-listing"

    invoke-interface {v6, v7, v8}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 399
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    invoke-interface {v6, v7}, Ljavax/obex/ClientSession;->get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    .line 402
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 403
    .local v3, "factory1":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 404
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 405
    .local v5, "xpp1":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    invoke-interface {v6}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 406
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    iput v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I

    .line 408
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;

    invoke-direct {v7, p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseSessionStarted:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    .end local v3    # "factory1":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "serverURL":Ljava/lang/String;
    .end local v5    # "xpp1":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    monitor-exit p0

    return-void

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    :try_start_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseSessionStarted:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    :try_start_3
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    if-eqz v6, :cond_2

    .line 471
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    invoke-interface {v6}, Ljavax/obex/Operation;->close()V

    .line 472
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    .line 474
    :cond_2
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    if-eqz v6, :cond_3

    .line 475
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 476
    const/4 v6, 0x0

    sput-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 485
    :cond_3
    :goto_1
    :try_start_4
    const-string v6, "FTPFileBrowserActivity"

    const-string v7, "Exception in browseBTSession"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 488
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 491
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$7;

    invoke-direct {v7, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$7;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 480
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 481
    .local v2, "e1":Ljava/io/IOException;
    const/4 v6, 0x0

    :try_start_5
    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    .line 482
    const/4 v6, 0x0

    sput-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    .line 483
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 378
    :array_0
    .array-data 1
        -0x7t
        -0x14t
        0x7bt
        -0x3ct
        -0x6bt
        0x3ct
        0x11t
        -0x2et
        -0x68t
        0x4et
        0x52t
        0x54t
        0x0t
        -0x24t
        -0x62t
        0x9t
    .end array-data
.end method

.method private deleteFileFromFTPServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 748
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    .line 749
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    if-nez v4, :cond_0

    .line 750
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->ftpUrl:Ljava/lang/String;

    invoke-static {v4}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;)Ljavax/microedition/io/Connection;

    move-result-object v4

    check-cast v4, Ljavax/obex/ClientSession;

    sput-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    .line 751
    const/16 v4, 0x10

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 757
    .local v0, "FBUiid":[B
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-interface {v4}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    .line 758
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    const/16 v5, 0x46

    invoke-interface {v4, v5, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 759
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    invoke-interface {v4, v5}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 760
    const-string v4, "FTPFileBrowserActivity"

    const-string v5, "Connection Success"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .end local v0    # "FBUiid":[B
    :cond_0
    move-object v3, p1

    .line 763
    .local v3, "file":Ljava/lang/String;
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-interface {v4}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    .line 764
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 766
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    if-eqz v4, :cond_1

    .line 767
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    invoke-interface {v4, v5}, Ljavax/obex/ClientSession;->delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 769
    const-string v4, "FTPFileBrowserActivity"

    const-string v5, "File Deleted Successfully"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$13;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$13;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 784
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startBrowseSession(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    .end local v3    # "file":Ljava/lang/String;
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v1

    .line 787
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    if-eqz v4, :cond_2

    .line 789
    :try_start_1
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 795
    :goto_1
    sput-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    .line 797
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 791
    :catch_1
    move-exception v2

    .line 793
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 751
    :array_0
    .array-data 1
        -0x7t
        -0x14t
        0x7bt
        -0x3ct
        -0x6bt
        0x3ct
        0x11t
        -0x2et
        -0x68t
        0x4et
        0x52t
        0x54t
        0x0t
        -0x24t
        -0x62t
        0x9t
    .end array-data
.end method

.method private getFileFromFtpServer(Ljava/lang/String;)V
    .locals 21
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 566
    const/16 v16, 0x0

    .line 567
    .local v16, "op":Ljavax/obex/Operation;
    const/4 v14, 0x0

    .line 568
    .local v14, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 570
    .local v11, "fos":Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->totalBytesTransferred:Ljava/lang/Integer;

    .line 571
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->getFolderPath()Ljava/lang/String;

    move-result-object v10

    .line 572
    .local v10, "folder":Ljava/lang/String;
    const-string v17, "FTPFileBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FolderName= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    move-object/from16 v7, p1

    .line 578
    .local v7, "file":Ljava/lang/String;
    const-string v17, "FTPFileBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Filename= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    sget-object v17, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    if-nez v17, :cond_0

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->ftpUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;)Ljavax/microedition/io/Connection;

    move-result-object v17

    check-cast v17, Ljavax/obex/ClientSession;

    sput-object v17, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    .line 582
    const/16 v17, 0x10

    move/from16 v0, v17

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    .line 588
    .local v3, "FBUiid":[B
    sget-object v17, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-interface/range {v17 .. v17}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v13

    .line 589
    .local v13, "header":Ljavax/obex/HeaderSet;
    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-interface {v13, v0, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 590
    sget-object v17, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 614
    .end local v3    # "FBUiid":[B
    .end local v13    # "header":Ljavax/obex/HeaderSet;
    :cond_0
    move-object/from16 v7, p1

    .line 615
    sget-object v17, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-interface/range {v17 .. v17}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v7}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 617
    sget-object v17, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->header:Ljavax/obex/HeaderSet;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljavax/obex/ClientSession;->get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v16

    .line 618
    invoke-interface/range {v16 .. v16}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 619
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->fileLength:Ljava/lang/Integer;

    .line 620
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->len:Ljava/lang/Integer;

    .line 621
    invoke-interface/range {v16 .. v16}, Ljavax/obex/Operation;->getLength()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 622
    .local v15, "lengthOfFile":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->fileLength:Ljava/lang/Integer;

    .line 623
    const-string v17, "FTPFileBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileLength="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->fileLength:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 626
    new-instance v9, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/PHUB_FTP/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    .local v9, "fileRootDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    .line 629
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 631
    :cond_1
    new-instance v8, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    .local v8, "fileLoc":Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 637
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    :try_start_1
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 639
    .local v4, "b":[B
    :goto_0
    invoke-virtual {v14, v4}, Ljava/io/InputStream;->read([B)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->len:Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-lez v17, :cond_6

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->totalBytesTransferred:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->len:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->totalBytesTransferred:Ljava/lang/Integer;

    .line 641
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->len:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 642
    const-string v17, "FTPFileBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "totalBytesTransferred="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->totalBytesTransferred:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$9;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 702
    .end local v4    # "b":[B
    :catch_0
    move-exception v5

    move-object v11, v12

    .line 703
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "fileLoc":Ljava/io/File;
    .end local v9    # "fileRootDir":Ljava/io/File;
    .end local v10    # "folder":Ljava/lang/String;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "lengthOfFile":Ljava/lang/Long;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    const-string v17, "FTPFileBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$12;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$12;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    if-eqz v11, :cond_2

    .line 721
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 722
    const/4 v11, 0x0

    .line 724
    :cond_2
    if-eqz v14, :cond_3

    .line 725
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 726
    const/4 v14, 0x0

    .line 728
    :cond_3
    if-eqz v16, :cond_4

    .line 729
    invoke-interface/range {v16 .. v16}, Ljavax/obex/Operation;->close()V

    .line 730
    const/16 v16, 0x0

    .line 732
    :cond_4
    sget-object v17, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    if-eqz v17, :cond_5

    .line 733
    sget-object v17, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    sget-object v18, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-interface/range {v18 .. v18}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 734
    sget-object v17, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-interface/range {v17 .. v17}, Ljavax/obex/ClientSession;->close()V

    .line 735
    const/16 v17, 0x0

    sput-object v17, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 743
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-void

    .line 655
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "b":[B
    .restart local v7    # "file":Ljava/lang/String;
    .restart local v8    # "fileLoc":Ljava/io/File;
    .restart local v9    # "fileRootDir":Ljava/io/File;
    .restart local v10    # "folder":Ljava/lang/String;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "lengthOfFile":Ljava/lang/Long;
    :cond_6
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 656
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 657
    invoke-interface/range {v16 .. v16}, Ljavax/obex/Operation;->close()V

    .line 658
    const/16 v16, 0x0

    .line 659
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->endTime:J

    .line 660
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->endTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startTime:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->timeDiff:J

    .line 661
    const-string v17, "sec"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->timeUnit:Ljava/lang/String;

    .line 662
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->timeDiff:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_7

    .line 663
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->endTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startTime:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->timeDiff:J

    .line 664
    const-string v17, "milli-sec"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->timeUnit:Ljava/lang/String;

    .line 666
    :cond_7
    const-string v17, "FTPFileBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File stored in: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$10;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/io/File;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v11, v12

    .line 682
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 684
    .end local v4    # "b":[B
    .end local v8    # "fileLoc":Ljava/io/File;
    .end local v9    # "fileRootDir":Ljava/io/File;
    :cond_8
    :try_start_4
    const-string v17, "FTPFileBrowserActivity"

    const-string v18, "Memory Card Not Detected"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 686
    invoke-interface/range {v16 .. v16}, Ljavax/obex/Operation;->close()V

    .line 687
    const/16 v16, 0x0

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$11;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 702
    .end local v7    # "file":Ljava/lang/String;
    .end local v10    # "folder":Ljava/lang/String;
    .end local v15    # "lengthOfFile":Ljava/lang/Long;
    :catch_1
    move-exception v5

    goto/16 :goto_1

    .line 739
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 740
    .local v6, "e1":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 582
    :array_0
    .array-data 1
        -0x7t
        -0x14t
        0x7bt
        -0x3ct
        -0x6bt
        0x3ct
        0x11t
        -0x2et
        -0x68t
        0x4et
        0x52t
        0x54t
        0x0t
        -0x24t
        -0x62t
        0x9t
    .end array-data
.end method

.method private getFolderPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    const-string v0, ""

    .line 511
    .local v0, "folder":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "folder":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 513
    .restart local v0    # "folder":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private loadAdapter()Landroid/widget/ArrayAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$8;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030038

    const v4, 0x7f0901f9

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$8;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 561
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private setupFTPUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btgoep://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->FTP_UUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";authenticate=false;encrypt=false;master=false;android=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->ftpUrl:Ljava/lang/String;

    .line 957
    return-void
.end method

.method private startBrowseSession(Z)V
    .locals 1
    .param p1, "backup"    # Z

    .prologue
    .line 326
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Z)V

    .line 333
    .local v0, "ftpBrowserThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 334
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "FTPFileBrowserActivity"

    const-string v1, "On Back Pressed called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startBrowseSession(Z)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseSessionStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 189
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 219
    :goto_0
    return v3

    .line 192
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->progressUpdateLen:Ljava/lang/Integer;

    .line 193
    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->showDialog(I)V

    .line 195
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    .local v1, "getFileThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 207
    .end local v1    # "getFileThread":Ljava/lang/Thread;
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    .local v0, "delFileThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x7f09026f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 96
    const-string v0, "FTPFileBrowserActivity"

    const-string v1, "Inside OnCreate  "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "FTPFileBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection status =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->connectionInProgress:Z

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->folder:Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->handler:Landroid/os/Handler;

    .line 104
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->setContentView(I)V

    .line 105
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mfileBrowserListView:Landroid/widget/ListView;

    .line 107
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDirText:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDirText:Landroid/widget/TextView;

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 114
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mProgress:Landroid/widget/TextView;

    .line 117
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_wd_device_address"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDeviceAddr:Ljava/lang/String;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDeviceAddr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDeviceAddr:Ljava/lang/String;

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDeviceAddr:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->setupFTPUrl(Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mfileBrowserListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 167
    const v2, 0x7f0a0067

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    move-object v1, p3

    .line 168
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 171
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    iget v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;->icon:I

    const v3, 0x7f0200d5

    if-ne v2, v3, :cond_0

    .line 172
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a011d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 182
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 183
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0c0000

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 146
    const-string v0, "FTPFileBrowserActivity"

    const-string v1, "onCreateDialogCalled  "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 150
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pDialog:Landroid/app/ProgressDialog;

    const-string v1, "Retrieving file. Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 152
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 153
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 154
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 155
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 156
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->pDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    const/4 v1, 0x0

    sput-boolean v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->connectionInProgress:Z

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    invoke-interface {v1}, Ljavax/obex/Operation;->close()V

    .line 228
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    .line 230
    :cond_0
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_1

    .line 231
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 232
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;

    .line 237
    sput-object v3, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->conn:Ljavax/obex/ClientSession;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->startBrowseSession(Z)V

    .line 142
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 279
    const-string v0, "FTPFileBrowserActivity"

    const-string v1, "FTPFileBrowserActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mfileBrowserListView:Landroid/widget/ListView;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 314
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 320
    const-string v0, "FTPFileBrowserActivity"

    const-string v1, "FTPFileBrowserActivity is Stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method
