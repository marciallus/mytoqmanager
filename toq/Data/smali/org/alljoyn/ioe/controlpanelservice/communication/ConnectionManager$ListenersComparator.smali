.class Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ListenersComparator;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenersComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;


# direct methods
.method private constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ListenersComparator;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;
    .param p2, "x1"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ListenersComparator;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ListenersComparator;->compare(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)I
    .locals 2
    .param p1, "lhs"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;
    .param p2, "rhs"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 146
    const/4 v0, -0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
