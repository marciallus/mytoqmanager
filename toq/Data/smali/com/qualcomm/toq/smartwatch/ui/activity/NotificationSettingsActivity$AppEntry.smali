.class public Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
.super Ljava/lang/Object;
.source "NotificationSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field private isChecked:Z

.field private final mApkFile:Ljava/io/File;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInfo:Landroid/content/pm/ApplicationInfo;

.field private mLabel:Ljava/lang/String;

.field private final mLoader:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

.field private mMounted:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "loader"    # Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->isChecked:Z

    .line 862
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mLoader:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

    .line 863
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 864
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mApkFile:Ljava/io/File;

    .line 865
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getCheckBox()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->isChecked:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mLoader:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 892
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 910
    :goto_0
    return-object v0

    .line 895
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mMounted:Z

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mLoader:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 898
    :cond_2
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mMounted:Z

    if-nez v0, :cond_3

    .line 901
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mMounted:Z

    .line 903
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mLoader:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 904
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 908
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method loadLabel(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 922
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mMounted:Z

    if-nez v1, :cond_1

    .line 923
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 924
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mMounted:Z

    .line 925
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mLabel:Ljava/lang/String;

    .line 926
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mPackageName:Ljava/lang/String;

    .line 936
    :cond_1
    :goto_0
    return-void

    .line 929
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mMounted:Z

    .line 930
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 931
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mLabel:Ljava/lang/String;

    .line 933
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 931
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method public setCheckBox(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 880
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->isChecked:Z

    .line 881
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method
