.class Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler$1;
.super Ljava/lang/Object;
.source "UIWidgetSignalHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->signalReceiver:Ljava/lang/Object;
    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->access$000(Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke the method: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', Error: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
