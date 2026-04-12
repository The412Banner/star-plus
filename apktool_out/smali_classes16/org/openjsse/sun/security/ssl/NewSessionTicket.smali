.class final Lorg/openjsse/sun/security/ssl/NewSessionTicket;
.super Ljava/lang/Object;
.source "NewSessionTicket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketConsumer;,
        Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketProducer;,
        Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketKickstartProducer;,
        Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;
    }
.end annotation


# static fields
.field private static final MAX_TICKET_LIFETIME:I = 0x93a80

.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketConsumer;-><init>(Lorg/openjsse/sun/security/ssl/NewSessionTicket$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/NewSessionTicket;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketKickstartProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketKickstartProducer;-><init>(Lorg/openjsse/sun/security/ssl/NewSessionTicket$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/NewSessionTicket;->kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;

    .line 51
    new-instance v0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketProducer;-><init>(Lorg/openjsse/sun/security/ssl/NewSessionTicket$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/NewSessionTicket;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;Ljavax/crypto/SecretKey;[B)Ljavax/crypto/SecretKey;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .param p1, "x1"    # Ljavax/crypto/SecretKey;
    .param p2, "x2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/NewSessionTicket;->derivePreSharedKey(Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;Ljavax/crypto/SecretKey;[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static derivePreSharedKey(Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;Ljavax/crypto/SecretKey;[B)Ljavax/crypto/SecretKey;
    .locals 4
    .param p0, "hashAlg"    # Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .param p1, "resumptionMasterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "nonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    :try_start_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/HKDF;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HKDF;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    const-string v1, "tls13 resumption"

    .line 180
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget v2, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    .line 179
    invoke-static {v1, p2, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->createHkdfInfo([B[BI)[B

    move-result-object v1

    .line 181
    .local v1, "hkdfInfo":[B
    iget v2, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    const-string v3, "TlsPreSharedKey"

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/openjsse/sun/security/ssl/HKDF;->expand(Ljavax/crypto/SecretKey;[BILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 183
    .end local v0    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .end local v1    # "hkdfInfo":[B
    :catch_0
    move-exception v0

    .line 184
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Could not derive PSK"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1
.end method
