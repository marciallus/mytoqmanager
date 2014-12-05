.class public Lcom/qualcomm/toq/smartwatch/controller/CalendarController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    }
.end annotation


# static fields
.field private static final ATTENDEE_STATUS_DECLINED:I = 0x2

.field private static final CALENDAR_ALERT_ALARMTIME:Ljava/lang/String; = "alarmTime"

.field private static final CALENDAR_ALERT_BEGIN:Ljava/lang/String; = "begin"

.field private static final CALENDAR_ALERT_END:Ljava/lang/String; = "end"

.field private static final CALENDAR_ALERT_EVENTID:Ljava/lang/String; = "event_id"

.field private static final CALENDAR_ALERT_ID:Ljava/lang/String; = "_id"

.field private static final CALENDAR_ALERT_NOTIFYTIME:Ljava/lang/String; = "notifyTime"

.field private static final CALENDAR_ALERT_STATE:Ljava/lang/String; = "state"

.field public static DEFAULT_EVENTS:I = 0x0

.field private static final DISMISSED:I = 0x2

.field private static final EVENT_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final EVENT_LOCATION:Ljava/lang/String; = "eventLocation"

.field private static final EVENT_SELFATTENDEESTATUS:Ljava/lang/String; = "selfAttendeeStatus"

.field private static final EVENT_TITLE:Ljava/lang/String; = "title"

.field private static final FIRED:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SCHEDULED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CalendarController"

.field public static final USE_FIRED_EVENTS:I = 0x1

.field public static final USE_SCHEDULED_EVENTS:I

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;


# instance fields
.field private CONTENT_URI:Landroid/net/Uri;

.field private EVENT_URI:Landroid/net/Uri;

.field public am:Landroid/app/AlarmManager;

