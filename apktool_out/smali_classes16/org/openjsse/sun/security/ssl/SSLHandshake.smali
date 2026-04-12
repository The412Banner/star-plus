.class final enum Lorg/openjsse/sun/security/ssl/SSLHandshake;
.super Ljava/lang/Enum;
.source "SSLHandshake.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SSLHandshake;",
        ">;",
        "Lorg/openjsse/sun/security/ssl/SSLConsumer;",
        "Lorg/openjsse/sun/security/ssl/HandshakeProducer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum CERTIFICATE_STATUS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum CERTIFICATE_URL:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum END_OF_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum HELLO_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum MESSAGE_HASH:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum NEW_SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum SERVER_HELLO_DONE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

.field public static final enum SUPPLEMENTAL_DATA:Lorg/openjsse/sun/security/ssl/SSLHandshake;


# instance fields
.field final handshakeAbsences:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/HandshakeAbsence;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field final handshakeConsumers:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/SSLConsumer;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field final handshakeProducers:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/HandshakeProducer;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field final id:B

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 35
    new-instance v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v2, Lorg/openjsse/sun/security/ssl/HelloRequest;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x0

    aput-object v1, v0, v9

    move-object v5, v0

    check-cast v5, [Ljava/util/Map$Entry;

    new-array v0, v8, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v2, Lorg/openjsse/sun/security/ssl/HelloRequest;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v9

    move-object v6, v0

    check-cast v6, [Ljava/util/Map$Entry;

    const-string v1, "HELLO_REQUEST"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "hello_request"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 50
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ClientHello;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object v15, v1

    check-cast v15, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ClientHello;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v16, v1

    check-cast v16, [Ljava/util/Map$Entry;

    const-string v11, "CLIENT_HELLO"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-string v14, "client_hello"

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 65
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ServerHello;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object v6, v1

    check-cast v6, [Ljava/util/Map$Entry;

    const/4 v10, 0x2

    new-array v1, v10, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ServerHello;->t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ServerHello;->t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    move-object v7, v1

    check-cast v7, [Ljava/util/Map$Entry;

    const-string v2, "SERVER_HELLO"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "server_hello"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 84
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ServerHello;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v16, v1

    check-cast v16, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ServerHello;->hrrHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v17, v1

    check-cast v17, [Ljava/util/Map$Entry;

    const-string v12, "HELLO_RETRY_REQUEST"

    const/4 v13, 0x3

    const/4 v14, 0x2

    const-string v15, "hello_retry_request"

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 99
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object v6, v1

    check-cast v6, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object v7, v1

    check-cast v7, [Ljava/util/Map$Entry;

    const-string v2, "HELLO_VERIFY_REQUEST"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, "hello_verify_request"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 114
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/NewSessionTicket;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v16, v1

    check-cast v16, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/NewSessionTicket;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v17, v1

    check-cast v17, [Ljava/util/Map$Entry;

    const-string v12, "NEW_SESSION_TICKET"

    const/4 v13, 0x5

    const/4 v14, 0x4

    const-string v15, "new_session_ticket"

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NEW_SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 128
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v1, 0x5

    const-string v2, "end_of_early_data"

    const-string v3, "END_OF_EARLY_DATA"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->END_OF_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 130
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/EncryptedExtensions;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v16, v1

    check-cast v16, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/EncryptedExtensions;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v17, v1

    check-cast v17, [Ljava/util/Map$Entry;

    const-string v12, "ENCRYPTED_EXTENSIONS"

    const/4 v13, 0x7

    const/16 v14, 0x8

    const-string v15, "encrypted_extensions"

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 145
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v10, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateMessage;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateMessage;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    move-object v6, v1

    check-cast v6, [Ljava/util/Map$Entry;

    new-array v1, v10, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateMessage;->t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateMessage;->t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    move-object v7, v1

    check-cast v7, [Ljava/util/Map$Entry;

    const-string v2, "CERTIFICATE"

    const/16 v3, 0x8

    const/16 v4, 0xb

    const-string v5, "certificate"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 168
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ServerKeyExchange;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v16, v1

    check-cast v16, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ServerKeyExchange;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v17, v1

    check-cast v17, [Ljava/util/Map$Entry;

    const-string v12, "SERVER_KEY_EXCHANGE"

    const/16 v13, 0x9

    const/16 v14, 0xc

    const-string v15, "server_key_exchange"

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 183
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v11, 0x3

    new-array v1, v11, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t10HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v10

    move-object v6, v1

    check-cast v6, [Ljava/util/Map$Entry;

    new-array v1, v11, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t10HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v10

    move-object v7, v1

    check-cast v7, [Ljava/util/Map$Entry;

    const-string v2, "CERTIFICATE_REQUEST"

    const/16 v3, 0xa

    const/16 v4, 0xd

    const-string v5, "certificate_request"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 214
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ServerHelloDone;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v17, v1

    check-cast v17, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ServerHelloDone;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v18, v1

    check-cast v18, [Ljava/util/Map$Entry;

    const-string v13, "SERVER_HELLO_DONE"

    const/16 v14, 0xb

    const/16 v15, 0xe

    const-string v16, "server_hello_done"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO_DONE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 229
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v4, Lorg/openjsse/sun/security/ssl/CertificateVerify;->s30HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_30:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v9

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v4, Lorg/openjsse/sun/security/ssl/CertificateVerify;->t10HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_10_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v8

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v4, Lorg/openjsse/sun/security/ssl/CertificateVerify;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v10

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v4, Lorg/openjsse/sun/security/ssl/CertificateVerify;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v11

    move-object v6, v2

    check-cast v6, [Ljava/util/Map$Entry;

    new-array v1, v1, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateVerify;->s30HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_30:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateVerify;->t10HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_10_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateVerify;->t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateVerify;->t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    move-object v7, v1

    check-cast v7, [Ljava/util/Map$Entry;

    const-string v2, "CERTIFICATE_VERIFY"

    const/16 v3, 0xc

    const/16 v4, 0xf

    const-string v5, "certificate_verify"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 268
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ClientKeyExchange;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v16, v1

    check-cast v16, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ClientKeyExchange;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v17, v1

    check-cast v17, [Ljava/util/Map$Entry;

    const-string v12, "CLIENT_KEY_EXCHANGE"

    const/16 v13, 0xd

    const/16 v14, 0x10

    const-string v15, "client_key_exchange"

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 283
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v10, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Finished;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Finished;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    move-object v6, v1

    check-cast v6, [Ljava/util/Map$Entry;

    new-array v1, v10, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Finished;->t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Finished;->t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    move-object v7, v1

    check-cast v7, [Ljava/util/Map$Entry;

    const-string v2, "FINISHED"

    const/16 v3, 0xe

    const/16 v4, 0x14

    const-string v5, "finished"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 306
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/16 v1, 0x15

    const-string v2, "certificate_url"

    const-string v3, "CERTIFICATE_URL"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_URL:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 308
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateStatus;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object v15, v1

    check-cast v15, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateStatus;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v16, v1

    check-cast v16, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateStatus;->handshakeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v17, v1

    check-cast v17, [Ljava/util/Map$Entry;

    const-string v11, "CERTIFICATE_STATUS"

    const/16 v12, 0x10

    const/16 v13, 0x16

    const-string v14, "certificate_status"

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_STATUS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 329
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/16 v1, 0x17

    const-string v2, "supplemental_data"

    const-string v3, "SUPPLEMENTAL_DATA"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SUPPLEMENTAL_DATA:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 331
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/KeyUpdate;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object v15, v1

    check-cast v15, [Ljava/util/Map$Entry;

    new-array v1, v8, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/KeyUpdate;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    move-object/from16 v16, v1

    check-cast v16, [Ljava/util/Map$Entry;

    const-string v11, "KEY_UPDATE"

    const/16 v12, 0x12

    const/16 v13, 0x18

    const-string v14, "key_update"

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 345
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v1, -0x2

    const-string v2, "message_hash"

    const-string v3, "MESSAGE_HASH"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->MESSAGE_HASH:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 346
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v1, -0x1

    const-string v2, "not_applicable"

    const-string v3, "NOT_APPLICABLE"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 34
    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v9, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v10, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NEW_SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLHandshake;->END_OF_EARLY_DATA:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v12, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v13, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v14, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v15, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v16, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO_DONE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v17, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v18, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v20, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_URL:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v21, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_STATUS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v22, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SUPPLEMENTAL_DATA:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v23, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v24, Lorg/openjsse/sun/security/ssl/SSLHandshake;->MESSAGE_HASH:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v25, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    filled-new-array/range {v5 .. v25}, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 10
    .param p3, "id"    # B
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Map$Entry;

    move-object v7, v1

    check-cast v7, [Ljava/util/Map$Entry;

    new-array v1, v0, [Ljava/util/Map$Entry;

    move-object v8, v1

    check-cast v8, [Ljava/util/Map$Entry;

    new-array v0, v0, [Ljava/util/Map$Entry;

    move-object v9, v0

    check-cast v9, [Ljava/util/Map$Entry;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v9}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    .line 363
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V
    .locals 9
    .param p3, "id"    # B
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/SSLConsumer;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/HandshakeProducer;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p5, "handshakeConsumers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLConsumer;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    .local p6, "handshakeProducers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/HandshakeProducer;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    move-object v8, v0

    check-cast v8, [Ljava/util/Map$Entry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SSLHandshake;-><init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    .line 373
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V
    .locals 0
    .param p3, "id"    # B
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/SSLConsumer;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/HandshakeProducer;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/HandshakeAbsence;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)V"
        }
    .end annotation

    .line 378
    .local p5, "handshakeConsumers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLConsumer;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    .local p6, "handshakeProducers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/HandshakeProducer;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    .local p7, "handshakeAbsence":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/HandshakeAbsence;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 380
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 381
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->name:Ljava/lang/String;

    .line 382
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->handshakeConsumers:[Ljava/util/Map$Entry;

    .line 383
    iput-object p6, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->handshakeProducers:[Ljava/util/Map$Entry;

    .line 384
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->handshakeAbsences:[Ljava/util/Map$Entry;

    .line 385
    return-void
.end method

.method private getHandshakeConsumer(Lorg/openjsse/sun/security/ssl/ConnectionContext;)Lorg/openjsse/sun/security/ssl/SSLConsumer;
    .locals 12
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;

    .line 400
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->handshakeConsumers:[Ljava/util/Map$Entry;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 401
    return-object v1

    .line 405
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 407
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 416
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .local v2, "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_1

    .line 409
    .end local v2    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_2
    :goto_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v2, v3, :cond_3

    .line 411
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .restart local v2    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_1

    .line 413
    .end local v2    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_3
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 420
    .restart local v2    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :goto_1
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->handshakeConsumers:[Ljava/util/Map$Entry;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    .line 421
    .local v7, "phe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLConsumer;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    array-length v9, v8

    move v10, v5

    :goto_3
    if-ge v10, v9, :cond_5

    aget-object v11, v8, v10

    .line 422
    .local v11, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    if-ne v2, v11, :cond_4

    .line 423
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLConsumer;

    return-object v1

    .line 421
    .end local v11    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 420
    .end local v7    # "phe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLConsumer;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 428
    :cond_6
    return-object v1
.end method

.method private getHandshakeProducer(Lorg/openjsse/sun/security/ssl/ConnectionContext;)Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    .locals 12
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;

    .line 445
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->handshakeConsumers:[Ljava/util/Map$Entry;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 446
    return-object v1

    .line 450
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 452
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 461
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .local v2, "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_1

    .line 454
    .end local v2    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_2
    :goto_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v2, v3, :cond_3

    .line 456
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .restart local v2    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_1

    .line 458
    .end local v2    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_3
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 465
    .restart local v2    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :goto_1
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->handshakeProducers:[Ljava/util/Map$Entry;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    .line 466
    .local v7, "phe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/HandshakeProducer;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    array-length v9, v8

    move v10, v5

    :goto_3
    if-ge v10, v9, :cond_5

    aget-object v11, v8, v10

    .line 467
    .local v11, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    if-ne v2, v11, :cond_4

    .line 468
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-object v1

    .line 466
    .end local v11    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 465
    .end local v7    # "phe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/HandshakeProducer;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 473
    :cond_6
    return-object v1
.end method

.method static isKnown(B)Z
    .locals 6
    .param p0, "id"    # B

    .line 497
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->values()[Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 498
    .local v4, "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    iget-byte v5, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v5, p0, :cond_0

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq p0, v5, :cond_0

    .line 499
    const/4 v0, 0x1

    return v0

    .line 497
    .end local v4    # "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    :cond_1
    return v2
.end method

.method static final kickstart(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 1
    .param p0, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    instance-of v0, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 518
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate;->kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;

    invoke-interface {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;)[B

    goto :goto_0

    .line 525
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;

    invoke-interface {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;)[B

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    sget-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate;->kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;

    invoke-interface {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;)[B

    goto :goto_0

    .line 541
    :cond_2
    sget-object v0, Lorg/openjsse/sun/security/ssl/HelloRequest;->kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;

    invoke-interface {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;)[B

    .line 544
    :goto_0
    return-void
.end method

.method static nameOf(B)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # B

    .line 487
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->values()[Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 488
    .local v3, "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v4, p0, :cond_0

    .line 489
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->name:Ljava/lang/String;

    return-object v0

    .line 487
    .end local v3    # "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN-HANDSHAKE-MESSAGE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 34
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SSLHandshake;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->getHandshakeConsumer(Lorg/openjsse/sun/security/ssl/ConnectionContext;)Lorg/openjsse/sun/security/ssl/SSLConsumer;

    move-result-object v0

    .line 391
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V

    .line 397
    return-void

    .line 394
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported handshake consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->getHandshakeProducer(Lorg/openjsse/sun/security/ssl/ConnectionContext;)Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    move-result-object v0

    .line 435
    .local v0, "hp":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    if-eqz v0, :cond_0

    .line 436
    invoke-interface {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v1

    return-object v1

    .line 438
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported handshake producer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->name:Ljava/lang/String;

    return-object v0
.end method
