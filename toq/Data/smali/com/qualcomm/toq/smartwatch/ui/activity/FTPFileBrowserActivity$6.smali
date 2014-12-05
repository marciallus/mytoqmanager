.class Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;
.super Ljava/lang/Object;
.source "FTPFileBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->browseFTPSession(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

.field final synthetic val$xpp1:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->val$xpp1:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 412
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)I

    move-result v1

    if-eq v1, v7, :cond_6

    .line 413
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 414
    const-string v1, "FTPFileBrowserActivity"

    const-string v2, "Start document"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->val$xpp1:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1602(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FTPFileBrowserActivity"

    const-string v2, "Exception"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 416
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 417
    const-string v1, "FTPFileBrowserActivity"

    const-string v2, "End document"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 420
    const-string v1, "FTPFileBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->val$xpp1:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "FTPFileBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start tag Attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->val$xpp1:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->val$xpp1:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 428
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->val$xpp1:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0200d5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/String;Ljava/lang/Integer;)V

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->item:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1702(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;)Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    .line 431
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->item:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mfileBrowserListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->loadAdapter()Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 435
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->val$xpp1:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->val$xpp1:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0200a0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljava/lang/String;Ljava/lang/Integer;)V

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->item:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1702(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;)Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    .line 439
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->itemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->item:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mfileBrowserListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->loadAdapter()Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 443
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 444
    const-string v1, "FTPFileBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->val$xpp1:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 446
    :cond_5
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->eventType1:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 447
    const-string v1, "FTPFileBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->val$xpp1:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 452
    :cond_6
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mfileBrowserListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->loadAdapter()Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 453
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->mProgress:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;)Ljavax/obex/Operation;

    move-result-object v1

    invoke-interface {v1}, Ljavax/obex/Operation;->close()V

    .line 455
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;

    const/4 v2, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->op:Ljavax/obex/Operation;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;->access$1802(Lcom/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity;Ljavax/obex/Operation;)Ljavax/obex/Operation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