.field public availableCalendarIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private nextCalendarEventObjectsForPopup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "begin"

    aput-object v2, v0, v1

    const-string v1, "end"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->PROJECTION:[Ljava/lang/String;

    .line 79
    sput v3, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->am:Landroid/app/AlarmManager;

    .line 44
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->availableCalendarIds:Ljava/util/HashMap;

    .line 45
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->nextCalendarEventObjectsForPopup:Ljava/util/List;

    .line 51
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->context:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    .line 55
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->EVENT_URI:Landroid/net/Uri;

    .line 83
    return-void
.end method

.method public static getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;
    .locals 2

    .prologue
    .line 86
    const-class v1, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    .line 90
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->initializeURI()V

    .line 92
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getProcessesedEventsSet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 686
    .local v2, "processedFiredEventsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 687
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 688
    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 690
    .local v0, "appSharedPrefs":Landroid/content/SharedPreferences;
    const-string v3, "processedEventsSet"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 693
    .end local v0    # "appSharedPrefs":Landroid/content/SharedPreferences;
    :cond_0
    return-object v2
.end method

.method private initializeURI()V
    .locals 2

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 97
    const-string v0, "content://com.android.calendar/calendar_alerts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->EVENT_URI:Landroid/net/Uri;

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "content://calendar/calendar_alerts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    .line 102
    const-string v0, "content://calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->EVENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private declared-synchronized registerAnAlarm(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "nextCalendarEventObectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_1

    .line 143
    :cond_0
    const-string v5, "CalendarController"

    const-string v6, "registerAnAlarm(): ConnectionFactory context is null"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :cond_1
    :try_start_1
    const-string v5, "CalendarController"

    const-string v6, "registerAnAlarm() called"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CancelAlarm(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->setCalendarObject(Ljava/util/List;)V

    .line 153
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;

    .line 155
    .local v4, "obj":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 156
    .local v3, "eventStartCalendar":Ljava/util/Calendar;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventStartDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 159
    .local v2, "eventReminderCalendar":Ljava/util/Calendar;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getReminderTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 163
    .local v0, "delayedTime":J
    const-string v5, "CalendarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delay Calendar Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->SetAlarm(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    .end local v0    # "delayedTime":J
    .end local v2    # "eventReminderCalendar":Ljava/util/Calendar;
    .end local v3    # "eventStartCalendar":Ljava/util/Calendar;
    .end local v4    # "obj":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1013
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1015
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CancelAlarm(Landroid/content/Context;)V

    .line 1018
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    .line 1019
    return-void
.end method

.method private storeProcessesedEventsSet(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "processedFiredEventsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 675
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 676
    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 678
    .local v0, "appSharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 679
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "processedEventsSet"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 680
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 682
    .end local v0    # "appSharedPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized CancelAlarm(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    const-string v3, "CalendarController"

    const-string v4, "CancelAlarm() called"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->APPLICATION_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".smartwatch.calendarcontroller.popup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 135
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 136
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 131
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "sender":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized SetAlarm(Landroid/content/Context;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delay"    # J

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    const-string v3, "CalendarController"

    const-string v4, "SetAlarm() called"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 124
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->APPLICATION_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".smartwatch.calendarcontroller.popup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "i":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 127
    .local v2, "pi":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 122
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public createButtonWidgets(Ljava/lang/String;Ljava/lang/String;IIIIZZLjava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I
    .param p7, "show"    # Z
    .param p8, "dismissEvent"    # Z
    .param p9, "eventData"    # Ljava/lang/String;

    .prologue
    .line 805
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 807
    .local v2, "jsonWidget":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "id"

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 808
    const-string v5, "type"

    const-string v6, "bitmap_button"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 809
    const-string v5, "image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    const-string v5, "show"

    invoke-virtual {v2, v5, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 812
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 813
    .local v4, "position":Lorg/json/JSONArray;
    invoke-virtual {v4, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 814
    invoke-virtual {v4, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 815
    invoke-virtual {v4, p5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 816
    invoke-virtual {v4, p6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 817
    const-string v5, "position"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 819
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 820
    .local v3, "onclick":Lorg/json/JSONObject;
    const-string v5, "dismiss"

    move/from16 v0, p8

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 821
    const-string v5, "event_data"

    move-object/from16 v0, p9

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    const-string v5, "onclick"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CreateButtonWidget : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v2    # "jsonWidget":Lorg/json/JSONObject;
    .end local v3    # "onclick":Lorg/json/JSONObject;
    .end local v4    # "position":Lorg/json/JSONArray;
    :goto_0
    return-object v2

    .line 826
    .restart local v2    # "jsonWidget":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 829
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createIconWidgets(Ljava/lang/String;Ljava/lang/String;IIII)Lorg/json/JSONObject;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I

    .prologue
    .line 899
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 901
    .local v1, "jsonWidget":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 902
    const-string v3, "type"

    const-string v4, "icon"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 903
    const-string v3, "image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 904
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 905
    .local v2, "position":Lorg/json/JSONArray;
    invoke-virtual {v2, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 906
    invoke-virtual {v2, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 907
    invoke-virtual {v2, p5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 908
    invoke-virtual {v2, p6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 910
    const-string v3, "position"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 911
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createIconWidgets: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    .end local v1    # "jsonWidget":Lorg/json/JSONObject;
    .end local v2    # "position":Lorg/json/JSONArray;
    :goto_0
    return-object v1

    .line 914
    .restart local v1    # "jsonWidget":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 917
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createPopUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 40
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 699
    new-instance v33, Lorg/json/JSONObject;

    invoke-direct/range {v33 .. v33}, Lorg/json/JSONObject;-><init>()V

    .line 701
    .local v33, "createPopUp":Lorg/json/JSONObject;
    new-instance v38, Lorg/json/JSONObject;

    invoke-direct/range {v38 .. v38}, Lorg/json/JSONObject;-><init>()V

    .line 703
    .local v38, "vibe":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "vibe"

    const/4 v3, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 704
    const-string v2, "alerts"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    :try_start_1
    new-instance v36, Lorg/json/JSONArray;

    invoke-direct/range {v36 .. v36}, Lorg/json/JSONArray;-><init>()V

    .line 714
    .local v36, "jsonWidget":Lorg/json/JSONArray;
    const/16 v39, 0x120

    .line 718
    .local v39, "watchWidth":I
    const/16 v5, 0x17

    .local v5, "calenderX1":I
    const/16 v6, 0xe

    .line 719
    .local v6, "calenderY1":I
    const-string v3, "anonymous"

    const-string v4, "notificationicon_calendar_ND.img"

    const/16 v7, 0x59

    const/16 v8, 0x4c

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->createIconWidgets(Ljava/lang/String;Ljava/lang/String;IIII)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 731
    const/16 v10, 0x60

    .local v10, "timeX1":I
    const/16 v11, 0x21

    .local v11, "timeY1":I
    const/16 v15, 0x14

    .line 732
    .local v15, "timeFontSize":I
    add-int/lit16 v12, v10, 0xc0

    .line 733
    .local v12, "timeX2":I
    const/16 v13, 0x42

    .line 735
    .local v13, "timeY2":I
    const-string v8, "time"

    const-string v14, "QCOM_SB_17_20"

    const-string v16, "semibold"

    const-string v17, "#000000"

    const/16 v18, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v7 .. v18}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->createTextWidgets(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 748
    const/16 v37, 0x70

    .line 750
    .local v37, "titleY1":I
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 752
    const/16 v19, 0x17

    .local v19, "locationX1":I
    const/16 v20, 0x53

    .line 754
    .local v20, "locationY1":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 757
    :cond_0
    const-string v17, "location"

    const/16 v21, 0x109

    const/16 v22, 0x88

    const-string v23, "QCOM_SB_21_24"

    const/16 v24, 0x18

    const-string v25, "semibold"

    const-string v26, "#0000ff"

    const/16 v27, 0x1

    move-object/from16 v16, p0

    move-object/from16 v18, p2

    invoke-virtual/range {v16 .. v27}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->createTextWidgets(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move/from16 v25, v37

    .line 779
    .end local v19    # "locationX1":I
    .end local v20    # "locationY1":I
    .end local v37    # "titleY1":I
    .local v25, "titleY1":I
    :goto_1
    const-string v22, "title1"

    const/16 v24, 0x17

    const/16 v26, 0x10d

    const/16 v27, 0x100

    const-string v28, "QCOM_24_35"

    const/16 v29, 0x23

    const-string v30, "regular"

    const-string v31, "#000000"

    const/16 v32, 0x1

    move-object/from16 v21, p0

    move-object/from16 v23, p1

    invoke-virtual/range {v21 .. v32}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->createTextWidgets(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 792
    const-string v2, "widgets"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v2, "CalendarController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Calendar: createPopUP Payload : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 799
    .end local v5    # "calenderX1":I
    .end local v6    # "calenderY1":I
    .end local v10    # "timeX1":I
    .end local v11    # "timeY1":I
    .end local v12    # "timeX2":I
    .end local v13    # "timeY2":I
    .end local v15    # "timeFontSize":I
    .end local v25    # "titleY1":I
    .end local v33    # "createPopUp":Lorg/json/JSONObject;
    .end local v36    # "jsonWidget":Lorg/json/JSONArray;
    .end local v39    # "watchWidth":I
    :goto_2
    return-object v33

    .line 707
    .restart local v33    # "createPopUp":Lorg/json/JSONObject;
    :catch_0
    move-exception v35

    .line 708
    .local v35, "e1":Lorg/json/JSONException;
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 775
    .end local v35    # "e1":Lorg/json/JSONException;
    .restart local v5    # "calenderX1":I
    .restart local v6    # "calenderY1":I
    .restart local v10    # "timeX1":I
    .restart local v11    # "timeY1":I
    .restart local v12    # "timeX2":I
    .restart local v13    # "timeY2":I
    .restart local v15    # "timeFontSize":I
    .restart local v36    # "jsonWidget":Lorg/json/JSONArray;
    .restart local v37    # "titleY1":I
    .restart local v39    # "watchWidth":I
    :cond_1
    const/16 v25, 0x53

    .end local v37    # "titleY1":I
    .restart local v25    # "titleY1":I
    goto :goto_1

    .line 796
    .end local v5    # "calenderX1":I
    .end local v6    # "calenderY1":I
    .end local v10    # "timeX1":I
    .end local v11    # "timeY1":I
    .end local v12    # "timeX2":I
    .end local v13    # "timeY2":I
    .end local v15    # "timeFontSize":I
    .end local v25    # "titleY1":I
    .end local v36    # "jsonWidget":Lorg/json/JSONArray;
    .end local v39    # "watchWidth":I
    :catch_1
    move-exception v34

    .line 797
    .local v34, "e":Lorg/json/JSONException;
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONException;->printStackTrace()V

    .line 799
    const/16 v33, 0x0

    goto :goto_2
.end method

.method public createTextWidgets(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I
    .param p7, "fontName"    # Ljava/lang/String;
    .param p8, "fontSize"    # I
    .param p9, "weight"    # Ljava/lang/String;
    .param p10, "fontColor"    # Ljava/lang/String;
    .param p11, "show"    # Z

    .prologue
    .line 868
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 870
    .local v3, "jsonWidget":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "id"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 871
    const-string v5, "type"

    const-string v6, "text"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    const-string v5, "text"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 873
    const-string v5, "show"

    move/from16 v0, p11

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 874
    const-string v5, "color"

    move-object/from16 v0, p10

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 876
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 877
    .local v4, "position":Lorg/json/JSONArray;
    invoke-virtual {v4, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 878
    invoke-virtual {v4, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 879
    invoke-virtual {v4, p5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 880
    invoke-virtual {v4, p6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 881
    const-string v5, "position"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 883
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 884
    .local v2, "font":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v2, v5, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 885
    const-string v5, "size"

    move/from16 v0, p8

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 886
    const-string v5, "weight"

    move-object/from16 v0, p9

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    const-string v5, "font"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createTextWidgets : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .end local v2    # "font":Lorg/json/JSONObject;
    .end local v3    # "jsonWidget":Lorg/json/JSONObject;
    .end local v4    # "position":Lorg/json/JSONArray;
    :goto_0
    return-object v3

    .line 891
    .restart local v3    # "jsonWidget":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 892
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 894
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createTextWidgets(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Z)Lorg/json/JSONObject;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I
    .param p7, "fontName"    # Ljava/lang/String;
    .param p8, "fontSize"    # I
    .param p9, "fontColor"    # Ljava/lang/String;
    .param p10, "show"    # Z

    .prologue
    .line 836
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 838
    .local v3, "jsonWidget":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "id"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    const-string v5, "type"

    const-string v6, "text"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    const-string v5, "text"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 841
    const-string v5, "show"

    move/from16 v0, p10

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 842
    const-string v5, "color"

    move-object/from16 v0, p9

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 845
    .local v4, "position":Lorg/json/JSONArray;
    invoke-virtual {v4, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 846
    invoke-virtual {v4, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 847
    invoke-virtual {v4, p5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 848
    invoke-virtual {v4, p6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 849
    const-string v5, "position"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 851
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 852
    .local v2, "font":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v2, v5, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 853
    const-string v5, "size"

    move/from16 v0, p8

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 854
    const-string v5, "font"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 855
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createTextWidgets : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    .end local v2    # "font":Lorg/json/JSONObject;
    .end local v3    # "jsonWidget":Lorg/json/JSONObject;
    .end local v4    # "position":Lorg/json/JSONArray;
    :goto_0
    return-object v3

    .line 858
    .restart local v3    # "jsonWidget":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 859
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 861
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAvailableCalendarIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->availableCalendarIds:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->availableCalendarIds:Ljava/util/HashMap;

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->availableCalendarIds:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAvailableCalendars(Landroid/content/Context;)[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1114
    const-string v2, "CalendarController"

    const-string v7, "getAvailableCalendars"

    invoke-static {v2, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const/4 v3, 0x0

    .line 1118
    .local v3, "calendarsURI":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1120
    .local v4, "projection":[Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "700"

    aput-object v7, v6, v2

    .line 1122
    .local v6, "selectionArgs":[Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xa

    if-le v2, v7, :cond_4

    .line 1123
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v19, v2

    const/4 v2, 0x1

    const-string v7, "calendar_displayName"

    aput-object v7, v19, v2

    const/4 v2, 0x2

    const-string v7, "account_name"

    aput-object v7, v19, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    .end local v4    # "projection":[Ljava/lang/String;
    .local v19, "projection":[Ljava/lang/String;
    :try_start_1
    const-string v5, "calendar_access_level = ?"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .local v5, "calendarAccessLevel":Ljava/lang/String;
    move-object/from16 v4, v19

    .line 1134
    .end local v19    # "projection":[Ljava/lang/String;
    .restart local v4    # "projection":[Ljava/lang/String;
    :goto_0
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-lt v2, v7, :cond_5

    .line 1135
    const-string v2, "content://com.android.calendar/calendars"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1141
    :goto_1
    const/16 v18, 0x0

    .line 1142
    .local v18, "managedCursor":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    .line 1143
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1151
    :cond_0
    if-eqz v18, :cond_6

    .line 1152
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v11, v2, [Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    .line 1153
    .local v11, "calendars":[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1157
    const/4 v12, 0x0

    .line 1158
    .local v12, "cnt":I
    const/4 v2, 0x2

    aget-object v2, v4, v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1159
    .local v15, "colIndex_calendarName":I
    const/4 v2, 0x1

    aget-object v2, v4, v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1160
    .local v13, "colIndex_calendarDisplayName":I
    const/4 v2, 0x0

    aget-object v2, v4, v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1162
    .local v14, "colIndex_calendarID":I
    :cond_1
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1163
    .local v10, "calendarName":Ljava/lang/String;
    const-string v2, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "calendarName = "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1165
    .local v9, "calendarId":Ljava/lang/String;
    const-string v2, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "calendarId = "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1167
    .local v8, "calendarDisplayName":Ljava/lang/String;
    const-string v2, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "calendarDisplayName = "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const/16 v17, 0x0

    .line 1177
    .local v17, "isSelected":Z
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getSelectedCalendarIds()Ljava/util/ArrayList;

    move-result-object v20

    .line 1178
    .local v20, "selectedCalendarIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 1179
    new-instance v2, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v2, v0, v8, v9, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;-><init>(Lcom/qualcomm/toq/smartwatch/controller/CalendarController;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v2, v11, v12

    .line 1182
    add-int/lit8 v12, v12, 0x1

    .line 1184
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1186
    .end local v8    # "calendarDisplayName":Ljava/lang/String;
    .end local v9    # "calendarId":Ljava/lang/String;
    .end local v10    # "calendarName":Ljava/lang/String;
    .end local v12    # "cnt":I
    .end local v13    # "colIndex_calendarDisplayName":I
    .end local v14    # "colIndex_calendarID":I
    .end local v15    # "colIndex_calendarName":I
    .end local v17    # "isSelected":Z
    .end local v20    # "selectedCalendarIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1187
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1188
    const/16 v18, 0x0

    .line 1200
    .end local v5    # "calendarAccessLevel":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "calendars":[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    .end local v18    # "managedCursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    return-object v11

    .line 1129
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v19, v2

    const/4 v2, 0x1

    const-string v7, "displayName"

    aput-object v7, v19, v2

    const/4 v2, 0x2

    const-string v7, "_sync_account"

    aput-object v7, v19, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1131
    .end local v4    # "projection":[Ljava/lang/String;
    .restart local v19    # "projection":[Ljava/lang/String;
    :try_start_3
    const-string v5, "access_level = ?"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v5    # "calendarAccessLevel":Ljava/lang/String;
    move-object/from16 v4, v19

    .end local v19    # "projection":[Ljava/lang/String;
    .restart local v4    # "projection":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1138
    :cond_5
    :try_start_4
    const-string v2, "content://calendar/calendars"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    goto/16 :goto_1

    .line 1193
    .restart local v18    # "managedCursor":Landroid/database/Cursor;
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 1196
    .end local v5    # "calendarAccessLevel":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v18    # "managedCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 1197
    .local v16, "e":Ljava/lang/Exception;
    :goto_3
    const-string v2, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception in getAvailableCalendars(): "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1200
    const/4 v11, 0x0

    goto :goto_2

    .line 1196
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v19    # "projection":[Ljava/lang/String;
    :catch_1
    move-exception v16

    move-object/from16 v4, v19

    .end local v19    # "projection":[Ljava/lang/String;
    .restart local v4    # "projection":[Ljava/lang/String;
    goto :goto_3
.end method

.method public declared-synchronized getCalendarObject()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->nextCalendarEventObjectsForPopup:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSelectedCalendarIds()Ljava/util/ArrayList;
    .locals 12
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
    .line 1249
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1250
    .local v3, "calendars":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    .local v8, "selectedCalendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1254
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "calendars_pref"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1259
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "all_calendar_id"

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    .line 1262
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1263
    .local v1, "calendarEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1264
    .local v2, "calendarId":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1265
    .local v6, "isCheckedCalendar":Z
    if-eqz v6, :cond_1

    .line 1266
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1271
    .end local v1    # "calendarEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "calendarId":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isCheckedCalendar":Z
    :catch_0
    move-exception v4

    .line 1272
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "CalendarController"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v8
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 9
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 924
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleConnHandlerMessage called, command = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    packed-switch p2, :pswitch_data_0

    .line 1010
    .end local p3    # "payload":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 928
    .restart local p3    # "payload":Ljava/lang/Object;
    :pswitch_0
    const-string v6, "CalendarController"

    const-string v7, "Received CalendarCreatePopupResp from WD"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received CalendarCreatePopupResp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 935
    :pswitch_1
    const-string v6, "CalendarController"

    const-string v7, "Received CalendarUpdatePopupResp from WD"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received CalendarUpdatePopupResp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 942
    :pswitch_2
    const-string v6, "CalendarController"

    const-string v7, "Received CalendarPopupInd from WD"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const/4 v1, 0x0

    .line 945
    .local v1, "dismissed":Z
    const/4 v5, 0x0

    .line 946
    .local v5, "widgetId":Ljava/lang/String;
    const/4 v4, -0x1

    .line 947
    .local v4, "popupID":I
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received CalendarPopupInd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :try_start_0
    move-object v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    const-string v7, "popup_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 951
    move-object v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    const-string v7, "widget_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 952
    move-object v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    const-string v7, "widget_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 954
    :cond_1
    check-cast p3, Lorg/json/JSONObject;

    .end local p3    # "payload":Ljava/lang/Object;
    const-string v6, "dismissed"

    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 955
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "widgetId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dismissed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 964
    :goto_1
    if-eqz v5, :cond_3

    .line 965
    :try_start_1
    const-string v6, "dismiss_button"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 966
    const-string v6, "CalendarController"

    const-string v7, "Calendar Event Popup Dismissed"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v6, "CalendarController"

    const-string v7, "Dismissing Calendar Event Pop up"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7, v4}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->unMapPopup(II)V

    .line 973
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->context:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 974
    .local v3, "nm":Landroid/app/NotificationManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 997
    .end local v3    # "nm":Landroid/app/NotificationManager;
    :catch_0
    move-exception v2

    .line 998
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "CalendarController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 958
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 959
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in JSON Parsing: CalendarPopupInd, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 976
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v6, "snooze_button"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 977
    const-string v6, "CalendarController"

    const-string v7, "Calendar Event Popup Dismissed"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7, v4}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->unMapPopup(II)V

    .line 981
    const-string v6, "CalendarController"

    const-string v7, "Dismissing Calendar Event Pop up"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 986
    :cond_3
    const-string v6, "CalendarController"

    const-string v7, "widgetId is null"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    .line 989
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar Event Dismiss PopupID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7, v4}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->unMapPopup(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1003
    .end local v1    # "dismissed":Z
    .end local v4    # "popupID":I
    .end local v5    # "widgetId":Ljava/lang/String;
    .restart local p3    # "payload":Ljava/lang/Object;
    :pswitch_3
    const-string v6, "CalendarController"

    const-string v7, "Received CalendarDestroyPopupResp from WD"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received CalendarDestroyPopupResp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 925
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized readCalendar(Landroid/content/Context;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    const-string v7, "CalendarController"

    const-string v9, "readCalendar() called"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    const/4 v12, 0x0

    .line 172
    .local v12, "calendarAlertsCursor":Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 174
    .local v22, "eventCursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 176
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    if-eqz v7, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->EVENT_URI:Landroid/net/Uri;

    if-eqz v7, :cond_15

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 183
    .local v29, "printCursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v29, :cond_2

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 184
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "title"

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Event ID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "event_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " State "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "state"

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Record Id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v29    # "printCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v21

    .line 408
    .local v21, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in readCalendar"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    if-eqz v12, :cond_0

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 413
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 414
    const/4 v12, 0x0

    .line 417
    :cond_0
    if-eqz v22, :cond_1

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 418
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 419
    const/16 v22, 0x0

    .line 422
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 194
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v29    # "printCursor":Landroid/database/Cursor;
    :cond_2
    if-eqz v29, :cond_4

    :try_start_4
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 195
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 196
    const/16 v29, 0x0

    .line 204
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "alarmTime ASC, begin ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 210
    const/16 v31, -0x1

    .line 211
    .local v31, "state":I
    const-wide/16 v13, -0x1

    .line 212
    .local v13, "calendarEventTimeForSearch":J
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v27, "nextCalendarEventObjectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    if-eqz v12, :cond_3

    .line 215
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calendarAlertsCursor count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_3
    :goto_3
    if-eqz v12, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 222
    const-string v7, "state"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 224
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readCalendar() the CALENDAR_ALERT_STATE = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-nez v31, :cond_3

    .line 231
    new-instance v11, Ljava/util/Date;

    const-string v7, "begin"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v11, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 232
    .local v11, "begin":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    const-string v7, "end"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 233
    .local v8, "end":Ljava/util/Date;
    const-string v7, "event_id"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 235
    .local v24, "eventID":Ljava/lang/Long;
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calendar event ID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/16 v32, 0x0

    .line 238
    .local v32, "title":Ljava/lang/String;
    const/16 v25, 0x0

    .line 239
    .local v25, "eventLocation":Ljava/lang/String;
    const/16 v23, 0x0

    .line 241
    .local v23, "eventDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->EVENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 249
    if-eqz v22, :cond_16

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_16

    .line 250
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 251
    const-string v7, "calendar_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, "calendar_id":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getSelectedCalendarIds()Ljava/util/ArrayList;

    move-result-object v15

    .line 257
    .local v15, "calendarIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_7

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 259
    if-eqz v22, :cond_3

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 260
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 261
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 199
    .end local v8    # "end":Ljava/util/Date;
    .end local v11    # "begin":Ljava/util/Date;
    .end local v13    # "calendarEventTimeForSearch":J
    .end local v15    # "calendarIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "calendar_id":Ljava/lang/String;
    .end local v23    # "eventDescription":Ljava/lang/String;
    .end local v24    # "eventID":Ljava/lang/Long;
    .end local v25    # "eventLocation":Ljava/lang/String;
    .end local v27    # "nextCalendarEventObjectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    .end local v31    # "state":I
    .end local v32    # "title":Ljava/lang/String;
    :cond_4
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "printCursor is closed. So What to do here !!! with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 412
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v29    # "printCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v7

    if-eqz v12, :cond_5

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_5

    .line 413
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 414
    const/4 v12, 0x0

    .line 417
    :cond_5
    if-eqz v22, :cond_6

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_6

    .line 418
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 419
    const/16 v22, 0x0

    :cond_6
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 170
    .end local v12    # "calendarAlertsCursor":Landroid/database/Cursor;
    .end local v22    # "eventCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 265
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v8    # "end":Ljava/util/Date;
    .restart local v11    # "begin":Ljava/util/Date;
    .restart local v12    # "calendarAlertsCursor":Landroid/database/Cursor;
    .restart local v13    # "calendarEventTimeForSearch":J
    .restart local v15    # "calendarIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "calendar_id":Ljava/lang/String;
    .restart local v22    # "eventCursor":Landroid/database/Cursor;
    .restart local v23    # "eventDescription":Ljava/lang/String;
    .restart local v24    # "eventID":Ljava/lang/Long;
    .restart local v25    # "eventLocation":Ljava/lang/String;
    .restart local v27    # "nextCalendarEventObjectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    .restart local v29    # "printCursor":Landroid/database/Cursor;
    .restart local v31    # "state":I
    .restart local v32    # "title":Ljava/lang/String;
    :cond_7
    :try_start_6
    const-string v7, "title"

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 266
    .end local v32    # "title":Ljava/lang/String;
    .local v4, "title":Ljava/lang/String;
    const-string v7, "eventLocation"

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 267
    .end local v25    # "eventLocation":Ljava/lang/String;
    .local v5, "eventLocation":Ljava/lang/String;
    const-string v7, "description"

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 269
    .end local v23    # "eventDescription":Ljava/lang/String;
    .local v6, "eventDescription":Ljava/lang/String;
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "title:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "eventLocation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "eventDescription:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-nez v5, :cond_8

    .line 274
    const-string v5, ""

    .line 276
    :cond_8
    if-nez v4, :cond_9

    .line 277
    const-string v4, "Title Not Mentioned"

    .line 280
    :cond_9
    if-nez v6, :cond_a

    .line 281
    const-string v6, ""

    .line 286
    .end local v15    # "calendarIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "calendar_id":Ljava/lang/String;
    :cond_a
    :goto_4
    if-eqz v22, :cond_b

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_b

    .line 287
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 288
    const/16 v22, 0x0

    .line 291
    :cond_b
    const-string v7, "event_id"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 292
    .local v30, "recordID":I
    const-string v7, "alarmTime"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 294
    .local v19, "dateValue":J
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calendarEventTimeForSearch = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-wide/16 v9, -0x1

    cmp-long v7, v13, v9

    if-nez v7, :cond_e

    .line 298
    move-wide/from16 v13, v19

    .line 306
    :cond_c
    new-instance v3, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v7, v11

    invoke-direct/range {v3 .. v10}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;J)V

    .line 313
    .local v3, "obj":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->setReminderTime(J)V

    .line 315
    const/16 v17, 0x0

    .line 316
    .local v17, "check":Z
    if-eqz v27, :cond_13

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_13

    .line 318
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;

    .line 319
    .local v28, "objCheck":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 321
    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventID()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventID()J

    move-result-wide v33

    cmp-long v7, v9, v33

    if-nez v7, :cond_d

    .line 322
    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventStartDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventStartDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v33

    cmp-long v7, v9, v33

    if-nez v7, :cond_d

    .line 324
    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventEndDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventEndDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v33

    cmp-long v7, v9, v33

    if-nez v7, :cond_d

    .line 326
    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getReminderTime()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getReminderTime()J

    move-result-wide v33

    cmp-long v7, v9, v33

    if-nez v7, :cond_d

    .line 327
    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 329
    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 331
    const/16 v17, 0x1

    goto :goto_5

    .line 300
    .end local v3    # "obj":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    .end local v17    # "check":Z
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v28    # "objCheck":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    :cond_e
    cmp-long v7, v13, v19

    if-eqz v7, :cond_c

    .line 301
    const-string v7, "CalendarController"

    const-string v9, "CALENDAR_ALERT_ALARMTIME differed so break the while loop"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "eventLocation":Ljava/lang/String;
    .end local v6    # "eventDescription":Ljava/lang/String;
    .end local v8    # "end":Ljava/util/Date;
    .end local v11    # "begin":Ljava/util/Date;
    .end local v19    # "dateValue":J
    .end local v24    # "eventID":Ljava/lang/Long;
    .end local v30    # "recordID":I
    :cond_f
    if-eqz v27, :cond_14

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->registerAnAlarm(Ljava/util/List;)V

    .line 395
    :goto_6
    if-eqz v12, :cond_10

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_10

    .line 397
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 398
    const/4 v12, 0x0

    .line 412
    .end local v13    # "calendarEventTimeForSearch":J
    .end local v27    # "nextCalendarEventObjectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    .end local v29    # "printCursor":Landroid/database/Cursor;
    .end local v31    # "state":I
    :cond_10
    :goto_7
    if-eqz v12, :cond_11

    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_11

    .line 413
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 414
    const/4 v12, 0x0

    .line 417
    :cond_11
    if-eqz v22, :cond_1

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 418
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 419
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 340
    .restart local v3    # "obj":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "eventLocation":Ljava/lang/String;
    .restart local v6    # "eventDescription":Ljava/lang/String;
    .restart local v8    # "end":Ljava/util/Date;
    .restart local v11    # "begin":Ljava/util/Date;
    .restart local v13    # "calendarEventTimeForSearch":J
    .restart local v17    # "check":Z
    .restart local v19    # "dateValue":J
    .restart local v24    # "eventID":Ljava/lang/Long;
    .restart local v26    # "i$":Ljava/util/Iterator;
    .restart local v27    # "nextCalendarEventObjectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    .restart local v29    # "printCursor":Landroid/database/Cursor;
    .restart local v30    # "recordID":I
    .restart local v31    # "state":I
    :cond_12
    if-eqz v17, :cond_13

    .line 341
    :try_start_8
    const-string v7, "CalendarController"

    const-string v9, "Same Event clash in Calendar!!!!"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 346
    .end local v26    # "i$":Ljava/util/Iterator;
    :cond_13
    const-string v7, "CalendarController"

    const-string v9, "Add entry in nextCalendarEventObjectsForPopup"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v7, "PopUpController"

    const-string v9, "************ALARM SET For these values********************"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v7, "PopUpController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Title:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v7, "PopUpController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Begin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventStartDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v7, "PopUpController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "End:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventEndDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v7, "PopUpController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reminder Date:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getReminderTime()J

    move-result-wide v33

    move-wide/from16 v0, v33

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v7, "PopUpController"

    const-string v9, "******************************************************"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Alarm Time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    move-wide/from16 v0, v19

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v7, "CalendarController"

    const-string v9, "**********************************"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Event Details:\nTitle->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nDescription->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nStartDate->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nEnd Date->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nState->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nRecordId->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v18, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, v18

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 372
    .local v18, "currentDate":Ljava/util/Date;
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current Date:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v7, "CalendarController"

    const-string v9, "************ALARM SET For these values********************"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Title:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Begin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventStartDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "End:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventEndDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v7, "CalendarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reminder Date:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getReminderTime()J

    move-result-wide v33

    move-wide/from16 v0, v33

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v7, "CalendarController"

    const-string v9, "******************************************************"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 390
    .end local v3    # "obj":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "eventLocation":Ljava/lang/String;
    .end local v6    # "eventDescription":Ljava/lang/String;
    .end local v8    # "end":Ljava/util/Date;
    .end local v11    # "begin":Ljava/util/Date;
    .end local v17    # "check":Z
    .end local v18    # "currentDate":Ljava/util/Date;
    .end local v19    # "dateValue":J
    .end local v24    # "eventID":Ljava/lang/Long;
    .end local v30    # "recordID":I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CancelAlarm(Landroid/content/Context;)V

    .line 391
    const-string v7, "CalendarController"

    const-string v9, "nextCalendarEventObectsForPopup is null or empty need to cancel any alarms"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 402
    .end local v13    # "calendarEventTimeForSearch":J
    .end local v27    # "nextCalendarEventObjectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    .end local v29    # "printCursor":Landroid/database/Cursor;
    .end local v31    # "state":I
    :cond_15
    const-string v7, "CalendarController"

    const-string v9, "Either Content URI or Event URI is null in readCalendar"

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_7

    .restart local v8    # "end":Ljava/util/Date;
    .restart local v11    # "begin":Ljava/util/Date;
    .restart local v13    # "calendarEventTimeForSearch":J
    .restart local v23    # "eventDescription":Ljava/lang/String;
    .restart local v24    # "eventID":Ljava/lang/Long;
    .restart local v25    # "eventLocation":Ljava/lang/String;
    .restart local v27    # "nextCalendarEventObjectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    .restart local v29    # "printCursor":Landroid/database/Cursor;
    .restart local v31    # "state":I
    .restart local v32    # "title":Ljava/lang/String;
    :cond_16
    move-object/from16 v6, v23

    .end local v23    # "eventDescription":Ljava/lang/String;
    .restart local v6    # "eventDescription":Ljava/lang/String;
    move-object/from16 v5, v25

    .end local v25    # "eventLocation":Ljava/lang/String;
    .restart local v5    # "eventLocation":Ljava/lang/String;
    move-object/from16 v4, v32

    .end local v32    # "title":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public declared-synchronized readCalendarVer2(Landroid/content/Context;)V
    .locals 37
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    const-string v10, "CalendarController"

    const-string v11, "readCalendarVer2() called"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    .line 671
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 431
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 432
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->EVENT_URI:Landroid/net/Uri;

    if-eqz v10, :cond_e

    .line 436
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 437
    .local v23, "firedEventsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 445
    .local v12, "calendarAlertsCursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 447
    const-string v10, "state"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 448
    .local v32, "state":I
    const/4 v10, 0x1

    move/from16 v0, v32

    if-ne v0, v10, :cond_2

    .line 449
    const-string v10, "event_id"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 450
    .local v21, "eventID":Ljava/lang/Long;
    const-string v10, "_id"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 451
    .local v25, "id":Ljava/lang/Long;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v21    # "eventID":Ljava/lang/Long;
    .end local v25    # "id":Ljava/lang/Long;
    :cond_2
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "title"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, " Event ID "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "event_id"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, " State "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "state"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, " Record Id "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "_id"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 667
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    .end local v12    # "calendarAlertsCursor":Landroid/database/Cursor;
    .end local v23    # "firedEventsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v32    # "state":I
    :catch_0
    move-exception v18

    .line 668
    .local v18, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 669
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Exception in readCalendar"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 425
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 464
    .restart local v3    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v12    # "calendarAlertsCursor":Landroid/database/Cursor;
    .restart local v23    # "firedEventsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    if-eqz v12, :cond_0

    .line 466
    const/4 v10, -0x1

    :try_start_4
    invoke-interface {v12, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v26

    .line 467
    .local v26, "isMoved":Z
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Done fired events list preparation and moving cursor to first. status: "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getProcessesedEventsSet()Ljava/util/Set;

    move-result-object v30

    .line 483
    .local v30, "processedFiredEventsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "FiredEventsSet: "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "\nprocessedFiredEventsSet: "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 490
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->clear()V

    .line 491
    const/16 v23, 0x0

    .line 493
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "After retainAll: processedFiredEvents: "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/16 v32, -0x1

    .line 497
    .restart local v32    # "state":I
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v28, "nextCalendarEventObjectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "calendarAlertsCursor count = "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v34

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_4
    :goto_2
    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 505
    const-string v10, "event_id"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 506
    .restart local v21    # "eventID":Ljava/lang/Long;
    const-string v10, "_id"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 507
    .restart local v25    # "id":Ljava/lang/Long;
    const-string v10, "state"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 509
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "readCalendar() the eventID: "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "   CALENDAR_ALERT_STATE = "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v10, 0x1

    move/from16 v0, v32

    if-ne v0, v10, :cond_4

    .line 516
    const/16 v27, 0x0

    .line 517
    .local v27, "isProcessed":Z
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 518
    .local v29, "processedEventID":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 521
    const/16 v27, 0x1

    .line 525
    .end local v29    # "processedEventID":Ljava/lang/String;
    :cond_6
    if-nez v27, :cond_4

    .line 530
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Processing Calendar event ID = "

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/16 v33, 0x0

    .line 533
    .local v33, "title":Ljava/lang/String;
    const/16 v22, 0x0

    .line 534
    .local v22, "eventLocation":Ljava/lang/String;
    const/16 v20, 0x0

    .line 536
    .local v20, "eventDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->EVENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, ""

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 544
    .local v19, "eventCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_f

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_f

    .line 545
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 546
    const-string v10, "calendar_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 547
    .local v14, "calendar_id":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getSelectedCalendarIds()Ljava/util/ArrayList;

    move-result-object v13

    .line 548
    .local v13, "calendarIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 550
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_4

    .line 552
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 556
    :cond_7
    const-string v10, "title"

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 557
    .end local v33    # "title":Ljava/lang/String;
    .local v5, "title":Ljava/lang/String;
    const-string v10, "eventLocation"

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 558
    .end local v22    # "eventLocation":Ljava/lang/String;
    .local v6, "eventLocation":Ljava/lang/String;
    const-string v10, "description"

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 560
    .end local v20    # "eventDescription":Ljava/lang/String;
    .local v7, "eventDescription":Ljava/lang/String;
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "title:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "eventLocation:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "eventDescription:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-nez v5, :cond_8

    .line 565
    const-string v5, "Title Not Mentioned"

    .line 567
    :cond_8
    if-nez v6, :cond_9

    .line 568
    const-string v6, ""

    .line 570
    :cond_9
    if-nez v7, :cond_a

    .line 571
    const-string v7, ""

    .line 576
    .end local v13    # "calendarIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "calendar_id":Ljava/lang/String;
    :cond_a
    :goto_3
    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_b

    .line 577
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 578
    const/16 v19, 0x0

    .line 581
    :cond_b
    new-instance v8, Ljava/util/Date;

    const-string v10, "begin"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 582
    .local v8, "begin":Ljava/util/Date;
    new-instance v9, Ljava/util/Date;

    const-string v10, "end"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 583
    .local v9, "end":Ljava/util/Date;
    const-string v10, "event_id"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 584
    .local v31, "recordID":I
    const-string v10, "alarmTime"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 586
    .local v16, "dateValue":J
    new-instance v4, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct/range {v4 .. v11}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;J)V

    .line 593
    .local v4, "obj":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->setReminderTime(J)V

    .line 595
    const-string v10, "CalendarController"

    const-string v11, "Add entry in nextCalendarEventObjectsForPopup"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v30

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    const-string v10, "PopUpController"

    const-string v11, "************ALARM SET For these values********************"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v10, "PopUpController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Title:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventTitle()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v10, "PopUpController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Begin:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventStartDate()Ljava/util/Date;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v10, "PopUpController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "End:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventEndDate()Ljava/util/Date;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v10, "PopUpController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Reminder Date:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v34, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getReminderTime()J

    move-result-wide v35

    invoke-direct/range {v34 .. v36}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v10, "PopUpController"

    const-string v11, "******************************************************"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Alarm Time:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v34, Ljava/util/Date;

    move-object/from16 v0, v34

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v10, "CalendarController"

    const-string v11, "**********************************"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Event Details:\nTitle->"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "\nDescription->"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "\nStartDate->"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "\nEnd Date->"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "\nState->"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v34, "\nRecordId->"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance v15, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v15, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 627
    .local v15, "currentDate":Ljava/util/Date;
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Current Date:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v15}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v10, "CalendarController"

    const-string v11, "************ALARM SET For these values********************"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Title:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventTitle()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Begin:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventStartDate()Ljava/util/Date;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "End:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventEndDate()Ljava/util/Date;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v10, "CalendarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Reminder Date:"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v34, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getReminderTime()J

    move-result-wide v35

    invoke-direct/range {v34 .. v36}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v10, "CalendarController"

    const-string v11, "******************************************************"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 642
    .end local v4    # "obj":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "eventLocation":Ljava/lang/String;
    .end local v7    # "eventDescription":Ljava/lang/String;
    .end local v8    # "begin":Ljava/util/Date;
    .end local v9    # "end":Ljava/util/Date;
    .end local v15    # "currentDate":Ljava/util/Date;
    .end local v16    # "dateValue":J
    .end local v19    # "eventCursor":Landroid/database/Cursor;
    .end local v21    # "eventID":Ljava/lang/Long;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "id":Ljava/lang/Long;
    .end local v27    # "isProcessed":Z
    .end local v31    # "recordID":I
    :cond_c
    if-eqz v28, :cond_d

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 644
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->registerAnAlarm(Ljava/util/List;)V

    .line 645
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->storeProcessesedEventsSet(Ljava/util/Set;)V

    .line 653
    :goto_4
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 655
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 648
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CancelAlarm(Landroid/content/Context;)V

    .line 649
    const-string v10, "CalendarController"

    const-string v11, "nextCalendarEventObectsForPopup is null or empty need to cancel any alarms"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 662
    .end local v12    # "calendarAlertsCursor":Landroid/database/Cursor;
    .end local v23    # "firedEventsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "isMoved":Z
    .end local v28    # "nextCalendarEventObjectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    .end local v30    # "processedFiredEventsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v32    # "state":I
    :cond_e
    const-string v10, "CalendarController"

    const-string v11, "Either Content URI or Event URI is null in readCalendar"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .restart local v12    # "calendarAlertsCursor":Landroid/database/Cursor;
    .restart local v19    # "eventCursor":Landroid/database/Cursor;
    .restart local v20    # "eventDescription":Ljava/lang/String;
    .restart local v21    # "eventID":Ljava/lang/Long;
    .restart local v22    # "eventLocation":Ljava/lang/String;
    .restart local v23    # "firedEventsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v25    # "id":Ljava/lang/Long;
    .restart local v26    # "isMoved":Z
    .restart local v27    # "isProcessed":Z
    .restart local v28    # "nextCalendarEventObjectsForPopup":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    .restart local v30    # "processedFiredEventsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v32    # "state":I
    .restart local v33    # "title":Ljava/lang/String;
    :cond_f
    move-object/from16 v7, v20

    .end local v20    # "eventDescription":Ljava/lang/String;
    .restart local v7    # "eventDescription":Ljava/lang/String;
    move-object/from16 v6, v22

    .end local v22    # "eventLocation":Ljava/lang/String;
    .restart local v6    # "eventLocation":Ljava/lang/String;
    move-object/from16 v5, v33

    .end local v33    # "title":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public setAvailableCalendarIds(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1243
    .local p1, "availableCalendarIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->availableCalendarIds:Ljava/util/HashMap;

    .line 1244
    return-void
.end method

.method public declared-synchronized setCalendarObject(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "popupData":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->nextCalendarEventObjectsForPopup:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->nextCalendarEventObjectsForPopup:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->nextCalendarEventObjectsForPopup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_0
    :try_start_4
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->nextCalendarEventObjectsForPopup:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public updateState()V
    .locals 20

    .prologue
    .line 1023
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    if-eqz v2, :cond_8

    .line 1024
    const-string v7, "(state=? OR state=?) AND alarmTime<="

    .line 1031
    .local v7, "ACTIVE_ALERTS_SELECTION":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 1035
    .local v5, "ACTIVE_ALERTS_SELECTION_ARGS":[Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1038
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1042
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1043
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "begin DESC, end DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1050
    .local v8, "alertCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1052
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1054
    .local v9, "alertId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1056
    .local v11, "alertUri":Landroid/net/Uri;
    const-string v2, "selfAttendeeStatus"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1057
    .local v18, "status":I
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    const/4 v14, 0x1

    .line 1058
    .local v14, "declined":Z
    :goto_1
    const-string v2, "state"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1059
    .local v17, "state":I
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1060
    .local v19, "values":Landroid/content/ContentValues;
    const/16 v16, -0x1

    .line 1062
    .local v16, "newState":I
    if-nez v14, :cond_6

    .line 1065
    if-nez v17, :cond_1

    .line 1066
    const/16 v16, 0x1

    .line 1076
    const-string v2, "receivedTime"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1083
    :cond_1
    :goto_2
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    .line 1084
    const-string v2, "state"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    move/from16 v17, v16

    .line 1087
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 1090
    const-string v2, "notifyTime"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1092
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1093
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v1, v11, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1107
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "ACTIVE_ALERTS_SELECTION_ARGS":[Ljava/lang/String;
    .end local v7    # "ACTIVE_ALERTS_SELECTION":Ljava/lang/String;
    .end local v8    # "alertCursor":Landroid/database/Cursor;
    .end local v9    # "alertId":J
    .end local v11    # "alertUri":Landroid/net/Uri;
    .end local v12    # "currentTime":J
    .end local v14    # "declined":Z
    .end local v16    # "newState":I
    .end local v17    # "state":I
    .end local v18    # "status":I
    .end local v19    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 1108
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1109
    const-string v2, "CalendarController"

    const-string v3, "Exception in updateState"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    return-void

    .line 1057
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v5    # "ACTIVE_ALERTS_SELECTION_ARGS":[Ljava/lang/String;
    .restart local v7    # "ACTIVE_ALERTS_SELECTION":Ljava/lang/String;
    .restart local v8    # "alertCursor":Landroid/database/Cursor;
    .restart local v9    # "alertId":J
    .restart local v11    # "alertUri":Landroid/net/Uri;
    .restart local v12    # "currentTime":J
    .restart local v18    # "status":I
    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    .line 1080
    .restart local v14    # "declined":Z
    .restart local v16    # "newState":I
    .restart local v17    # "state":I
    .restart local v19    # "values":Landroid/content/ContentValues;
    :cond_6
    const/16 v16, 0x2

    goto :goto_2

    .line 1096
    .end local v9    # "alertId":J
    .end local v11    # "alertUri":Landroid/net/Uri;
    .end local v14    # "declined":Z
    .end local v16    # "newState":I
    .end local v17    # "state":I
    .end local v18    # "status":I
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_7
    if-eqz v8, :cond_4

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1097
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1103
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "ACTIVE_ALERTS_SELECTION_ARGS":[Ljava/lang/String;
    .end local v7    # "ACTIVE_ALERTS_SELECTION":Ljava/lang/String;
    .end local v8    # "alertCursor":Landroid/database/Cursor;
    .end local v12    # "currentTime":J
    :cond_8
    const-string v2, "CalendarController"

    const-string v3, "CONTENT_URI is null in updateState"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
