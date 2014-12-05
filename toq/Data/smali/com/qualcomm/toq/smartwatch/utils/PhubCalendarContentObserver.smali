.class public Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;
.super Landroid/database/ContentObserver;
.source "PhubCalendarContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver$calendarTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CalendarController"


# instance fields
.field public counter:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "hh"    # Landroid/os/Handler;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 24
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 7
    .param p1, "paramBoolean"    # Z

    .prologue
    const/4 v6, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 28
    const-string v2, "CalendarController"

    const-string v3, "onChange method called"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;->counter:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;->counter:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 32
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;->counter:Ljava/util/Timer;

    .line 34
    :cond_0
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;->counter:Ljava/util/Timer;

    .line 35
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;->counter:Ljava/util/Timer;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver$calendarTask;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver$calendarTask;-><init>(Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 36
    const-string v2, "CalendarController"

    const-string v3, "counter scheduled for 2000 milliseconds"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget v2, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-ne v2, v6, :cond_1

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "contextObj":Landroid/content/Context;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 44
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v0

    .line 45
    .local v0, "calController":Lcom/qualcomm/toq/smartwatch/controller/CalendarController;
    if-eqz v0, :cond_1

    .line 46
    const-string v2, "CalendarController"

    const-string v3, "readCalendar can be called immediately without delay for processing events."

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget v2, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-nez v2, :cond_2

    .line 49
    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendar(Landroid/content/Context;)V

    .line 57
    .end local v0    # "calController":Lcom/qualcomm/toq/smartwatch/controller/CalendarController;
    .end local v1    # "contextObj":Landroid/content/Context;
    :cond_1
    :goto_0
    return-void

    .line 51
    .restart local v0    # "calController":Lcom/qualcomm/toq/smartwatch/controller/CalendarController;
    .restart local v1    # "contextObj":Landroid/content/Context;
    :cond_2
    sget v2, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-ne v2, v6, :cond_1

    .line 52
    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendarVer2(Landroid/content/Context;)V

    goto :goto_0
.end method
