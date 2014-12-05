.class public abstract Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;
.super Landroid/os/Binder;
.source "PHubApi.java"

# interfaces
.implements Lcom/qualcomm/aidl/personalHub/PHubApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/aidl/personalHub/PHubApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/aidl/personalHub/PHubApi$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.aidl.personalHub.PHubApi"

.field static final TRANSACTION_addListener:I = 0x4

.field static final TRANSACTION_associateWD:I = 0x6

.field static final TRANSACTION_cancelFindWDReq:I = 0xb

.field static final TRANSACTION_disassociateWD:I = 0x7

.field static final TRANSACTION_findWDReq:I = 0xa

.field static final TRANSACTION_foundPhoneReq:I = 0x9

.field static final TRANSACTION_getBluetoothServiceStatus:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x8

.field static final TRANSACTION_removeListener:I = 0x5

.field static final TRANSACTION_resetConnectionWD:I = 0xc

.field static final TRANSACTION_sendFile:I = 0x2

.field static final TRANSACTION_sendStringMessage:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/aidl/personalHub/PHubApi;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qualcomm/aidl/personalHub/PHubApi;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/qualcomm/aidl/personalHub/PHubApi;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->sendStringMessage(IILjava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->sendFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->getBluetoothServiceStatus()I

    move-result v3

    .line 76
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v3    # "_result":I
    :sswitch_4
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/aidl/personalHub/PHubListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/aidl/personalHub/PHubListener;

    move-result-object v1

    .line 87
    .local v1, "_arg1":Lcom/qualcomm/aidl/personalHub/PHubListener;
    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->addListener(ILcom/qualcomm/aidl/personalHub/PHubListener;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/qualcomm/aidl/personalHub/PHubListener;
    :sswitch_5
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->removeListener(I)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->associateWD()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    :sswitch_7
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->disassociateWD()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    :sswitch_8
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->getConnectionState(Ljava/lang/String;)I

    move-result v3

    .line 120
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_9
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->foundPhoneReq(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->findWDReq()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    :sswitch_b
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->cancelFindWDReq()V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    :sswitch_c
    const-string v5, "com.qualcomm.aidl.personalHub.PHubApi"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->resetConnectionWD()V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
