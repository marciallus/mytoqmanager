.class Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
.super Ljava/lang/Thread;
.source "BTConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedThread"
.end annotation


# instance fields
.field private mmInStream:Ljava/io/InputStream;

.field private mmOutStream:Ljava/io/OutputStream;

.field private mmSocket:Landroid/bluetooth/BluetoothSocket;

.field private volatile stop:Z

.field final synthetic this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)V
    .locals 4
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "socket"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    const/4 v2, 0x0

    .line 754
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 749
    iput-object v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 750
    iput-object v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    .line 751
    iput-object v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    .line 752
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->stop:Z

    .line 755
    const-string v2, "BTConnectionListener"

    const-string v3, "create ConnectedThread"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iput-object p3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 760
    :try_start_0
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    .line 761
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 773
    :goto_0
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 765
    const-string v2, "BTConnectionListener"

    const-string v3, "ConnectedThread with IO Exception: e"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 767
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 768
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 769
    const-string v2, "BTConnectionListener"

    const-string v3, "Exception in ConnectedThread, temp sockets not created"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 1177
    :try_start_0
    const-string v1, "BTConnectionListener"

    const-string v2, "ConnectedThread cancel() called!"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->closeInputStream()V

    .line 1179
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->closeOutputStream()V

    .line 1180
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->closeBTSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :goto_0
    return-void

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to close() socket during connection failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized closeBTSocket()V
    .locals 2

    .prologue
    .line 1215
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 1217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1215
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized closeInputStream()V
    .locals 2

    .prologue
    .line 1191
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1191
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized closeOutputStream()V
    .locals 2

    .prologue
    .line 1203
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1203
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 25

    .prologue
    .line 776
    const-string v22, "BTConnectionListener"

    const-string v23, "BEGIN mConnectedThread"

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    new-instance v23, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;-><init>(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V

    # setter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1002(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    .line 781
    const/16 v22, 0x1

    sput-boolean v22, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    .line 784
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "End Point Type = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->stop:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v22

    if-nez v22, :cond_14

    .line 788
    const-string v22, "BTConnectionListener"

    const-string v23, "Reading WD Device byte data"

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 790
    .local v17, "paramBytes":[B
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v15, v0, [B

    .line 791
    .local v15, "messageLenBytes":[B
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 794
    .local v20, "transactionID":[B
    const/4 v7, 0x0

    .line 795
    .local v7, "bytesRecv":I
    :goto_1
    :try_start_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_1

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .local v12, "lastRet":I
    if-gez v12, :cond_4

    .line 803
    .end local v12    # "lastRet":I
    :cond_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v7, v0, :cond_5

    .line 804
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Connected Thread first 6 bytes read failed!! bytes read = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " bytes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    new-instance v22, Ljava/io/IOException;

    const-string v23, "ConnectedThread failed to read first 6 bytes"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :catch_0
    move-exception v9

    .line 913
    .local v9, "e":Ljava/lang/Exception;
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "BT Socket disconnected "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WD disconnected: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 919
    const/16 v22, 0x0

    sput-boolean v22, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    .line 1125
    .end local v7    # "bytesRecv":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "messageLenBytes":[B
    .end local v17    # "paramBytes":[B
    .end local v20    # "transactionID":[B
    :cond_2
    :goto_2
    const-string v22, "BTConnectionListener"

    const-string v23, "While loop exited BT Socket disconnected "

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v22, "BTConnectionListener"

    const-string v23, "While loop exited WD disconnected: "

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->closeInputStream()V

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->closeOutputStream()V

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->closeBTSocket()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1143
    :goto_3
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mSPPState = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v24, v0

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I
    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)I

    move-result v22

    if-eqz v22, :cond_3

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isStopListenerCalled:Z
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$700(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Z

    move-result v22

    if-nez v22, :cond_20

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connectionFailed()V

    .line 1153
    :cond_3
    :goto_4
    return-void

    .line 801
    .restart local v7    # "bytesRecv":I
    .restart local v12    # "lastRet":I
    .restart local v15    # "messageLenBytes":[B
    .restart local v17    # "paramBytes":[B
    .restart local v20    # "transactionID":[B
    :cond_4
    add-int/2addr v7, v12

    .line 802
    goto/16 :goto_1

    .line 812
    .end local v12    # "lastRet":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->setContinueFlagEnabled(Z)V

    .line 816
    :cond_6
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WD src in listener:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-byte v24, v17, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WD dest in listener:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-byte v24, v17, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const/16 v22, 0x0

    aget-byte v22, v17, v22

    if-ltz v22, :cond_7

    const/16 v22, 0x1

    aget-byte v22, v17, v22

    if-gez v22, :cond_8

    .line 822
    :cond_7
    new-instance v22, Ljava/io/IOException;

    const-string v23, "src and dest value read are negative"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 827
    :cond_8
    const/4 v6, 0x0

    .local v6, "bSrcCheck":Z
    const/4 v5, 0x0

    .line 828
    .local v5, "bDestCheck":Z
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->SRC_ADDRESS:[I

    .local v4, "arr$":[I
    array-length v13, v4

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_5
    if-ge v11, v13, :cond_9

    aget v19, v4, v11

    .line 829
    .local v19, "src":I
    const/16 v22, 0x0

    aget-byte v22, v17, v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 830
    const/4 v6, 0x1

    .line 834
    .end local v19    # "src":I
    :cond_9
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->DEST_ADDRESS:[I

    array-length v13, v4

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v13, :cond_a

    aget v8, v4, v11

    .line 835
    .local v8, "dest":I
    const/16 v22, 0x1

    aget-byte v22, v17, v22

    move/from16 v0, v22

    if-ne v0, v8, :cond_d

    .line 836
    const/4 v5, 0x1

    .line 842
    .end local v8    # "dest":I
    :cond_a
    if-eqz v6, :cond_b

    if-nez v5, :cond_e

    .line 843
    :cond_b
    new-instance v22, Ljava/io/IOException;

    const-string v23, "src and dest value read are invalid"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 828
    .restart local v19    # "src":I
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 834
    .end local v19    # "src":I
    .restart local v8    # "dest":I
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 846
    .end local v8    # "dest":I
    :cond_e
    const/16 v22, 0x0

    const/16 v23, 0x2

    aget-byte v23, v17, v23

    aput-byte v23, v15, v22

    .line 847
    const/16 v22, 0x1

    const/16 v23, 0x3

    aget-byte v23, v17, v23

    aput-byte v23, v15, v22

    .line 848
    invoke-static {v15}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v16

    .line 849
    .local v16, "msgLen":I
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WD sent payload length: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const/16 v22, 0x0

    const/16 v23, 0x4

    aget-byte v23, v17, v23

    aput-byte v23, v20, v22

    .line 852
    const/16 v22, 0x1

    const/16 v23, 0x5

    aget-byte v23, v17, v23

    aput-byte v23, v20, v22

    .line 853
    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v21

    .line 854
    .local v21, "transactionId":I
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WD transaction ID: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 860
    .local v18, "payloadBytes":[B
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v22

    if-eqz v22, :cond_f

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v22

    const-string v23, "release"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    # invokes: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->startTimer()V
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1300(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V

    .line 867
    :cond_f
    const/4 v7, 0x0

    .line 868
    :goto_7
    move/from16 v0, v16

    if-ge v7, v0, :cond_10

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    move-object/from16 v22, v0

    sub-int v23, v16, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .restart local v12    # "lastRet":I
    if-gez v12, :cond_12

    .line 876
    .end local v12    # "lastRet":I
    :cond_10
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Payload bytes read: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " bytes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v22

    if-eqz v22, :cond_11

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v22

    const-string v23, "release"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 884
    const-string v22, "BTConnectionListener"

    const-string v23, "stopTimer() called: isTimerRequired set to false"

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    # invokes: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->stopTimer()V
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1200(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V

    .line 889
    :cond_11
    move/from16 v0, v16

    if-eq v7, v0, :cond_13

    .line 890
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Connected Thread payload read failed!! bytes read = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " bytes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ConnectedThread failed to read payload "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " bytes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 874
    .restart local v12    # "lastRet":I
    :cond_12
    add-int/2addr v7, v12

    .line 875
    goto/16 :goto_7

    .line 898
    .end local v12    # "lastRet":I
    :cond_13
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    add-int v22, v22, v16

    move/from16 v0, v22

    new-array v14, v0, [B

    .line 900
    .local v14, "messageBytes":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    const/16 v22, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->read([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 924
    .end local v4    # "arr$":[I
    .end local v5    # "bDestCheck":Z
    .end local v6    # "bSrcCheck":Z
    .end local v7    # "bytesRecv":I
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "messageBytes":[B
    .end local v15    # "messageLenBytes":[B
    .end local v16    # "msgLen":I
    .end local v17    # "paramBytes":[B
    .end local v18    # "payloadBytes":[B
    .end local v20    # "transactionID":[B
    .end local v21    # "transactionId":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    .line 935
    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 936
    .restart local v17    # "paramBytes":[B
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v15, v0, [B

    .line 937
    .restart local v15    # "messageLenBytes":[B
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 941
    .restart local v20    # "transactionID":[B
    const/4 v7, 0x0

    .line 942
    .restart local v7    # "bytesRecv":I
    :goto_8
    :try_start_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_15

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .restart local v12    # "lastRet":I
    if-gez v12, :cond_18

    .line 953
    .end local v12    # "lastRet":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    move-result-object v22

    if-eqz v22, :cond_16

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->setContinueFlagEnabled(Z)V

    .line 957
    :cond_16
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EP-L src in listener:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-byte v24, v17, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EP-L dest in listener:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-byte v24, v17, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const/16 v22, 0x0

    const/16 v23, 0x2

    aget-byte v23, v17, v23

    aput-byte v23, v15, v22

    .line 961
    const/16 v22, 0x1

    const/16 v23, 0x3

    aget-byte v23, v17, v23

    aput-byte v23, v15, v22

    .line 962
    invoke-static {v15}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v16

    .line 963
    .restart local v16    # "msgLen":I
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EP-L sent payload length: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const/16 v22, 0x0

    const/16 v23, 0x4

    aget-byte v23, v17, v23

    aput-byte v23, v20, v22

    .line 966
    const/16 v22, 0x1

    const/16 v23, 0x5

    aget-byte v23, v17, v23

    aput-byte v23, v20, v22

    .line 967
    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v21

    .line 968
    .restart local v21    # "transactionId":I
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EP-L transaction ID: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 973
    .restart local v18    # "payloadBytes":[B
    const/4 v7, 0x0

    .line 974
    :goto_9
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_17

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .restart local v12    # "lastRet":I
    if-gez v12, :cond_19

    .line 984
    .end local v12    # "lastRet":I
    :cond_17
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    add-int v22, v22, v16

    move/from16 v0, v22

    new-array v14, v0, [B

    .line 986
    .restart local v14    # "messageBytes":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 991
    const/16 v22, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->read([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 999
    .end local v14    # "messageBytes":[B
    .end local v16    # "msgLen":I
    .end local v18    # "payloadBytes":[B
    .end local v21    # "transactionId":I
    :catch_1
    move-exception v9

    .line 1000
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v22, "BTConnectionListener"

    const-string v23, "EP-L disconnected"

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 948
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "lastRet":I
    :cond_18
    add-int/2addr v7, v12

    .line 949
    goto/16 :goto_8

    .line 980
    .restart local v16    # "msgLen":I
    .restart local v18    # "payloadBytes":[B
    .restart local v21    # "transactionId":I
    :cond_19
    add-int/2addr v7, v12

    .line 981
    goto :goto_9

    .line 1023
    .end local v7    # "bytesRecv":I
    .end local v12    # "lastRet":I
    .end local v15    # "messageLenBytes":[B
    .end local v16    # "msgLen":I
    .end local v17    # "paramBytes":[B
    .end local v18    # "payloadBytes":[B
    .end local v20    # "transactionID":[B
    .end local v21    # "transactionId":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 1034
    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 1035
    .restart local v17    # "paramBytes":[B
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v15, v0, [B

    .line 1036
    .restart local v15    # "messageLenBytes":[B
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 1040
    .restart local v20    # "transactionID":[B
    const/4 v7, 0x0

    .line 1041
    .restart local v7    # "bytesRecv":I
    :goto_a
    :try_start_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_1b

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .restart local v12    # "lastRet":I
    if-gez v12, :cond_1e

    .line 1052
    .end local v12    # "lastRet":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    move-result-object v22

    if-eqz v22, :cond_1c

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->setContinueFlagEnabled(Z)V

    .line 1056
    :cond_1c
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EP-R src in listener:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-byte v24, v17, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EP-R dest in listener:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-byte v24, v17, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const/16 v22, 0x0

    const/16 v23, 0x2

    aget-byte v23, v17, v23

    aput-byte v23, v15, v22

    .line 1060
    const/16 v22, 0x1

    const/16 v23, 0x3

    aget-byte v23, v17, v23

    aput-byte v23, v15, v22

    .line 1061
    invoke-static {v15}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v16

    .line 1062
    .restart local v16    # "msgLen":I
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EP-R sent payload length: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const/16 v22, 0x0

    const/16 v23, 0x4

    aget-byte v23, v17, v23

    aput-byte v23, v20, v22

    .line 1065
    const/16 v22, 0x1

    const/16 v23, 0x5

    aget-byte v23, v17, v23

    aput-byte v23, v20, v22

    .line 1066
    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v21

    .line 1067
    .restart local v21    # "transactionId":I
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EP-R transaction ID: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 1072
    .restart local v18    # "payloadBytes":[B
    const/4 v7, 0x0

    .line 1073
    :goto_b
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_1d

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .restart local v12    # "lastRet":I
    if-gez v12, :cond_1f

    .line 1083
    .end local v12    # "lastRet":I
    :cond_1d
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    add-int v22, v22, v16

    move/from16 v0, v22

    new-array v14, v0, [B

    .line 1085
    .restart local v14    # "messageBytes":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    const/16 v22, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->read([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1097
    .end local v14    # "messageBytes":[B
    .end local v16    # "msgLen":I
    .end local v18    # "payloadBytes":[B
    .end local v21    # "transactionId":I
    :catch_2
    move-exception v9

    .line 1098
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v22, "BTConnectionListener"

    const-string v23, "EP-R disconnected"

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1047
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "lastRet":I
    :cond_1e
    add-int/2addr v7, v12

    .line 1048
    goto/16 :goto_a

    .line 1079
    .restart local v16    # "msgLen":I
    .restart local v18    # "payloadBytes":[B
    .restart local v21    # "transactionId":I
    :cond_1f
    add-int/2addr v7, v12

    .line 1080
    goto :goto_b

    .line 1135
    .end local v7    # "bytesRecv":I
    .end local v12    # "lastRet":I
    .end local v15    # "messageLenBytes":[B
    .end local v16    # "msgLen":I
    .end local v17    # "paramBytes":[B
    .end local v18    # "payloadBytes":[B
    .end local v20    # "transactionID":[B
    .end local v21    # "transactionId":I
    :catch_3
    move-exception v10

    .line 1136
    .local v10, "e3":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1137
    const-string v22, "BTConnectionListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ConnectedThread with Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1149
    .end local v10    # "e3":Ljava/lang/Exception;
    :cond_20
    const-string v22, "BTConnectionListener"

    const-string v23, " ConnectedThread--stopConnection already called, no need to set the state to failed. "

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public stopConnectedThread()V
    .locals 1

    .prologue
    .line 1172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->stop:Z

    .line 1173
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    .line 1157
    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 1158
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1169
    :goto_0
    return-void

    .line 1161
    :cond_0
    const-string v1, "BTConnectionListener"

    const-string v2, "Failed to Write buffer byte array data in mmOutStream due to error"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1167
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
