.class public interface abstract annotation Lorg/alljoyn/bus/annotation/BusSignal;
.super Ljava/lang/Object;
.source "BusSignal.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/alljoyn/bus/annotation/BusSignal;
        annotation = 0x0
        name = ""
        replySignature = ""
        signature = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ANNOTATE_DEPRECATED:I = 0x2


# virtual methods
.method public abstract annotation()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract replySignature()Ljava/lang/String;
.end method

.method public abstract signature()Ljava/lang/String;
.end method
