.class public Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;
.super Ljava/lang/Object;
.source "TrackingAdjustmentListener.java"

# interfaces
.implements Ljava/awt/event/AdjustmentListener;


# instance fields
.field protected _lastMaximum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    return-void
.end method


# virtual methods
.method public adjustmentValueChanged(Ljava/awt/event/AdjustmentEvent;)V
    .locals 5
    .param p1, "e"    # Ljava/awt/event/AdjustmentEvent;

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/awt/event/AdjustmentEvent;->getAdjustable()Ljava/awt/Adjustable;

    move-result-object v0

    .line 62
    .local v0, "bar":Ljava/awt/Adjustable;
    invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v2

    .line 63
    .local v2, "currentMaximum":I
    invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v3

    iget v4, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    if-ne v3, v4, :cond_0

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-interface {v0}, Ljava/awt/Adjustable;->getValue()I

    move-result v3

    invoke-interface {v0}, Ljava/awt/Adjustable;->getVisibleAmount()I

    move-result v4

    add-int v1, v3, v4

    .line 68
    .local v1, "bottom":I
    invoke-interface {v0}, Ljava/awt/Adjustable;->getUnitIncrement()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    if-lt v3, v4, :cond_1

    .line 69
    invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/awt/Adjustable;->setValue(I)V

    .line 71
    :cond_1
    iput v2, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    goto :goto_0
.end method
