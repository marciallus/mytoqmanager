.class public final enum Lorg/alljoyn/bus/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/bus/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/bus/Status;

.field public static final enum ALERTED_THREAD:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_ACCESS_PERMISSION_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_ACCESS_PERMISSION_WARNING:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_ADVERTISENAME_REPLY_ALREADY_ADVERTISING:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_ADVERTISENAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_BINDSESSIONPORT_REPLY_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_BINDSESSIONPORT_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_BINDSESSIONPORT_REPLY_INVALID_OPTS:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_CANCELADVERTISENAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_CANCELFINDADVERTISEDNAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_FINDADVERTISEDNAME_REPLY_ALREADY_DISCOVERING:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_FINDADVERTISEDNAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_JOINSESSION_REPLY_BAD_SESSION_OPTS:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_JOINSESSION_REPLY_CONNECT_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_JOINSESSION_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_JOINSESSION_REPLY_NO_SESSION:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_JOINSESSION_REPLY_REJECTED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_JOINSESSION_REPLY_UNREACHABLE:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_LEAVESESSION_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_LEAVESESSION_REPLY_NO_SESSION:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_ONAPPRESUME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_ONAPPRESUME_REPLY_UNSUPPORTED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_ONAPPSUSPEND_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_ONAPPSUSPEND_REPLY_UNSUPPORTED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_REMOVESESSIONMEMBER_INCOMPATIBLE_REMOTE_DAEMON:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_REMOVESESSIONMEMBER_NOT_BINDER:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_REMOVESESSIONMEMBER_NOT_FOUND:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_REMOVESESSIONMEMBER_NOT_MULTIPOINT:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_REMOVESESSIONMEMBER_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_REMOVESESSIONMEMBER_REPLY_NO_SESSION:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_SETLINKTIMEOUT_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_SETLINKTIMEOUT_REPLY_NOT_SUPPORTED:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_SETLINKTIMEOUT_REPLY_NO_DEST_SUPPORT:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_UNBINDSESSIONPORT_REPLY_BAD_PORT:Lorg/alljoyn/bus/Status;

.field public static final enum ALLJOYN_UNBINDSESSIONPORT_REPLY_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum ALREADY_FINDING:Lorg/alljoyn/bus/Status;

.field public static final enum ALREADY_REGISTERED:Lorg/alljoyn/bus/Status;

.field public static final enum AUTH_FAIL:Lorg/alljoyn/bus/Status;

.field public static final enum AUTH_USER_REJECT:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_ANNOTATION:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_ARG_1:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_ARG_2:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_ARG_3:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_ARG_4:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_ARG_5:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_ARG_6:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_ARG_7:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_ARG_8:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_ARG_COUNT:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_HOSTNAME:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_STRING_ENCODING:Lorg/alljoyn/bus/Status;

.field public static final enum BAD_TRANSPORT_MASK:Lorg/alljoyn/bus/Status;

.field public static final enum BT_MAX_CONNECTIONS_USED:Lorg/alljoyn/bus/Status;

.field public static final enum BUFFER_TOO_SMALL:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_ALREADY_CONNECTED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_ALREADY_LISTENING:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_ANNOTATION_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_AUTHENTICATION_PENDING:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_BODY_LEN:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_BUS_NAME:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_CHILD_PATH:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_ERROR_NAME:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_HDR_FLAGS:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_HEADER_FIELD:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_HEADER_LEN:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_INTERFACE_NAME:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_LENGTH:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_MEMBER_NAME:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_OBJ_PATH:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_SENDER_ID:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_SEND_PARAMETER:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_SESSION_OPTS:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_SIGNATURE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_TRANSPORT_ARGS:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_VALUE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_VALUE_TYPE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BAD_XML:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BLOCKING_CALL_NOT_ALLOWED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BT_TRANSPORT_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BUS_ALREADY_STARTED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_BUS_NOT_STARTED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_CANNOT_ADD_HANDLER:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_CANNOT_ADD_INTERFACE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_CANNOT_EXPAND_MESSAGE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_CONNECTION_REJECTED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_CONNECT_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_CORRUPT_KEYSTORE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_DESTINATION_NOT_AUTHENTICATED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_ELEMENT_NOT_FOUND:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_EMPTY_MESSAGE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_ENDPOINT_CLOSING:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_ENDPOINT_REDIRECTED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_ERRORS:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_ERROR_NAME_MISSING:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_ERROR_RESPONSE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_ESTABLISH_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_HANDLES_MISMATCH:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_HANDLES_NOT_ENABLED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_HDR_EXPANSION_INVALID:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_IFACE_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_INCOMPATIBLE_DAEMON:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_INTERFACE_ACTIVATED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_INTERFACE_MISMATCH:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_INTERFACE_MISSING:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_INTERFACE_NO_SUCH_MEMBER:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_INVALID_AUTH_MECHANISM:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_INVALID_HEADER_CHECKSUM:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_INVALID_HEADER_SERIAL:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_KEYBLOB_OP_INVALID:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_KEYSTORE_NOT_LOADED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_KEYSTORE_VERSION_MISMATCH:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_KEY_EXPIRED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_KEY_STORE_NOT_LOADED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_KEY_UNAVAILABLE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_LISTENER_ALREADY_SET:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_MEMBER_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_MEMBER_MISSING:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_MEMBER_NO_SUCH_SIGNATURE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_MESSAGE_DECRYPTION_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_MESSAGE_NOT_ENCRYPTED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_METHOD_CALL_ABORTED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_MISSING_COMPRESSION_TOKEN:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NAME_TOO_LONG:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NOT_ALLOWED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NOT_AUTHENTICATING:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NOT_AUTHORIZED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NOT_A_COMPLETE_TYPE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NOT_A_DICTIONARY:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NOT_COMPRESSED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NOT_CONNECTED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NOT_NUL_TERMINATED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NOT_OWNER:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_AUTHENTICATION_MECHANISM:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_CALL_FOR_REPLY:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_ENDPOINT:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_LISTENER:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_PEER_GUID:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_ROUTE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_SESSION:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_SUCH_ANNOTATION:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_SUCH_HANDLE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_SUCH_INTERFACE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_SUCH_MESSAGE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_SUCH_OBJECT:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_SUCH_PROPERTY:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_SUCH_SERVICE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_NO_TRANSPORTS:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_OBJECT_NOT_REGISTERED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_OBJECT_NO_SUCH_INTERFACE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_OBJECT_NO_SUCH_MEMBER:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_OBJ_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_OBJ_NOT_FOUND:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_PATH_MISSING:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_PEER_AUTH_VERSION_MISMATCH:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_POLICY_VIOLATION:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_PROPERTY_ACCESS_DENIED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_PROPERTY_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_PROPERTY_VALUE_NOT_SET:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_READ_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_REMOVED_BY_BINDER:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_REPLY_IS_ERROR_MESSAGE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_REPLY_SERIAL_MISSING:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_SECURITY_FATAL:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_SECURITY_NOT_ENABLED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_SELF_CONNECT:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_SET_PROPERTY_REJECTED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_SET_WRONG_SIGNATURE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_SIGNATURE_MISMATCH:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_STOPPING:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_TIME_TO_LIVE_EXPIRED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_TRANSPORT_NOT_AVAILABLE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_TRANSPORT_NOT_STARTED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_TRUNCATED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_UNEXPECTED_DISPOSITION:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_UNEXPECTED_SIGNATURE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_UNKNOWN_INTERFACE:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_UNKNOWN_PATH:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_UNKNOWN_SERIAL:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_UNMATCHED_REPLY_SERIAL:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_WAIT_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_WRITE_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum BUS_WRITE_QUEUE_FULL:Lorg/alljoyn/bus/Status;

.field public static final enum CANCELLED:Lorg/alljoyn/bus/Status;

.field public static final enum COMMON_ERRORS:Lorg/alljoyn/bus/Status;

.field public static final enum CONN_REFUSED:Lorg/alljoyn/bus/Status;

.field public static final enum CORRUPT_KEYBLOB:Lorg/alljoyn/bus/Status;

.field public static final enum CRYPTO_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum CRYPTO_HASH_UNINITIALIZED:Lorg/alljoyn/bus/Status;

.field public static final enum CRYPTO_ILLEGAL_PARAMETERS:Lorg/alljoyn/bus/Status;

.field public static final enum CRYPTO_INSUFFICIENT_SECURITY:Lorg/alljoyn/bus/Status;

.field public static final enum CRYPTO_KEY_UNAVAILABLE:Lorg/alljoyn/bus/Status;

.field public static final enum CRYPTO_KEY_UNUSABLE:Lorg/alljoyn/bus/Status;

.field public static final enum CRYPTO_TRUNCATED:Lorg/alljoyn/bus/Status;

.field public static final enum DBUS_RELEASE_NAME_REPLY_NON_EXISTENT:Lorg/alljoyn/bus/Status;

.field public static final enum DBUS_RELEASE_NAME_REPLY_NOT_OWNER:Lorg/alljoyn/bus/Status;

.field public static final enum DBUS_RELEASE_NAME_REPLY_RELEASED:Lorg/alljoyn/bus/Status;

.field public static final enum DBUS_REQUEST_NAME_REPLY_ALREADY_OWNER:Lorg/alljoyn/bus/Status;

.field public static final enum DBUS_REQUEST_NAME_REPLY_EXISTS:Lorg/alljoyn/bus/Status;

.field public static final enum DBUS_REQUEST_NAME_REPLY_IN_QUEUE:Lorg/alljoyn/bus/Status;

.field public static final enum DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER:Lorg/alljoyn/bus/Status;

.field public static final enum DBUS_START_REPLY_ALREADY_RUNNING:Lorg/alljoyn/bus/Status;

.field public static final enum DEAD_THREAD:Lorg/alljoyn/bus/Status;

.field public static final enum EMPTY_KEY_BLOB:Lorg/alljoyn/bus/Status;

.field public static final enum END_OF_DATA:Lorg/alljoyn/bus/Status;

.field public static final enum EXTERNAL_THREAD:Lorg/alljoyn/bus/Status;

.field public static final enum FAIL:Lorg/alljoyn/bus/Status;

.field public static final enum ICE_ALLOCATE_REJECTED_NO_RESOURCES:Lorg/alljoyn/bus/Status;

.field public static final enum ICE_ALLOCATING_MEMORY:Lorg/alljoyn/bus/Status;

.field public static final enum ICE_ALLOCATION_MISMATCH:Lorg/alljoyn/bus/Status;

.field public static final enum ICE_ALLOCATION_QUOTA_REACHED:Lorg/alljoyn/bus/Status;

.field public static final enum ICE_CHECKS_INCOMPLETE:Lorg/alljoyn/bus/Status;

.field public static final enum ICE_INVALID_STATE:Lorg/alljoyn/bus/Status;

.field public static final enum ICE_STUN_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum ICE_UNKNOWN_COMPONENT_ID:Lorg/alljoyn/bus/Status;

.field public static final enum INIT_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum INVALID_ADDRESS:Lorg/alljoyn/bus/Status;

.field public static final enum INVALID_CONNECT_ARGS:Lorg/alljoyn/bus/Status;

.field public static final enum INVALID_DATA:Lorg/alljoyn/bus/Status;

.field public static final enum INVALID_GUID:Lorg/alljoyn/bus/Status;

.field public static final enum INVALID_HTTP_METHOD_USED_FOR_RENDEZVOUS_SERVER_INTERFACE_MESSAGE:Lorg/alljoyn/bus/Status;

.field public static final enum INVALID_KEY_ENCODING:Lorg/alljoyn/bus/Status;

.field public static final enum INVALID_ON_DEMAND_CONNECTION_MESSAGE_RESPONSE:Lorg/alljoyn/bus/Status;

.field public static final enum INVALID_PERSISTENT_CONNECTION_MESSAGE_RESPONSE:Lorg/alljoyn/bus/Status;

.field public static final enum INVALID_RENDEZVOUS_SERVER_INTERFACE_MESSAGE:Lorg/alljoyn/bus/Status;

.field public static final enum INVALID_STREAM:Lorg/alljoyn/bus/Status;

.field public static final enum IODISPATCH_STOPPING:Lorg/alljoyn/bus/Status;

.field public static final enum NONE:Lorg/alljoyn/bus/Status;

.field public static final enum NOT_CONNECTED_TO_RENDEZVOUS_SERVER:Lorg/alljoyn/bus/Status;

.field public static final enum NOT_IMPLEMENTED:Lorg/alljoyn/bus/Status;

.field public static final enum NO_SUCH_ALARM:Lorg/alljoyn/bus/Status;

.field public static final enum NO_SUCH_DEVICE:Lorg/alljoyn/bus/Status;

