.class public Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver$calendarTask;
.super Ljava/util/TimerTask;
.source "PhubCalendarContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "calendarTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver$calendarTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "contextObj":Landroid/content/Context;
    sget v2, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-nez v2, :cond_0

    .line 67
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v0

    .line 72
    .local v0, "calController":Lcom/qualcomm/toq/smartwatch/controller/CalendarController;
    if-eqz v0, :cond_0

    .line 73
    const-string v2, "CalendarController"

    const-string v3, "calendarTask called after 2000 millisec delay"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget v2, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-nez v2, :cond_2

    .line 76
    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendar(Landroid/content/Context;)V

    .line 84
    .end local v0    # "calController":Lcom/qualcomm/toq/smartwatch/controller/CalendarController;
    :cond_0
    :goto_0
    const-string v2, "CalendarController"

    const-string v3, "PhubCalendarContentObserver onChange() called"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaController()Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    const-string v2, "CalendarController"

    const-string v3, "storeUpdateAgendaToFile() called from PhubCalendarContentObserver"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaController()Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->storeUpdateAgendaToFile(Landroid/content/Context;)V

    .line 94
    :cond_1
    return-void

    .line 78
    .restart local v0    # "calController":Lcom/qualcomm/toq/smartwatch/controller/CalendarController;
    :cond_2
    sget v2, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendarVer2(Landroid/content/Context;)V

    goto :goto_0
.end method
