.class public Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;
.super Landroid/app/Activity;
.source "ImageSharingActivity.java"


# static fields
.field private static final DEBUG:Z = true

.field private static GALLERY_INTENT_NEW:I = 0x0

.field private static GALLERY_INTENT_OLD:I = 0x0

.field private static MAX_IMAGES_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageSharingActivity"

.field private static final WD_FIXED_HEIGHT:I = 0xc0

.field private static final WD_FIXED_WIDTH:I = 0x120


# instance fields
.field private aspectRatioToggleBtn:Landroid/widget/ToggleButton;

.field private imageCountView:Landroid/widget/TextView;

.field private imageSelectionListener:Landroid/view/View$OnClickListener;

.field private imgSelectionBtn:Landroid/widget/Button;

.field private isDitheringEnabled:Z

.field private mImageDialog:Landroid/app/Dialog;

.field private mImageListView:Landroid/widget/ListView;

.field private scaledBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x64

    sput v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->MAX_IMAGES_COUNT:I

    .line 52
    const/16 v0, 0x6f

    sput v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->GALLERY_INTENT_OLD:I

    .line 53
    const/16 v0, 0x70

    sput v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->GALLERY_INTENT_NEW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->isDitheringEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->launchGallery()V

    return-void
.end method

.method private getAspectRatioBtn()Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->aspectRatioToggleBtn:Landroid/widget/ToggleButton;

    if-nez v0, :cond_0

    .line 70
    const v0, 0x7f0901cd

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->aspectRatioToggleBtn:Landroid/widget/ToggleButton;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->aspectRatioToggleBtn:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 452
    const/4 v8, 0x0

    .line 453
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 454
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 457
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 462
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    .line 466
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 467
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 471
    if-eqz v8, :cond_0

    .line 472
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 474
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 471
    :cond_1
    if-eqz v8, :cond_2

    .line 472
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 474
    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 472
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getImageCountView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->imageCountView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 84
    const v0, 0x7f0901cf

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->imageCountView:Landroid/widget/TextView;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->imageCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getImageSelectionButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->imgSelectionBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 77
    const v0, 0x7f0901ce

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->imgSelectionBtn:Landroid/widget/Button;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->imgSelectionBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private getPreviewDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 91
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->mImageDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 92
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->mImageDialog:Landroid/app/Dialog;

    .line 93
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030033

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "imageContainer":Landroid/view/View;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->mImageDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 96
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->mImageDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 97
    const v2, 0x7f0901d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 98
    .local v0, "ditheringToggleBtn":Landroid/widget/ToggleButton;
    iput-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->isDitheringEnabled:Z

    .line 99
    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 102
    .end local v0    # "ditheringToggleBtn":Landroid/widget/ToggleButton;
    .end local v1    # "imageContainer":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->mImageDialog:Landroid/app/Dialog;

    return-object v2
.end method

.method private initializeListener()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->imageSelectionListener:Landroid/view/View$OnClickListener;

    .line 161
    return-void
.end method

.method private launchGallery()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "Select Image"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    sget v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->GALLERY_INTENT_OLD:I

    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 219
    return-void
.end method

.method private scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "newHeight"    # I
    .param p3, "newWidth"    # I

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 326
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 329
    .local v5, "height":I
    move/from16 v8, p2

    .line 330
    .local v8, "h_bounding":I
    move/from16 v11, p3

    .line 331
    .local v11, "w_bounding":I
    const-string v1, "ImageSharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dptopx h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dptopx w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "ImageSharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "original width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v1, "ImageSharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "original height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "ImageSharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h_bounding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "ImageSharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w_bounding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    int-to-float v1, v11

    int-to-float v2, v4

    div-float v12, v1, v2

    .line 343
    .local v12, "xScale":F
    int-to-float v1, v8

    int-to-float v2, v5

    div-float v13, v1, v2

    .line 345
    .local v13, "yScale":F
    cmpg-float v1, v12, v13

    if-gtz v1, :cond_0

    move v9, v12

    .line 346
    .local v9, "scale":F
    :goto_0
    const-string v1, "ImageSharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v1, "ImageSharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "ImageSharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 352
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 356
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 364
    .local v10, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 365
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 366
    const-string v1, "ImageSharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaled width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v1, "ImageSharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaled height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-object v10

    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "scale":F
    .end local v10    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_0
    move v9, v13

    .line 345
    goto/16 :goto_0
.end method

