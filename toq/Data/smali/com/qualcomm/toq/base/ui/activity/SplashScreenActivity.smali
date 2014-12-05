.class public Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;
.super Landroid/app/Activity;
.source "SplashScreenActivity.java"


# static fields
.field private static final SPLASH_DISPLAY_TIME:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SplashScreenActivity"


# instance fields
.field backgroundImageView:Landroid/widget/ImageView;

.field mBackgroundHandler:Landroid/os/Handler;

.field mBackgroundLooper:Landroid/os/Looper;

.field mBackgroundRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->backgroundImageView:Landroid/widget/ImageView;

    .line 35
    new-instance v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$1;-><init>(Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mRunnable:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;-><init>(Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->requestWindowFeature(I)Z

    .line 142
    const v1, 0x7f03004a

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->setContentView(I)V

    .line 144
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 145
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/qualcomm/toq/base/utils/Constants;->SCREEN_HEIGHT:I

    .line 147
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/qualcomm/toq/base/utils/Constants;->SCREEN_WIDTH:I

    .line 149
    const v1, 0x7f090255

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->backgroundImageView:Landroid/widget/ImageView;

    .line 150
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 151
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->backgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mHandler:Landroid/os/Handler;

    .line 160
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->backgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    const-string v0, "SplashScreenActivity"

    const-string v1, "onDestroy called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iput-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mHandler:Landroid/os/Handler;

    .line 194
    iput-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mRunnable:Ljava/lang/Runnable;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->backgroundImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->backgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iput-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->backgroundImageView:Landroid/widget/ImageView;

    .line 202
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    const-string v1, "SplashScreenActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SplashScreenActivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "backgroundThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundLooper:Landroid/os/Looper;

    .line 180
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 182
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 167
    const-string v0, "SplashScreenActivity"

    const-string v1, "SplashScreenActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 208
    const-string v0, "SplashScreenActivity"

    const-string v1, "SplashScreenActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method
