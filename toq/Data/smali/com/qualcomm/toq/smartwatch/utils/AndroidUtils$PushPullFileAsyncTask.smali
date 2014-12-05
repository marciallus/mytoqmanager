.class Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "AndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushPullFileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$1;

    .prologue
    .line 871
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;-><init>(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 884
    aget-object v1, p1, v3

    const-string v2, "###"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "PUSH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->pushFileToWatchInBackground(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 890
    :goto_0
    return-object v1

    .line 887
    :cond_0
    aget-object v1, v0, v3

    const-string v2, "PULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->receiveFileFromWatchInBackground(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 890
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 871
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const-wide/16 v5, 0x0

    .line 896
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 898
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    const-string v0, "AndroidUtils"

    const-string v1, "PUSH/PULL error"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->endTime:J
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$202(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;J)J

    .line 902
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->endTime:J
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$200(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->startTime:J
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$100(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeDiff:J
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$302(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;J)J

    .line 903
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    const-string v1, "sec"

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeUnit:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$402(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 904
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeDiff:J
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->endTime:J
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$200(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->startTime:J
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$100(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeDiff:J
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$302(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;J)J

    .line 906
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    const-string v1, "milli-sec"

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeUnit:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$402(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 909
    :cond_1
    const-string v0, "AndroidUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUSH/PULL Time taken for Transfer is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeDiff:J
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeUnit:Ljava/lang/String;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$400(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeDiff:J
    invoke-static {v0, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$302(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;J)J

    .line 913
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    const-string v1, ""

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->timeUnit:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$402(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 915
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 871
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 876
    const-string v0, "AndroidUtils"

    const-string v1, "PUSH/PULL from ADB started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$PushPullFileAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->startTime:J
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->access$102(Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;J)J

    .line 878
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 879
    return-void
.end method
