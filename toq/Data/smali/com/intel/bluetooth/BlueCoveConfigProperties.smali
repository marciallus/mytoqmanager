.class public interface abstract Lcom/intel/bluetooth/BlueCoveConfigProperties;
.super Ljava/lang/Object;
.source "BlueCoveConfigProperties.java"


# static fields
.field public static final INITIALIZATION_PROPERTIES:[Ljava/lang/String;

.field public static final PROPERTY_ANDROID_CONTEXT:Ljava/lang/String; = "bluecove.android.context"

.field public static final PROPERTY_ANDROID_DISCOVERABLE_DURATION:Ljava/lang/String; = "bluecove.android.discoverable_duration"

.field public static final PROPERTY_ANDROID_OBEX_UUIDS:Ljava/lang/String; = "bluecove.android.obex_uuids"

.field public static final PROPERTY_BLUEZ_CLASS:Ljava/lang/String; = "bluecove.bluez.class"

.field public static final PROPERTY_CONNECT_TIMEOUT:Ljava/lang/String; = "bluecove.connect.timeout"

.field public static final PROPERTY_CONNECT_UNREACHABLE_RETRY:Ljava/lang/String; = "bluecove.connect.unreachable_retry"

.field public static final PROPERTY_DEBUG:Ljava/lang/String; = "bluecove.debug"

.field public static final PROPERTY_DEBUG_LOG4J:Ljava/lang/String; = "bluecove.debug.log4j"

.field public static final PROPERTY_DEBUG_STDOUT:Ljava/lang/String; = "bluecove.debug.stdout"

.field public static final PROPERTY_EMULATOR_CLASS:Ljava/lang/String; = "bluecove.emulator.class"

.field public static final PROPERTY_EMULATOR_HOST:Ljava/lang/String; = "bluecove.emu.rmiRegistryHost"

.field public static final PROPERTY_EMULATOR_PORT:Ljava/lang/String; = "bluecove.emu.rmiRegistryPort"

.field public static final PROPERTY_EMULATOR_RMI_REGISTRY:Ljava/lang/String; = "bluecove.emu.rmiRegistry"

.field public static final PROPERTY_INQUIRY_DURATION:Ljava/lang/String; = "bluecove.inquiry.duration"

.field public static final PROPERTY_INQUIRY_DURATION_DEFAULT:I = 0xb

.field public static final PROPERTY_INQUIRY_REPORT_ASAP:Ljava/lang/String; = "bluecove.inquiry.report_asap"

.field public static final PROPERTY_JSR_82_PSM_MINIMUM_OFF:Ljava/lang/String; = "bluecove.jsr82.psm_minimum_off"

.field public static final PROPERTY_LOCAL_DEVICE_ADDRESS:Ljava/lang/String; = "bluecove.deviceAddress"

.field public static final PROPERTY_LOCAL_DEVICE_ID:Ljava/lang/String; = "bluecove.deviceID"

.field public static final PROPERTY_NATIVE_PATH:Ljava/lang/String; = "bluecove.native.path"

.field public static final PROPERTY_NATIVE_RESOURCE:Ljava/lang/String; = "bluecove.native.resource"

.field public static final PROPERTY_OBEX_MTU:Ljava/lang/String; = "bluecove.obex.mtu"

.field public static final PROPERTY_OBEX_TIMEOUT:Ljava/lang/String; = "bluecove.obex.timeout"

.field public static final PROPERTY_SDP_STRING_ENCODING_ASCII:Ljava/lang/String; = "bluecove.sdp.string_encoding_ascii"

.field public static final PROPERTY_STACK:Ljava/lang/String; = "bluecove.stack"

.field public static final PROPERTY_STACK_FIRST:Ljava/lang/String; = "bluecove.stack.first"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 132
    const-string v2, "bluecove.stack"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bluecove.stack.first"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bluecove.native.resource"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 133
    const-string v2, "bluecove.native.resource"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluecove.bluez.class"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 134
    const-string v2, "bluecove.deviceID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluecove.deviceAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 135
    const-string v2, "bluecove.emulator.class"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluecove.emu.rmiRegistryHost"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 136
    const-string v2, "bluecove.emu.rmiRegistryPort"

    aput-object v2, v0, v1

    .line 131
    sput-object v0, Lcom/intel/bluetooth/BlueCoveConfigProperties;->INITIALIZATION_PROPERTIES:[Ljava/lang/String;

    .line 34
    return-void
.end method
