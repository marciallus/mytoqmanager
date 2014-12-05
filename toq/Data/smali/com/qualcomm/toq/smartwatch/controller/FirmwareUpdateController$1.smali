.class Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController$1;
.super Ljava/lang/Object;
.source "FirmwareUpdateController.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->getCustomBuildInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