.method private updateImageCount(I)V
    .locals 3
    .param p1, "cnt"    # I

    .prologue
    .line 164
    if-lez p1, :cond_0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Images uploaded out of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->MAX_IMAGES_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getImageCountView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getImageCountView()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Images are not uploaded to WD"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteAllSharedImages(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 478
    const-string v0, "ImageSharingActivity"

    const-string v1, "delete all Images"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 378
    const-string v11, "ImageSharingActivity File -"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Authority: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Fragment: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Port: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Query: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Scheme: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Segments: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_1

    move v3, v9

    .line 388
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_7

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 390
    const-string v11, "com.android.externalstorage.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 391
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 395
    .local v7, "type":Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 396
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 446
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v8

    .end local v3    # "isKitKat":Z
    :cond_1
    move v3, v10

    .line 385
    goto :goto_0

    .line 401
    .restart local v3    # "isKitKat":Z
    :cond_2
    const-string v11, "com.android.providers.downloads.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 403
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "id":Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 407
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v8, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 410
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    const-string v11, "com.android.providers.media.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 411
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 413
    .restart local v6    # "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 415
    .restart local v7    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 416
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 417
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 426
    :cond_4
    :goto_2
    const-string v4, "_id=?"

    .line 427
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aget-object v8, v6, v9

    aput-object v8, v5, v10

    .line 429
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v8, "_id=?"

    invoke-static {p0, v0, v8, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 419
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 420
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 422
    :cond_6
    const-string v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 423
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 433
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_7
    const-string v9, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 436
    const-string v9, "com.google.android.apps.photos.content"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 437
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 439
    :cond_8
    invoke-static {p0, p1, v8, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 442
    :cond_9
    const-string v9, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 443
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 225
    const/4 v7, -0x1

    if-eq p2, v7, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    if-eqz p3, :cond_0

    .line 229
    const/4 v4, 0x0

    .line 230
    .local v4, "originalUri":Landroid/net/Uri;
    sget v7, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->GALLERY_INTENT_OLD:I

    if-ne p1, v7, :cond_3

    .line 231
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 232
    const-string v7, "ImageSharingActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " OLD URI == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getPreviewDialog()Landroid/app/Dialog;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getPreviewDialog()Landroid/app/Dialog;

    move-result-object v7

    const v8, 0x7f0901d4

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 246
    .local v5, "shareButton":Landroid/widget/Button;
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 247
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getPreviewDialog()Landroid/app/Dialog;

    move-result-object v7

    const v8, 0x7f0901d2

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 248
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getPreviewDialog()Landroid/app/Dialog;

    move-result-object v7

    const v8, 0x7f0901d4

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 250
    .local v3, "imgShareBtn":Landroid/widget/Button;
    const-string v7, "ImageSharingActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "originalUri path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "imgPath":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 254
    const-string v7, "ImageSharingActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "img path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-nez v2, :cond_4

    .line 257
    const-string v7, "Invalid file path, Please use some other application to select image."

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 234
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "imgPath":Ljava/lang/String;
    .end local v3    # "imgShareBtn":Landroid/widget/Button;
    .end local v5    # "shareButton":Landroid/widget/Button;
    :cond_3
    sget v7, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->GALLERY_INTENT_NEW:I

    if-ne p1, v7, :cond_2

    .line 235
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 236
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/lit8 v6, v7, 0x3

    .line 239
    .local v6, "takeFlags":I
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4, v6}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 241
    const-string v7, "ImageSharingActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " new URI == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 263
    .end local v6    # "takeFlags":I
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    .restart local v2    # "imgPath":Ljava/lang/String;
    .restart local v3    # "imgShareBtn":Landroid/widget/Button;
    .restart local v5    # "shareButton":Landroid/widget/Button;
    :cond_4
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    .line 265
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 266
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getAspectRatioBtn()Landroid/widget/ToggleButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v7

    if-nez v7, :cond_5

    .line 267
    const-string v7, "ImageSharingActivity"

    const-string v8, "Maintain orginal aspect ratio"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/16 v7, 0xc0

    const/16 v8, 0x120

    invoke-direct {p0, v0, v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 280
    :goto_2
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getPreviewDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 273
    :cond_5
    const-string v7, "ImageSharingActivity"

    const-string v8, "Aspect ratio as per SmartWatch"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/16 v7, 0x120

    const/16 v8, 0xc0

    const/4 v9, 0x0

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->scaledBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 285
    :cond_6
    const-string v7, "Invalid file, Please select proper image file"

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->setContentView(I)V

    .line 134
    const v0, 0x7f0901d0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->mImageListView:Landroid/widget/ListView;

    .line 135
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->mImageListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 136
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getAspectRatioBtn()Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 137
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->initializeListener()V

    .line 138
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getImageSelectionButton()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->imageSelectionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->updateImageCount(I)V

    .line 140
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 208
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->mImageDialog:Landroid/app/Dialog;

    .line 209
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->mImageListView:Landroid/widget/ListView;

    .line 210
    return-void
.end method

.method public onOrginalAspectRaioToggleClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    const-string v1, "ImageSharingActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " orginal Aspect ratio "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 120
    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "view":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 127
    :goto_0
    return-void

    .line 124
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "view":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 146
    return-void
.end method

.method public onToggleClicked(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    const-string v1, "ImageSharingActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onToggleClicked "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 107
    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 109
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->isDitheringEnabled:Z

    .line 116
    :goto_0
    return-void

    .line 112
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 113
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->isDitheringEnabled:Z

    goto :goto_0
.end method

.method public shareImageToWD(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->scaledBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "service_task"

    const-string v5, "share_image_to_wd"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 187
    .local v3, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->scaledBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 188
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 189
    .local v0, "byteArray":[B
    const-string v4, "file_path"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v4, "image_data"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 191
    const-string v4, "dithering"

    iget-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->isDitheringEnabled:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getPreviewDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getPreviewDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a01d5

    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 199
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 202
    .end local v0    # "byteArray":[B
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    return-void
.end method
