.class abstract Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;
.super Ljava/lang/Object;
.source "BluetoothConnectionNotifierBase.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;
.implements Ljavax/microedition/io/Connection;


# static fields
.field private static stackConnections:Ljava/util/Hashtable;


# instance fields
.field protected bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

.field protected closed:Z

.field protected volatile handle:J

.field protected securityOpt:I

.field protected serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->stackConnections:Ljava/util/Hashtable;

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;)V
    .locals 5
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "params"    # Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->closed:Z

    .line 82
    iget-object v0, p2, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    new-instance v0, Lcom/intel/bluetooth/ServiceRecordImpl;

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intel/bluetooth/ServiceRecordImpl;-><init>(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;J)V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 89
    return-void
.end method

.method static shutdownConnections(Lcom/intel/bluetooth/BluetoothStack;)V
    .locals 7
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;

    .prologue
    .line 58
    sget-object v6, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->stackConnections:Ljava/util/Hashtable;

    monitor-enter v6

    .line 59
    :try_start_0
    sget-object v5, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->stackConnections:Ljava/util/Hashtable;

    invoke-virtual {v5, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 58
    .local v2, "connections":Ljava/util/Vector;
    monitor-exit v6

    .line 61
    if-nez v2, :cond_1

    .line 75
    :cond_0
    return-void

    .line 58
    .end local v2    # "connections":Ljava/util/Vector;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 64
    .restart local v2    # "connections":Ljava/util/Vector;
    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 65
    .local v1, "c2shutdown":Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    invoke-static {v5}, Lcom/intel/bluetooth/Utils;->clone(Ljava/util/Enumeration;)Ljava/util/Vector;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;

    .line 70
    .local v0, "c":Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;
    :try_start_1
    invoke-virtual {v0}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v3

    .line 72
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "connection shutdown"

    invoke-static {v5, v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->closed:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->shutdown()V

    .line 124
    :cond_0
    return-void
.end method

.method protected connectionCreated()V
    .locals 4

    .prologue
    .line 93
    sget-object v2, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->stackConnections:Ljava/util/Hashtable;

    monitor-enter v2

    .line 94
    :try_start_0
    sget-object v1, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->stackConnections:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 95
    .local v0, "connections":Ljava/util/Vector;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "connections":Ljava/util/Vector;
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 97
    .restart local v0    # "connections":Ljava/util/Vector;
    sget-object v1, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->stackConnections:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 101
    return-void

    .line 93
    .end local v0    # "connections":Ljava/util/Vector;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getServiceRecord()Ljavax/bluetooth/ServiceRecord;
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->closed:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConnectionNotifier is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    invoke-static {p0, v0}, Lcom/intel/bluetooth/ServiceRecordsRegistry;->register(Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;Lcom/intel/bluetooth/ServiceRecordImpl;)V

    .line 168
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    return-object v0
.end method

.method public shutdown()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 127
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->closed:Z

    .line 128
    iget-wide v3, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->handle:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1

    .line 129
    const-string v3, "closing ConnectionNotifier"

    iget-wide v4, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->handle:J

    invoke-static {v3, v4, v5}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 131
    sget-object v4, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->stackConnections:Ljava/util/Hashtable;

    monitor-enter v4

    .line 132
    :try_start_0
    sget-object v3, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->stackConnections:Ljava/util/Hashtable;

    .line 133
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 131
    .local v0, "connections":Ljava/util/Vector;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 137
    monitor-enter p0

    .line 138
    :try_start_1
    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->handle:J

    .line 139
    .local v1, "synchronizedHandle":J
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->handle:J

    .line 137
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    cmp-long v3, v1, v6

    if-eqz v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    invoke-static {v3}, Lcom/intel/bluetooth/ServiceRecordsRegistry;->unregister(Lcom/intel/bluetooth/ServiceRecordImpl;)V

    .line 145
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    iget v3, v3, Lcom/intel/bluetooth/ServiceRecordImpl;->deviceServiceClasses:I

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v3}, Lcom/intel/bluetooth/BluetoothStack;->getFeatureSet()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 149
    invoke-static {}, Lcom/intel/bluetooth/ServiceRecordsRegistry;->getDeviceServiceClasses()I

    move-result v4

    .line 148
    invoke-interface {v3, v4}, Lcom/intel/bluetooth/BluetoothStack;->setLocalDeviceServiceClasses(I)V

    .line 152
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->stackServerClose(J)V

    .line 155
    .end local v0    # "connections":Ljava/util/Vector;
    .end local v1    # "synchronizedHandle":J
    :cond_1
    return-void

    .line 131
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 137
    .restart local v0    # "connections":Ljava/util/Vector;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method protected abstract stackServerClose(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public updateServiceRecord(Z)V
    .locals 4
    .param p1, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    iget-boolean v1, v1, Lcom/intel/bluetooth/ServiceRecordImpl;->attributeUpdated:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 229
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    invoke-virtual {p0, v1}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->validateServiceRecord(Ljavax/bluetooth/ServiceRecord;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :try_start_1
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    invoke-virtual {p0, v1, p1}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->updateStackServiceRecord(Lcom/intel/bluetooth/ServiceRecordImpl;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    iput-boolean v3, v1, Lcom/intel/bluetooth/ServiceRecordImpl;->attributeUpdated:Z

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    iget v1, v1, Lcom/intel/bluetooth/ServiceRecordImpl;->deviceServiceClasses:I

    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    iget v2, v2, Lcom/intel/bluetooth/ServiceRecordImpl;->deviceServiceClassesRegistered:I

    if-eq v1, v2, :cond_2

    .line 244
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v1}, Lcom/intel/bluetooth/BluetoothStack;->getFeatureSet()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 247
    invoke-static {}, Lcom/intel/bluetooth/ServiceRecordsRegistry;->getDeviceServiceClasses()I

    move-result v2

    .line 246
    invoke-interface {v1, v2}, Lcom/intel/bluetooth/BluetoothStack;->setLocalDeviceServiceClasses(I)V

    .line 249
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    iget v2, v2, Lcom/intel/bluetooth/ServiceRecordImpl;->deviceServiceClasses:I

    iput v2, v1, Lcom/intel/bluetooth/ServiceRecordImpl;->deviceServiceClassesRegistered:I

    .line 251
    :cond_2
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    if-eqz p1, :cond_3

    .line 232
    new-instance v1, Ljavax/bluetooth/ServiceRegistrationException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/bluetooth/ServiceRegistrationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_3
    throw v0

    .line 239
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    .line 240
    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    iput-boolean v3, v2, Lcom/intel/bluetooth/ServiceRecordImpl;->attributeUpdated:Z

    .line 241
    throw v1
.end method

.method protected abstract updateStackServiceRecord(Lcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation
.end method

.method protected validateServiceRecord(Ljavax/bluetooth/ServiceRecord;)V
    .locals 10
    .param p1, "srvRecord"    # Ljavax/bluetooth/ServiceRecord;

    .prologue
    const/16 v9, 0x30

    .line 172
    .line 173
    const/4 v7, 0x4

    invoke-interface {p1, v7}, Ljavax/bluetooth/ServiceRecord;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v3

    .line 174
    .local v3, "protocolDescriptor":Ljavax/bluetooth/DataElement;
    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v3}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v7

    if-eq v7, v9, :cond_1

    .line 176
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 177
    const-string v8, "ProtocolDescriptorList is mandatory"

    .line 176
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 181
    :cond_1
    const/4 v7, 0x1

    invoke-interface {p1, v7}, Ljavax/bluetooth/ServiceRecord;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v6

    .line 182
    .local v6, "serviceClassIDList":Ljavax/bluetooth/DataElement;
    if-eqz v6, :cond_2

    .line 183
    invoke-virtual {v6}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 184
    invoke-virtual {v6}, Ljavax/bluetooth/DataElement;->getSize()I

    move-result v7

    if-nez v7, :cond_3

    .line 185
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 186
    const-string v8, "ServiceClassIDList is mandatory"

    .line 185
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 189
    :cond_3
    const/4 v2, 0x0

    .line 191
    .local v2, "isL2CAPpresent":Z
    invoke-virtual {v3}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 190
    check-cast v5, Ljava/util/Enumeration;

    .line 191
    .local v5, "protocolsSeqEnum":Ljava/util/Enumeration;
    :cond_4
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    .line 190
    if-nez v7, :cond_5

    .line 209
    :goto_0
    if-nez v2, :cond_6

    .line 210
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 211
    const-string v8, "L2CAP UUID is mandatory in ProtocolDescriptorList"

    .line 210
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 193
    :cond_5
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/bluetooth/DataElement;

    .line 194
    .local v0, "elementSeq":Ljavax/bluetooth/DataElement;
    invoke-virtual {v0}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 196
    invoke-virtual {v0}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 195
    check-cast v1, Ljava/util/Enumeration;

    .line 197
    .local v1, "elementSeqEnum":Ljava/util/Enumeration;
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 199
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/bluetooth/DataElement;

    .line 200
    .local v4, "protocolElement":Ljavax/bluetooth/DataElement;
    invoke-virtual {v4}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v7

    const/16 v8, 0x18

    if-ne v7, v8, :cond_4

    .line 201
    sget-object v7, Lcom/intel/bluetooth/BluetoothConsts;->L2CAP_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    .line 202
    invoke-virtual {v4}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/bluetooth/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 203
    const/4 v2, 0x1

    .line 204
    goto :goto_0

    .line 213
    .end local v0    # "elementSeq":Ljavax/bluetooth/DataElement;
    .end local v1    # "elementSeqEnum":Ljava/util/Enumeration;
    .end local v4    # "protocolElement":Ljavax/bluetooth/DataElement;
    :cond_6
    return-void
.end method
