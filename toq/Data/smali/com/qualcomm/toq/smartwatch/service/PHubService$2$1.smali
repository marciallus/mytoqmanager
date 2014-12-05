.class Lcom/qualcomm/toq/smartwatch/service/PHubService$2$1;
.super Ljava/lang/Object;
.source "PHubService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/service/PHubService$2;

.field final synthetic val$contextObj:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/service/PHubService$2;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 885
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2$1;->this$1:Lcom/qualcomm/toq/smartwatch/service/PHubService$2;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2$1;->val$contextObj:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 888
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2$1;->val$contextObj:Landroid/content/Context;

    const-string v8, "calendars_pref"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 890
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 892
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v7, "all_calendar_id"

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 894
    .local v0, "availableCalendarIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 896
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2$1;->val$contextObj:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getAvailableCalendars(Landroid/content/Context;)[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    move-result-object v1

    .line 900
    .local v1, "availableCalendars":[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    if-eqz v1, :cond_1

    .line 901
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 904
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_1

    .line 905
    aget-object v2, v1, v5

    .line 906
    .local v2, "calendar":Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->setChecked(Z)V

    .line 907
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->isChecked()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 912
    .end local v2    # "calendar":Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    .end local v5    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 914
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    array-length v7, v1

    if-ge v5, v7, :cond_1

    .line 915
    aget-object v2, v1, v5

    .line 916
    .restart local v2    # "calendar":Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->isChecked()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 922
    .end local v2    # "calendar":Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    .end local v5    # "i":I
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->setAvailableCalendarIds(Ljava/util/HashMap;)V

    .line 926
    .end local v1    # "availableCalendars":[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    :cond_2
    const-string v7, "PHubService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " The calendars with all ids and is checked value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v7, "all_calendar_id"

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 939
    .end local v0    # "availableCalendarIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_2
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 941
    sget v7, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-nez v7, :cond_4

    .line 942
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2$1;->val$contextObj:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendar(Landroid/content/Context;)V

    .line 949
    :cond_3
    :goto_3
    return-void

    .line 932
    :catch_0
    move-exception v3

    .line 933
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 936
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 937
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 945
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :cond_4
    sget v7, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-ne v7, v10, :cond_3

    .line 946
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2$1;->val$contextObj:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendarVer2(Landroid/content/Context;)V

    goto :goto_3
.end method
