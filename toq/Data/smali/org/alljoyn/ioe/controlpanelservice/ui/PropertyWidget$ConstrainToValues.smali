.class public Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;
.super Ljava/lang/Object;
.source "PropertyWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstrainToValues"
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
.field private label:Ljava/lang/String;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;->value:Ljava/lang/Object;

    .line 151
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;->label:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues<TT;>;"
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues<TT;>;"
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;->value:Ljava/lang/Object;

    return-object v0
.end method
