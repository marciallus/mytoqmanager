.class public Ljavax/microedition/io/Connector;
.super Ljava/lang/Object;
.source "Connector.java"


# static fields
.field public static final READ:I = 0x1

.field public static final READ_WRITE:I = 0x3

.field public static final WRITE:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static open(Ljava/lang/String;)Ljavax/microedition/io/Connection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "open using BlueCove javax.microedition.io.Connector"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/intel/bluetooth/MicroeditionConnector;->open(Ljava/lang/String;)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/intel/bluetooth/MicroeditionConnector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "timeouts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0, p1, p2}, Lcom/intel/bluetooth/MicroeditionConnector;->open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static openDataInputStream(Ljava/lang/String;)Ljava/io/DataInputStream;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p0}, Lcom/intel/bluetooth/MicroeditionConnector;->openDataInputStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openDataOutputStream(Ljava/lang/String;)Ljava/io/DataOutputStream;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0}, Lcom/intel/bluetooth/MicroeditionConnector;->openDataOutputStream(Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p0}, Lcom/intel/bluetooth/MicroeditionConnector;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p0}, Lcom/intel/bluetooth/MicroeditionConnector;->openOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
