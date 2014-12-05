.class public interface abstract annotation Lorg/alljoyn/bus/annotation/BusMethod;
.super Ljava/lang/Object;
.source "BusMethod.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/alljoyn/bus/annotation/BusMethod;
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

.field public static final ANNOTATE_NO_REPLY:I = 0x1


# virtual methods
.method public abstract annotation()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract replySignature()Ljava/lang/String;
.end method

.method public abstract signature()Ljava/lang/String;
.end method
