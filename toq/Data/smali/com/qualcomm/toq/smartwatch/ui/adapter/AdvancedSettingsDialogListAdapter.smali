.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AdvancedSettingsDialogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field array:[Ljava/lang/String;

.field inflator:Landroid/view/LayoutInflater;

.field initialValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # [Ljava/lang/String;
    .param p3, "initialValue"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;->inflator:Landroid/view/LayoutInflater;

    .line 26
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;->array:[Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;->initialValue:I

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;->array:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;->array:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;)V

    .line 51
    .local v0, "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;->inflator:Landroid/view/LayoutInflater;

    const v2, 0x7f030044

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    const v1, 0x7f090236

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f090237

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;->array:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;->initialValue:I

    if-ne v1, p1, :cond_1

    .line 64
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 69
    :goto_1
    return-object p2

    .line 59
    .end local v0    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;
    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method
