.class Lorg/alljoyn/about/AboutServiceImpl$IconInterface;
.super Ljava/lang/Object;
.source "AboutServiceImpl.java"

# interfaces
.implements Lorg/alljoyn/about/transport/IconTransport;
.implements Lorg/alljoyn/bus/BusObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/about/AboutServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/about/AboutServiceImpl;


# direct methods
.method private constructor <init>(Lorg/alljoyn/about/AboutServiceImpl;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lorg/alljoyn/about/AboutServiceImpl$IconInterface;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/about/AboutServiceImpl;Lorg/alljoyn/about/AboutServiceImpl$1;)V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lorg/alljoyn/about/AboutServiceImpl$IconInterface;-><init>(Lorg/alljoyn/about/AboutServiceImpl;)V

    return-void
.end method


# virtual methods
.method public GetContent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$IconInterface;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_iconContent:[B
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$1400(Lorg/alljoyn/about/AboutServiceImpl;)[B

    move-result-object v0

    return-object v0
.end method

.method public GetUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$IconInterface;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_iconUrl:Ljava/lang/String;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$1500(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$IconInterface;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_iconMimeType:Ljava/lang/String;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$1300(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$IconInterface;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_iconContent:[B
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$1400(Lorg/alljoyn/about/AboutServiceImpl;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$IconInterface;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_iconContent:[B
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$1400(Lorg/alljoyn/about/AboutServiceImpl;)[B

    move-result-object v0

    array-length v0, v0

    .line 721
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 708
    const/4 v0, 0x1

    return v0
.end method
