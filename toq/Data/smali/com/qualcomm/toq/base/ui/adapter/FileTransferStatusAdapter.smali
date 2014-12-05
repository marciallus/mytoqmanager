.class public Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FileTransferStatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private headerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->headerList:Ljava/util/ArrayList;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->headerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->headerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x7f

    const/4 v5, 0x0

    .line 46
    const-string v1, ""

    .line 48
    .local v1, "str":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 49
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030039

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;-><init>()V

    .line 51
    .local v0, "holder":Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;
    if-eqz v0, :cond_0

    .line 52
    const v2, 0x7f0901fa

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->headerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->headerList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 63
    .restart local v1    # "str":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 65
    const-string v2, "Success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    iget-object v2, v0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {v5, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    :goto_1
    iget-object v2, v0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_2
    return-object p2

    .line 57
    .end local v0    # "holder":Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;
    goto :goto_0

    .line 67
    :cond_4
    const-string v2, "Failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    iget-object v2, v0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {v6, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 69
    :cond_5
    const-string v2, "Sending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 70
    iget-object v2, v0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 72
    :cond_6
    iget-object v2, v0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->headerList:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method
