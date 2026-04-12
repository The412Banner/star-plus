.class final enum Lorg/openjsse/sun/security/ssl/SSLExtension;
.super Ljava/lang/Enum;
.source "SSLExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLStringizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLExtension$ServerExtensions;,
        Lorg/openjsse/sun/security/ssl/SSLExtension$ClientExtensions;,
        Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;,
        Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SSLExtension;",
        ">;",
        "Lorg/openjsse/sun/security/ssl/SSLStringizer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CACHED_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CERT_TYPE:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_EC_POINT_FORMATS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_RENEGOTIATION_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_SIGNATURE_ALGORITHMS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_SIGNATURE_ALGORITHMS_CERT:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_STATUS_REQUEST_V2:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CLIENT_AUTHZ:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CLIENT_CERTIFICATE_URL:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CLIENT_CERT_TYPE:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CR_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CR_SIGNATURE_ALGORITHMS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CR_SIGNATURE_ALGORITHMS_CERT:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CR_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum CT_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum EE_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum EE_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum EE_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum EE_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum EE_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum ENCRYPT_THEN_MAC:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum HEARTBEAT:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum HRR_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum HRR_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum HRR_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum MH_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum MH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum MH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum NST_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum OID_FILTERS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum PADDING:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum POST_HANDSHAKE_AUTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SERVER_AUTHZ:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SERVER_CERT_TYPE:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_EC_POINT_FORMATS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_RENEGOTIATION_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_STATUS_REQUEST_V2:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SIGNED_CERT_TIMESTAMP:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum SRP:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum TOKEN_BINDING:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum TRUNCATED_HMAC:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum TRUSTED_CA_KEYS:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum USER_MAPPING:Lorg/openjsse/sun/security/ssl/SSLExtension;

.field public static final enum USE_SRTP:Lorg/openjsse/sun/security/ssl/SSLExtension;


# instance fields
.field final handshakeType:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field final id:I

.field final name:Ljava/lang/String;

