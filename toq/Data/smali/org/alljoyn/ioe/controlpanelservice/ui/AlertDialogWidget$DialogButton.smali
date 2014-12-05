.class public Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;
.super Ljava/lang/Object;
.source "AlertDialogWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogButton"
.end annotation


# instance fields
.field private alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

.field private bindMethod:Ljava/lang/reflect/Method;

.field private label:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "bindMethod"    # Ljava/lang/reflect/Method;
    .param p3, "alertDialog"    # Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->label:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->bindMethod:Ljava/lang/reflect/Method;

    .line 68
    iput-object p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/reflect/Method;
    .param p3, "x2"    # Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;
    .param p4, "x3"    # Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$1;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;)V

    return-void
.end method


# virtual methods
.method public exec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->bindMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    return-void

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "invokeError":Ljava/lang/String;
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DialogButton label: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', failed to invoke the method: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->bindMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', Error: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    .end local v1    # "invokeError":Ljava/lang/String;
    .end local v2    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DialogButton label: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', failed to invoke the method: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->bindMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->label:Ljava/lang/String;

    return-object v0
.end method
