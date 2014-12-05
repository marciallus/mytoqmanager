.class public Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;
.super Ljava/lang/Object;
.source "PropertyWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeConstraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private increment:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private max:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private min:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint<TT;>;"
    .local p1, "min":Ljava/lang/Object;, "TT;"
    .local p2, "max":Ljava/lang/Object;, "TT;"
    .local p3, "increment":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;->min:Ljava/lang/Object;

    .line 97
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;->max:Ljava/lang/Object;

    .line 98
    iput-object p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;->increment:Ljava/lang/Object;

    .line 99
    return-void
.end method


# virtual methods
.method public getIncrement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint<TT;>;"
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;->increment:Ljava/lang/Object;

    return-object v0
.end method

.method public getMax()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint<TT;>;"
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;->max:Ljava/lang/Object;

    return-object v0
.end method

.method public getMin()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint<TT;>;"
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$RangeConstraint;->min:Ljava/lang/Object;

    return-object v0
.end method
