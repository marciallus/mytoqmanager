.class Lcom/intel/bluetooth/obex/OBEXClientOperationGet;
.super Lcom/intel/bluetooth/obex/OBEXClientOperation;
.source "OBEXClientOperationGet.java"


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    .locals 1
    .param p1, "session"    # Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;
    .param p2, "sendHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/intel/bluetooth/obex/OBEXClientOperation;-><init>(Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;CLcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 38
    return-void
.end method


# virtual methods
.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->validateOperationIsOpen()V

    .line 47
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->inputStreamOpened:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const-string v0, "openInputStream"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->inputStreamOpened:Z

    .line 52
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->endRequestPhase()V

    .line 53
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->validateOperationIsOpen()V

    .line 63
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->outputStreamOpened:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "output already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->requestEnded:Z

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "the request phase has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->outputStreamOpened:Z

    .line 70
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->session:Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    iget v1, v1, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->mtu:I

    invoke-direct {v0, v1, p0}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;-><init>(ILcom/intel/bluetooth/obex/OBEXOperationDelivery;)V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    .line 71
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    return-object v0
.end method
