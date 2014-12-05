.class Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;
.super Ljava/lang/Object;
.source "IconStyleActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deSelectPreviousSelectedIcon(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 205
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 207
    const v2, 0x7f0901c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 208
    .local v0, "imageView":Landroid/widget/ImageView;
    const v2, 0x7f02013c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private retreiveIndexOfPreviousSelection(Ljava/lang/String;)I
    .locals 2
    .param p1, "previousSelectedIndex"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "index":I
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->iconImagesText:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 196
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->iconImagesText:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    .end local v0    # "index":I
    :goto_1
    return v0

    .line 195
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f0901c9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 163
    .local v2, "selectedImage":Landroid/widget/ImageView;
    const v3, 0x7f020118

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->iconImagesText:[Ljava/lang/String;

    aget-object v0, v3, p3

    .line 167
    .local v0, "currentSelectedStyle":Ljava/lang/String;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;->retreiveIndexOfPreviousSelection(Ljava/lang/String;)I

    move-result v1

    .line 171
    .local v1, "prevSelectedPosition":I
    const-string v3, "IconStyleActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous Selected Icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Position :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 176
    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;->deSelectPreviousSelectedIcon(I)V

    .line 179
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$202(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    const-string v3, "IconStyleActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Selected Icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v1    # "prevSelectedPosition":I
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local v1    # "prevSelectedPosition":I
    :cond_1
    const-string v3, "IconStyleActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Icon position retreived for prev selected Icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