.field final networkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field final onLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field final onLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field final onTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field final onTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field final stringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field final supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 93

    .line 40
    new-instance v13, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    const/4 v11, 0x0

    sget-object v12, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v1, "CH_SERVER_NAME"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "server_name"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v13, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v21, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v22, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    const/16 v25, 0x0

    sget-object v26, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v15, "SH_SERVER_NAME"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v18, "server_name"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v9, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    const/4 v12, 0x0

    sget-object v13, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v2, "EE_SERVER_NAME"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "server_name"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 67
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v21, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v22, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v26, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->maxFragLenStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v15, "CH_MAX_FRAGMENT_LENGTH"

    const/16 v16, 0x3

    const/16 v17, 0x1

    const-string v18, "max_fragment_length"

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 76
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v9, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v11, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->shOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    sget-object v13, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->maxFragLenStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v2, "SH_MAX_FRAGMENT_LENGTH"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, "max_fragment_length"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 85
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v21, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v22, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v24, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->eeOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    sget-object v26, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->maxFragLenStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v15, "EE_MAX_FRAGMENT_LENGTH"

    const/16 v16, 0x5

    const-string v18, "max_fragment_length"

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 94
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/4 v1, 0x2

    const-string v2, "client_certificate_url"

    const-string v3, "CLIENT_CERTIFICATE_URL"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CLIENT_CERTIFICATE_URL:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 95
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/4 v1, 0x3

    const-string v2, "trusted_ca_keys"

    const-string v3, "TRUSTED_CA_KEYS"

    const/4 v5, 0x7

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->TRUSTED_CA_KEYS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 96
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/4 v1, 0x4

    const-string v2, "truncated_hmac"

    const-string v3, "TRUNCATED_HMAC"

    const/16 v6, 0x8

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->TRUNCATED_HMAC:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 98
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v12, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v14, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v15, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    const/16 v18, 0x0

    sget-object v19, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->certStatusReqStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v8, "CH_STATUS_REQUEST"

    const/16 v9, 0x9

    const/4 v10, 0x5

    const-string v11, "status_request"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v19}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 107
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v25, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v26, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v27, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v28, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    const/16 v31, 0x0

    sget-object v32, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->certStatusReqStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v21, "SH_STATUS_REQUEST"

    const/16 v22, 0xa

    const/16 v23, 0x5

    const-string v24, "status_request"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v32}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 116
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/4 v1, 0x5

    const-string v2, "status_request"

    const-string v3, "CR_STATUS_REQUEST"

    const/16 v7, 0xb

    invoke-direct {v0, v3, v7, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 117
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v13, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v14, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v15, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->ctNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v16, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->ctOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    const/16 v19, 0x0

    sget-object v20, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->certStatusRespStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v9, "CT_STATUS_REQUEST"

    const/16 v10, 0xc

    const/4 v11, 0x5

    const-string v12, "status_request"

    move-object v8, v0

    invoke-direct/range {v8 .. v20}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CT_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 128
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0xd

    const-string v2, "user_mapping"

    const-string v3, "USER_MAPPING"

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->USER_MAPPING:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 131
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const-string v1, "client_authz"

    const-string v2, "CLIENT_AUTHZ"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CLIENT_AUTHZ:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 132
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0xf

    const-string v2, "server_authz"

    const-string v4, "SERVER_AUTHZ"

    invoke-direct {v0, v4, v1, v6, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SERVER_AUTHZ:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 135
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x9

    const-string v2, "cert_type"

    const-string v4, "CERT_TYPE"

    const/16 v5, 0x10

    invoke-direct {v0, v4, v5, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CERT_TYPE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 138
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v13, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v14, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v17, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->chOnTradAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v18, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->sgsStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v7, "CH_SUPPORTED_GROUPS"

    const/16 v8, 0x11

    const/16 v9, 0xa

    const-string v10, "supported_groups"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 147
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v24, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v25, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v26, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v27, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v31, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->sgsStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v20, "EE_SUPPORTED_GROUPS"

    const/16 v21, 0x12

    const-string v23, "supported_groups"

    const/16 v28, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 157
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v9, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v10, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v11, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v16, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;->epfStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v5, "CH_EC_POINT_FORMATS"

    const/16 v6, 0x13

    const/16 v7, 0xb

    const-string v8, "ec_point_formats"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v16}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EC_POINT_FORMATS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 166
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v22, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v23, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v25, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v29, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;->epfStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v18, "SH_EC_POINT_FORMATS"

    const/16 v19, 0x14

    const/16 v20, 0xb

    const-string v21, "ec_point_formats"

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v29}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_EC_POINT_FORMATS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 177
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0xc

    const-string v2, "srp"

    const-string v4, "SRP"

    const/16 v5, 0x15

    invoke-direct {v0, v4, v5, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SRP:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 180
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_12_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v13, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v14, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v15, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v16, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    sget-object v17, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->chOnTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v18, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v7, "CH_SIGNATURE_ALGORITHMS"

    const/16 v8, 0x16

    const/16 v9, 0xd

    const-string v10, "signature_algorithms"

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SIGNATURE_ALGORITHMS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 189
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v24, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v25, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v26, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->crNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v27, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->crOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v28, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->crOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v29, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->crOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    sget-object v31, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v20, "CR_SIGNATURE_ALGORITHMS"

    const/16 v21, 0x17

    const/16 v22, 0xd

    const-string v23, "signature_algorithms"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_SIGNATURE_ALGORITHMS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 199
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_12_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v13, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v14, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v16, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    const/16 v17, 0x0

    sget-object v18, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v7, "CH_SIGNATURE_ALGORITHMS_CERT"

    const/16 v8, 0x18

    const/16 v9, 0x32

    const-string v10, "signature_algorithms_cert"

    const/4 v15, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SIGNATURE_ALGORITHMS_CERT:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 208
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v24, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v25, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v26, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->crNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v27, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->crOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v29, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->crOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    sget-object v31, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v20, "CR_SIGNATURE_ALGORITHMS_CERT"

    const/16 v21, 0x19

    const/16 v22, 0x32

    const-string v23, "signature_algorithms_cert"

    const/16 v28, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_SIGNATURE_ALGORITHMS_CERT:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 219
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x1a

    const-string v2, "use_srtp"

    const-string v4, "USE_SRTP"

    invoke-direct {v0, v4, v1, v3, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->USE_SRTP:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 222
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x1b

    const-string v2, "heartbeat"

    const-string v4, "HEARTBEAT"

    invoke-direct {v0, v4, v1, v3, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->HEARTBEAT:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 225
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v13, Lorg/openjsse/sun/security/ssl/AlpnExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v14, Lorg/openjsse/sun/security/ssl/AlpnExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v15, Lorg/openjsse/sun/security/ssl/AlpnExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v18, Lorg/openjsse/sun/security/ssl/AlpnExtension;->alpnStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v7, "CH_ALPN"

    const/16 v8, 0x1c

    const/16 v9, 0x10

    const-string v10, "application_layer_protocol_negotiation"

    const/16 v16, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 234
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v24, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v25, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v26, Lorg/openjsse/sun/security/ssl/AlpnExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v27, Lorg/openjsse/sun/security/ssl/AlpnExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v28, Lorg/openjsse/sun/security/ssl/AlpnExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v31, Lorg/openjsse/sun/security/ssl/AlpnExtension;->alpnStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v20, "SH_ALPN"

    const/16 v21, 0x1d

    const/16 v22, 0x10

    const-string v23, "application_layer_protocol_negotiation"

    const/16 v29, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 243
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v13, Lorg/openjsse/sun/security/ssl/AlpnExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v14, Lorg/openjsse/sun/security/ssl/AlpnExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v15, Lorg/openjsse/sun/security/ssl/AlpnExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v18, Lorg/openjsse/sun/security/ssl/AlpnExtension;->alpnStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v7, "EE_ALPN"

    const/16 v8, 0x1e

    const-string v10, "application_layer_protocol_negotiation"

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 254
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v24, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v25, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v26, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->chV2NetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v27, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->chV2OnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v31, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->certStatusReqV2Stringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v20, "CH_STATUS_REQUEST_V2"

    const/16 v21, 0x1f

    const/16 v22, 0x11

    const-string v23, "status_request_v2"

    const/16 v28, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST_V2:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 263
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v13, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->shV2NetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v14, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->shV2OnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v18, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->certStatusReqV2Stringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v7, "SH_STATUS_REQUEST_V2"

    const/16 v8, 0x20

    const/16 v9, 0x11

    const-string v10, "status_request_v2"

    const/4 v15, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_STATUS_REQUEST_V2:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 274
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x12

    const-string v2, "signed_certificate_timestamp"

    const-string v3, "SIGNED_CERT_TIMESTAMP"

    const/16 v4, 0x21

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SIGNED_CERT_TIMESTAMP:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 277
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x13

    const-string v2, "padding"

    const-string v3, "CLIENT_CERT_TYPE"

    const/16 v4, 0x22

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CLIENT_CERT_TYPE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 278
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x14

    const-string v2, "server_certificate_type"

    const-string v3, "SERVER_CERT_TYPE"

    const/16 v4, 0x23

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SERVER_CERT_TYPE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 281
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x24

    const-string v2, "client_certificate_type"

    const-string v3, "PADDING"

    invoke-direct {v0, v3, v1, v5, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->PADDING:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 284
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x16

    const-string v2, "encrypt_then_mac"

    const-string v3, "ENCRYPT_THEN_MAC"

    const/16 v5, 0x25

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->ENCRYPT_THEN_MAC:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 287
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v13, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v14, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v15, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v18, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->emsStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v7, "CH_EXTENDED_MASTER_SECRET"

    const/16 v8, 0x26

    const/16 v9, 0x17

    const-string v10, "extended_master_secret"

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 296
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v24, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v25, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v26, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v27, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v28, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v31, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->emsStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v20, "SH_EXTENDED_MASTER_SECRET"

    const/16 v21, 0x27

    const/16 v22, 0x17

    const-string v23, "extended_master_secret"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 307
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x18

    const-string v2, "token_binding "

    const-string v3, "TOKEN_BINDING"

    const/16 v5, 0x28

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->TOKEN_BINDING:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 310
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x19

    const-string v2, "cached_info"

    const-string v3, "CACHED_INFO"

    const/16 v5, 0x29

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CACHED_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 313
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const-string v1, "session_ticket"

    const-string v2, "SESSION_TICKET"

    const/16 v3, 0x2a

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 316
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const-string v1, "CH_EARLY_DATA"

    const/16 v2, 0x2b

    const-string v4, "early_data"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 317
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const-string v1, "EE_EARLY_DATA"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 318
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const-string v1, "NST_EARLY_DATA"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->NST_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 320
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v10, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v11, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v12, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v13, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v17, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v6, "CH_SUPPORTED_VERSIONS"

    const/16 v7, 0x2e

    const/16 v8, 0x2b

    const-string v9, "supported_versions"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 329
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v23, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v24, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v25, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v26, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v30, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v19, "SH_SUPPORTED_VERSIONS"

    const/16 v20, 0x2f

    const/16 v21, 0x2b

    const-string v22, "supported_versions"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 339
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->hrrNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v9, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->hrrOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    const/4 v12, 0x0

    sget-object v13, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->hrrStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v2, "HRR_SUPPORTED_VERSIONS"

    const/16 v3, 0x30

    const/16 v4, 0x2b

    const-string v5, "supported_versions"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 348
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->MESSAGE_HASH:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v21, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->hrrReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    const/16 v25, 0x0

    sget-object v26, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->hrrStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v15, "MH_SUPPORTED_VERSIONS"

    const/16 v16, 0x31

    const/16 v17, 0x2b

    const-string v18, "supported_versions"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->MH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 356
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/CookieExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v9, Lorg/openjsse/sun/security/ssl/CookieExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v11, Lorg/openjsse/sun/security/ssl/CookieExtension;->chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    sget-object v13, Lorg/openjsse/sun/security/ssl/CookieExtension;->cookieStringizer:Lorg/openjsse/sun/security/ssl/CookieExtension$CookieStringizer;

    const-string v2, "CH_COOKIE"

    const/16 v3, 0x32

    const/16 v4, 0x2c

    const-string v5, "cookie"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 365
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v21, Lorg/openjsse/sun/security/ssl/CookieExtension;->hrrNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v22, Lorg/openjsse/sun/security/ssl/CookieExtension;->hrrOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v26, Lorg/openjsse/sun/security/ssl/CookieExtension;->cookieStringizer:Lorg/openjsse/sun/security/ssl/CookieExtension$CookieStringizer;

    const-string v15, "HRR_COOKIE"

    const/16 v16, 0x33

    const/16 v17, 0x2c

    const-string v18, "cookie"

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 373
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->MESSAGE_HASH:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/CookieExtension;->hrrNetworkReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v13, Lorg/openjsse/sun/security/ssl/CookieExtension;->cookieStringizer:Lorg/openjsse/sun/security/ssl/CookieExtension$CookieStringizer;

    const-string v2, "MH_COOKIE"

    const/16 v3, 0x34

    const-string v5, "cookie"

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->MH_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 381
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v21, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v22, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v23, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v25, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;->chOnTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v26, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;->pkemStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v15, "PSK_KEY_EXCHANGE_MODES"

    const/16 v16, 0x35

    const/16 v17, 0x2d

    const-string v18, "psk_key_exchange_modes"

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 391
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v9, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v11, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    sget-object v13, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v2, "CH_CERTIFICATE_AUTHORITIES"

    const/16 v3, 0x36

    const/16 v4, 0x2f

    const-string v5, "certificate_authorities"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 400
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v21, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->crNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v22, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->crOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v24, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->crOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    const/16 v25, 0x0

    sget-object v26, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v15, "CR_CERTIFICATE_AUTHORITIES"

    const/16 v16, 0x37

    const/16 v17, 0x2f

    const-string v18, "certificate_authorities"

    const/16 v23, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 409
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const-string v1, "oid_filters"

    const-string v2, "OID_FILTERS"

    const/16 v3, 0x38

    const/16 v4, 0x30

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->OID_FILTERS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 410
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/16 v1, 0x39

    const-string v2, "post_handshake_auth"

    const-string v3, "POST_HANDSHAKE_AUTH"

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->POST_HANDSHAKE_AUTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 412
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v10, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v11, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v12, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v13, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v16, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->chOnTradAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v17, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v6, "CH_KEY_SHARE"

    const/16 v7, 0x3a

    const/16 v8, 0x33

    const-string v9, "key_share"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 421
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v23, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v24, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v25, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v26, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v27, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v30, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v19, "SH_KEY_SHARE"

    const/16 v20, 0x3b

    const/16 v21, 0x33

    const-string v22, "key_share"

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 430
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->hrrNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v9, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->hrrOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    const/4 v12, 0x0

    sget-object v13, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->hrrStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v2, "HRR_KEY_SHARE"

    const/16 v3, 0x3c

    const/16 v4, 0x33

    const-string v5, "key_share"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 437
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->MESSAGE_HASH:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v21, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->hrrNetworkReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    const/16 v25, 0x0

    sget-object v26, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->hrrStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v15, "MH_KEY_SHARE"

    const/16 v16, 0x3d

    const/16 v17, 0x33

    const-string v18, "key_share"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->MH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 445
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v9, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v10, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v13, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->rniStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v2, "CH_RENEGOTIATION_INFO"

    const/16 v3, 0x3e

    const v4, 0xff01

    const-string v5, "renegotiation_info"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_RENEGOTIATION_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 454
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v21, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v22, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v23, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v26, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->rniStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v15, "SH_RENEGOTIATION_INFO"

    const/16 v16, 0x3f

    const v17, 0xff01

    const-string v18, "renegotiation_info"

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_RENEGOTIATION_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 465
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v9, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v10, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v11, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    sget-object v12, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chOnTradAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v13, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v2, "CH_PRE_SHARED_KEY"

    const/16 v3, 0x40

    const/16 v4, 0x29

    const-string v5, "pre_shared_key"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 474
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v21, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v22, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    sget-object v23, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v26, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    const-string v15, "SH_PRE_SHARED_KEY"

    const/16 v16, 0x41

    const/16 v17, 0x29

    const-string v18, "pre_shared_key"

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lorg/openjsse/sun/security/ssl/SSLExtension;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 38
    sget-object v27, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v28, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v29, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v30, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v31, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v32, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v33, Lorg/openjsse/sun/security/ssl/SSLExtension;->CLIENT_CERTIFICATE_URL:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v34, Lorg/openjsse/sun/security/ssl/SSLExtension;->TRUSTED_CA_KEYS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v35, Lorg/openjsse/sun/security/ssl/SSLExtension;->TRUNCATED_HMAC:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v36, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v37, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v38, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v39, Lorg/openjsse/sun/security/ssl/SSLExtension;->CT_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v40, Lorg/openjsse/sun/security/ssl/SSLExtension;->USER_MAPPING:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v41, Lorg/openjsse/sun/security/ssl/SSLExtension;->CLIENT_AUTHZ:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v42, Lorg/openjsse/sun/security/ssl/SSLExtension;->SERVER_AUTHZ:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v43, Lorg/openjsse/sun/security/ssl/SSLExtension;->CERT_TYPE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v44, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v45, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v46, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EC_POINT_FORMATS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v47, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_EC_POINT_FORMATS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v48, Lorg/openjsse/sun/security/ssl/SSLExtension;->SRP:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v49, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SIGNATURE_ALGORITHMS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v50, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_SIGNATURE_ALGORITHMS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v51, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SIGNATURE_ALGORITHMS_CERT:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v52, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_SIGNATURE_ALGORITHMS_CERT:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v53, Lorg/openjsse/sun/security/ssl/SSLExtension;->USE_SRTP:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v54, Lorg/openjsse/sun/security/ssl/SSLExtension;->HEARTBEAT:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v55, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v56, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v57, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v58, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST_V2:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v59, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_STATUS_REQUEST_V2:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v60, Lorg/openjsse/sun/security/ssl/SSLExtension;->SIGNED_CERT_TIMESTAMP:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v61, Lorg/openjsse/sun/security/ssl/SSLExtension;->CLIENT_CERT_TYPE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v62, Lorg/openjsse/sun/security/ssl/SSLExtension;->SERVER_CERT_TYPE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v63, Lorg/openjsse/sun/security/ssl/SSLExtension;->PADDING:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v64, Lorg/openjsse/sun/security/ssl/SSLExtension;->ENCRYPT_THEN_MAC:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v65, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v66, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v67, Lorg/openjsse/sun/security/ssl/SSLExtension;->TOKEN_BINDING:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v68, Lorg/openjsse/sun/security/ssl/SSLExtension;->CACHED_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v69, Lorg/openjsse/sun/security/ssl/SSLExtension;->SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v70, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v71, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v72, Lorg/openjsse/sun/security/ssl/SSLExtension;->NST_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v73, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v74, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v75, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v76, Lorg/openjsse/sun/security/ssl/SSLExtension;->MH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v77, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v78, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v79, Lorg/openjsse/sun/security/ssl/SSLExtension;->MH_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v80, Lorg/openjsse/sun/security/ssl/SSLExtension;->PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v81, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v82, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v83, Lorg/openjsse/sun/security/ssl/SSLExtension;->OID_FILTERS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v84, Lorg/openjsse/sun/security/ssl/SSLExtension;->POST_HANDSHAKE_AUTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v85, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v86, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v87, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v88, Lorg/openjsse/sun/security/ssl/SSLExtension;->MH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v89, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_RENEGOTIATION_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v90, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_RENEGOTIATION_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v91, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v92, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    filled-new-array/range {v27 .. v92}, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLExtension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 495
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 496
    iput p3, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    .line 497
    sget-object p1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->handshakeType:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 498
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    .line 499
    const/4 p1, 0x0

    new-array p1, p1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 500
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->networkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 501
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 502
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 503
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 504
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 505
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->stringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 506
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLHandshake;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/HandshakeProducer;Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/HandshakeConsumer;Lorg/openjsse/sun/security/ssl/HandshakeAbsence;Lorg/openjsse/sun/security/ssl/SSLStringizer;)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "handshakeType"    # Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .param p6, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p7, "producer"    # Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    .param p8, "onLoadConsumer"    # Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;
    .param p9, "onLoadAbsence"    # Lorg/openjsse/sun/security/ssl/HandshakeAbsence;
    .param p10, "onTradeConsumer"    # Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .param p11, "onTradeAbsence"    # Lorg/openjsse/sun/security/ssl/HandshakeAbsence;
    .param p12, "stringize"    # Lorg/openjsse/sun/security/ssl/SSLStringizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/SSLHandshake;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            "Lorg/openjsse/sun/security/ssl/HandshakeProducer;",
            "Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;",
            "Lorg/openjsse/sun/security/ssl/HandshakeAbsence;",
            "Lorg/openjsse/sun/security/ssl/HandshakeConsumer;",
            "Lorg/openjsse/sun/security/ssl/HandshakeAbsence;",
            "Lorg/openjsse/sun/security/ssl/SSLStringizer;",
            ")V"
        }
    .end annotation

    .line 514
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 515
    iput p3, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    .line 516
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->handshakeType:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 517
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    .line 518
    iput-object p6, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 519
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->networkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 520
    iput-object p8, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 521
    iput-object p9, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 522
    iput-object p10, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 523
    iput-object p11, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 524
    iput-object p12, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->stringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 525
    return-void
.end method

.method static isConsumable(I)Z
    .locals 6
    .param p0, "extensionType"    # I

    .line 549
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLExtension;->values()[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 550
    .local v4, "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget v5, v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    if-ne v5, p0, :cond_0

    iget-object v5, v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    if-eqz v5, :cond_0

    .line 552
    const/4 v0, 0x1

    return v0

    .line 549
    .end local v4    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    :cond_1
    return v2
.end method

.method static nameOf(I)Ljava/lang/String;
    .locals 5
    .param p0, "extensionType"    # I

    .line 539
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLExtension;->values()[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 540
    .local v3, "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget v4, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    if-ne v4, p0, :cond_0

    .line 541
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    return-object v0

    .line 539
    .end local v3    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    :cond_1
    const-string v0, "unknown extension"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLExtension;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLExtension;

    return-object v0
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/SSLHandshake;I)Lorg/openjsse/sun/security/ssl/SSLExtension;
    .locals 5
    .param p0, "handshakeType"    # Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .param p1, "extensionType"    # I

    .line 528
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLExtension;->values()[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 529
    .local v3, "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget v4, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    if-ne v4, p1, :cond_0

    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->handshakeType:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    if-ne v4, p0, :cond_0

    .line 531
    return-object v3

    .line 528
    .end local v3    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .locals 1

    .line 38
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SSLExtension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    return-object v0
.end method


# virtual methods
.method absentOnLoad(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    invoke-interface {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeAbsence;->absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 597
    return-void

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet supported extension absence processing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method absentOnTrade(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    invoke-interface {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeAbsence;->absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 607
    return-void

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet supported extension absence processing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consumeOnLoad(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V

    .line 577
    return-void

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet supported extension loading."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consumeOnTrade(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->onTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    invoke-interface {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 587
    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet supported extension processing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAvailable(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z
    .locals 2
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 611
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 612
    const/4 v1, 0x1

    return v1

    .line 610
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->networkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->networkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    invoke-interface {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v0

    return-object v0

    .line 564
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet supported extension producing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 626
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"{0} ({1})\": \'{\'\n{2}\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 633
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->stringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    if-nez v1, :cond_0

    .line 634
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 635
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encode(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "encoded":Ljava/lang/String;
    move-object v1, v2

    .line 637
    .end local v2    # "encoded":Ljava/lang/String;
    .local v1, "extData":Ljava/lang/String;
    goto :goto_0

    .line 638
    .end local v1    # "extData":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->stringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    invoke-interface {v1, p1}, Lorg/openjsse/sun/security/ssl/SSLStringizer;->toString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 641
    .restart local v1    # "extData":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    iget v3, p0, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    .line 643
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 644
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 647
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
