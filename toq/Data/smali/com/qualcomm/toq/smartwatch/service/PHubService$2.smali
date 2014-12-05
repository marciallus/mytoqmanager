.class Lcom/qualcomm/toq/smartwatch/service/PHubService$2;
.super Ljava/lang/Thread;
.source "PHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/service/PHubService;->startFactoryObjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/service/PHubService;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 784
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v19, v0

    # invokes: Lcom/qualcomm/toq/smartwatch/service/PHubService;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$300(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v19

    # setter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$102(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/base/factory/ConnectionFactory;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$400(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "app_pref"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 790
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v18, "appUpgrade"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 791
    .local v11, "isAppUpgrade":Z
    if-eqz v11, :cond_3

    .line 792
    const-string v18, "PHubService"

    const-string v19, "App got upgrade "

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 794
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v18, "appUpgrade"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 795
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 798
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->deleteStoreFiles()V

    .line 800
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v8

    .line 802
    .local v8, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 804
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAllDestinationPath()[Ljava/lang/String;

    move-result-object v6

    .line 806
    .local v6, "destPaths":[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 808
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_3

    .line 810
    aget-object v16, v6, v9

    .line 811
    .local v16, "temp":Ljava/lang/String;
    const-string v18, "PHubService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Dest Path at index "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    if-eqz v16, :cond_1

    const-string v18, "stock"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "ClockThree"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 817
    :cond_0
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->deleteFMSEntry(Ljava/lang/String;)Z

    move-result v12

    .line 819
    .local v12, "isSuccess":Z
    const-string v18, "PHubService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Deleting Dest Path at index "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Status: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    .end local v12    # "isSuccess":Z
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 827
    .end local v9    # "i":I
    .end local v16    # "temp":Ljava/lang/String;
    :cond_2
    const-string v18, "PHubService"

    const-string v19, "appUpgrade is true, Dest Paths is NULL"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .end local v6    # "destPaths":[Ljava/lang/String;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # invokes: Lcom/qualcomm/toq/smartwatch/service/PHubService;->checkforAmbientUpgrade()V
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$500(Lcom/qualcomm/toq/smartwatch/service/PHubService;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/service/PHubService;->handler:Landroid/os/Handler;

    .line 836
    const-string v18, "PHubService"

    const-string v19, "Contact ContentObserver registered"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->contactContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$600(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    move-result-object v18

    if-nez v18, :cond_4

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    new-instance v19, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;-><init>(Landroid/os/Handler;)V

    # setter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->contactContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;
    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$602(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;)Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    .line 840
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$700(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v21, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->contactContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;
    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$600(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->callLogContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$800(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    move-result-object v18

    if-nez v18, :cond_5

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    new-instance v19, Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;-><init>(Landroid/os/Handler;)V

    # setter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->callLogContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;
    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$802(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;)Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    .line 847
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$900(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v21, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->callLogContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;
    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$800(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->calendarContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1000(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    move-result-object v18

    if-nez v18, :cond_6

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    new-instance v19, Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;-><init>(Landroid/os/Handler;)V

    # setter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->calendarContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;
    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1002(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;)Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    .line 858
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "alljoyn_notification_settings_pref"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 860
    .local v4, "allJoynPrefs":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_7

    .line 861
    const-string v18, "alljoyn_notification_settings_toggle_key"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 862
    const-string v18, "alljoyn_notification_settings_toggle_key"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 864
    .local v10, "isAlljoynSettingsOn":Z
    if-eqz v10, :cond_7

    .line 865
    const-string v18, "PHubService"

    const-string v19, "Alljoyn is started"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->startAllJoyn()V

    .line 871
    .end local v10    # "isAlljoynSettingsOn":Z
    :cond_7
    const/4 v15, 0x0

    .line 872
    .local v15, "reminderUri":Landroid/net/Uri;
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    .line 873
    const-string v18, "content://com.android.calendar/reminders"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 878
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1200(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v20, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->calendarContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;
    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1000(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 883
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1300(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;

    move-result-object v5

    .line 885
    .local v5, "contextObj":Landroid/content/Context;
    new-instance v14, Lcom/qualcomm/toq/smartwatch/service/PHubService$2$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5}, Lcom/qualcomm/toq/smartwatch/service/PHubService$2$1;-><init>(Lcom/qualcomm/toq/smartwatch/service/PHubService$2;Landroid/content/Context;)V

    .line 951
    .local v14, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->handler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 953
    .end local v5    # "contextObj":Landroid/content/Context;
    .end local v14    # "r":Ljava/lang/Runnable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->smsContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1400(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;

    move-result-object v18

    if-nez v18, :cond_9

    .line 954
    const-string v18, "PHubService"

    const-string v19, "Initializing smsContentObserver"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    new-instance v19, Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;-><init>(Landroid/os/Handler;)V

    # setter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->smsContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;
    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1402(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;)Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;

    .line 957
    :cond_9
    const-string v18, "content://mms-sms/conversations"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 958
    .local v17, "uri":Landroid/net/Uri;
    const-string v18, "PHubService"

    const-string v19, "registering smsContentObserver"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v18, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1500(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-object/from16 v20, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->smsContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;
    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1400(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 964
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 965
    return-void

    .line 876
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_a
    const-string v18, "content://calendar/reminders"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    goto/16 :goto_1
.end method
