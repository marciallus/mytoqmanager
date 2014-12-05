.class public Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;
.super Landroid/app/Activity;
.source "CalendarChooserActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CalendarChooserActivity"


# instance fields
.field calendarAccountsUpdatedListener:Landroid/accounts/OnAccountsUpdateListener;

.field calendarChooserDoneButtonListener:Landroid/view/View$OnClickListener;

.field calendarOverFlowImageListener:Landroid/view/View$OnClickListener;

.field private isAnyChangeDoneInCalendarActivity:Z

.field private isCalendarAccountsListUpdated:Z

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAvailableCalendarIds:Ljava/util/HashMap;
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

.field private mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

.field private mCalendarChooserDoneButton:Landroid/widget/LinearLayout;

.field private mCalendarChooserOverFlowImage:Landroid/widget/LinearLayout;

.field public mCalendarListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;",
            ">;"
        }
    .end annotation
.end field

.field public mCalendarListView:Landroid/widget/ListView;

.field private mPopUpWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    .line 61
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListView:Landroid/widget/ListView;

    .line 64
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListAdapter:Landroid/widget/ArrayAdapter;

    .line 67
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->isCalendarAccountsListUpdated:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->isAnyChangeDoneInCalendarActivity:Z

    .line 164
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->calendarOverFlowImageListener:Landroid/view/View$OnClickListener;

    .line 179
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->calendarChooserDoneButtonListener:Landroid/view/View$OnClickListener;

    .line 553
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$5;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->calendarAccountsUpdatedListener:Landroid/accounts/OnAccountsUpdateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->initiateDoneChanges()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->refreshCalendarEvents()V

    return-void
.end method

.method static synthetic access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->isCalendarAccountsListUpdated:Z

    return p1
.end method

.method private getOverFlowImage()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarChooserOverFlowImage:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 94
    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarChooserOverFlowImage:Landroid/widget/LinearLayout;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarChooserOverFlowImage:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private inilializeCalendarSettings()V
    .locals 4

    .prologue
    .line 302
    const v0, 0x7f0900b7

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListView:Landroid/widget/ListView;

    .line 303
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarChooserDoneButton:Landroid/widget/LinearLayout;

    .line 306
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListAdapter:Landroid/widget/ArrayAdapter;

    .line 310
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 316
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->calendarAccountsUpdatedListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    .line 321
    return-void
.end method

.method private initiateDoneChanges()V
    .locals 7

    .prologue
    .line 479
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "calendars_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 482
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 483
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 485
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->setAvailableCalendarIds(Ljava/util/HashMap;)V

    .line 492
    :cond_0
    :try_start_0
    const-string v4, "all_calendar_id"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 494
    .local v3, "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 496
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 498
    const-string v4, "CalendarChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The current calendar list is compared with the calendars from the shared preference"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v3    # "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    :try_start_1
    const-string v4, "CalendarChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " The calendars with all ids and is checked value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v4, "all_calendar_id"

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 524
    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$4;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$4;->start()V

    .line 530
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->finish()V

    .line 531
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 520
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private refreshCalendarEvents()V
    .locals 3

    .prologue
    .line 349
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v0

    .line 350
    .local v0, "calController":Lcom/qualcomm/toq/smartwatch/controller/CalendarController;
    if-eqz v0, :cond_0

    .line 351
    const-string v1, "CalendarChooserActivity"

    const-string v2, "readCalendar() called from CalendarChooserActivity"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget v1, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-nez v1, :cond_2

    .line 354
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendar(Landroid/content/Context;)V

    .line 360
    :cond_0
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaController()Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 361
    const-string v1, "CalendarChooserActivity"

    const-string v2, "storeUpdateAgendaToFile() called from CalendarChooserActivity"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaController()Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->storeUpdateAgendaToFile(Landroid/content/Context;)V

    .line 368
    :cond_1
    return-void

    .line 356
    :cond_2
    sget v1, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 357
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendarVer2(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 329
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 331
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->unbindDrawables(Landroid/view/View;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 334
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 339
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 337
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method

.method private updateCalendarListAdapter()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 189
    iput-boolean v14, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->isCalendarAccountsListUpdated:Z

    .line 193
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v11

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getAvailableCalendars(Landroid/content/Context;)[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 196
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v11

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getAvailableCalendars(Landroid/content/Context;)[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    move-result-object v11

    iput-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    .line 203
    :cond_0
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    if-eqz v11, :cond_2

    .line 205
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v11}, Landroid/widget/ArrayAdapter;->clear()V

    .line 206
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    array-length v11, v11

    if-ge v5, v11, :cond_2

    .line 207
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 208
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->isChecked()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :goto_1
    const-string v11, "CalendarChooserActivity"

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    aget-object v12, v12, v5

    invoke-virtual {v11, v12}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 212
    :cond_1
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    aget-object v12, v11, v5

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    iget-object v13, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v12, v11}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->setChecked(Z)V

    goto :goto_1

    .line 223
    .end local v5    # "i":I
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "calendarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendars:[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    .local v0, "arr$":[Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_3

    aget-object v1, v0, v6

    .line 225
    .local v1, "calendar":Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 228
    .end local v1    # "calendar":Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    :cond_3
    :try_start_0
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 230
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 231
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 233
    .local v10, "str":Ljava/lang/String;
    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 234
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 235
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 240
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Ljava/util/ConcurrentModificationException;
    invoke-virtual {v3}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 242
    const-string v11, "CalendarChooserActivity"

    invoke-virtual {v3}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .end local v3    # "e":Ljava/util/ConcurrentModificationException;
    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 250
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 251
    const/4 v2, 0x0

    .line 255
    :cond_6
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "calendars_pref"

    invoke-virtual {v11, v12, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 258
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 260
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_1
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    if-eqz v11, :cond_7

    .line 261
    const-string v11, "CalendarChooserActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " The calendars with all ids and is checked value"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v11, "all_calendar_id"

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;

    invoke-static {v12}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 270
    :cond_7
    :goto_5
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    return-void

    .line 244
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v3

    .line 245
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const-string v11, "CalendarChooserActivity"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 267
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v9    # "prefs":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v3

    .line 268
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method


# virtual methods
.method public isAnyChangeDoneInCalendarActivity()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->isAnyChangeDoneInCalendarActivity:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 284
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->initiateDoneChanges()V

    .line 285
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->setContentView(I)V

    .line 105
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->inilializeCalendarSettings()V

    .line 107
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->getOverFlowImage()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->calendarOverFlowImageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarChooserDoneButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->calendarChooserDoneButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListView:Landroid/widget/ListView;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->calendarAccountsUpdatedListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 291
    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->unbindDrawables(Landroid/view/View;)V

    .line 292
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 293
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 144
    const-string v0, "CalendarChooserActivity"

    const-string v1, "CalendarChooserActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->isCalendarAccountsListUpdated:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->updateCalendarListAdapter()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 154
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 156
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 160
    const-string v0, "CalendarChooserActivity"

    const-string v1, "CalendarChooserActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 539
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->finish()V

    .line 548
    :cond_1
    return-void
.end method

.method public setAnyChangeDoneInCalendarActivity(Z)V
    .locals 0
    .param p1, "isAnyChangeDoneInCalendarActivity"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->isAnyChangeDoneInCalendarActivity:Z

    .line 87
    return-void
.end method
