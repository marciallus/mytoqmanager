.class Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;
.super Ljava/lang/Thread;
.source "MusicControlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayThread"
.end annotation


# instance fields
.field private component:Landroid/content/ComponentName;

.field private keyCode:I

.field private pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;Ljava/lang/String;)V
    .locals 1
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1614
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->keyCode:I

    .line 1615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->component:Landroid/content/ComponentName;

    .line 1616
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->pkgName:Ljava/lang/String;

    .line 1617
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;Ljava/lang/String;ILandroid/content/ComponentName;)V
    .locals 0
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "keyCode"    # I
    .param p4, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1608
    iput p3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->keyCode:I

    .line 1609
    iput-object p4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->component:Landroid/content/ComponentName;

    .line 1610
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->pkgName:Ljava/lang/String;

    .line 1611
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1622
    :try_start_0
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils-  Waiting loop runnable component:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1626
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    const/4 v2, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForDTService:Z
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$402(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;Z)Z

    .line 1627
    const-string v1, "com.doubleTwist.androidPlayer.MediaPlaybackService"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1629
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # invokes: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendKeyCodeToDoubleTwist()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$500(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)V

    .line 1640
    :goto_0
    return-void

    .line 1632
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->pkgName:Ljava/lang/String;

    iget v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->keyCode:I

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->waitForActivityForground(Ljava/lang/String;ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1637
    :catch_0
    move-exception v0

    .line 1638
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
