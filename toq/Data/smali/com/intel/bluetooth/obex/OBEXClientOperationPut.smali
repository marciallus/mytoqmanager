.class Lcom/intel/bluetooth/obex/OBEXClientOperationPut;
.super Lcom/intel/bluetooth/obex/OBEXClientOperation;
.source "OBEXClientOperationPut.java"


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
    const/4 v0, 0x2

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
    const/4 v1, 0x1

    .line 46
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->validateOperationIsOpen()V

    .line 47
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->inputStreamOpened:Z

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
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->inputStreamOpened:Z

    .line 52
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->operationInProgress:Z

    .line 53
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->validateOperationIsOpen()V

    .line 63
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->outputStreamOpened:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "output already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->outputStreamOpened:Z

    .line 67
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    iget v1, v1, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->mtu:I

    invoke-direct {v0, v1, p0}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;-><init>(ILcom/intel/bluetooth/obex/OBEXOperationDelivery;)V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    .line 68
    iput-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->operationInProgress:Z

    .line 69
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    return-object v0
.end method
