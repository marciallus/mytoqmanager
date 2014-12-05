.class Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;
.super Ljava/lang/Object;
.source "ProxyBusObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/ProxyBusObject$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Invocation"
.end annotation


# instance fields
.field public genericReturnType:Ljava/lang/reflect/Type;

.field public inputSig:Ljava/lang/String;

.field public interfaceName:Ljava/lang/String;

.field public isGet:Z

.field public isMethod:Z

.field public method:Ljava/lang/reflect/Method;

.field public methodName:Ljava/lang/String;

.field public outSig:Ljava/lang/String;

.field public returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/alljoyn/bus/ProxyBusObject$Handler;


# direct methods
.method public constructor <init>(Lorg/alljoyn/bus/ProxyBusObject$Handler;Ljava/lang/reflect/Method;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->this$1:Lorg/alljoyn/bus/ProxyBusObject$Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->method:Ljava/lang/reflect/Method;

    .line 160
    const-class v0, Lorg/alljoyn/bus/annotation/BusProperty;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->isGet:Z

    .line 162
    invoke-static {p2}, Lorg/alljoyn/bus/InterfaceDescription;->getPropertySig(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->outSig:Ljava/lang/String;

    .line 168
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->interfaceName:Ljava/lang/String;

    .line 169
    invoke-static {p2}, Lorg/alljoyn/bus/InterfaceDescription;->getName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->methodName:Ljava/lang/String;

    .line 170
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->genericReturnType:Ljava/lang/reflect/Type;

    .line 171
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->returnType:Ljava/lang/Class;

    .line 172
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->isMethod:Z

    .line 165
    invoke-static {p2}, Lorg/alljoyn/bus/InterfaceDescription;->getOutSig(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->outSig:Ljava/lang/String;

    .line 166
    invoke-static {p2}, Lorg/alljoyn/bus/InterfaceDescription;->getInputSig(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/ProxyBusObject$Handler$Invocation;->inputSig:Ljava/lang/String;

    goto :goto_0
.end method