.field public static final enum OK:Lorg/alljoyn/bus/Status;

.field public static final enum OPEN_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum OS_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum OUT_OF_MEMORY:Lorg/alljoyn/bus/Status;

.field public static final enum P2P:Lorg/alljoyn/bus/Status;

.field public static final enum P2P_BUSY:Lorg/alljoyn/bus/Status;

.field public static final enum P2P_DISABLED:Lorg/alljoyn/bus/Status;

.field public static final enum P2P_FORBIDDEN:Lorg/alljoyn/bus/Status;

.field public static final enum P2P_NOT_CONNECTED:Lorg/alljoyn/bus/Status;

.field public static final enum P2P_NO_GO:Lorg/alljoyn/bus/Status;

.field public static final enum P2P_NO_STA:Lorg/alljoyn/bus/Status;

.field public static final enum P2P_TIMEOUT:Lorg/alljoyn/bus/Status;

.field public static final enum PACKET_BAD_CRC:Lorg/alljoyn/bus/Status;

.field public static final enum PACKET_BAD_FORMAT:Lorg/alljoyn/bus/Status;

.field public static final enum PACKET_BAD_PARAMETER:Lorg/alljoyn/bus/Status;

.field public static final enum PACKET_BUS_NO_SUCH_CHANNEL:Lorg/alljoyn/bus/Status;

.field public static final enum PACKET_CHANNEL_FAIL:Lorg/alljoyn/bus/Status;

.field public static final enum PACKET_CONNECT_TIMEOUT:Lorg/alljoyn/bus/Status;

.field public static final enum PACKET_TOO_LARGE:Lorg/alljoyn/bus/Status;

.field public static final enum PARSE_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum PROXIMITY_CONNECTION_ESTABLISH_FAIL:Lorg/alljoyn/bus/Status;

.field public static final enum PROXIMITY_NO_PEERS_FOUND:Lorg/alljoyn/bus/Status;

.field public static final enum READ_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum RENDEZVOUS_SERVER_DEACTIVATED_USER:Lorg/alljoyn/bus/Status;

.field public static final enum RENDEZVOUS_SERVER_ERR401_UNAUTHORIZED_REQUEST:Lorg/alljoyn/bus/Status;

.field public static final enum RENDEZVOUS_SERVER_ERR500_INTERNAL_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum RENDEZVOUS_SERVER_ERR503_STATUS_UNAVAILABLE:Lorg/alljoyn/bus/Status;

.field public static final enum RENDEZVOUS_SERVER_ROOT_CERTIFICATE_UNINITIALIZED:Lorg/alljoyn/bus/Status;

.field public static final enum RENDEZVOUS_SERVER_UNKNOWN_USER:Lorg/alljoyn/bus/Status;

.field public static final enum RENDEZVOUS_SERVER_UNRECOVERABLE_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum SLAP_CRC_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum SLAP_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum SLAP_HDR_CHECKSUM_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum SLAP_INVALID_PACKET_LEN:Lorg/alljoyn/bus/Status;

.field public static final enum SLAP_INVALID_PACKET_TYPE:Lorg/alljoyn/bus/Status;

.field public static final enum SLAP_LEN_MISMATCH:Lorg/alljoyn/bus/Status;

.field public static final enum SLAP_OTHER_END_CLOSED:Lorg/alljoyn/bus/Status;

.field public static final enum SLAP_PACKET_TYPE_MISMATCH:Lorg/alljoyn/bus/Status;

.field public static final enum SOCKET_BIND_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum SOCK_CLOSING:Lorg/alljoyn/bus/Status;

.field public static final enum SOCK_OTHER_END_CLOSED:Lorg/alljoyn/bus/Status;

.field public static final enum SSL_CONNECT:Lorg/alljoyn/bus/Status;

.field public static final enum SSL_ERRORS:Lorg/alljoyn/bus/Status;

.field public static final enum SSL_INIT:Lorg/alljoyn/bus/Status;

.field public static final enum SSL_VERIFY:Lorg/alljoyn/bus/Status;

.field public static final enum STOPPING_THREAD:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_ATTR_SIZE_MISMATCH:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_AUTH_CHALLENGE:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_BAD_INDICATION:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_DUPLICATE_ATTRIBUTE:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_ERR400_BAD_REQUEST:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_ERR401_UNAUTHORIZED_REQUEST:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_FAILED_TO_SEND_MSG:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_FRAMING_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_INVALID_ADDR_FAMILY:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_INVALID_ATTR_TYPE:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_INVALID_ERROR_CODE:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_INVALID_FINGERPRINT:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_INVALID_MESSAGE_INTEGRITY:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_INVALID_MSG_TYPE:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_RESPONSE_WITH_USERNAME:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_SOCKET_NOT_OPEN:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_SOCKET_OPEN:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_TOO_MANY_ATTRIBUTES:Lorg/alljoyn/bus/Status;

.field public static final enum STUN_UNAUTHORIZED_INDICATION:Lorg/alljoyn/bus/Status;

.field public static final enum THREADPOOL_EXHAUSTED:Lorg/alljoyn/bus/Status;

.field public static final enum THREADPOOL_STOPPING:Lorg/alljoyn/bus/Status;

.field public static final enum THREAD_NO_WAIT:Lorg/alljoyn/bus/Status;

.field public static final enum THREAD_RUNNING:Lorg/alljoyn/bus/Status;

.field public static final enum THREAD_STOPPING:Lorg/alljoyn/bus/Status;

.field public static final enum TIMEOUT:Lorg/alljoyn/bus/Status;

.field public static final enum TIMER_EXITING:Lorg/alljoyn/bus/Status;

.field public static final enum TIMER_FALLBEHIND:Lorg/alljoyn/bus/Status;

.field public static final enum TIMER_FULL:Lorg/alljoyn/bus/Status;

.field public static final enum UNABLE_TO_CONNECT_TO_RENDEZVOUS_SERVER:Lorg/alljoyn/bus/Status;

.field public static final enum UNABLE_TO_SEND_MESSAGE_TO_RENDEZVOUS_SERVER:Lorg/alljoyn/bus/Status;

.field public static final enum UTF_CONVERSION_FAILED:Lorg/alljoyn/bus/Status;

.field public static final enum WARNING:Lorg/alljoyn/bus/Status;

.field public static final enum WOULDBLOCK:Lorg/alljoyn/bus/Status;

.field public static final enum WRITE_ERROR:Lorg/alljoyn/bus/Status;

