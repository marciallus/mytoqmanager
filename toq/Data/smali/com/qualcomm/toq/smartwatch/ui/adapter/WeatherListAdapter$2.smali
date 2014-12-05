.class Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$2;
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

.field final synthetic val$city_position:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;I)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    iput p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$2;->val$city_position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    const-string v0, "AmbientListAdapter"

    const-string v1, " DELETE BUTTON clicked"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "AmbientListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- city position is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$2;->val$city_position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->isDeleteVisible:Z

    .line 201
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->activityRef:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->access$100(Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;)Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$2;->val$city_position:I

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;->deleteCity(I)V

    .line 203
    return-void
.end method
