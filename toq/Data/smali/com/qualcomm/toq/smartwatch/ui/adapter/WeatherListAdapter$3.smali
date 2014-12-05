.class Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$3;
.super Ljava/lang/Object;
.source "WeatherListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    const-string v0, "AmbientListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout got clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    iget-boolean v2, v2, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->isDeleteVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->isDeleteVisible:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->isDeleteVisible:Z

    .line 213
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->activityRef:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->access$100(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;->refreshList()V

    .line 216
    :cond_0
    return-void
.end method
