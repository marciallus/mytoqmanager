.class Lorg/alljoyn/bus/InterfaceDescription$Property;
.super Ljava/lang/Object;
.source "InterfaceDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/InterfaceDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Property"
.end annotation


# instance fields
.field public annotations:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public get:Ljava/lang/reflect/Method;

.field public name:Ljava/lang/String;

.field public set:Ljava/lang/reflect/Method;

.field public signature:Ljava/lang/String;

.field final synthetic this$0:Lorg/alljoyn/bus/InterfaceDescription;


# direct methods
.method public constructor <init>(Lorg/alljoyn/bus/InterfaceDescription;Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lorg/alljoyn/bus/InterfaceDescription$Property;->this$0:Lorg/alljoyn/bus/InterfaceDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lorg/alljoyn/bus/InterfaceDescription$Property;->name:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/alljoyn/bus/InterfaceDescription$Property;->signature:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lorg/alljoyn/bus/InterfaceDescription$Property;->annotations:Ljava/util/TreeMap;

    .line 71
    return-void
.end method