.field public static final enum XML_MALFORMED:Lorg/alljoyn/bus/Status;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    .line 28
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v5, v5}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->FAIL:Lorg/alljoyn/bus/Status;

    .line 30
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "UTF_CONVERSION_FAILED"

    invoke-direct {v0, v1, v6, v6}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->UTF_CONVERSION_FAILED:Lorg/alljoyn/bus/Status;

    .line 32
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUFFER_TOO_SMALL"

    invoke-direct {v0, v1, v7, v7}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUFFER_TOO_SMALL:Lorg/alljoyn/bus/Status;

    .line 34
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "OS_ERROR"

    invoke-direct {v0, v1, v8, v8}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->OS_ERROR:Lorg/alljoyn/bus/Status;

    .line 36
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "OUT_OF_MEMORY"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->OUT_OF_MEMORY:Lorg/alljoyn/bus/Status;

    .line 38
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SOCKET_BIND_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SOCKET_BIND_ERROR:Lorg/alljoyn/bus/Status;

    .line 40
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INIT_FAILED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INIT_FAILED:Lorg/alljoyn/bus/Status;

    .line 42
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "WOULDBLOCK"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->WOULDBLOCK:Lorg/alljoyn/bus/Status;

    .line 44
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->NOT_IMPLEMENTED:Lorg/alljoyn/bus/Status;

    .line 46
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "TIMEOUT"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->TIMEOUT:Lorg/alljoyn/bus/Status;

    .line 48
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SOCK_OTHER_END_CLOSED"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SOCK_OTHER_END_CLOSED:Lorg/alljoyn/bus/Status;

    .line 50
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_ARG_1"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_ARG_1:Lorg/alljoyn/bus/Status;

    .line 52
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_ARG_2"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_ARG_2:Lorg/alljoyn/bus/Status;

    .line 54
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_ARG_3"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_ARG_3:Lorg/alljoyn/bus/Status;

    .line 56
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_ARG_4"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_ARG_4:Lorg/alljoyn/bus/Status;

    .line 58
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_ARG_5"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_ARG_5:Lorg/alljoyn/bus/Status;

    .line 60
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_ARG_6"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_ARG_6:Lorg/alljoyn/bus/Status;

    .line 62
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_ARG_7"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_ARG_7:Lorg/alljoyn/bus/Status;

    .line 64
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_ARG_8"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_ARG_8:Lorg/alljoyn/bus/Status;

    .line 66
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INVALID_ADDRESS"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INVALID_ADDRESS:Lorg/alljoyn/bus/Status;

    .line 68
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INVALID_DATA"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INVALID_DATA:Lorg/alljoyn/bus/Status;

    .line 70
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "READ_ERROR"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->READ_ERROR:Lorg/alljoyn/bus/Status;

    .line 72
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "WRITE_ERROR"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->WRITE_ERROR:Lorg/alljoyn/bus/Status;

    .line 74
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "OPEN_FAILED"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->OPEN_FAILED:Lorg/alljoyn/bus/Status;

    .line 76
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "PARSE_ERROR"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->PARSE_ERROR:Lorg/alljoyn/bus/Status;

    .line 78
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "END_OF_DATA"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->END_OF_DATA:Lorg/alljoyn/bus/Status;

    .line 80
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "CONN_REFUSED"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->CONN_REFUSED:Lorg/alljoyn/bus/Status;

    .line 82
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_ARG_COUNT"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_ARG_COUNT:Lorg/alljoyn/bus/Status;

    .line 84
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "WARNING"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->WARNING:Lorg/alljoyn/bus/Status;

    .line 86
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "COMMON_ERRORS"

    const/16 v2, 0x1e

    const/16 v3, 0x1000

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->COMMON_ERRORS:Lorg/alljoyn/bus/Status;

    .line 88
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STOPPING_THREAD"

    const/16 v2, 0x1f

    const/16 v3, 0x1001

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STOPPING_THREAD:Lorg/alljoyn/bus/Status;

    .line 90
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALERTED_THREAD"

    const/16 v2, 0x20

    const/16 v3, 0x1002

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALERTED_THREAD:Lorg/alljoyn/bus/Status;

    .line 92
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "XML_MALFORMED"

    const/16 v2, 0x21

    const/16 v3, 0x1003

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->XML_MALFORMED:Lorg/alljoyn/bus/Status;

    .line 94
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "AUTH_FAIL"

    const/16 v2, 0x22

    const/16 v3, 0x1004

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->AUTH_FAIL:Lorg/alljoyn/bus/Status;

    .line 96
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "AUTH_USER_REJECT"

    const/16 v2, 0x23

    const/16 v3, 0x1005

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->AUTH_USER_REJECT:Lorg/alljoyn/bus/Status;

    .line 98
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "NO_SUCH_ALARM"

    const/16 v2, 0x24

    const/16 v3, 0x1006

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->NO_SUCH_ALARM:Lorg/alljoyn/bus/Status;

    .line 100
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "TIMER_FALLBEHIND"

    const/16 v2, 0x25

    const/16 v3, 0x1007

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->TIMER_FALLBEHIND:Lorg/alljoyn/bus/Status;

    .line 102
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SSL_ERRORS"

    const/16 v2, 0x26

    const/16 v3, 0x1008

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SSL_ERRORS:Lorg/alljoyn/bus/Status;

    .line 104
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SSL_INIT"

    const/16 v2, 0x27

    const/16 v3, 0x1009

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SSL_INIT:Lorg/alljoyn/bus/Status;

    .line 106
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SSL_CONNECT"

    const/16 v2, 0x28

    const/16 v3, 0x100a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SSL_CONNECT:Lorg/alljoyn/bus/Status;

    .line 108
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SSL_VERIFY"

    const/16 v2, 0x29

    const/16 v3, 0x100b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SSL_VERIFY:Lorg/alljoyn/bus/Status;

    .line 110
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "EXTERNAL_THREAD"

    const/16 v2, 0x2a

    const/16 v3, 0x100c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->EXTERNAL_THREAD:Lorg/alljoyn/bus/Status;

    .line 112
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "CRYPTO_ERROR"

    const/16 v2, 0x2b

    const/16 v3, 0x100d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->CRYPTO_ERROR:Lorg/alljoyn/bus/Status;

    .line 114
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "CRYPTO_TRUNCATED"

    const/16 v2, 0x2c

    const/16 v3, 0x100e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->CRYPTO_TRUNCATED:Lorg/alljoyn/bus/Status;

    .line 116
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "CRYPTO_KEY_UNAVAILABLE"

    const/16 v2, 0x2d

    const/16 v3, 0x100f

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->CRYPTO_KEY_UNAVAILABLE:Lorg/alljoyn/bus/Status;

    .line 118
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_HOSTNAME"

    const/16 v2, 0x2e

    const/16 v3, 0x1010

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_HOSTNAME:Lorg/alljoyn/bus/Status;

    .line 120
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "CRYPTO_KEY_UNUSABLE"

    const/16 v2, 0x2f

    const/16 v3, 0x1011

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->CRYPTO_KEY_UNUSABLE:Lorg/alljoyn/bus/Status;

    .line 122
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "EMPTY_KEY_BLOB"

    const/16 v2, 0x30

    const/16 v3, 0x1012

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->EMPTY_KEY_BLOB:Lorg/alljoyn/bus/Status;

    .line 124
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "CORRUPT_KEYBLOB"

    const/16 v2, 0x31

    const/16 v3, 0x1013

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->CORRUPT_KEYBLOB:Lorg/alljoyn/bus/Status;

    .line 126
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INVALID_KEY_ENCODING"

    const/16 v2, 0x32

    const/16 v3, 0x1014

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INVALID_KEY_ENCODING:Lorg/alljoyn/bus/Status;

    .line 128
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "DEAD_THREAD"

    const/16 v2, 0x33

    const/16 v3, 0x1015

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->DEAD_THREAD:Lorg/alljoyn/bus/Status;

    .line 130
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "THREAD_RUNNING"

    const/16 v2, 0x34

    const/16 v3, 0x1016

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->THREAD_RUNNING:Lorg/alljoyn/bus/Status;

    .line 132
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "THREAD_STOPPING"

    const/16 v2, 0x35

    const/16 v3, 0x1017

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->THREAD_STOPPING:Lorg/alljoyn/bus/Status;

    .line 134
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_STRING_ENCODING"

    const/16 v2, 0x36

    const/16 v3, 0x1018

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_STRING_ENCODING:Lorg/alljoyn/bus/Status;

    .line 136
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "CRYPTO_INSUFFICIENT_SECURITY"

    const/16 v2, 0x37

    const/16 v3, 0x1019

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->CRYPTO_INSUFFICIENT_SECURITY:Lorg/alljoyn/bus/Status;

    .line 138
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "CRYPTO_ILLEGAL_PARAMETERS"

    const/16 v2, 0x38

    const/16 v3, 0x101a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->CRYPTO_ILLEGAL_PARAMETERS:Lorg/alljoyn/bus/Status;

    .line 140
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "CRYPTO_HASH_UNINITIALIZED"

    const/16 v2, 0x39

    const/16 v3, 0x101b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->CRYPTO_HASH_UNINITIALIZED:Lorg/alljoyn/bus/Status;

    .line 142
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "THREAD_NO_WAIT"

    const/16 v2, 0x3a

    const/16 v3, 0x101c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->THREAD_NO_WAIT:Lorg/alljoyn/bus/Status;

    .line 144
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "TIMER_EXITING"

    const/16 v2, 0x3b

    const/16 v3, 0x101d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->TIMER_EXITING:Lorg/alljoyn/bus/Status;

    .line 146
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INVALID_GUID"

    const/16 v2, 0x3c

    const/16 v3, 0x101e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INVALID_GUID:Lorg/alljoyn/bus/Status;

    .line 148
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "THREADPOOL_EXHAUSTED"

    const/16 v2, 0x3d

    const/16 v3, 0x101f

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->THREADPOOL_EXHAUSTED:Lorg/alljoyn/bus/Status;

    .line 150
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "THREADPOOL_STOPPING"

    const/16 v2, 0x3e

    const/16 v3, 0x1020

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->THREADPOOL_STOPPING:Lorg/alljoyn/bus/Status;

    .line 152
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INVALID_STREAM"

    const/16 v2, 0x3f

    const/16 v3, 0x1021

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INVALID_STREAM:Lorg/alljoyn/bus/Status;

    .line 154
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "TIMER_FULL"

    const/16 v2, 0x40

    const/16 v3, 0x1022

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->TIMER_FULL:Lorg/alljoyn/bus/Status;

    .line 156
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "IODISPATCH_STOPPING"

    const/16 v2, 0x41

    const/16 v3, 0x1023

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->IODISPATCH_STOPPING:Lorg/alljoyn/bus/Status;

    .line 158
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SLAP_INVALID_PACKET_LEN"

    const/16 v2, 0x42

    const/16 v3, 0x1024

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SLAP_INVALID_PACKET_LEN:Lorg/alljoyn/bus/Status;

    .line 160
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SLAP_HDR_CHECKSUM_ERROR"

    const/16 v2, 0x43

    const/16 v3, 0x1025

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SLAP_HDR_CHECKSUM_ERROR:Lorg/alljoyn/bus/Status;

    .line 162
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SLAP_INVALID_PACKET_TYPE"

    const/16 v2, 0x44

    const/16 v3, 0x1026

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SLAP_INVALID_PACKET_TYPE:Lorg/alljoyn/bus/Status;

    .line 164
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SLAP_LEN_MISMATCH"

    const/16 v2, 0x45

    const/16 v3, 0x1027

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SLAP_LEN_MISMATCH:Lorg/alljoyn/bus/Status;

    .line 166
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SLAP_PACKET_TYPE_MISMATCH"

    const/16 v2, 0x46

    const/16 v3, 0x1028

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SLAP_PACKET_TYPE_MISMATCH:Lorg/alljoyn/bus/Status;

    .line 168
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SLAP_CRC_ERROR"

    const/16 v2, 0x47

    const/16 v3, 0x1029

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SLAP_CRC_ERROR:Lorg/alljoyn/bus/Status;

    .line 170
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SLAP_ERROR"

    const/16 v2, 0x48

    const/16 v3, 0x102a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SLAP_ERROR:Lorg/alljoyn/bus/Status;

    .line 172
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SLAP_OTHER_END_CLOSED"

    const/16 v2, 0x49

    const/16 v3, 0x102b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SLAP_OTHER_END_CLOSED:Lorg/alljoyn/bus/Status;

    .line 174
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "NONE"

    const/16 v2, 0x4a

    const v3, 0xffff

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->NONE:Lorg/alljoyn/bus/Status;

    .line 176
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_ERRORS"

    const/16 v2, 0x4b

    const v3, 0x9000

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_ERRORS:Lorg/alljoyn/bus/Status;

    .line 178
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_READ_ERROR"

    const/16 v2, 0x4c

    const v3, 0x9001

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_READ_ERROR:Lorg/alljoyn/bus/Status;

    .line 180
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_WRITE_ERROR"

    const/16 v2, 0x4d

    const v3, 0x9002

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_WRITE_ERROR:Lorg/alljoyn/bus/Status;

    .line 182
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_VALUE_TYPE"

    const/16 v2, 0x4e

    const v3, 0x9003

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_VALUE_TYPE:Lorg/alljoyn/bus/Status;

    .line 184
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_HEADER_FIELD"

    const/16 v2, 0x4f

    const v3, 0x9004

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_HEADER_FIELD:Lorg/alljoyn/bus/Status;

    .line 186
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_SIGNATURE"

    const/16 v2, 0x50

    const v3, 0x9005

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_SIGNATURE:Lorg/alljoyn/bus/Status;

    .line 188
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_OBJ_PATH"

    const/16 v2, 0x51

    const v3, 0x9006

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_OBJ_PATH:Lorg/alljoyn/bus/Status;

    .line 190
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_MEMBER_NAME"

    const/16 v2, 0x52

    const v3, 0x9007

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_MEMBER_NAME:Lorg/alljoyn/bus/Status;

    .line 192
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_INTERFACE_NAME"

    const/16 v2, 0x53

    const v3, 0x9008

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_INTERFACE_NAME:Lorg/alljoyn/bus/Status;

    .line 194
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_ERROR_NAME"

    const/16 v2, 0x54

    const v3, 0x9009

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_ERROR_NAME:Lorg/alljoyn/bus/Status;

    .line 196
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_BUS_NAME"

    const/16 v2, 0x55

    const v3, 0x900a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_BUS_NAME:Lorg/alljoyn/bus/Status;

    .line 198
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NAME_TOO_LONG"

    const/16 v2, 0x56

    const v3, 0x900b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NAME_TOO_LONG:Lorg/alljoyn/bus/Status;

    .line 200
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_LENGTH"

    const/16 v2, 0x57

    const v3, 0x900c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_LENGTH:Lorg/alljoyn/bus/Status;

    .line 202
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_VALUE"

    const/16 v2, 0x58

    const v3, 0x900d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_VALUE:Lorg/alljoyn/bus/Status;

    .line 204
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_HDR_FLAGS"

    const/16 v2, 0x59

    const v3, 0x900e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_HDR_FLAGS:Lorg/alljoyn/bus/Status;

    .line 206
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_BODY_LEN"

    const/16 v2, 0x5a

    const v3, 0x900f

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_BODY_LEN:Lorg/alljoyn/bus/Status;

    .line 208
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_HEADER_LEN"

    const/16 v2, 0x5b

    const v3, 0x9010

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_HEADER_LEN:Lorg/alljoyn/bus/Status;

    .line 210
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_UNKNOWN_SERIAL"

    const/16 v2, 0x5c

    const v3, 0x9011

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_UNKNOWN_SERIAL:Lorg/alljoyn/bus/Status;

    .line 212
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_UNKNOWN_PATH"

    const/16 v2, 0x5d

    const v3, 0x9012

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_UNKNOWN_PATH:Lorg/alljoyn/bus/Status;

    .line 214
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_UNKNOWN_INTERFACE"

    const/16 v2, 0x5e

    const v3, 0x9013

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_UNKNOWN_INTERFACE:Lorg/alljoyn/bus/Status;

    .line 216
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_ESTABLISH_FAILED"

    const/16 v2, 0x5f

    const v3, 0x9014

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_ESTABLISH_FAILED:Lorg/alljoyn/bus/Status;

    .line 218
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_UNEXPECTED_SIGNATURE"

    const/16 v2, 0x60

    const v3, 0x9015

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_UNEXPECTED_SIGNATURE:Lorg/alljoyn/bus/Status;

    .line 220
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_INTERFACE_MISSING"

    const/16 v2, 0x61

    const v3, 0x9016

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_INTERFACE_MISSING:Lorg/alljoyn/bus/Status;

    .line 222
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_PATH_MISSING"

    const/16 v2, 0x62

    const v3, 0x9017

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_PATH_MISSING:Lorg/alljoyn/bus/Status;

    .line 224
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_MEMBER_MISSING"

    const/16 v2, 0x63

    const v3, 0x9018

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_MEMBER_MISSING:Lorg/alljoyn/bus/Status;

    .line 226
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_REPLY_SERIAL_MISSING"

    const/16 v2, 0x64

    const v3, 0x9019

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_REPLY_SERIAL_MISSING:Lorg/alljoyn/bus/Status;

    .line 228
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_ERROR_NAME_MISSING"

    const/16 v2, 0x65

    const v3, 0x901a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_ERROR_NAME_MISSING:Lorg/alljoyn/bus/Status;

    .line 230
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_INTERFACE_NO_SUCH_MEMBER"

    const/16 v2, 0x66

    const v3, 0x901b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_INTERFACE_NO_SUCH_MEMBER:Lorg/alljoyn/bus/Status;

    .line 232
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_SUCH_OBJECT"

    const/16 v2, 0x67

    const v3, 0x901c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_OBJECT:Lorg/alljoyn/bus/Status;

    .line 234
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_OBJECT_NO_SUCH_MEMBER"

    const/16 v2, 0x68

    const v3, 0x901d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_OBJECT_NO_SUCH_MEMBER:Lorg/alljoyn/bus/Status;

    .line 236
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_OBJECT_NO_SUCH_INTERFACE"

    const/16 v2, 0x69

    const v3, 0x901e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_OBJECT_NO_SUCH_INTERFACE:Lorg/alljoyn/bus/Status;

    .line 238
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_SUCH_INTERFACE"

    const/16 v2, 0x6a

    const v3, 0x901f

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_INTERFACE:Lorg/alljoyn/bus/Status;

    .line 240
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_MEMBER_NO_SUCH_SIGNATURE"

    const/16 v2, 0x6b

    const v3, 0x9020

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_MEMBER_NO_SUCH_SIGNATURE:Lorg/alljoyn/bus/Status;

    .line 242
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NOT_NUL_TERMINATED"

    const/16 v2, 0x6c

    const v3, 0x9021

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NOT_NUL_TERMINATED:Lorg/alljoyn/bus/Status;

    .line 244
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_SUCH_PROPERTY"

    const/16 v2, 0x6d

    const v3, 0x9022

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_PROPERTY:Lorg/alljoyn/bus/Status;

    .line 246
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_SET_WRONG_SIGNATURE"

    const/16 v2, 0x6e

    const v3, 0x9023

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_SET_WRONG_SIGNATURE:Lorg/alljoyn/bus/Status;

    .line 248
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_PROPERTY_VALUE_NOT_SET"

    const/16 v2, 0x6f

    const v3, 0x9024

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_PROPERTY_VALUE_NOT_SET:Lorg/alljoyn/bus/Status;

    .line 250
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_PROPERTY_ACCESS_DENIED"

    const/16 v2, 0x70

    const v3, 0x9025

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_PROPERTY_ACCESS_DENIED:Lorg/alljoyn/bus/Status;

    .line 252
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_TRANSPORTS"

    const/16 v2, 0x71

    const v3, 0x9026

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_TRANSPORTS:Lorg/alljoyn/bus/Status;

    .line 254
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_TRANSPORT_ARGS"

    const/16 v2, 0x72

    const v3, 0x9027

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_TRANSPORT_ARGS:Lorg/alljoyn/bus/Status;

    .line 256
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_ROUTE"

    const/16 v2, 0x73

    const v3, 0x9028

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_ROUTE:Lorg/alljoyn/bus/Status;

    .line 258
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_ENDPOINT"

    const/16 v2, 0x74

    const v3, 0x9029

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_ENDPOINT:Lorg/alljoyn/bus/Status;

    .line 260
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_SEND_PARAMETER"

    const/16 v2, 0x75

    const v3, 0x902a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_SEND_PARAMETER:Lorg/alljoyn/bus/Status;

    .line 262
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_UNMATCHED_REPLY_SERIAL"

    const/16 v2, 0x76

    const v3, 0x902b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_UNMATCHED_REPLY_SERIAL:Lorg/alljoyn/bus/Status;

    .line 264
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_SENDER_ID"

    const/16 v2, 0x77

    const v3, 0x902c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_SENDER_ID:Lorg/alljoyn/bus/Status;

    .line 266
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_TRANSPORT_NOT_STARTED"

    const/16 v2, 0x78

    const v3, 0x902d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_TRANSPORT_NOT_STARTED:Lorg/alljoyn/bus/Status;

    .line 268
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_EMPTY_MESSAGE"

    const/16 v2, 0x79

    const v3, 0x902e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_EMPTY_MESSAGE:Lorg/alljoyn/bus/Status;

    .line 270
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NOT_OWNER"

    const/16 v2, 0x7a

    const v3, 0x902f

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NOT_OWNER:Lorg/alljoyn/bus/Status;

    .line 272
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_SET_PROPERTY_REJECTED"

    const/16 v2, 0x7b

    const v3, 0x9030

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_SET_PROPERTY_REJECTED:Lorg/alljoyn/bus/Status;

    .line 274
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_CONNECT_FAILED"

    const/16 v2, 0x7c

    const v3, 0x9031

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_CONNECT_FAILED:Lorg/alljoyn/bus/Status;

    .line 276
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_REPLY_IS_ERROR_MESSAGE"

    const/16 v2, 0x7d

    const v3, 0x9032

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_REPLY_IS_ERROR_MESSAGE:Lorg/alljoyn/bus/Status;

    .line 278
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NOT_AUTHENTICATING"

    const/16 v2, 0x7e

    const v3, 0x9033

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NOT_AUTHENTICATING:Lorg/alljoyn/bus/Status;

    .line 280
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_LISTENER"

    const/16 v2, 0x7f

    const v3, 0x9034

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_LISTENER:Lorg/alljoyn/bus/Status;

    .line 282
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BT_TRANSPORT_ERROR"

    const/16 v2, 0x80

    const v3, 0x9035

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BT_TRANSPORT_ERROR:Lorg/alljoyn/bus/Status;

    .line 284
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NOT_ALLOWED"

    const/16 v2, 0x81

    const v3, 0x9036

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NOT_ALLOWED:Lorg/alljoyn/bus/Status;

    .line 286
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_WRITE_QUEUE_FULL"

    const/16 v2, 0x82

    const v3, 0x9037

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_WRITE_QUEUE_FULL:Lorg/alljoyn/bus/Status;

    .line 288
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_ENDPOINT_CLOSING"

    const/16 v2, 0x83

    const v3, 0x9038

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_ENDPOINT_CLOSING:Lorg/alljoyn/bus/Status;

    .line 290
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_INTERFACE_MISMATCH"

    const/16 v2, 0x84

    const v3, 0x9039

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_INTERFACE_MISMATCH:Lorg/alljoyn/bus/Status;

    .line 292
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_MEMBER_ALREADY_EXISTS"

    const/16 v2, 0x85

    const v3, 0x903a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_MEMBER_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    .line 294
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_PROPERTY_ALREADY_EXISTS"

    const/16 v2, 0x86

    const v3, 0x903b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_PROPERTY_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    .line 296
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_IFACE_ALREADY_EXISTS"

    const/16 v2, 0x87

    const v3, 0x903c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_IFACE_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    .line 298
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_ERROR_RESPONSE"

    const/16 v2, 0x88

    const v3, 0x903d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_ERROR_RESPONSE:Lorg/alljoyn/bus/Status;

    .line 300
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_XML"

    const/16 v2, 0x89

    const v3, 0x903e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_XML:Lorg/alljoyn/bus/Status;

    .line 302
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_CHILD_PATH"

    const/16 v2, 0x8a

    const v3, 0x903f

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_CHILD_PATH:Lorg/alljoyn/bus/Status;

    .line 304
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_OBJ_ALREADY_EXISTS"

    const/16 v2, 0x8b

    const v3, 0x9040

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_OBJ_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    .line 306
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_OBJ_NOT_FOUND"

    const/16 v2, 0x8c

    const v3, 0x9041

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_OBJ_NOT_FOUND:Lorg/alljoyn/bus/Status;

    .line 308
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_CANNOT_EXPAND_MESSAGE"

    const/16 v2, 0x8d

    const v3, 0x9042

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_CANNOT_EXPAND_MESSAGE:Lorg/alljoyn/bus/Status;

    .line 310
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NOT_COMPRESSED"

    const/16 v2, 0x8e

    const v3, 0x9043

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NOT_COMPRESSED:Lorg/alljoyn/bus/Status;

    .line 312
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_ALREADY_CONNECTED"

    const/16 v2, 0x8f

    const v3, 0x9044

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_ALREADY_CONNECTED:Lorg/alljoyn/bus/Status;

    .line 314
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NOT_CONNECTED"

    const/16 v2, 0x90

    const v3, 0x9045

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NOT_CONNECTED:Lorg/alljoyn/bus/Status;

    .line 316
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_ALREADY_LISTENING"

    const/16 v2, 0x91

    const v3, 0x9046

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_ALREADY_LISTENING:Lorg/alljoyn/bus/Status;

    .line 318
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_KEY_UNAVAILABLE"

    const/16 v2, 0x92

    const v3, 0x9047

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_KEY_UNAVAILABLE:Lorg/alljoyn/bus/Status;

    .line 320
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_TRUNCATED"

    const/16 v2, 0x93

    const v3, 0x9048

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_TRUNCATED:Lorg/alljoyn/bus/Status;

    .line 322
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_KEY_STORE_NOT_LOADED"

    const/16 v2, 0x94

    const v3, 0x9049

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_KEY_STORE_NOT_LOADED:Lorg/alljoyn/bus/Status;

    .line 324
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_AUTHENTICATION_MECHANISM"

    const/16 v2, 0x95

    const v3, 0x904a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_AUTHENTICATION_MECHANISM:Lorg/alljoyn/bus/Status;

    .line 326
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BUS_ALREADY_STARTED"

    const/16 v2, 0x96

    const v3, 0x904b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BUS_ALREADY_STARTED:Lorg/alljoyn/bus/Status;

    .line 328
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BUS_NOT_STARTED"

    const/16 v2, 0x97

    const v3, 0x904c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BUS_NOT_STARTED:Lorg/alljoyn/bus/Status;

    .line 330
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_KEYBLOB_OP_INVALID"

    const/16 v2, 0x98

    const v3, 0x904d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_KEYBLOB_OP_INVALID:Lorg/alljoyn/bus/Status;

    .line 332
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_INVALID_HEADER_CHECKSUM"

    const/16 v2, 0x99

    const v3, 0x904e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_INVALID_HEADER_CHECKSUM:Lorg/alljoyn/bus/Status;

    .line 334
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_MESSAGE_NOT_ENCRYPTED"

    const/16 v2, 0x9a

    const v3, 0x904f

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_MESSAGE_NOT_ENCRYPTED:Lorg/alljoyn/bus/Status;

    .line 336
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_INVALID_HEADER_SERIAL"

    const/16 v2, 0x9b

    const v3, 0x9050

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_INVALID_HEADER_SERIAL:Lorg/alljoyn/bus/Status;

    .line 338
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_TIME_TO_LIVE_EXPIRED"

    const/16 v2, 0x9c

    const v3, 0x9051

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_TIME_TO_LIVE_EXPIRED:Lorg/alljoyn/bus/Status;

    .line 340
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_HDR_EXPANSION_INVALID"

    const/16 v2, 0x9d

    const v3, 0x9052

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_HDR_EXPANSION_INVALID:Lorg/alljoyn/bus/Status;

    .line 342
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_MISSING_COMPRESSION_TOKEN"

    const/16 v2, 0x9e

    const v3, 0x9053

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_MISSING_COMPRESSION_TOKEN:Lorg/alljoyn/bus/Status;

    .line 344
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_PEER_GUID"

    const/16 v2, 0x9f

    const v3, 0x9054

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_PEER_GUID:Lorg/alljoyn/bus/Status;

    .line 346
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_MESSAGE_DECRYPTION_FAILED"

    const/16 v2, 0xa0

    const v3, 0x9055

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_MESSAGE_DECRYPTION_FAILED:Lorg/alljoyn/bus/Status;

    .line 348
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_SECURITY_FATAL"

    const/16 v2, 0xa1

    const v3, 0x9056

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_SECURITY_FATAL:Lorg/alljoyn/bus/Status;

    .line 350
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_KEY_EXPIRED"

    const/16 v2, 0xa2

    const v3, 0x9057

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_KEY_EXPIRED:Lorg/alljoyn/bus/Status;

    .line 352
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_CORRUPT_KEYSTORE"

    const/16 v2, 0xa3

    const v3, 0x9058

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_CORRUPT_KEYSTORE:Lorg/alljoyn/bus/Status;

    .line 354
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_CALL_FOR_REPLY"

    const/16 v2, 0xa4

    const v3, 0x9059

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_CALL_FOR_REPLY:Lorg/alljoyn/bus/Status;

    .line 356
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NOT_A_COMPLETE_TYPE"

    const/16 v2, 0xa5

    const v3, 0x905a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NOT_A_COMPLETE_TYPE:Lorg/alljoyn/bus/Status;

    .line 358
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_POLICY_VIOLATION"

    const/16 v2, 0xa6

    const v3, 0x905b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_POLICY_VIOLATION:Lorg/alljoyn/bus/Status;

    .line 360
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_SUCH_SERVICE"

    const/16 v2, 0xa7

    const v3, 0x905c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_SERVICE:Lorg/alljoyn/bus/Status;

    .line 362
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_TRANSPORT_NOT_AVAILABLE"

    const/16 v2, 0xa8

    const v3, 0x905d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_TRANSPORT_NOT_AVAILABLE:Lorg/alljoyn/bus/Status;

    .line 364
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_INVALID_AUTH_MECHANISM"

    const/16 v2, 0xa9

    const v3, 0x905e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_INVALID_AUTH_MECHANISM:Lorg/alljoyn/bus/Status;

    .line 366
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_KEYSTORE_VERSION_MISMATCH"

    const/16 v2, 0xaa

    const v3, 0x905f

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_KEYSTORE_VERSION_MISMATCH:Lorg/alljoyn/bus/Status;

    .line 368
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BLOCKING_CALL_NOT_ALLOWED"

    const/16 v2, 0xab

    const v3, 0x9060

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BLOCKING_CALL_NOT_ALLOWED:Lorg/alljoyn/bus/Status;

    .line 370
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_SIGNATURE_MISMATCH"

    const/16 v2, 0xac

    const v3, 0x9061

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_SIGNATURE_MISMATCH:Lorg/alljoyn/bus/Status;

    .line 372
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_STOPPING"

    const/16 v2, 0xad

    const v3, 0x9062

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_STOPPING:Lorg/alljoyn/bus/Status;

    .line 374
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_METHOD_CALL_ABORTED"

    const/16 v2, 0xae

    const v3, 0x9063

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_METHOD_CALL_ABORTED:Lorg/alljoyn/bus/Status;

    .line 376
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_CANNOT_ADD_INTERFACE"

    const/16 v2, 0xaf

    const v3, 0x9064

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_CANNOT_ADD_INTERFACE:Lorg/alljoyn/bus/Status;

    .line 378
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_CANNOT_ADD_HANDLER"

    const/16 v2, 0xb0

    const v3, 0x9065

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_CANNOT_ADD_HANDLER:Lorg/alljoyn/bus/Status;

    .line 380
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_KEYSTORE_NOT_LOADED"

    const/16 v2, 0xb1

    const v3, 0x9066

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_KEYSTORE_NOT_LOADED:Lorg/alljoyn/bus/Status;

    .line 382
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_SUCH_HANDLE"

    const/16 v2, 0xb2

    const v3, 0x906b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_HANDLE:Lorg/alljoyn/bus/Status;

    .line 384
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_HANDLES_NOT_ENABLED"

    const/16 v2, 0xb3

    const v3, 0x906c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_HANDLES_NOT_ENABLED:Lorg/alljoyn/bus/Status;

    .line 386
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_HANDLES_MISMATCH"

    const/16 v2, 0xb4

    const v3, 0x906d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_HANDLES_MISMATCH:Lorg/alljoyn/bus/Status;

    .line 388
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BT_MAX_CONNECTIONS_USED"

    const/16 v2, 0xb5

    const v3, 0x906e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BT_MAX_CONNECTIONS_USED:Lorg/alljoyn/bus/Status;

    .line 390
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_SESSION"

    const/16 v2, 0xb6

    const v3, 0x906f

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_SESSION:Lorg/alljoyn/bus/Status;

    .line 392
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_ELEMENT_NOT_FOUND"

    const/16 v2, 0xb7

    const v3, 0x9070

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_ELEMENT_NOT_FOUND:Lorg/alljoyn/bus/Status;

    .line 394
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NOT_A_DICTIONARY"

    const/16 v2, 0xb8

    const v3, 0x9071

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NOT_A_DICTIONARY:Lorg/alljoyn/bus/Status;

    .line 396
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_WAIT_FAILED"

    const/16 v2, 0xb9

    const v3, 0x9072

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_WAIT_FAILED:Lorg/alljoyn/bus/Status;

    .line 398
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_BAD_SESSION_OPTS"

    const/16 v2, 0xba

    const v3, 0x9074

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_BAD_SESSION_OPTS:Lorg/alljoyn/bus/Status;

    .line 400
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_CONNECTION_REJECTED"

    const/16 v2, 0xbb

    const v3, 0x9075

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_CONNECTION_REJECTED:Lorg/alljoyn/bus/Status;

    .line 402
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER"

    const/16 v2, 0xbc

    const v3, 0x9076

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER:Lorg/alljoyn/bus/Status;

    .line 404
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "DBUS_REQUEST_NAME_REPLY_IN_QUEUE"

    const/16 v2, 0xbd

    const v3, 0x9077

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->DBUS_REQUEST_NAME_REPLY_IN_QUEUE:Lorg/alljoyn/bus/Status;

    .line 406
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "DBUS_REQUEST_NAME_REPLY_EXISTS"

    const/16 v2, 0xbe

    const v3, 0x9078

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->DBUS_REQUEST_NAME_REPLY_EXISTS:Lorg/alljoyn/bus/Status;

    .line 408
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "DBUS_REQUEST_NAME_REPLY_ALREADY_OWNER"

    const/16 v2, 0xbf

    const v3, 0x9079

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->DBUS_REQUEST_NAME_REPLY_ALREADY_OWNER:Lorg/alljoyn/bus/Status;

    .line 410
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "DBUS_RELEASE_NAME_REPLY_RELEASED"

    const/16 v2, 0xc0

    const v3, 0x907a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->DBUS_RELEASE_NAME_REPLY_RELEASED:Lorg/alljoyn/bus/Status;

    .line 412
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "DBUS_RELEASE_NAME_REPLY_NON_EXISTENT"

    const/16 v2, 0xc1

    const v3, 0x907b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->DBUS_RELEASE_NAME_REPLY_NON_EXISTENT:Lorg/alljoyn/bus/Status;

    .line 414
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "DBUS_RELEASE_NAME_REPLY_NOT_OWNER"

    const/16 v2, 0xc2

    const v3, 0x907c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->DBUS_RELEASE_NAME_REPLY_NOT_OWNER:Lorg/alljoyn/bus/Status;

    .line 416
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "DBUS_START_REPLY_ALREADY_RUNNING"

    const/16 v2, 0xc3

    const v3, 0x907e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->DBUS_START_REPLY_ALREADY_RUNNING:Lorg/alljoyn/bus/Status;

    .line 418
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_BINDSESSIONPORT_REPLY_ALREADY_EXISTS"

    const/16 v2, 0xc4

    const v3, 0x9080

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_BINDSESSIONPORT_REPLY_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    .line 420
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_BINDSESSIONPORT_REPLY_FAILED"

    const/16 v2, 0xc5

    const v3, 0x9081

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_BINDSESSIONPORT_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 422
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_JOINSESSION_REPLY_NO_SESSION"

    const/16 v2, 0xc6

    const v3, 0x9083

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_NO_SESSION:Lorg/alljoyn/bus/Status;

    .line 424
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_JOINSESSION_REPLY_UNREACHABLE"

    const/16 v2, 0xc7

    const v3, 0x9084

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_UNREACHABLE:Lorg/alljoyn/bus/Status;

    .line 426
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_JOINSESSION_REPLY_CONNECT_FAILED"

    const/16 v2, 0xc8

    const v3, 0x9085

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_CONNECT_FAILED:Lorg/alljoyn/bus/Status;

    .line 428
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_JOINSESSION_REPLY_REJECTED"

    const/16 v2, 0xc9

    const v3, 0x9086

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_REJECTED:Lorg/alljoyn/bus/Status;

    .line 430
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_JOINSESSION_REPLY_BAD_SESSION_OPTS"

    const/16 v2, 0xca

    const v3, 0x9087

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_BAD_SESSION_OPTS:Lorg/alljoyn/bus/Status;

    .line 432
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_JOINSESSION_REPLY_FAILED"

    const/16 v2, 0xcb

    const v3, 0x9088

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 434
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_LEAVESESSION_REPLY_NO_SESSION"

    const/16 v2, 0xcc

    const v3, 0x908a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_LEAVESESSION_REPLY_NO_SESSION:Lorg/alljoyn/bus/Status;

    .line 436
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_LEAVESESSION_REPLY_FAILED"

    const/16 v2, 0xcd

    const v3, 0x908b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_LEAVESESSION_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 438
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_ADVERTISENAME_REPLY_ALREADY_ADVERTISING"

    const/16 v2, 0xce

    const v3, 0x908d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_ADVERTISENAME_REPLY_ALREADY_ADVERTISING:Lorg/alljoyn/bus/Status;

    .line 440
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_ADVERTISENAME_REPLY_FAILED"

    const/16 v2, 0xcf

    const v3, 0x908e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_ADVERTISENAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 442
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_CANCELADVERTISENAME_REPLY_FAILED"

    const/16 v2, 0xd0

    const v3, 0x9090

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_CANCELADVERTISENAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 444
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_FINDADVERTISEDNAME_REPLY_ALREADY_DISCOVERING"

    const/16 v2, 0xd1

    const v3, 0x9092

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_FINDADVERTISEDNAME_REPLY_ALREADY_DISCOVERING:Lorg/alljoyn/bus/Status;

    .line 446
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_FINDADVERTISEDNAME_REPLY_FAILED"

    const/16 v2, 0xd2

    const v3, 0x9093

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_FINDADVERTISEDNAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 448
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_CANCELFINDADVERTISEDNAME_REPLY_FAILED"

    const/16 v2, 0xd3

    const v3, 0x9095

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_CANCELFINDADVERTISEDNAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 450
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_UNEXPECTED_DISPOSITION"

    const/16 v2, 0xd4

    const v3, 0x9096

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_UNEXPECTED_DISPOSITION:Lorg/alljoyn/bus/Status;

    .line 452
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_INTERFACE_ACTIVATED"

    const/16 v2, 0xd5

    const v3, 0x9097

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_INTERFACE_ACTIVATED:Lorg/alljoyn/bus/Status;

    .line 454
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_UNBINDSESSIONPORT_REPLY_BAD_PORT"

    const/16 v2, 0xd6

    const v3, 0x9098

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_UNBINDSESSIONPORT_REPLY_BAD_PORT:Lorg/alljoyn/bus/Status;

    .line 456
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_UNBINDSESSIONPORT_REPLY_FAILED"

    const/16 v2, 0xd7

    const v3, 0x9099

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_UNBINDSESSIONPORT_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 458
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_BINDSESSIONPORT_REPLY_INVALID_OPTS"

    const/16 v2, 0xd8

    const v3, 0x909a

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_BINDSESSIONPORT_REPLY_INVALID_OPTS:Lorg/alljoyn/bus/Status;

    .line 460
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED"

    const/16 v2, 0xd9

    const v3, 0x909b

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED:Lorg/alljoyn/bus/Status;

    .line 462
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_SELF_CONNECT"

    const/16 v2, 0xda

    const v3, 0x909c

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_SELF_CONNECT:Lorg/alljoyn/bus/Status;

    .line 464
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_SECURITY_NOT_ENABLED"

    const/16 v2, 0xdb

    const v3, 0x909d

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_SECURITY_NOT_ENABLED:Lorg/alljoyn/bus/Status;

    .line 466
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_LISTENER_ALREADY_SET"

    const/16 v2, 0xdc

    const v3, 0x909e

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_LISTENER_ALREADY_SET:Lorg/alljoyn/bus/Status;

    .line 468
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_PEER_AUTH_VERSION_MISMATCH"

    const/16 v2, 0xdd

    const v3, 0x909f

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_PEER_AUTH_VERSION_MISMATCH:Lorg/alljoyn/bus/Status;

    .line 470
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_SETLINKTIMEOUT_REPLY_NOT_SUPPORTED"

    const/16 v2, 0xde

    const v3, 0x90a0

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_SETLINKTIMEOUT_REPLY_NOT_SUPPORTED:Lorg/alljoyn/bus/Status;

    .line 472
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_SETLINKTIMEOUT_REPLY_NO_DEST_SUPPORT"

    const/16 v2, 0xdf

    const v3, 0x90a1

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_SETLINKTIMEOUT_REPLY_NO_DEST_SUPPORT:Lorg/alljoyn/bus/Status;

    .line 474
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_SETLINKTIMEOUT_REPLY_FAILED"

    const/16 v2, 0xe0

    const v3, 0x90a2

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_SETLINKTIMEOUT_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 476
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_ACCESS_PERMISSION_WARNING"

    const/16 v2, 0xe1

    const v3, 0x90a3

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_ACCESS_PERMISSION_WARNING:Lorg/alljoyn/bus/Status;

    .line 478
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_ACCESS_PERMISSION_ERROR"

    const/16 v2, 0xe2

    const v3, 0x90a4

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_ACCESS_PERMISSION_ERROR:Lorg/alljoyn/bus/Status;

    .line 480
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_DESTINATION_NOT_AUTHENTICATED"

    const/16 v2, 0xe3

    const v3, 0x90a5

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_DESTINATION_NOT_AUTHENTICATED:Lorg/alljoyn/bus/Status;

    .line 482
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_ENDPOINT_REDIRECTED"

    const/16 v2, 0xe4

    const v3, 0x90a6

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_ENDPOINT_REDIRECTED:Lorg/alljoyn/bus/Status;

    .line 484
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_AUTHENTICATION_PENDING"

    const/16 v2, 0xe5

    const v3, 0x90a7

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_AUTHENTICATION_PENDING:Lorg/alljoyn/bus/Status;

    .line 486
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NOT_AUTHORIZED"

    const/16 v2, 0xe6

    const v3, 0x90a8

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NOT_AUTHORIZED:Lorg/alljoyn/bus/Status;

    .line 488
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "PACKET_BUS_NO_SUCH_CHANNEL"

    const/16 v2, 0xe7

    const v3, 0x90a9

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->PACKET_BUS_NO_SUCH_CHANNEL:Lorg/alljoyn/bus/Status;

    .line 490
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "PACKET_BAD_FORMAT"

    const/16 v2, 0xe8

    const v3, 0x90aa

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->PACKET_BAD_FORMAT:Lorg/alljoyn/bus/Status;

    .line 492
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "PACKET_CONNECT_TIMEOUT"

    const/16 v2, 0xe9

    const v3, 0x90ab

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->PACKET_CONNECT_TIMEOUT:Lorg/alljoyn/bus/Status;

    .line 494
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "PACKET_CHANNEL_FAIL"

    const/16 v2, 0xea

    const v3, 0x90ac

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->PACKET_CHANNEL_FAIL:Lorg/alljoyn/bus/Status;

    .line 496
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "PACKET_TOO_LARGE"

    const/16 v2, 0xeb

    const v3, 0x90ad

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->PACKET_TOO_LARGE:Lorg/alljoyn/bus/Status;

    .line 498
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "PACKET_BAD_PARAMETER"

    const/16 v2, 0xec

    const v3, 0x90ae

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->PACKET_BAD_PARAMETER:Lorg/alljoyn/bus/Status;

    .line 500
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "PACKET_BAD_CRC"

    const/16 v2, 0xed

    const v3, 0x90af

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->PACKET_BAD_CRC:Lorg/alljoyn/bus/Status;

    .line 502
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_ATTR_SIZE_MISMATCH"

    const/16 v2, 0xee

    const v3, 0x90b0

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_ATTR_SIZE_MISMATCH:Lorg/alljoyn/bus/Status;

    .line 504
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_AUTH_CHALLENGE"

    const/16 v2, 0xef

    const v3, 0x90b1

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_AUTH_CHALLENGE:Lorg/alljoyn/bus/Status;

    .line 506
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_SOCKET_NOT_OPEN"

    const/16 v2, 0xf0

    const v3, 0x90b2

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_SOCKET_NOT_OPEN:Lorg/alljoyn/bus/Status;

    .line 508
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_SOCKET_OPEN"

    const/16 v2, 0xf1

    const v3, 0x90b3

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_SOCKET_OPEN:Lorg/alljoyn/bus/Status;

    .line 510
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_FAILED_TO_SEND_MSG"

    const/16 v2, 0xf2

    const v3, 0x90b4

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_FAILED_TO_SEND_MSG:Lorg/alljoyn/bus/Status;

    .line 512
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_FRAMING_ERROR"

    const/16 v2, 0xf3

    const v3, 0x90b5

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_FRAMING_ERROR:Lorg/alljoyn/bus/Status;

    .line 514
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_INVALID_ERROR_CODE"

    const/16 v2, 0xf4

    const v3, 0x90b6

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_INVALID_ERROR_CODE:Lorg/alljoyn/bus/Status;

    .line 516
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_INVALID_FINGERPRINT"

    const/16 v2, 0xf5

    const v3, 0x90b7

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_INVALID_FINGERPRINT:Lorg/alljoyn/bus/Status;

    .line 518
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_INVALID_ADDR_FAMILY"

    const/16 v2, 0xf6

    const v3, 0x90b8

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_INVALID_ADDR_FAMILY:Lorg/alljoyn/bus/Status;

    .line 520
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_INVALID_MESSAGE_INTEGRITY"

    const/16 v2, 0xf7

    const v3, 0x90b9

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_INVALID_MESSAGE_INTEGRITY:Lorg/alljoyn/bus/Status;

    .line 522
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_INVALID_MSG_TYPE"

    const/16 v2, 0xf8

    const v3, 0x90ba

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_INVALID_MSG_TYPE:Lorg/alljoyn/bus/Status;

    .line 524
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_INVALID_ATTR_TYPE"

    const/16 v2, 0xf9

    const v3, 0x90bb

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_INVALID_ATTR_TYPE:Lorg/alljoyn/bus/Status;

    .line 526
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_RESPONSE_WITH_USERNAME"

    const/16 v2, 0xfa

    const v3, 0x90bc

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_RESPONSE_WITH_USERNAME:Lorg/alljoyn/bus/Status;

    .line 528
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_ERR400_BAD_REQUEST"

    const/16 v2, 0xfb

    const v3, 0x90bd

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_ERR400_BAD_REQUEST:Lorg/alljoyn/bus/Status;

    .line 530
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_BAD_INDICATION"

    const/16 v2, 0xfc

    const v3, 0x90be

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_BAD_INDICATION:Lorg/alljoyn/bus/Status;

    .line 532
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_ERR401_UNAUTHORIZED_REQUEST"

    const/16 v2, 0xfd

    const v3, 0x90bf

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_ERR401_UNAUTHORIZED_REQUEST:Lorg/alljoyn/bus/Status;

    .line 534
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_TOO_MANY_ATTRIBUTES"

    const/16 v2, 0xfe

    const v3, 0x90c0

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_TOO_MANY_ATTRIBUTES:Lorg/alljoyn/bus/Status;

    .line 536
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_DUPLICATE_ATTRIBUTE"

    const/16 v2, 0xff

    const v3, 0x90c1

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_DUPLICATE_ATTRIBUTE:Lorg/alljoyn/bus/Status;

    .line 538
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "STUN_UNAUTHORIZED_INDICATION"

    const/16 v2, 0x100

    const v3, 0x90c2

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->STUN_UNAUTHORIZED_INDICATION:Lorg/alljoyn/bus/Status;

    .line 540
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ICE_ALLOCATING_MEMORY"

    const/16 v2, 0x101

    const v3, 0x90c3

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ICE_ALLOCATING_MEMORY:Lorg/alljoyn/bus/Status;

    .line 542
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ICE_CHECKS_INCOMPLETE"

    const/16 v2, 0x102

    const v3, 0x90c4

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ICE_CHECKS_INCOMPLETE:Lorg/alljoyn/bus/Status;

    .line 544
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ICE_ALLOCATE_REJECTED_NO_RESOURCES"

    const/16 v2, 0x103

    const v3, 0x90c5

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ICE_ALLOCATE_REJECTED_NO_RESOURCES:Lorg/alljoyn/bus/Status;

    .line 546
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ICE_ALLOCATION_QUOTA_REACHED"

    const/16 v2, 0x104

    const v3, 0x90c6

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ICE_ALLOCATION_QUOTA_REACHED:Lorg/alljoyn/bus/Status;

    .line 548
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ICE_ALLOCATION_MISMATCH"

    const/16 v2, 0x105

    const v3, 0x90c7

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ICE_ALLOCATION_MISMATCH:Lorg/alljoyn/bus/Status;

    .line 550
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ICE_STUN_ERROR"

    const/16 v2, 0x106

    const v3, 0x90c8

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ICE_STUN_ERROR:Lorg/alljoyn/bus/Status;

    .line 552
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ICE_INVALID_STATE"

    const/16 v2, 0x107

    const v3, 0x90c9

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ICE_INVALID_STATE:Lorg/alljoyn/bus/Status;

    .line 554
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ICE_UNKNOWN_COMPONENT_ID"

    const/16 v2, 0x108

    const v3, 0x90ca

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ICE_UNKNOWN_COMPONENT_ID:Lorg/alljoyn/bus/Status;

    .line 556
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "RENDEZVOUS_SERVER_DEACTIVATED_USER"

    const/16 v2, 0x109

    const v3, 0x90cb

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_DEACTIVATED_USER:Lorg/alljoyn/bus/Status;

    .line 558
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "RENDEZVOUS_SERVER_UNKNOWN_USER"

    const/16 v2, 0x10a

    const v3, 0x90cc

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_UNKNOWN_USER:Lorg/alljoyn/bus/Status;

    .line 560
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "UNABLE_TO_CONNECT_TO_RENDEZVOUS_SERVER"

    const/16 v2, 0x10b

    const v3, 0x90cd

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->UNABLE_TO_CONNECT_TO_RENDEZVOUS_SERVER:Lorg/alljoyn/bus/Status;

    .line 562
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "NOT_CONNECTED_TO_RENDEZVOUS_SERVER"

    const/16 v2, 0x10c

    const v3, 0x90ce

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->NOT_CONNECTED_TO_RENDEZVOUS_SERVER:Lorg/alljoyn/bus/Status;

    .line 564
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "UNABLE_TO_SEND_MESSAGE_TO_RENDEZVOUS_SERVER"

    const/16 v2, 0x10d

    const v3, 0x90cf

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->UNABLE_TO_SEND_MESSAGE_TO_RENDEZVOUS_SERVER:Lorg/alljoyn/bus/Status;

    .line 566
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INVALID_RENDEZVOUS_SERVER_INTERFACE_MESSAGE"

    const/16 v2, 0x10e

    const v3, 0x90d0

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INVALID_RENDEZVOUS_SERVER_INTERFACE_MESSAGE:Lorg/alljoyn/bus/Status;

    .line 568
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INVALID_PERSISTENT_CONNECTION_MESSAGE_RESPONSE"

    const/16 v2, 0x10f

    const v3, 0x90d1

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INVALID_PERSISTENT_CONNECTION_MESSAGE_RESPONSE:Lorg/alljoyn/bus/Status;

    .line 570
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INVALID_ON_DEMAND_CONNECTION_MESSAGE_RESPONSE"

    const/16 v2, 0x110

    const v3, 0x90d2

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INVALID_ON_DEMAND_CONNECTION_MESSAGE_RESPONSE:Lorg/alljoyn/bus/Status;

    .line 572
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INVALID_HTTP_METHOD_USED_FOR_RENDEZVOUS_SERVER_INTERFACE_MESSAGE"

    const/16 v2, 0x111

    const v3, 0x90d3

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INVALID_HTTP_METHOD_USED_FOR_RENDEZVOUS_SERVER_INTERFACE_MESSAGE:Lorg/alljoyn/bus/Status;

    .line 574
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "RENDEZVOUS_SERVER_ERR500_INTERNAL_ERROR"

    const/16 v2, 0x112

    const v3, 0x90d4

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_ERR500_INTERNAL_ERROR:Lorg/alljoyn/bus/Status;

    .line 576
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "RENDEZVOUS_SERVER_ERR503_STATUS_UNAVAILABLE"

    const/16 v2, 0x113

    const v3, 0x90d5

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_ERR503_STATUS_UNAVAILABLE:Lorg/alljoyn/bus/Status;

    .line 578
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "RENDEZVOUS_SERVER_ERR401_UNAUTHORIZED_REQUEST"

    const/16 v2, 0x114

    const v3, 0x90d6

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_ERR401_UNAUTHORIZED_REQUEST:Lorg/alljoyn/bus/Status;

    .line 580
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "RENDEZVOUS_SERVER_UNRECOVERABLE_ERROR"

    const/16 v2, 0x115

    const v3, 0x90d7

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_UNRECOVERABLE_ERROR:Lorg/alljoyn/bus/Status;

    .line 582
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "RENDEZVOUS_SERVER_ROOT_CERTIFICATE_UNINITIALIZED"

    const/16 v2, 0x116

    const v3, 0x90d8

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_ROOT_CERTIFICATE_UNINITIALIZED:Lorg/alljoyn/bus/Status;

    .line 584
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_SUCH_ANNOTATION"

    const/16 v2, 0x117

    const v3, 0x90d9

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_ANNOTATION:Lorg/alljoyn/bus/Status;

    .line 586
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_ANNOTATION_ALREADY_EXISTS"

    const/16 v2, 0x118

    const v3, 0x90da

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_ANNOTATION_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    .line 588
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "SOCK_CLOSING"

    const/16 v2, 0x119

    const v3, 0x90db

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->SOCK_CLOSING:Lorg/alljoyn/bus/Status;

    .line 590
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "NO_SUCH_DEVICE"

    const/16 v2, 0x11a

    const v3, 0x90dc

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->NO_SUCH_DEVICE:Lorg/alljoyn/bus/Status;

    .line 592
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "P2P"

    const/16 v2, 0x11b

    const v3, 0x90dd

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->P2P:Lorg/alljoyn/bus/Status;

    .line 594
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "P2P_TIMEOUT"

    const/16 v2, 0x11c

    const v3, 0x90de

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->P2P_TIMEOUT:Lorg/alljoyn/bus/Status;

    .line 596
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "P2P_NOT_CONNECTED"

    const/16 v2, 0x11d

    const v3, 0x90df

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->P2P_NOT_CONNECTED:Lorg/alljoyn/bus/Status;

    .line 598
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_TRANSPORT_MASK"

    const/16 v2, 0x11e

    const v3, 0x90e0

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_TRANSPORT_MASK:Lorg/alljoyn/bus/Status;

    .line 600
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "PROXIMITY_CONNECTION_ESTABLISH_FAIL"

    const/16 v2, 0x11f

    const v3, 0x90e1

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->PROXIMITY_CONNECTION_ESTABLISH_FAIL:Lorg/alljoyn/bus/Status;

    .line 602
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "PROXIMITY_NO_PEERS_FOUND"

    const/16 v2, 0x120

    const v3, 0x90e2

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->PROXIMITY_NO_PEERS_FOUND:Lorg/alljoyn/bus/Status;

    .line 604
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_OBJECT_NOT_REGISTERED"

    const/16 v2, 0x121

    const v3, 0x90e3

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_OBJECT_NOT_REGISTERED:Lorg/alljoyn/bus/Status;

    .line 606
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "P2P_DISABLED"

    const/16 v2, 0x122

    const v3, 0x90e4

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->P2P_DISABLED:Lorg/alljoyn/bus/Status;

    .line 608
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "P2P_BUSY"

    const/16 v2, 0x123

    const v3, 0x90e5

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->P2P_BUSY:Lorg/alljoyn/bus/Status;

    .line 610
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_INCOMPATIBLE_DAEMON"

    const/16 v2, 0x124

    const v3, 0x90e6

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_INCOMPATIBLE_DAEMON:Lorg/alljoyn/bus/Status;

    .line 612
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "P2P_NO_GO"

    const/16 v2, 0x125

    const v3, 0x90e7

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->P2P_NO_GO:Lorg/alljoyn/bus/Status;

    .line 614
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "P2P_NO_STA"

    const/16 v2, 0x126

    const v3, 0x90e8

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->P2P_NO_STA:Lorg/alljoyn/bus/Status;

    .line 616
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "P2P_FORBIDDEN"

    const/16 v2, 0x127

    const v3, 0x90e9

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->P2P_FORBIDDEN:Lorg/alljoyn/bus/Status;

    .line 618
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_ONAPPSUSPEND_REPLY_FAILED"

    const/16 v2, 0x128

    const v3, 0x90ea

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_ONAPPSUSPEND_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 620
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_ONAPPSUSPEND_REPLY_UNSUPPORTED"

    const/16 v2, 0x129

    const v3, 0x90eb

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_ONAPPSUSPEND_REPLY_UNSUPPORTED:Lorg/alljoyn/bus/Status;

    .line 622
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_ONAPPRESUME_REPLY_FAILED"

    const/16 v2, 0x12a

    const v3, 0x90ec

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_ONAPPRESUME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 624
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_ONAPPRESUME_REPLY_UNSUPPORTED"

    const/16 v2, 0x12b

    const v3, 0x90ed

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_ONAPPRESUME_REPLY_UNSUPPORTED:Lorg/alljoyn/bus/Status;

    .line 626
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_NO_SUCH_MESSAGE"

    const/16 v2, 0x12c

    const v3, 0x90ee

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_MESSAGE:Lorg/alljoyn/bus/Status;

    .line 628
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_REMOVESESSIONMEMBER_REPLY_NO_SESSION"

    const/16 v2, 0x12d

    const v3, 0x90ef

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_REPLY_NO_SESSION:Lorg/alljoyn/bus/Status;

    .line 630
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_REMOVESESSIONMEMBER_NOT_BINDER"

    const/16 v2, 0x12e

    const v3, 0x90f0

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_NOT_BINDER:Lorg/alljoyn/bus/Status;

    .line 632
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_REMOVESESSIONMEMBER_NOT_MULTIPOINT"

    const/16 v2, 0x12f

    const v3, 0x90f1

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_NOT_MULTIPOINT:Lorg/alljoyn/bus/Status;

    .line 634
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_REMOVESESSIONMEMBER_NOT_FOUND"

    const/16 v2, 0x130

    const v3, 0x90f2

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_NOT_FOUND:Lorg/alljoyn/bus/Status;

    .line 636
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_REMOVESESSIONMEMBER_INCOMPATIBLE_REMOTE_DAEMON"

    const/16 v2, 0x131

    const v3, 0x90f3

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_INCOMPATIBLE_REMOTE_DAEMON:Lorg/alljoyn/bus/Status;

    .line 638
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALLJOYN_REMOVESESSIONMEMBER_REPLY_FAILED"

    const/16 v2, 0x132

    const v3, 0x90f4

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    .line 640
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BUS_REMOVED_BY_BINDER"

    const/16 v2, 0x133

    const v3, 0x90f5

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BUS_REMOVED_BY_BINDER:Lorg/alljoyn/bus/Status;

    .line 642
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "BAD_ANNOTATION"

    const/16 v2, 0x134

    const v3, 0xa000

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->BAD_ANNOTATION:Lorg/alljoyn/bus/Status;

    .line 644
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "INVALID_CONNECT_ARGS"

    const/16 v2, 0x135

    const v3, 0xa001

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->INVALID_CONNECT_ARGS:Lorg/alljoyn/bus/Status;

    .line 646
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALREADY_FINDING"

    const/16 v2, 0x136

    const v3, 0xa002

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALREADY_FINDING:Lorg/alljoyn/bus/Status;

    .line 648
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "CANCELLED"

    const/16 v2, 0x137

    const v3, 0xa003

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->CANCELLED:Lorg/alljoyn/bus/Status;

    .line 650
    new-instance v0, Lorg/alljoyn/bus/Status;

    const-string v1, "ALREADY_REGISTERED"

    const/16 v2, 0x138

    const v3, 0xa004

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/bus/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/bus/Status;->ALREADY_REGISTERED:Lorg/alljoyn/bus/Status;

    .line 23
    const/16 v0, 0x139

    new-array v0, v0, [Lorg/alljoyn/bus/Status;

    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/bus/Status;->FAIL:Lorg/alljoyn/bus/Status;

    aput-object v1, v0, v5

    sget-object v1, Lorg/alljoyn/bus/Status;->UTF_CONVERSION_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v1, v0, v6

    sget-object v1, Lorg/alljoyn/bus/Status;->BUFFER_TOO_SMALL:Lorg/alljoyn/bus/Status;

    aput-object v1, v0, v7

    sget-object v1, Lorg/alljoyn/bus/Status;->OS_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/alljoyn/bus/Status;->OUT_OF_MEMORY:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/alljoyn/bus/Status;->SOCKET_BIND_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/alljoyn/bus/Status;->INIT_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/alljoyn/bus/Status;->WOULDBLOCK:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/alljoyn/bus/Status;->NOT_IMPLEMENTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/alljoyn/bus/Status;->TIMEOUT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/alljoyn/bus/Status;->SOCK_OTHER_END_CLOSED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_ARG_1:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_ARG_2:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_ARG_3:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_ARG_4:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_ARG_5:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_ARG_6:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_ARG_7:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_ARG_8:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/alljoyn/bus/Status;->INVALID_ADDRESS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/alljoyn/bus/Status;->INVALID_DATA:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/alljoyn/bus/Status;->READ_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/alljoyn/bus/Status;->WRITE_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/alljoyn/bus/Status;->OPEN_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/alljoyn/bus/Status;->PARSE_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/alljoyn/bus/Status;->END_OF_DATA:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/alljoyn/bus/Status;->CONN_REFUSED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_ARG_COUNT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/alljoyn/bus/Status;->WARNING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/alljoyn/bus/Status;->COMMON_ERRORS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/alljoyn/bus/Status;->STOPPING_THREAD:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/alljoyn/bus/Status;->ALERTED_THREAD:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/alljoyn/bus/Status;->XML_MALFORMED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lorg/alljoyn/bus/Status;->AUTH_FAIL:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lorg/alljoyn/bus/Status;->AUTH_USER_REJECT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lorg/alljoyn/bus/Status;->NO_SUCH_ALARM:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lorg/alljoyn/bus/Status;->TIMER_FALLBEHIND:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lorg/alljoyn/bus/Status;->SSL_ERRORS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lorg/alljoyn/bus/Status;->SSL_INIT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lorg/alljoyn/bus/Status;->SSL_CONNECT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lorg/alljoyn/bus/Status;->SSL_VERIFY:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lorg/alljoyn/bus/Status;->EXTERNAL_THREAD:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lorg/alljoyn/bus/Status;->CRYPTO_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lorg/alljoyn/bus/Status;->CRYPTO_TRUNCATED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lorg/alljoyn/bus/Status;->CRYPTO_KEY_UNAVAILABLE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_HOSTNAME:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lorg/alljoyn/bus/Status;->CRYPTO_KEY_UNUSABLE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lorg/alljoyn/bus/Status;->EMPTY_KEY_BLOB:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lorg/alljoyn/bus/Status;->CORRUPT_KEYBLOB:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lorg/alljoyn/bus/Status;->INVALID_KEY_ENCODING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lorg/alljoyn/bus/Status;->DEAD_THREAD:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lorg/alljoyn/bus/Status;->THREAD_RUNNING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lorg/alljoyn/bus/Status;->THREAD_STOPPING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_STRING_ENCODING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lorg/alljoyn/bus/Status;->CRYPTO_INSUFFICIENT_SECURITY:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lorg/alljoyn/bus/Status;->CRYPTO_ILLEGAL_PARAMETERS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lorg/alljoyn/bus/Status;->CRYPTO_HASH_UNINITIALIZED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lorg/alljoyn/bus/Status;->THREAD_NO_WAIT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lorg/alljoyn/bus/Status;->TIMER_EXITING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lorg/alljoyn/bus/Status;->INVALID_GUID:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lorg/alljoyn/bus/Status;->THREADPOOL_EXHAUSTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lorg/alljoyn/bus/Status;->THREADPOOL_STOPPING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lorg/alljoyn/bus/Status;->INVALID_STREAM:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lorg/alljoyn/bus/Status;->TIMER_FULL:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lorg/alljoyn/bus/Status;->IODISPATCH_STOPPING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Lorg/alljoyn/bus/Status;->SLAP_INVALID_PACKET_LEN:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lorg/alljoyn/bus/Status;->SLAP_HDR_CHECKSUM_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    sget-object v2, Lorg/alljoyn/bus/Status;->SLAP_INVALID_PACKET_TYPE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Lorg/alljoyn/bus/Status;->SLAP_LEN_MISMATCH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    sget-object v2, Lorg/alljoyn/bus/Status;->SLAP_PACKET_TYPE_MISMATCH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Lorg/alljoyn/bus/Status;->SLAP_CRC_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    sget-object v2, Lorg/alljoyn/bus/Status;->SLAP_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Lorg/alljoyn/bus/Status;->SLAP_OTHER_END_CLOSED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    sget-object v2, Lorg/alljoyn/bus/Status;->NONE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_ERRORS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_READ_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_WRITE_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_VALUE_TYPE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_HEADER_FIELD:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_SIGNATURE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x51

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_OBJ_PATH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_MEMBER_NAME:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x53

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_INTERFACE_NAME:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_ERROR_NAME:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x55

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_BUS_NAME:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NAME_TOO_LONG:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x57

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_LENGTH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_VALUE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x59

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_HDR_FLAGS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_BODY_LEN:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_HEADER_LEN:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_UNKNOWN_SERIAL:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_UNKNOWN_PATH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_UNKNOWN_INTERFACE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_ESTABLISH_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x60

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_UNEXPECTED_SIGNATURE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x61

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_INTERFACE_MISSING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x62

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_PATH_MISSING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x63

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_MEMBER_MISSING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x64

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_REPLY_SERIAL_MISSING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x65

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_ERROR_NAME_MISSING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x66

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_INTERFACE_NO_SUCH_MEMBER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x67

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_OBJECT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x68

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_OBJECT_NO_SUCH_MEMBER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x69

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_OBJECT_NO_SUCH_INTERFACE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_INTERFACE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_MEMBER_NO_SUCH_SIGNATURE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NOT_NUL_TERMINATED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_PROPERTY:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_SET_WRONG_SIGNATURE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_PROPERTY_VALUE_NOT_SET:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x70

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_PROPERTY_ACCESS_DENIED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x71

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_TRANSPORTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x72

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_TRANSPORT_ARGS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x73

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_ROUTE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x74

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_ENDPOINT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x75

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_SEND_PARAMETER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x76

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_UNMATCHED_REPLY_SERIAL:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x77

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_SENDER_ID:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x78

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_TRANSPORT_NOT_STARTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x79

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_EMPTY_MESSAGE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NOT_OWNER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_SET_PROPERTY_REJECTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_CONNECT_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_REPLY_IS_ERROR_MESSAGE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NOT_AUTHENTICATING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_LISTENER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x80

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BT_TRANSPORT_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x81

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NOT_ALLOWED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x82

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_WRITE_QUEUE_FULL:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x83

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_ENDPOINT_CLOSING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x84

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_INTERFACE_MISMATCH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x85

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_MEMBER_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x86

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_PROPERTY_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x87

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_IFACE_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x88

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_ERROR_RESPONSE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x89

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_XML:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_CHILD_PATH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_OBJ_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_OBJ_NOT_FOUND:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_CANNOT_EXPAND_MESSAGE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NOT_COMPRESSED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_ALREADY_CONNECTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x90

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NOT_CONNECTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x91

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_ALREADY_LISTENING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x92

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_KEY_UNAVAILABLE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x93

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_TRUNCATED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x94

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_KEY_STORE_NOT_LOADED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x95

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_AUTHENTICATION_MECHANISM:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x96

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BUS_ALREADY_STARTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x97

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BUS_NOT_STARTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x98

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_KEYBLOB_OP_INVALID:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x99

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_INVALID_HEADER_CHECKSUM:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_MESSAGE_NOT_ENCRYPTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_INVALID_HEADER_SERIAL:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_TIME_TO_LIVE_EXPIRED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_HDR_EXPANSION_INVALID:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_MISSING_COMPRESSION_TOKEN:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_PEER_GUID:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_MESSAGE_DECRYPTION_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_SECURITY_FATAL:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_KEY_EXPIRED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_CORRUPT_KEYSTORE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_CALL_FOR_REPLY:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NOT_A_COMPLETE_TYPE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_POLICY_VIOLATION:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_SERVICE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_TRANSPORT_NOT_AVAILABLE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_INVALID_AUTH_MECHANISM:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_KEYSTORE_VERSION_MISMATCH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xab

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BLOCKING_CALL_NOT_ALLOWED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xac

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_SIGNATURE_MISMATCH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xad

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_STOPPING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xae

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_METHOD_CALL_ABORTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_CANNOT_ADD_INTERFACE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_CANNOT_ADD_HANDLER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_KEYSTORE_NOT_LOADED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_HANDLE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_HANDLES_NOT_ENABLED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_HANDLES_MISMATCH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    sget-object v2, Lorg/alljoyn/bus/Status;->BT_MAX_CONNECTIONS_USED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_SESSION:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_ELEMENT_NOT_FOUND:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NOT_A_DICTIONARY:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_WAIT_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xba

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_BAD_SESSION_OPTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_CONNECTION_REJECTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    sget-object v2, Lorg/alljoyn/bus/Status;->DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    sget-object v2, Lorg/alljoyn/bus/Status;->DBUS_REQUEST_NAME_REPLY_IN_QUEUE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    sget-object v2, Lorg/alljoyn/bus/Status;->DBUS_REQUEST_NAME_REPLY_EXISTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    sget-object v2, Lorg/alljoyn/bus/Status;->DBUS_REQUEST_NAME_REPLY_ALREADY_OWNER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    sget-object v2, Lorg/alljoyn/bus/Status;->DBUS_RELEASE_NAME_REPLY_RELEASED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    sget-object v2, Lorg/alljoyn/bus/Status;->DBUS_RELEASE_NAME_REPLY_NON_EXISTENT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    sget-object v2, Lorg/alljoyn/bus/Status;->DBUS_RELEASE_NAME_REPLY_NOT_OWNER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    sget-object v2, Lorg/alljoyn/bus/Status;->DBUS_START_REPLY_ALREADY_RUNNING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_BINDSESSIONPORT_REPLY_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_BINDSESSIONPORT_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_NO_SESSION:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_UNREACHABLE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_CONNECT_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_REJECTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xca

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_BAD_SESSION_OPTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_LEAVESESSION_REPLY_NO_SESSION:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_LEAVESESSION_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xce

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_ADVERTISENAME_REPLY_ALREADY_ADVERTISING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_ADVERTISENAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_CANCELADVERTISENAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_FINDADVERTISEDNAME_REPLY_ALREADY_DISCOVERING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_FINDADVERTISEDNAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_CANCELFINDADVERTISEDNAME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_UNEXPECTED_DISPOSITION:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_INTERFACE_ACTIVATED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_UNBINDSESSIONPORT_REPLY_BAD_PORT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_UNBINDSESSIONPORT_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_BINDSESSIONPORT_REPLY_INVALID_OPTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xda

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_SELF_CONNECT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_SECURITY_NOT_ENABLED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_LISTENER_ALREADY_SET:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_PEER_AUTH_VERSION_MISMATCH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xde

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_SETLINKTIMEOUT_REPLY_NOT_SUPPORTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_SETLINKTIMEOUT_REPLY_NO_DEST_SUPPORT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_SETLINKTIMEOUT_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_ACCESS_PERMISSION_WARNING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_ACCESS_PERMISSION_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_DESTINATION_NOT_AUTHENTICATED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_ENDPOINT_REDIRECTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_AUTHENTICATION_PENDING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NOT_AUTHORIZED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    sget-object v2, Lorg/alljoyn/bus/Status;->PACKET_BUS_NO_SUCH_CHANNEL:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    sget-object v2, Lorg/alljoyn/bus/Status;->PACKET_BAD_FORMAT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    sget-object v2, Lorg/alljoyn/bus/Status;->PACKET_CONNECT_TIMEOUT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xea

    sget-object v2, Lorg/alljoyn/bus/Status;->PACKET_CHANNEL_FAIL:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    sget-object v2, Lorg/alljoyn/bus/Status;->PACKET_TOO_LARGE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xec

    sget-object v2, Lorg/alljoyn/bus/Status;->PACKET_BAD_PARAMETER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xed

    sget-object v2, Lorg/alljoyn/bus/Status;->PACKET_BAD_CRC:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xee

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_ATTR_SIZE_MISMATCH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xef

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_AUTH_CHALLENGE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_SOCKET_NOT_OPEN:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_SOCKET_OPEN:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_FAILED_TO_SEND_MSG:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_FRAMING_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_INVALID_ERROR_CODE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_INVALID_FINGERPRINT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_INVALID_ADDR_FAMILY:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_INVALID_MESSAGE_INTEGRITY:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_INVALID_MSG_TYPE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_INVALID_ATTR_TYPE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_RESPONSE_WITH_USERNAME:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_ERR400_BAD_REQUEST:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_BAD_INDICATION:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_ERR401_UNAUTHORIZED_REQUEST:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_TOO_MANY_ATTRIBUTES:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xff

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_DUPLICATE_ATTRIBUTE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x100

    sget-object v2, Lorg/alljoyn/bus/Status;->STUN_UNAUTHORIZED_INDICATION:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x101

    sget-object v2, Lorg/alljoyn/bus/Status;->ICE_ALLOCATING_MEMORY:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x102

    sget-object v2, Lorg/alljoyn/bus/Status;->ICE_CHECKS_INCOMPLETE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x103

    sget-object v2, Lorg/alljoyn/bus/Status;->ICE_ALLOCATE_REJECTED_NO_RESOURCES:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x104

    sget-object v2, Lorg/alljoyn/bus/Status;->ICE_ALLOCATION_QUOTA_REACHED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x105

    sget-object v2, Lorg/alljoyn/bus/Status;->ICE_ALLOCATION_MISMATCH:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x106

    sget-object v2, Lorg/alljoyn/bus/Status;->ICE_STUN_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x107

    sget-object v2, Lorg/alljoyn/bus/Status;->ICE_INVALID_STATE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x108

    sget-object v2, Lorg/alljoyn/bus/Status;->ICE_UNKNOWN_COMPONENT_ID:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x109

    sget-object v2, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_DEACTIVATED_USER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    sget-object v2, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_UNKNOWN_USER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    sget-object v2, Lorg/alljoyn/bus/Status;->UNABLE_TO_CONNECT_TO_RENDEZVOUS_SERVER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    sget-object v2, Lorg/alljoyn/bus/Status;->NOT_CONNECTED_TO_RENDEZVOUS_SERVER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    sget-object v2, Lorg/alljoyn/bus/Status;->UNABLE_TO_SEND_MESSAGE_TO_RENDEZVOUS_SERVER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    sget-object v2, Lorg/alljoyn/bus/Status;->INVALID_RENDEZVOUS_SERVER_INTERFACE_MESSAGE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    sget-object v2, Lorg/alljoyn/bus/Status;->INVALID_PERSISTENT_CONNECTION_MESSAGE_RESPONSE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x110

    sget-object v2, Lorg/alljoyn/bus/Status;->INVALID_ON_DEMAND_CONNECTION_MESSAGE_RESPONSE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x111

    sget-object v2, Lorg/alljoyn/bus/Status;->INVALID_HTTP_METHOD_USED_FOR_RENDEZVOUS_SERVER_INTERFACE_MESSAGE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x112

    sget-object v2, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_ERR500_INTERNAL_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x113

    sget-object v2, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_ERR503_STATUS_UNAVAILABLE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x114

    sget-object v2, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_ERR401_UNAUTHORIZED_REQUEST:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x115

    sget-object v2, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_UNRECOVERABLE_ERROR:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x116

    sget-object v2, Lorg/alljoyn/bus/Status;->RENDEZVOUS_SERVER_ROOT_CERTIFICATE_UNINITIALIZED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x117

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_ANNOTATION:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x118

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_ANNOTATION_ALREADY_EXISTS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x119

    sget-object v2, Lorg/alljoyn/bus/Status;->SOCK_CLOSING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    sget-object v2, Lorg/alljoyn/bus/Status;->NO_SUCH_DEVICE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    sget-object v2, Lorg/alljoyn/bus/Status;->P2P:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    sget-object v2, Lorg/alljoyn/bus/Status;->P2P_TIMEOUT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    sget-object v2, Lorg/alljoyn/bus/Status;->P2P_NOT_CONNECTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_TRANSPORT_MASK:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    sget-object v2, Lorg/alljoyn/bus/Status;->PROXIMITY_CONNECTION_ESTABLISH_FAIL:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x120

    sget-object v2, Lorg/alljoyn/bus/Status;->PROXIMITY_NO_PEERS_FOUND:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x121

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_OBJECT_NOT_REGISTERED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x122

    sget-object v2, Lorg/alljoyn/bus/Status;->P2P_DISABLED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x123

    sget-object v2, Lorg/alljoyn/bus/Status;->P2P_BUSY:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x124

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_INCOMPATIBLE_DAEMON:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x125

    sget-object v2, Lorg/alljoyn/bus/Status;->P2P_NO_GO:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x126

    sget-object v2, Lorg/alljoyn/bus/Status;->P2P_NO_STA:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x127

    sget-object v2, Lorg/alljoyn/bus/Status;->P2P_FORBIDDEN:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x128

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_ONAPPSUSPEND_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x129

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_ONAPPSUSPEND_REPLY_UNSUPPORTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_ONAPPRESUME_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_ONAPPRESUME_REPLY_UNSUPPORTED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_NO_SUCH_MESSAGE:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_REPLY_NO_SESSION:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_NOT_BINDER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_NOT_MULTIPOINT:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x130

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_NOT_FOUND:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x131

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_INCOMPATIBLE_REMOTE_DAEMON:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x132

    sget-object v2, Lorg/alljoyn/bus/Status;->ALLJOYN_REMOVESESSIONMEMBER_REPLY_FAILED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x133

    sget-object v2, Lorg/alljoyn/bus/Status;->BUS_REMOVED_BY_BINDER:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x134

    sget-object v2, Lorg/alljoyn/bus/Status;->BAD_ANNOTATION:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x135

    sget-object v2, Lorg/alljoyn/bus/Status;->INVALID_CONNECT_ARGS:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x136

    sget-object v2, Lorg/alljoyn/bus/Status;->ALREADY_FINDING:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x137

    sget-object v2, Lorg/alljoyn/bus/Status;->CANCELLED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x138

    sget-object v2, Lorg/alljoyn/bus/Status;->ALREADY_REGISTERED:Lorg/alljoyn/bus/Status;

    aput-object v2, v0, v1

    sput-object v0, Lorg/alljoyn/bus/Status;->$VALUES:[Lorg/alljoyn/bus/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 656
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 657
    iput p3, p0, Lorg/alljoyn/bus/Status;->errorCode:I

    .line 658
    return-void
.end method

.method private static create(I)Lorg/alljoyn/bus/Status;
    .locals 5

    .prologue
    .line 662
    invoke-static {}, Lorg/alljoyn/bus/Status;->values()[Lorg/alljoyn/bus/Status;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 663
    invoke-virtual {v0}, Lorg/alljoyn/bus/Status;->getErrorCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 667
    :goto_1
    return-object v0

    .line 662
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 667
    :cond_1
    sget-object v0, Lorg/alljoyn/bus/Status;->NONE:Lorg/alljoyn/bus/Status;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/alljoyn/bus/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/Status;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/bus/Status;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/alljoyn/bus/Status;->$VALUES:[Lorg/alljoyn/bus/Status;

    invoke-virtual {v0}, [Lorg/alljoyn/bus/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/bus/Status;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lorg/alljoyn/bus/Status;->errorCode:I

    return v0
.end method
