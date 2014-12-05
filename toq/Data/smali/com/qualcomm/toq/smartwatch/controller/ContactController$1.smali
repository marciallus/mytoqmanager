.class Lcom/qualcomm/toq/smartwatch/controller/ContactController$1;
.super Ljava/lang/Thread;
.source "ContactController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/ContactController;->storePhoneContactsToFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/ContactController;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/ContactController;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->createJSONFile()V

    .line 136
    return-void
.end method
