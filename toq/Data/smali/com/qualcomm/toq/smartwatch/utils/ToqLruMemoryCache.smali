.class public Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;
.super Landroid/util/LruCache;
.source "ToqLruMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public addDrawableToMemoryCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    const-string v0, "LruCache"

    const-string v1, "Error unable to add addDrawableToMemoryCache"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public addDrawableToMemoryCache(Ljava/lang/String;II)V
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 31
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable;

    .line 32
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v9, :cond_1

    .line 33
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f090000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v12

    .line 36
    .local v12, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 42
    .local v13, "resid":I
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 46
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 49
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 50
    .local v6, "height":I
    move/from16 v11, p2

    .line 51
    .local v11, "newWidth":I
    move/from16 v10, p3

    .line 53
    .local v10, "newHeight":I
    const-string v3, "LruCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inside width = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", height"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    int-to-float v3, v11

    int-to-float v4, v5

    div-float v16, v3, v4

    .line 57
    .local v16, "scaleWidth":F
    int-to-float v3, v10

    int-to-float v4, v6

    div-float v15, v3, v4

    .line 60
    .local v15, "scaleHeight":F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 65
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 73
    .local v14, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v9, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v14, 0x0

    .line 77
    const/4 v9, 0x0

    .line 81
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "newHeight":I
    .end local v11    # "newWidth":I
    .end local v14    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "scaleHeight":F
    .end local v16    # "scaleWidth":F
    :cond_0
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v9, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/4 v2, 0x0

    .line 85
    const/4 v9, 0x0

    .line 87
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "resid":I
    :cond_1
    return-void
.end method

.method public getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 91
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f090000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v4, p1, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 100
    .local v3, "resid":I
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 106
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resid":I
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v1, v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public unBindDrawables()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->evictAll()V

    .line 111
    return-void
.end method
