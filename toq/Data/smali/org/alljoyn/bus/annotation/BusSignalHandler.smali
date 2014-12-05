.class public interface abstract annotation Lorg/alljoyn/bus/annotation/BusSignalHandler;
.super Ljava/lang/Object;
.source "BusSignalHandler.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/alljoyn/bus/annotation/BusSignalHandler;
        source = ""
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


# virtual methods
.method public abstract iface()Ljava/lang/String;
.end method

.method public abstract signal()Ljava/lang/String;
.end method

.method public abstract source()Ljava/lang/String;
.end method
