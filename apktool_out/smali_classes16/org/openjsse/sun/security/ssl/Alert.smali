.class final enum Lorg/openjsse/sun/security/ssl/Alert;
.super Ljava/lang/Enum;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/Alert$AlertConsumer;,
        Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;,
        Lorg/openjsse/sun/security/ssl/Alert$Level;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/Alert;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum ACCESS_DENIED:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum BAD_CERT_HASH_VALUE:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum BAD_CERT_STATUS_RESPONSE:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum BAD_RECORD_MAC:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum CERTIFICATE_EXPIRED:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum CERTIFICATE_REQUIRED:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum CERTIFICATE_REVOKED:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum CERTIFICATE_UNKNOWN:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum CERT_UNOBTAINABLE:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum CLOSE_NOTIFY:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum DECODE_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum DECOMPRESSION_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum DECRYPTION_FAILED:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum DECRYPT_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum EXPORT_RESTRICTION:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum INAPPROPRIATE_FALLBACK:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum INSUFFICIENT_SECURITY:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum MISSING_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum NO_APPLICATION_PROTOCOL:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum NO_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum NO_RENEGOTIATION:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum RECORD_OVERFLOW:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum UNKNOWN_CA:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum UNKNOWN_PSK_IDENTITY:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum UNRECOGNIZED_NAME:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum UNSUPPORTED_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum UNSUPPORTED_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

.field public static final enum USER_CANCELED:Lorg/openjsse/sun/security/ssl/Alert;

.field static final alertConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;


# instance fields
.field final description:Ljava/lang/String;

.field final handshakeOnly:Z

