.class public final Lorg/alljoyn/bus/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"


# instance fields
.field public authMechanism:Ljava/lang/String;

.field public destination:Ljava/lang/String;

.field public interfaceName:Ljava/lang/String;

.field public isUnreliable:Z

.field public memberName:Ljava/lang/String;

.field public objectPath:Ljava/lang/String;

.field public sender:Ljava/lang/String;

.field public serial:I

.field public sessionId:I

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean p1, p0, Lorg/alljoyn/bus/MessageContext;->isUnreliable:Z

    .line 86
    iput-object p2, p0, Lorg/alljoyn/bus/MessageContext;->objectPath:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lorg/alljoyn/bus/MessageContext;->interfaceName:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lorg/alljoyn/bus/MessageContext;->memberName:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lorg/alljoyn/bus/MessageContext;->destination:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lorg/alljoyn/bus/MessageContext;->sender:Ljava/lang/String;

    .line 91
    iput p7, p0, Lorg/alljoyn/bus/MessageContext;->sessionId:I

    .line 92
    iput-object p8, p0, Lorg/alljoyn/bus/MessageContext;->signature:Ljava/lang/String;

    .line 93
    iput-object p9, p0, Lorg/alljoyn/bus/MessageContext;->authMechanism:Ljava/lang/String;

    .line 94
    iput p10, p0, Lorg/alljoyn/bus/MessageContext;->serial:I

    .line 95
    return-void
.end method
