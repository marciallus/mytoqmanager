.class public Lcom/intel/bluetooth/UtilsJavaSE5;
.super Ljava/lang/Object;
.source "UtilsJavaSE5.java"

# interfaces
.implements Lcom/intel/bluetooth/UtilsJavaSE$JavaSE5Features;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearProperty(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    return-void
.end method
