.class public interface abstract Lorg/alljoyn/services/common/PropertyStore;
.super Ljava/lang/Object;
.source "PropertyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/services/common/PropertyStore$Filter;
    }
.end annotation


# virtual methods
.method public abstract readAll(Ljava/lang/String;Lorg/alljoyn/services/common/PropertyStore$Filter;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/alljoyn/services/common/PropertyStore$Filter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/services/common/PropertyStoreException;
        }
    .end annotation
.end method

.method public abstract reset(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/services/common/PropertyStoreException;
        }
    .end annotation
.end method

.method public abstract resetAll()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/services/common/PropertyStoreException;
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/services/common/PropertyStoreException;
        }
    .end annotation
.end method
