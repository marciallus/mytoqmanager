.class Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget$1;
.super Lorg/alljoyn/bus/VariantTypeReference;
.source "ContainerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;->setProperty(Ljava/lang/String;Lorg/alljoyn/bus/Variant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/alljoyn/bus/VariantTypeReference",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Short;",
        "Lorg/alljoyn/bus/Variant;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;


# direct methods
.method constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    invoke-direct {p0}, Lorg/alljoyn/bus/VariantTypeReference;-><init>()V

    return-void
.end method
