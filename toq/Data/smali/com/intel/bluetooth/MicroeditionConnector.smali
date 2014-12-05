.class public abstract Lcom/intel/bluetooth/MicroeditionConnector;
.super Ljava/lang/Object;
.source "MicroeditionConnector.java"


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final AUTHENTICATE:Ljava/lang/String; = "authenticate"

.field private static final AUTHORIZE:Ljava/lang/String; = "authorize"

.field private static final ENCRYPT:Ljava/lang/String; = "encrypt"

.field private static final EXT_BLUECOVE_L2CAP_PSM:Ljava/lang/String; = "bluecovepsm"

.field private static final MASTER:Ljava/lang/String; = "master"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final READ:I = 0x1

.field public static final READ_WRITE:I = 0x3

.field private static final RECEIVE_MTU:Ljava/lang/String; = "receivemtu"

.field private static final TRANSMIT_MTU:Ljava/lang/String; = "transmitmtu"

.field public static final WRITE:I = 0x2

.field private static cliParams:Ljava/util/Hashtable;

.field private static cliParamsL2CAP:Ljava/util/Hashtable;

.field private static srvParams:Ljava/util/Hashtable;

.field private static srvParamsL2CAP:Ljava/util/Hashtable;

.field private static suportScheme:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->suportScheme:Ljava/util/Hashtable;

    .line 78
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->srvParams:Ljava/util/Hashtable;

    .line 79
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->cliParams:Ljava/util/Hashtable;

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->cliParamsL2CAP:Ljava/util/Hashtable;

    .line 81
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->srvParamsL2CAP:Ljava/util/Hashtable;

    .line 94
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->cliParams:Ljava/util/Hashtable;

    const-string v1, "authenticate"

    const-string v2, "authenticate"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->cliParams:Ljava/util/Hashtable;

    const-string v1, "encrypt"

    const-string v2, "encrypt"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->cliParams:Ljava/util/Hashtable;

    const-string v1, "master"

    const-string v2, "master"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->srvParams:Ljava/util/Hashtable;

    sget-object v1, Lcom/intel/bluetooth/MicroeditionConnector;->cliParams:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/intel/bluetooth/MicroeditionConnector;->copyAll(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 100
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->srvParams:Ljava/util/Hashtable;

    const-string v1, "authorize"

    const-string v2, "authorize"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->srvParams:Ljava/util/Hashtable;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->cliParamsL2CAP:Ljava/util/Hashtable;

    sget-object v1, Lcom/intel/bluetooth/MicroeditionConnector;->cliParams:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/intel/bluetooth/MicroeditionConnector;->copyAll(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 105
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->cliParamsL2CAP:Ljava/util/Hashtable;

    const-string v1, "receivemtu"

    const-string v2, "receivemtu"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->cliParamsL2CAP:Ljava/util/Hashtable;

    const-string v1, "transmitmtu"

    const-string v2, "transmitmtu"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->srvParamsL2CAP:Ljava/util/Hashtable;

    sget-object v1, Lcom/intel/bluetooth/MicroeditionConnector;->cliParamsL2CAP:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/intel/bluetooth/MicroeditionConnector;->copyAll(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 109
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->srvParamsL2CAP:Ljava/util/Hashtable;

    const-string v1, "authorize"

    const-string v2, "authorize"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->srvParamsL2CAP:Ljava/util/Hashtable;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->srvParamsL2CAP:Ljava/util/Hashtable;

    const-string v1, "bluecovepsm"

    const-string v2, "bluecovepsm"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->suportScheme:Ljava/util/Hashtable;

    const-string v1, "btspp"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->suportScheme:Ljava/util/Hashtable;

    const-string v1, "btgoep"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->suportScheme:Ljava/util/Hashtable;

    .line 119
    const-string v1, "tcpobex"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->suportScheme:Ljava/util/Hashtable;

    const-string v1, "btl2cap"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/intel/bluetooth/MicroeditionConnector;->suportScheme:Ljava/util/Hashtable;

    const-string v1, "socket"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method static copyAll(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 3
    .param p0, "dest"    # Ljava/util/Hashtable;
    .param p1, "src"    # Ljava/util/Hashtable;

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    return-void

    .line 129
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static open(Ljava/lang/String;)Ljavax/microedition/io/Connection;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/intel/bluetooth/MicroeditionConnector;->openImpl(Ljava/lang/String;IZZ)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/intel/bluetooth/MicroeditionConnector;->openImpl(Ljava/lang/String;IZZ)Ljavax/microedition/io/Connection;

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
    .line 618
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/intel/bluetooth/MicroeditionConnector;->openImpl(Ljava/lang/String;IZZ)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static openDataInputStream(Ljava/lang/String;)Ljava/io/DataInputStream;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    new-instance v0, Ljava/io/DataInputStream;

    invoke-static {p0}, Lcom/intel/bluetooth/MicroeditionConnector;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static openDataOutputStream(Ljava/lang/String;)Ljava/io/DataOutputStream;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-static {p0}, Lcom/intel/bluetooth/MicroeditionConnector;->openOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private static openImpl(Ljava/lang/String;IZZ)Ljavax/microedition/io/Connection;
    .locals 40
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "timeouts"    # Z
    .param p3, "allowServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const-string v5, "connecting"

    move-object/from16 v0, p0

    invoke-static {v5, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/16 v18, 0x0

    .line 175
    .local v18, "host":Ljava/lang/String;
    const/16 v28, 0x0

    .line 177
    .local v28, "portORuuid":Ljava/lang/String;
    new-instance v37, Ljava/util/Hashtable;

    invoke-direct/range {v37 .. v37}, Ljava/util/Hashtable;-><init>()V

    .line 180
    .local v37, "values":Ljava/util/Hashtable;
    const-string v5, "://"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    .line 181
    .local v32, "schemeEnd":I
    const/4 v5, -0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_0

    .line 182
    new-instance v5, Ljavax/microedition/io/ConnectionNotFoundException;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljavax/microedition/io/ConnectionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 184
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 185
    .local v30, "scheme":Ljava/lang/String;
    sget-object v5, Lcom/intel/bluetooth/MicroeditionConnector;->suportScheme:Ljava/util/Hashtable;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 186
    new-instance v5, Ljavax/microedition/io/ConnectionNotFoundException;

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Ljavax/microedition/io/ConnectionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 189
    :cond_1
    const-string v5, "btspp"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 190
    const-string v5, "btgoep"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 191
    const-string v5, "btl2cap"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v31, 0x0

    .line 192
    .local v31, "schemeBluetooth":Z
    :goto_0
    const-string v5, "btl2cap"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 194
    .local v21, "isL2CAP":Z
    const-string v5, "tcpobex"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 196
    .local v23, "isTCPOBEX":Z
    const/4 v11, 0x0

    .line 198
    .local v11, "bluetoothStack":Lcom/intel/bluetooth/BluetoothStack;
    if-eqz v31, :cond_2

    .line 199
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/intel/bluetooth/BlueCoveImpl;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v11

    .line 204
    :cond_2
    const/16 v5, 0x3a

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    .line 206
    .local v19, "hostEnd":I
    const/4 v5, -0x1

    move/from16 v0, v19

    if-le v0, v5, :cond_11

    .line 207
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 208
    const-string v5, "localhost"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 211
    .local v22, "isServer":Z
    if-eqz v23, :cond_8

    .line 212
    new-instance v26, Ljava/util/Hashtable;

    invoke-direct/range {v26 .. v26}, Ljava/util/Hashtable;-><init>()V

    .line 213
    .local v26, "params":Ljava/util/Hashtable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    const/16 v22, 0x1

    .line 228
    :goto_1
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 229
    .local v27, "paramsStr":Ljava/lang/String;
    new-instance v34, Lcom/intel/bluetooth/UtilsStringTokenizer;

    const-string v5, ";"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5}, Lcom/intel/bluetooth/UtilsStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .local v34, "tok":Lcom/intel/bluetooth/UtilsStringTokenizer;
    invoke-virtual/range {v34 .. v34}, Lcom/intel/bluetooth/UtilsStringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 231
    invoke-virtual/range {v34 .. v34}, Lcom/intel/bluetooth/UtilsStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v28

    .line 235
    :goto_2
    invoke-virtual/range {v34 .. v34}, Lcom/intel/bluetooth/UtilsStringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_d

    .line 267
    .end local v26    # "params":Ljava/util/Hashtable;
    .end local v27    # "paramsStr":Ljava/lang/String;
    .end local v34    # "tok":Lcom/intel/bluetooth/UtilsStringTokenizer;
    :goto_3
    if-eqz v23, :cond_4

    .line 268
    if-eqz v28, :cond_3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 270
    :cond_3
    const/16 v5, 0x28a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    .line 286
    :cond_4
    if-eqz v18, :cond_5

    if-nez v28, :cond_14

    .line 287
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 191
    .end local v11    # "bluetoothStack":Lcom/intel/bluetooth/BluetoothStack;
    .end local v19    # "hostEnd":I
    .end local v21    # "isL2CAP":Z
    .end local v22    # "isServer":Z
    .end local v23    # "isTCPOBEX":Z
    .end local v31    # "schemeBluetooth":Z
    :cond_6
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 213
    .restart local v11    # "bluetoothStack":Lcom/intel/bluetooth/BluetoothStack;
    .restart local v19    # "hostEnd":I
    .restart local v21    # "isL2CAP":Z
    .restart local v22    # "isServer":Z
    .restart local v23    # "isTCPOBEX":Z
    .restart local v26    # "params":Ljava/util/Hashtable;
    .restart local v31    # "schemeBluetooth":Z
    :cond_7
    const/16 v22, 0x0

    goto :goto_1

    .line 214
    .end local v26    # "params":Ljava/util/Hashtable;
    :cond_8
    if-eqz v21, :cond_a

    .line 215
    if-eqz v22, :cond_9

    .line 216
    sget-object v26, Lcom/intel/bluetooth/MicroeditionConnector;->srvParamsL2CAP:Ljava/util/Hashtable;

    .restart local v26    # "params":Ljava/util/Hashtable;
    goto :goto_1

    .line 218
    .end local v26    # "params":Ljava/util/Hashtable;
    :cond_9
    sget-object v26, Lcom/intel/bluetooth/MicroeditionConnector;->cliParamsL2CAP:Ljava/util/Hashtable;

    .restart local v26    # "params":Ljava/util/Hashtable;
    goto :goto_1

    .line 221
    .end local v26    # "params":Ljava/util/Hashtable;
    :cond_a
    if-eqz v22, :cond_b

    .line 222
    sget-object v26, Lcom/intel/bluetooth/MicroeditionConnector;->srvParams:Ljava/util/Hashtable;

    .restart local v26    # "params":Ljava/util/Hashtable;
    goto :goto_1

    .line 224
    .end local v26    # "params":Ljava/util/Hashtable;
    :cond_b
    sget-object v26, Lcom/intel/bluetooth/MicroeditionConnector;->cliParams:Ljava/util/Hashtable;

    .restart local v26    # "params":Ljava/util/Hashtable;
    goto :goto_1

    .line 233
    .restart local v27    # "paramsStr":Ljava/lang/String;
    .restart local v34    # "tok":Lcom/intel/bluetooth/UtilsStringTokenizer;
    :cond_c
    move-object/from16 v28, v27

    .line 235
    goto :goto_2

    .line 236
    :cond_d
    invoke-virtual/range {v34 .. v34}, Lcom/intel/bluetooth/UtilsStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v33

    .line 237
    .local v33, "t":Ljava/lang/String;
    const/16 v5, 0x3d

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 238
    .local v15, "equals":I
    const/4 v5, -0x1

    if-le v15, v5, :cond_10

    .line 239
    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 240
    .local v25, "param":Ljava/lang/String;
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v36

    .line 241
    .local v36, "value":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/intel/bluetooth/MicroeditionConnector;->validParamName(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 242
    .local v35, "validName":Ljava/lang/String;
    if-eqz v35, :cond_f

    .line 243
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 244
    .local v17, "hasValue":Ljava/lang/String;
    if-eqz v17, :cond_e

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 245
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "duplicate param ["

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] value ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 247
    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 246
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 249
    :cond_e
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 251
    .end local v17    # "hasValue":Ljava/lang/String;
    :cond_f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "invalid param ["

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] value ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 255
    .end local v25    # "param":Ljava/lang/String;
    .end local v35    # "validName":Ljava/lang/String;
    .end local v36    # "value":Ljava/lang/String;
    :cond_10
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "invalid param ["

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 259
    .end local v15    # "equals":I
    .end local v22    # "isServer":Z
    .end local v26    # "params":Ljava/util/Hashtable;
    .end local v27    # "paramsStr":Ljava/lang/String;
    .end local v33    # "t":Ljava/lang/String;
    .end local v34    # "tok":Lcom/intel/bluetooth/UtilsStringTokenizer;
    :cond_11
    if-eqz v23, :cond_13

    .line 260
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 261
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_12

    const/16 v22, 0x1

    .restart local v22    # "isServer":Z
    :goto_4
    goto/16 :goto_3

    .end local v22    # "isServer":Z
    :cond_12
    const/16 v22, 0x0

    goto :goto_4

    .line 263
    :cond_13
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 264
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 290
    .restart local v22    # "isServer":Z
    :cond_14
    const/4 v3, 0x0

    .line 292
    .local v3, "notifierParams":Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    const/4 v13, 0x0

    .line 294
    .local v13, "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    const-string v5, "android"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    .line 296
    .local v20, "isAndroid":Z
    const/4 v12, 0x0

    .line 297
    .local v12, "channel":I
    if-eqz v22, :cond_1f

    .line 298
    if-nez p3, :cond_15

    .line 299
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 300
    const-string v6, "Can\'t use server connection URL"

    .line 299
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 302
    :cond_15
    const-string v5, "name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_19

    .line 303
    const-string v5, "name"

    const-string v6, "BlueCove"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_16
    :goto_5
    if-eqz v31, :cond_34

    .line 308
    new-instance v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;

    .line 309
    .end local v3    # "notifierParams":Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    new-instance v4, Ljavax/bluetooth/UUID;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-direct {v4, v0, v5}, Ljavax/bluetooth/UUID;-><init>(Ljava/lang/String;Z)V

    .line 310
    const-string v5, "authenticate"

    .line 309
    move-object/from16 v0, v37

    invoke-static {v0, v5}, Lcom/intel/bluetooth/MicroeditionConnector;->paramBoolean(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    .line 310
    const-string v6, "encrypt"

    move-object/from16 v0, v37

    invoke-static {v0, v6}, Lcom/intel/bluetooth/MicroeditionConnector;->paramBoolean(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v6

    .line 311
    const-string v8, "authorize"

    move-object/from16 v0, v37

    invoke-static {v0, v8}, Lcom/intel/bluetooth/MicroeditionConnector;->paramBoolean(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v7

    .line 312
    const-string v8, "name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "master"

    move-object/from16 v0, v37

    invoke-static {v0, v9}, Lcom/intel/bluetooth/MicroeditionConnector;->paramBoolean(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v9

    .line 308
    invoke-direct/range {v3 .. v9}, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;-><init>(Ljavax/bluetooth/UUID;ZZZLjava/lang/String;Z)V

    .line 313
    .restart local v3    # "notifierParams":Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    move/from16 v0, p2

    iput-boolean v0, v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->timeouts:Z

    .line 314
    iget-boolean v5, v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    if-eqz v5, :cond_17

    iget-boolean v5, v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    if-nez v5, :cond_17

    .line 315
    const-string v5, "authenticate"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 316
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    .line 323
    :cond_17
    iget-boolean v5, v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authorize:Z

    if-eqz v5, :cond_18

    iget-boolean v5, v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    if-nez v5, :cond_18

    .line 324
    const-string v5, "authenticate"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1b

    .line 325
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    .line 332
    :cond_18
    if-eqz v21, :cond_34

    .line 334
    const-string v5, "bluecovepsm"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 335
    .local v10, "bluecove_ext_psm":Ljava/lang/String;
    if-eqz v10, :cond_34

    .line 336
    invoke-interface {v11}, Lcom/intel/bluetooth/BluetoothStack;->getFeatureSet()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_1c

    .line 337
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 338
    const-string v6, "bluecovepsm extension not supported on this stack"

    .line 337
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 304
    .end local v10    # "bluecove_ext_psm":Ljava/lang/String;
    :cond_19
    if-eqz v31, :cond_16

    .line 305
    const-string v5, "name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/intel/bluetooth/MicroeditionConnector;->validateBluetoothServiceName(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 318
    :cond_1a
    new-instance v5, Ljavax/bluetooth/BluetoothConnectionException;

    .line 319
    const/4 v6, 0x6

    .line 320
    const-string v8, "encryption requires authentication"

    .line 318
    invoke-direct {v5, v6, v8}, Ljavax/bluetooth/BluetoothConnectionException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 327
    :cond_1b
    new-instance v5, Ljavax/bluetooth/BluetoothConnectionException;

    .line 328
    const/4 v6, 0x6

    .line 329
    const-string v8, "authorization requires authentication"

    .line 327
    invoke-direct {v5, v6, v8}, Ljavax/bluetooth/BluetoothConnectionException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 341
    .restart local v10    # "bluecove_ext_psm":Ljava/lang/String;
    :cond_1c
    const/16 v5, 0x10

    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v29

    .line 342
    .local v29, "psm":I
    move/from16 v0, v29

    invoke-static {v0, v10}, Lcom/intel/bluetooth/MicroeditionConnector;->validateL2CAPPSM(ILjava/lang/String;)V

    .line 343
    move/from16 v0, v29

    iput v0, v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->bluecove_ext_psm:I

    move v7, v12

    .end local v12    # "channel":I
    .local v7, "channel":I
    move-object v4, v13

    .line 421
    .end local v10    # "bluecove_ext_psm":Ljava/lang/String;
    .end local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .end local v29    # "psm":I
    .local v4, "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    :goto_6
    const/16 v24, 0x0

    .line 423
    .local v24, "obexConnectionParams":Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    const-string v5, "tcpobex"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 424
    const-string v5, "btgoep"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 425
    :cond_1d
    new-instance v24, Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    .end local v24    # "obexConnectionParams":Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    invoke-direct/range {v24 .. v24}, Lcom/intel/bluetooth/obex/OBEXConnectionParams;-><init>()V

    .line 426
    .restart local v24    # "obexConnectionParams":Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    move/from16 v0, p2

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->timeouts:Z

    .line 428
    const-string v5, "bluecove.obex.timeout"

    .line 429
    const v6, 0x1d4c0

    .line 427
    invoke-static {v5, v6}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v24

    iput v5, v0, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->timeout:I

    .line 431
    const-string v5, "bluecove.obex.mtu"

    .line 432
    const/16 v6, 0x400

    .line 430
    invoke-static {v5, v6}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v24

    iput v5, v0, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->mtu:I

    .line 438
    :cond_1e
    const-string v5, "btspp"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 439
    if-eqz v22, :cond_29

    .line 440
    new-instance v5, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;

    invoke-direct {v5, v11, v3}, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;-><init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;)V

    .line 489
    :goto_7
    return-object v5

    .line 348
    .end local v4    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .end local v7    # "channel":I
    .end local v24    # "obexConnectionParams":Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    .restart local v12    # "channel":I
    .restart local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    :cond_1f
    if-nez v20, :cond_21

    .line 350
    if-eqz v21, :cond_20

    const/16 v5, 0x10

    :goto_8
    :try_start_0
    move-object/from16 v0, v28

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 354
    .end local v12    # "channel":I
    .restart local v7    # "channel":I
    if-gez v7, :cond_22

    .line 355
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "channel "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 350
    .end local v7    # "channel":I
    .restart local v12    # "channel":I
    :cond_20
    const/16 v5, 0xa

    goto :goto_8

    .line 351
    :catch_0
    move-exception v14

    .line 352
    .local v14, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "channel "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_21
    move v7, v12

    .line 358
    .end local v12    # "channel":I
    .restart local v7    # "channel":I
    :cond_22
    if-eqz v31, :cond_33

    .line 359
    if-nez v20, :cond_27

    .line 360
    if-eqz v21, :cond_25

    .line 361
    move-object/from16 v0, v28

    invoke-static {v7, v0}, Lcom/intel/bluetooth/MicroeditionConnector;->validateL2CAPPSM(ILjava/lang/String;)V

    .line 370
    :cond_23
    new-instance v4, Lcom/intel/bluetooth/BluetoothConnectionParams;

    .line 371
    invoke-static/range {v18 .. v18}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljava/lang/String;)J

    move-result-wide v5

    .line 372
    const-string v8, "authenticate"

    move-object/from16 v0, v37

    invoke-static {v0, v8}, Lcom/intel/bluetooth/MicroeditionConnector;->paramBoolean(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v8

    .line 373
    const-string v9, "encrypt"

    .line 372
    move-object/from16 v0, v37

    invoke-static {v0, v9}, Lcom/intel/bluetooth/MicroeditionConnector;->paramBoolean(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v9

    .line 370
    invoke-direct/range {v4 .. v9}, Lcom/intel/bluetooth/BluetoothConnectionParams;-><init>(JIZZ)V

    .line 405
    .end local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .restart local v4    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    :goto_9
    move/from16 v0, p2

    iput-boolean v0, v4, Lcom/intel/bluetooth/BluetoothConnectionParams;->timeouts:Z

    .line 406
    iget-boolean v5, v4, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    if-eqz v5, :cond_24

    .line 407
    iget-boolean v5, v4, Lcom/intel/bluetooth/BluetoothConnectionParams;->authenticate:Z

    if-nez v5, :cond_24

    .line 408
    const-string v5, "authenticate"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_28

    .line 409
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/intel/bluetooth/BluetoothConnectionParams;->authenticate:Z

    .line 417
    :cond_24
    const-string v5, "bluecove.connect.timeout"

    .line 418
    const v6, 0x1d4c0

    .line 416
    invoke-static {v5, v6}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/intel/bluetooth/BluetoothConnectionParams;->timeout:I

    goto/16 :goto_6

    .line 363
    .end local v4    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .restart local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    :cond_25
    const/4 v5, 0x1

    if-lt v7, v5, :cond_26

    .line 364
    const/16 v5, 0x1e

    if-le v7, v5, :cond_23

    .line 365
    :cond_26
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "RFCOMM channel "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 365
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 380
    :cond_27
    :try_start_1
    const-string v5, "com.intel.bluetooth.AndroidBluetoothConnectionParams"

    .line 379
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 382
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v8

    const/4 v8, 0x1

    .line 383
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v8

    .line 381
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 385
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 387
    invoke-static/range {v18 .. v18}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljava/lang/String;)J

    move-result-wide v38

    .line 386
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    .line 389
    const-string v9, "authenticate"

    .line 388
    move-object/from16 v0, v37

    invoke-static {v0, v9}, Lcom/intel/bluetooth/MicroeditionConnector;->paramBoolean(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x2

    .line 391
    const-string v9, "encrypt"

    .line 390
    move-object/from16 v0, v37

    invoke-static {v0, v9}, Lcom/intel/bluetooth/MicroeditionConnector;->paramBoolean(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v8

    .line 384
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intel/bluetooth/BluetoothConnectionParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 393
    .end local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .restart local v4    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 394
    const-string v6, "setServiceUUID"

    .line 395
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v38, Ljava/lang/String;

    aput-object v38, v8, v9

    .line 394
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 397
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v28, v6, v8

    .line 396
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_9

    .line 398
    :catch_1
    move-exception v16

    .line 399
    .local v16, "ex":Ljava/lang/Exception;
    :goto_a
    new-instance v5, Ljavax/bluetooth/BluetoothConnectionException;

    .line 400
    const/4 v6, 0x4

    .line 401
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .line 399
    invoke-direct {v5, v6, v8}, Ljavax/bluetooth/BluetoothConnectionException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 411
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_28
    new-instance v5, Ljavax/bluetooth/BluetoothConnectionException;

    .line 412
    const/4 v6, 0x6

    .line 413
    const-string v8, "encryption requires authentication"

    .line 411
    invoke-direct {v5, v6, v8}, Ljavax/bluetooth/BluetoothConnectionException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 443
    .restart local v24    # "obexConnectionParams":Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    :cond_29
    new-instance v5, Lcom/intel/bluetooth/BluetoothRFCommClientConnection;

    invoke-direct {v5, v11, v4}, Lcom/intel/bluetooth/BluetoothRFCommClientConnection;-><init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionParams;)V

    goto/16 :goto_7

    .line 446
    :cond_2a
    const-string v5, "btgoep"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 447
    if-eqz v22, :cond_2b

    .line 448
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->obex:Z

    .line 449
    new-instance v5, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;

    .line 450
    new-instance v6, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;

    invoke-direct {v6, v11, v3}, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;-><init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;)V

    .line 449
    move-object/from16 v0, v24

    invoke-direct {v5, v6, v0}, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;-><init>(Ljavax/microedition/io/StreamConnectionNotifier;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V

    goto/16 :goto_7

    .line 453
    :cond_2b
    new-instance v5, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    .line 454
    new-instance v6, Lcom/intel/bluetooth/BluetoothRFCommClientConnection;

    invoke-direct {v6, v11, v4}, Lcom/intel/bluetooth/BluetoothRFCommClientConnection;-><init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionParams;)V

    .line 453
    move-object/from16 v0, v24

    invoke-direct {v5, v6, v0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;-><init>(Ljavax/microedition/io/StreamConnection;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V

    goto/16 :goto_7

    .line 457
    :cond_2c
    const-string v5, "btl2cap"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 458
    if-eqz v22, :cond_2d

    .line 459
    new-instance v5, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;

    .line 460
    const-string v6, "receivemtu"

    move-object/from16 v0, v37

    invoke-static {v0, v6}, Lcom/intel/bluetooth/MicroeditionConnector;->paramL2CAPMTU(Ljava/util/Hashtable;Ljava/lang/String;)I

    move-result v6

    .line 461
    const-string v8, "transmitmtu"

    move-object/from16 v0, v37

    invoke-static {v0, v8}, Lcom/intel/bluetooth/MicroeditionConnector;->paramL2CAPMTU(Ljava/util/Hashtable;Ljava/lang/String;)I

    move-result v8

    .line 459
    invoke-direct {v5, v11, v3, v6, v8}, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;-><init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;II)V

    goto/16 :goto_7

    .line 463
    :cond_2d
    new-instance v5, Lcom/intel/bluetooth/BluetoothL2CAPClientConnection;

    .line 464
    const-string v6, "receivemtu"

    move-object/from16 v0, v37

    invoke-static {v0, v6}, Lcom/intel/bluetooth/MicroeditionConnector;->paramL2CAPMTU(Ljava/util/Hashtable;Ljava/lang/String;)I

    move-result v6

    .line 465
    const-string v8, "transmitmtu"

    move-object/from16 v0, v37

    invoke-static {v0, v8}, Lcom/intel/bluetooth/MicroeditionConnector;->paramL2CAPMTU(Ljava/util/Hashtable;Ljava/lang/String;)I

    move-result v8

    .line 463
    invoke-direct {v5, v11, v4, v6, v8}, Lcom/intel/bluetooth/BluetoothL2CAPClientConnection;-><init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionParams;II)V

    goto/16 :goto_7

    .line 467
    :cond_2e
    const-string v5, "tcpobex"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 468
    if-eqz v22, :cond_2f

    .line 470
    :try_start_3
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    .line 474
    new-instance v5, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;

    new-instance v6, Lcom/intel/bluetooth/gcf/socket/ServerSocketConnection;

    .line 475
    invoke-direct {v6, v7}, Lcom/intel/bluetooth/gcf/socket/ServerSocketConnection;-><init>(I)V

    .line 474
    move-object/from16 v0, v24

    invoke-direct {v5, v6, v0}, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;-><init>(Ljavax/microedition/io/StreamConnectionNotifier;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V

    goto/16 :goto_7

    .line 471
    :catch_2
    move-exception v14

    .line 472
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "port "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 477
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_2f
    new-instance v5, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    new-instance v6, Lcom/intel/bluetooth/gcf/socket/SocketConnection;

    .line 478
    move-object/from16 v0, v18

    invoke-direct {v6, v0, v7}, Lcom/intel/bluetooth/gcf/socket/SocketConnection;-><init>(Ljava/lang/String;I)V

    .line 477
    move-object/from16 v0, v24

    invoke-direct {v5, v6, v0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;-><init>(Ljavax/microedition/io/StreamConnection;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V

    goto/16 :goto_7

    .line 480
    :cond_30
    const-string v5, "socket"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 481
    if-eqz v22, :cond_31

    .line 483
    :try_start_4
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    .line 487
    new-instance v5, Lcom/intel/bluetooth/gcf/socket/ServerSocketConnection;

    invoke-direct {v5, v7}, Lcom/intel/bluetooth/gcf/socket/ServerSocketConnection;-><init>(I)V

    goto/16 :goto_7

    .line 484
    :catch_3
    move-exception v14

    .line 485
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "port "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 489
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_31
    new-instance v5, Lcom/intel/bluetooth/gcf/socket/SocketConnection;

    move-object/from16 v0, v18

    invoke-direct {v5, v0, v7}, Lcom/intel/bluetooth/gcf/socket/SocketConnection;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 492
    :cond_32
    new-instance v5, Ljavax/microedition/io/ConnectionNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "scheme ["

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/microedition/io/ConnectionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 398
    .end local v4    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .end local v24    # "obexConnectionParams":Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    .restart local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    :catch_4
    move-exception v16

    move-object v4, v13

    .end local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .restart local v4    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    goto/16 :goto_a

    .end local v4    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .restart local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    :cond_33
    move-object v4, v13

    .end local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .restart local v4    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    goto/16 :goto_6

    .end local v4    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .end local v7    # "channel":I
    .restart local v12    # "channel":I
    .restart local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    :cond_34
    move v7, v12

    .end local v12    # "channel":I
    .restart local v7    # "channel":I
    move-object v4, v13

    .end local v13    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    .restart local v4    # "connectionParams":Lcom/intel/bluetooth/BluetoothConnectionParams;
    goto/16 :goto_6
.end method

.method public static openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 656
    const/4 v1, 0x1

    invoke-static {p0, v1, v2, v2}, Lcom/intel/bluetooth/MicroeditionConnector;->openImpl(Ljava/lang/String;IZZ)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/InputConnection;

    .line 659
    .local v0, "con":Ljavax/microedition/io/InputConnection;
    :try_start_0
    invoke-interface {v0}, Ljavax/microedition/io/InputConnection;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 661
    invoke-interface {v0}, Ljavax/microedition/io/InputConnection;->close()V

    .line 659
    return-object v1

    .line 660
    :catchall_0
    move-exception v1

    .line 661
    invoke-interface {v0}, Ljavax/microedition/io/InputConnection;->close()V

    .line 662
    throw v1
.end method

.method public static openOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 674
    const/4 v1, 0x2

    invoke-static {p0, v1, v2, v2}, Lcom/intel/bluetooth/MicroeditionConnector;->openImpl(Ljava/lang/String;IZZ)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/OutputConnection;

    .line 677
    .local v0, "con":Ljavax/microedition/io/OutputConnection;
    :try_start_0
    invoke-interface {v0}, Ljavax/microedition/io/OutputConnection;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 679
    invoke-interface {v0}, Ljavax/microedition/io/OutputConnection;->close()V

    .line 677
    return-object v1

    .line 678
    :catchall_0
    move-exception v1

    .line 679
    invoke-interface {v0}, Ljavax/microedition/io/OutputConnection;->close()V

    .line 680
    throw v1
.end method

.method private static paramBoolean(Ljava/util/Hashtable;Ljava/lang/String;)Z
    .locals 4
    .param p0, "values"    # Ljava/util/Hashtable;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 554
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 555
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v1

    .line 557
    :cond_1
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    const/4 v1, 0x1

    goto :goto_0

    .line 559
    :cond_2
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid param value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 563
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static paramL2CAPMTU(Ljava/util/Hashtable;Ljava/lang/String;)I
    .locals 6
    .param p0, "values"    # Ljava/util/Hashtable;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x30

    .line 568
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 569
    .local v2, "v":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 570
    const-string v3, "transmitmtu"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 572
    const/4 v1, -0x1

    .line 584
    :cond_0
    :goto_0
    return v1

    .line 574
    :cond_1
    const/16 v1, 0x2a0

    goto :goto_0

    .line 578
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 579
    .local v1, "mtu":I
    if-ge v1, v3, :cond_0

    .line 582
    if-lez v1, :cond_3

    if-ge v1, v3, :cond_3

    .line 583
    const-string v4, "transmitmtu"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    .line 584
    goto :goto_0

    .line 586
    .end local v1    # "mtu":I
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid MTU value "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 589
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "mtu":I
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid MTU param value "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 590
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 589
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static validParamName(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "map"    # Ljava/util/Hashtable;
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, "validName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 149
    .end local v0    # "validName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 144
    .restart local v0    # "validName":Ljava/lang/String;
    :cond_0
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const-string v0, "android"

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateBluetoothServiceName(Ljava/lang/String;)V
    .locals 6
    .param p0, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 537
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 538
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "zero length service name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 540
    :cond_0
    const-string v0, " -_"

    .line 541
    .local v0, "allowNameCharactes":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 551
    return-void

    .line 542
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 543
    .local v1, "c":C
    const/16 v3, 0x41

    if-lt v1, v3, :cond_2

    const/16 v3, 0x5a

    if-le v1, v3, :cond_5

    :cond_2
    const/16 v3, 0x61

    if-lt v1, v3, :cond_3

    const/16 v3, 0x7a

    if-le v1, v3, :cond_5

    .line 544
    :cond_3
    const/16 v3, 0x30

    if-lt v1, v3, :cond_4

    const/16 v3, 0x39

    if-le v1, v3, :cond_5

    .line 545
    :cond_4
    const-string v3, " -_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 541
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 549
    const-string v5, "\' in service name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 548
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static validateL2CAPPSM(ILjava/lang/String;)V
    .locals 6
    .param p0, "channel"    # I
    .param p1, "channelAsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1001

    .line 500
    const/4 v2, 0x5

    if-lt p0, v2, :cond_0

    .line 501
    const v2, 0xffff

    if-le p0, v2, :cond_1

    .line 503
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PCM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_1
    if-ge p0, v5, :cond_2

    .line 508
    const-string v2, "bluecove.jsr82.psm_minimum_off"

    .line 509
    const/4 v3, 0x0

    .line 507
    invoke-static {v2, v3}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 510
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PCM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 513
    const-string v4, ", PCM values restricted by JSR-82 to minimum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 514
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 515
    const-string v4, ", see BlueCoveConfigProperties.PROPERTY_JSR_82_PSM_MINIMUM_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 511
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    :cond_2
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_3

    .line 520
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "9th bit set in PCM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 520
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_3
    and-int/lit16 v2, p0, 0xff

    int-to-byte v0, v2

    .line 525
    .local v0, "lsByte":B
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_4

    .line 526
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PSM value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 527
    const-string v4, " least significant byte must be odd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    :cond_4
    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v1, v2

    .line 530
    .local v1, "msByte":B
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 531
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PSM value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    const-string v4, " most significant byte must be even"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :cond_5
    return-void
.end method
