.class public Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "DemoAllJoynNotificationController.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
.implements Lorg/alljoyn/ns/NotificationReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AllJoynNotificationController"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;


# instance fields
.field private mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

.field private mResponseMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mResponseMap:Ljava/util/HashMap;

    .line 176
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    .line 178
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mResponseMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getController()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    .line 184
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    return-object v0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 473
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    .line 474
    return-void
.end method


# virtual methods
.method public createButtonWidgets(Ljava/lang/String;Ljava/lang/String;IIIIZZLjava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I
    .param p7, "show"    # Z
    .param p8, "dismissEvent"    # Z
    .param p9, "eventData"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 280
    .local v4, "jsonWidget":Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 281
    .local v7, "position":Lorg/json/JSONArray;
    invoke-virtual {v7, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 282
    invoke-virtual {v7, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 283
    move/from16 v0, p5

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 284
    move/from16 v0, p6

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 285
    const-string v8, "position"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v8, "type"

    const-string v9, "text_button"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v8, "id"

    invoke-virtual {v4, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 290
    .local v5, "labelInfo":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 291
    .local v1, "buttonTextPosition":Lorg/json/JSONArray;
    const/16 v8, -0xa

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 292
    const/16 v8, 0x14

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 293
    add-int/lit8 v8, p5, -0x5

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 294
    add-int/lit8 v8, p6, -0x5

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 295
    const-string v8, "position"

    invoke-virtual {v5, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v8, "text"

    invoke-virtual {v5, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v8, "color"

    const-string v9, "#000000"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 299
    .local v3, "font":Lorg/json/JSONObject;
    const-string v8, "size"

    const/16 v9, 0x20

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 300
    const-string v8, "weight"

    const-string v9, "semibold"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v8, "font"

    invoke-virtual {v5, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v8, "label"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 305
    .local v6, "onclick":Lorg/json/JSONObject;
    const-string v8, "dismiss"

    move/from16 v0, p8

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 306
    const-string v8, "event_data"

    move-object/from16 v0, p9

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v8, "onclick"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v8, "AllJoynNotificationController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CreateButtonWidget : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v1    # "buttonTextPosition":Lorg/json/JSONArray;
    .end local v3    # "font":Lorg/json/JSONObject;
    .end local v4    # "jsonWidget":Lorg/json/JSONObject;
    .end local v5    # "labelInfo":Lorg/json/JSONObject;
    .end local v6    # "onclick":Lorg/json/JSONObject;
    .end local v7    # "position":Lorg/json/JSONArray;
    :goto_0
    return-object v4

    .line 311
    .restart local v4    # "jsonWidget":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 312
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 314
    const/4 v4, 0x0

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
    .line 351
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 353
    .local v1, "jsonWidget":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v3, "type"

    const-string v4, "icon"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
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

    .line 356
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 357
    .local v2, "position":Lorg/json/JSONArray;
    invoke-virtual {v2, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 358
    invoke-virtual {v2, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 359
    invoke-virtual {v2, p5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 360
    invoke-virtual {v2, p6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 362
    const-string v3, "position"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
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

    .line 369
    .end local v1    # "jsonWidget":Lorg/json/JSONObject;
    .end local v2    # "position":Lorg/json/JSONArray;
    :goto_0
    return-object v1

    .line 366
    .restart local v1    # "jsonWidget":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 369
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createPopUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;)Lorg/json/JSONObject;
    .locals 21
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "responseData"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;

    .prologue
    .line 190
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .local v14, "createPopUp":Lorg/json/JSONObject;
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 194
    .local v20, "vibe":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "vibe"

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    const-string v2, "alerts"

    move-object/from16 v0, v20

    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    :try_start_1
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 203
    .local v18, "jsonWidget":Lorg/json/JSONArray;
    const-string v3, "anonymous"

    const-string v4, "notificationicon_alljoyn_ND.img"

    const/16 v5, 0x17

    const/4 v6, 0x7

    const/16 v7, 0x49

    const/16 v8, 0x31

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->createIconWidgets(Ljava/lang/String;Ljava/lang/String;IIII)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 210
    const-string v3, "time"

    const/16 v5, 0x64

    const/16 v6, 0x1c

    const/16 v7, 0x109

    const/16 v8, 0x36

    const-string v9, "Helvetica"

    const/16 v10, 0x1a

    const-string v11, "regular"

    const-string v12, "#0000ff"

    const/4 v13, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v13}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->createTextWidgets(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 221
    const-string v3, "deviceName"

    const/16 v5, 0x17

    const/16 v6, 0x4a

    const/16 v7, 0x109

    const/16 v8, 0x6e

    const-string v9, "Helvetica"

    const/16 v10, 0x24

    const-string v11, "semibold"

    const-string v12, "#0000ff"

    const/4 v13, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v13}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->createTextWidgets(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 232
    const-string v3, "title1"

    const/16 v5, 0x17

    const/16 v6, 0x77

    const/16 v7, 0x118

    const/16 v8, 0x149

    const-string v9, "Helvetica"

    const/16 v10, 0x1a

    const-string v11, "regular"

    const-string v12, "#000000"

    const/4 v13, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    invoke-virtual/range {v2 .. v13}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->createTextWidgets(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 244
    if-eqz p4, :cond_0

    .line 248
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->alertDialogWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;->getNumActions()S

    move-result v19

    .line 249
    .local v19, "numActions":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 251
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->notificationId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->alertDialogWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;->getExecButtons()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->getLabel()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x17

    mul-int/lit8 v2, v17, 0x46

    add-int/lit16 v6, v2, 0x14f

    const/16 v7, 0x109

    mul-int/lit8 v2, v17, 0x46

    add-int/lit16 v8, v2, 0x190

    const/4 v9, 0x1

    const/4 v10, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->notificationId:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "|"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->createButtonWidgets(Ljava/lang/String;Ljava/lang/String;IIIIZZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 197
    .end local v17    # "i":I
    .end local v18    # "jsonWidget":Lorg/json/JSONArray;
    .end local v19    # "numActions":I
    :catch_0
    move-exception v16

    .line 198
    .local v16, "e1":Lorg/json/JSONException;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 263
    .end local v16    # "e1":Lorg/json/JSONException;
    .restart local v18    # "jsonWidget":Lorg/json/JSONArray;
    :cond_0
    :try_start_2
    const-string v2, "widgets"

    move-object/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v2, "AllJoynNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AllJoynNotification: createPopUP Payload : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    .end local v14    # "createPopUp":Lorg/json/JSONObject;
    .end local v18    # "jsonWidget":Lorg/json/JSONArray;
    :goto_2
    return-object v14

    .line 267
    .restart local v14    # "createPopUp":Lorg/json/JSONObject;
    :catch_1
    move-exception v15

    .line 268
    .local v15, "e":Lorg/json/JSONException;
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    .line 269
    const-string v2, "AllJoynNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AllJoynNotification: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v2, "AllJoynNotificationController"

    const-string v3, " AllJoynNotification: Return null????"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v14, 0x0

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
    .line 321
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 323
    .local v3, "jsonWidget":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "id"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v5, "type"

    const-string v6, "text"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v5, "text"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v5, "show"

    move/from16 v0, p11

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 327
    const-string v5, "color"

    move-object/from16 v0, p10

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 330
    .local v4, "position":Lorg/json/JSONArray;
    invoke-virtual {v4, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 331
    invoke-virtual {v4, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 332
    invoke-virtual {v4, p5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 333
    invoke-virtual {v4, p6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 334
    const-string v5, "position"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 337
    .local v2, "font":Lorg/json/JSONObject;
    const-string v5, "size"

    move/from16 v0, p8

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 338
    const-string v5, "weight"

    move-object/from16 v0, p9

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v5, "font"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
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

    .line 346
    .end local v2    # "font":Lorg/json/JSONObject;
    .end local v3    # "jsonWidget":Lorg/json/JSONObject;
    .end local v4    # "position":Lorg/json/JSONArray;
    :goto_0
    return-object v3

    .line 343
    .restart local v3    # "jsonWidget":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 346
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dismiss(ILjava/util/UUID;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/util/UUID;

    .prologue
    .line 576
    return-void
.end method

.method public errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 553
    const-string v0, "AllJoynNotificationController"

    const-string v1, "AllJoynNotificationController: CPS::errorOccured"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 14
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 376
    const-string v11, "AllJoynNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleConnHandlerMessage called, command = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    packed-switch p2, :pswitch_data_0

    .line 470
    .end local p3    # "payload":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 379
    .restart local p3    # "payload":Ljava/lang/Object;
    :pswitch_0
    const-string v11, "AllJoynNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received AJNotificationCreatePopupResp = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :pswitch_1
    const-string v11, "AllJoynNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received AJNotificationUpdatePopupResp = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :pswitch_2
    const/4 v2, 0x0

    .line 389
    .local v2, "dismissed":Z
    const/4 v10, 0x0

    .line 390
    .local v10, "widgetId":Ljava/lang/String;
    const/4 v7, -0x1

    .line 391
    .local v7, "popupID":I
    const-string v11, "AllJoynNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received AJNotificationPopupInd = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    .line 395
    .local v6, "jsonPayload":Lorg/json/JSONObject;
    const-string v11, "event_data"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 396
    const-string v11, "event_data"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, "eventData":Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x7c

    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 398
    .local v5, "id":Ljava/lang/Integer;
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mResponseMap:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;

    .line 399
    .local v8, "responseData":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    if-eqz v8, :cond_1

    .line 400
    const/16 v11, 0x7c

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 403
    .local v1, "buttonIndex":I
    new-instance v9, Ljava/lang/Thread;

    new-instance v11, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;

    invoke-direct {v11, p0, v8, v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;I)V

    invoke-direct {v9, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 415
    .local v9, "t":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v1    # "buttonIndex":I
    .end local v9    # "t":Ljava/lang/Thread;
    :cond_1
    :try_start_1
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v11, v0

    const-string v12, "popup_id"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 419
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v11, v0

    const-string v12, "widget_id"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 420
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v11, v0

    const-string v12, "widget_id"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 422
    :cond_2
    check-cast p3, Lorg/json/JSONObject;

    .end local p3    # "payload":Ljava/lang/Object;
    const-string v11, "dismissed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 423
    const-string v11, "AllJoynNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "widgetId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v11, "AllJoynNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dismissed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    :goto_1
    if-eqz v10, :cond_4

    .line 433
    :try_start_2
    const-string v11, "dismiss_button"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    .line 434
    const-string v11, "AllJoynNotificationController"

    const-string v12, "AJNotification Event Popup Dismissed"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v11

    const/16 v12, 0x14

    invoke-virtual {v11, v12, v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->unMapPopup(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 459
    .end local v4    # "eventData":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/Integer;
    .end local v6    # "jsonPayload":Lorg/json/JSONObject;
    .end local v8    # "responseData":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    :catch_0
    move-exception v3

    .line 460
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "AllJoynNotificationController"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 426
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "eventData":Ljava/lang/String;
    .restart local v5    # "id":Ljava/lang/Integer;
    .restart local v6    # "jsonPayload":Lorg/json/JSONObject;
    .restart local v8    # "responseData":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    :catch_1
    move-exception v3

    .line 427
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v11, "AllJoynNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in JSON Parsing: AJNotificationPopupInd, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 439
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v11, "snooze_button"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    .line 440
    const-string v11, "AllJoynNotificationController"

    const-string v12, "AJNotification Event Popup Dismissed"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v11

    const/16 v12, 0x14

    invoke-virtual {v11, v12, v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->unMapPopup(II)V

    goto/16 :goto_0

    .line 447
    :cond_4
    const-string v11, "AllJoynNotificationController"

    const-string v12, "widgetId is null"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v11

    if-eqz v11, :cond_0

    if-eqz v2, :cond_0

    .line 450
    const-string v11, "AllJoynNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AJNotification Event Dismiss PopupID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v11

    const/16 v12, 0x14

    invoke-virtual {v11, v12, v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->unMapPopup(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 465
    .end local v2    # "dismissed":Z
    .end local v4    # "eventData":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/Integer;
    .end local v6    # "jsonPayload":Lorg/json/JSONObject;
    .end local v7    # "popupID":I
    .end local v8    # "responseData":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    .end local v10    # "widgetId":Ljava/lang/String;
    .restart local p3    # "payload":Ljava/lang/Object;
    :pswitch_3
    const-string v11, "AllJoynNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received AJNotificationDestroyPopupResp = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public metadataChanged(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;)V
    .locals 2
    .param p1, "arg0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .param p2, "arg1"    # Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;

    .prologue
    .line 558
    const-string v0, "AllJoynNotificationController"

    const-string v1, "AllJoynNotificationController: CPS::metadataChanged"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public notificationActionDismiss(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;)V
    .locals 2
    .param p1, "arg0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    .prologue
    .line 563
    const-string v0, "AllJoynNotificationController"

    const-string v1, "AllJoynNotificationController: CPS::notificationActionDismiss"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public receive(Lorg/alljoyn/ns/Notification;)V
    .locals 6
    .param p1, "notification"    # Lorg/alljoyn/ns/Notification;

    .prologue
    const/4 v5, 0x0

    .line 478
    const-string v3, "AllJoynNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received notification message : \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/alljoyn/ns/Notification;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/ns/NotificationText;

    invoke-virtual {v2}, Lorg/alljoyn/ns/NotificationText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' going to show popup"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1}, Lorg/alljoyn/ns/Notification;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/ns/NotificationText;

    invoke-virtual {v2}, Lorg/alljoyn/ns/NotificationText;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Scene has"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 489
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;

    invoke-direct {v2, p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;Lorg/alljoyn/ns/Notification;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 543
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    .end local v1    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public valueChanged(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .param p2, "arg1"    # Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 569
    const-string v0, "AllJoynNotificationController"

    const-string v1, "AllJoynNotificationController: CPS::valueChanged"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method