.field final id:B


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 42
    new-instance v6, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "close_notify"

    const/4 v5, 0x0

    const-string v1, "CLOSE_NOTIFY"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v6, Lorg/openjsse/sun/security/ssl/Alert;->CLOSE_NOTIFY:Lorg/openjsse/sun/security/ssl/Alert;

    .line 43
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "unexpected_message"

    const/4 v12, 0x0

    const-string v8, "UNEXPECTED_MESSAGE"

    const/4 v9, 0x1

    const/16 v10, 0xa

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 44
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "bad_record_mac"

    const/4 v6, 0x0

    const-string v2, "BAD_RECORD_MAC"

    const/4 v3, 0x2

    const/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->BAD_RECORD_MAC:Lorg/openjsse/sun/security/ssl/Alert;

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "decryption_failed"

    const-string v8, "DECRYPTION_FAILED"

    const/4 v9, 0x3

    const/16 v10, 0x15

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->DECRYPTION_FAILED:Lorg/openjsse/sun/security/ssl/Alert;

    .line 46
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "record_overflow"

    const-string v2, "RECORD_OVERFLOW"

    const/4 v3, 0x4

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->RECORD_OVERFLOW:Lorg/openjsse/sun/security/ssl/Alert;

    .line 47
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "decompression_failure"

    const-string v8, "DECOMPRESSION_FAILURE"

    const/4 v9, 0x5

    const/16 v10, 0x1e

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->DECOMPRESSION_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 48
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "handshake_failure"

    const/4 v6, 0x1

    const-string v2, "HANDSHAKE_FAILURE"

    const/4 v3, 0x6

    const/16 v4, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "no_certificate"

    const/4 v12, 0x1

    const-string v8, "NO_CERTIFICATE"

    const/4 v9, 0x7

    const/16 v10, 0x29

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->NO_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 50
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "bad_certificate"

    const-string v2, "BAD_CERTIFICATE"

    const/16 v3, 0x8

    const/16 v4, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 51
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "unsupported_certificate"

    const-string v8, "UNSUPPORTED_CERTIFICATE"

    const/16 v9, 0x9

    const/16 v10, 0x2b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNSUPPORTED_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 52
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "certificate_revoked"

    const-string v2, "CERTIFICATE_REVOKED"

    const/16 v3, 0xa

    const/16 v4, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_REVOKED:Lorg/openjsse/sun/security/ssl/Alert;

    .line 53
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "certificate_expired"

    const-string v8, "CERTIFICATE_EXPIRED"

    const/16 v9, 0xb

    const/16 v10, 0x2d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_EXPIRED:Lorg/openjsse/sun/security/ssl/Alert;

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "certificate_unknown"

    const-string v2, "CERTIFICATE_UNKNOWN"

    const/16 v3, 0xc

    const/16 v4, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_UNKNOWN:Lorg/openjsse/sun/security/ssl/Alert;

    .line 55
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "illegal_parameter"

    const-string v8, "ILLEGAL_PARAMETER"

    const/16 v9, 0xd

    const/16 v10, 0x2f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "unknown_ca"

    const-string v2, "UNKNOWN_CA"

    const/16 v3, 0xe

    const/16 v4, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNKNOWN_CA:Lorg/openjsse/sun/security/ssl/Alert;

    .line 57
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "access_denied"

    const-string v8, "ACCESS_DENIED"

    const/16 v9, 0xf

    const/16 v10, 0x31

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->ACCESS_DENIED:Lorg/openjsse/sun/security/ssl/Alert;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "decode_error"

    const-string v2, "DECODE_ERROR"

    const/16 v3, 0x10

    const/16 v4, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->DECODE_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    .line 59
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "decrypt_error"

    const-string v8, "DECRYPT_ERROR"

    const/16 v9, 0x11

    const/16 v10, 0x33

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->DECRYPT_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "export_restriction"

    const-string v2, "EXPORT_RESTRICTION"

    const/16 v3, 0x12

    const/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->EXPORT_RESTRICTION:Lorg/openjsse/sun/security/ssl/Alert;

    .line 61
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "protocol_version"

    const-string v8, "PROTOCOL_VERSION"

    const/16 v9, 0x13

    const/16 v10, 0x46

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    .line 62
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "insufficient_security"

    const-string v2, "INSUFFICIENT_SECURITY"

    const/16 v3, 0x14

    const/16 v4, 0x47

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->INSUFFICIENT_SECURITY:Lorg/openjsse/sun/security/ssl/Alert;

    .line 63
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "internal_error"

    const/4 v12, 0x0

    const-string v8, "INTERNAL_ERROR"

    const/16 v9, 0x15

    const/16 v10, 0x50

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "inappropriate_fallback"

    const/4 v6, 0x0

    const-string v2, "INAPPROPRIATE_FALLBACK"

    const/16 v3, 0x16

    const/16 v4, 0x56

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->INAPPROPRIATE_FALLBACK:Lorg/openjsse/sun/security/ssl/Alert;

    .line 65
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "user_canceled"

    const-string v8, "USER_CANCELED"

    const/16 v9, 0x17

    const/16 v10, 0x5a

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->USER_CANCELED:Lorg/openjsse/sun/security/ssl/Alert;

    .line 66
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "no_renegotiation"

    const/4 v6, 0x1

    const-string v2, "NO_RENEGOTIATION"

    const/16 v3, 0x18

    const/16 v4, 0x64

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->NO_RENEGOTIATION:Lorg/openjsse/sun/security/ssl/Alert;

    .line 67
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "missing_extension"

    const/4 v12, 0x1

    const-string v8, "MISSING_EXTENSION"

    const/16 v9, 0x19

    const/16 v10, 0x6d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->MISSING_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    .line 68
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "unsupported_extension"

    const-string v2, "UNSUPPORTED_EXTENSION"

    const/16 v3, 0x1a

    const/16 v4, 0x6e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNSUPPORTED_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    .line 69
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "certificate_unobtainable"

    const-string v8, "CERT_UNOBTAINABLE"

    const/16 v9, 0x1b

    const/16 v10, 0x6f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->CERT_UNOBTAINABLE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 70
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "unrecognized_name"

    const-string v2, "UNRECOGNIZED_NAME"

    const/16 v3, 0x1c

    const/16 v4, 0x70

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNRECOGNIZED_NAME:Lorg/openjsse/sun/security/ssl/Alert;

    .line 71
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "bad_certificate_status_response"

    const-string v8, "BAD_CERT_STATUS_RESPONSE"

    const/16 v9, 0x1d

    const/16 v10, 0x71

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERT_STATUS_RESPONSE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "bad_certificate_hash_value"

    const-string v2, "BAD_CERT_HASH_VALUE"

    const/16 v3, 0x1e

    const/16 v4, 0x72

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERT_HASH_VALUE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 74
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "unknown_psk_identity"

    const-string v8, "UNKNOWN_PSK_IDENTITY"

    const/16 v9, 0x1f

    const/16 v10, 0x73

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNKNOWN_PSK_IDENTITY:Lorg/openjsse/sun/security/ssl/Alert;

    .line 75
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "certificate_required"

    const-string v2, "CERTIFICATE_REQUIRED"

    const/16 v3, 0x20

    const/16 v4, 0x74

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_REQUIRED:Lorg/openjsse/sun/security/ssl/Alert;

    .line 76
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert;

    const-string v11, "no_application_protocol"

    const-string v8, "NO_APPLICATION_PROTOCOL"

    const/16 v9, 0x21

    const/16 v10, 0x78

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/Alert;-><init>(Ljava/lang/String;IBLjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->NO_APPLICATION_PROTOCOL:Lorg/openjsse/sun/security/ssl/Alert;

    .line 39
    sget-object v13, Lorg/openjsse/sun/security/ssl/Alert;->CLOSE_NOTIFY:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v14, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v15, Lorg/openjsse/sun/security/ssl/Alert;->BAD_RECORD_MAC:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v16, Lorg/openjsse/sun/security/ssl/Alert;->DECRYPTION_FAILED:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v17, Lorg/openjsse/sun/security/ssl/Alert;->RECORD_OVERFLOW:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v18, Lorg/openjsse/sun/security/ssl/Alert;->DECOMPRESSION_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v19, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v20, Lorg/openjsse/sun/security/ssl/Alert;->NO_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v21, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v22, Lorg/openjsse/sun/security/ssl/Alert;->UNSUPPORTED_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v23, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_REVOKED:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v24, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_EXPIRED:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v25, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_UNKNOWN:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v26, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v27, Lorg/openjsse/sun/security/ssl/Alert;->UNKNOWN_CA:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v28, Lorg/openjsse/sun/security/ssl/Alert;->ACCESS_DENIED:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v29, Lorg/openjsse/sun/security/ssl/Alert;->DECODE_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v30, Lorg/openjsse/sun/security/ssl/Alert;->DECRYPT_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v31, Lorg/openjsse/sun/security/ssl/Alert;->EXPORT_RESTRICTION:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v32, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v33, Lorg/openjsse/sun/security/ssl/Alert;->INSUFFICIENT_SECURITY:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v34, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v35, Lorg/openjsse/sun/security/ssl/Alert;->INAPPROPRIATE_FALLBACK:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v36, Lorg/openjsse/sun/security/ssl/Alert;->USER_CANCELED:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v37, Lorg/openjsse/sun/security/ssl/Alert;->NO_RENEGOTIATION:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v38, Lorg/openjsse/sun/security/ssl/Alert;->MISSING_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v39, Lorg/openjsse/sun/security/ssl/Alert;->UNSUPPORTED_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v40, Lorg/openjsse/sun/security/ssl/Alert;->CERT_UNOBTAINABLE:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v41, Lorg/openjsse/sun/security/ssl/Alert;->UNRECOGNIZED_NAME:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v42, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERT_STATUS_RESPONSE:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v43, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERT_HASH_VALUE:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v44, Lorg/openjsse/sun/security/ssl/Alert;->UNKNOWN_PSK_IDENTITY:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v45, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_REQUIRED:Lorg/openjsse/sun/security/ssl/Alert;

    sget-object v46, Lorg/openjsse/sun/security/ssl/Alert;->NO_APPLICATION_PROTOCOL:Lorg/openjsse/sun/security/ssl/Alert;

    filled-new-array/range {v13 .. v46}, [Lorg/openjsse/sun/security/ssl/Alert;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->$VALUES:[Lorg/openjsse/sun/security/ssl/Alert;

    .line 88
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert$AlertConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/Alert$AlertConsumer;-><init>(Lorg/openjsse/sun/security/ssl/Alert$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert;->alertConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;Z)V
    .locals 0
    .param p3, "id"    # B
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "handshakeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/Alert;->id:B

    .line 92
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/Alert;->description:Ljava/lang/String;

    .line 93
    iput-boolean p5, p0, Lorg/openjsse/sun/security/ssl/Alert;->handshakeOnly:Z

    .line 94
    return-void
.end method

.method static nameOf(B)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # B

    .line 107
    invoke-static {}, Lorg/openjsse/sun/security/ssl/Alert;->values()[Lorg/openjsse/sun/security/ssl/Alert;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 108
    .local v3, "al":Lorg/openjsse/sun/security/ssl/Alert;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/Alert;->id:B

    if-ne v4, p0, :cond_0

    .line 109
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/Alert;->description:Ljava/lang/String;

    return-object v0

    .line 107
    .end local v3    # "al":Lorg/openjsse/sun/security/ssl/Alert;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ALERT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static valueOf(B)Lorg/openjsse/sun/security/ssl/Alert;
    .locals 5
    .param p0, "id"    # B

    .line 97
    invoke-static {}, Lorg/openjsse/sun/security/ssl/Alert;->values()[Lorg/openjsse/sun/security/ssl/Alert;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 98
    .local v3, "al":Lorg/openjsse/sun/security/ssl/Alert;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/Alert;->id:B

    if-ne v4, p0, :cond_0

    .line 99
    return-object v3

    .line 97
    .end local v3    # "al":Lorg/openjsse/sun/security/ssl/Alert;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/Alert;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lorg/openjsse/sun/security/ssl/Alert;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/Alert;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/Alert;
    .locals 1

    .line 39
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->$VALUES:[Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/Alert;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/Alert;

    return-object v0
.end method


# virtual methods
.method createSSLException(Ljava/lang/String;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/Alert;->createSSLException(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0
.end method

.method createSSLException(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 121
    if-nez p1, :cond_1

    .line 122
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object p1, v0

    .line 126
    :cond_1
    if-eqz p2, :cond_2

    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .local v0, "ssle":Ljavax/net/ssl/SSLException;
    goto :goto_1

    .line 128
    .end local v0    # "ssle":Ljavax/net/ssl/SSLException;
    :cond_2
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    if-ne p0, v0, :cond_3

    .line 129
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "ssle":Ljavax/net/ssl/SSLException;
    goto :goto_1

    .line 130
    .end local v0    # "ssle":Ljavax/net/ssl/SSLException;
    :cond_3
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/Alert;->handshakeOnly:Z

    if-eqz v0, :cond_4

    .line 131
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "ssle":Ljavax/net/ssl/SSLException;
    goto :goto_1

    .line 133
    .end local v0    # "ssle":Ljavax/net/ssl/SSLException;
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v0    # "ssle":Ljavax/net/ssl/SSLException;
    :goto_1
    if-eqz p2, :cond_5

    .line 137
    invoke-virtual {v0, p2}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 140
    :cond_5
    return-object v0
.end method
