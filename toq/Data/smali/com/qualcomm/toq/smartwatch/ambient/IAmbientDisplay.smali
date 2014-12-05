.class public interface abstract Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;
.super Ljava/lang/Object;
.source "IAmbientDisplay.java"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract retreiveDataFromStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
.end method

.method public abstract writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B
.end method

.method public abstract writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract writeDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
