.class abstract Lorg/openjsse/sun/security/ssl/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/Authenticator$DTLS10Mac;,
        Lorg/openjsse/sun/security/ssl/Authenticator$DTLSNullMac;,
        Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Mac;,
        Lorg/openjsse/sun/security/ssl/Authenticator$SSL30Mac;,
        Lorg/openjsse/sun/security/ssl/Authenticator$SSLNullMac;,
        Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;,
        Lorg/openjsse/sun/security/ssl/Authenticator$MAC;,
        Lorg/openjsse/sun/security/ssl/Authenticator$DTLS13Authenticator;,
        Lorg/openjsse/sun/security/ssl/Authenticator$DTLS10Authenticator;,
        Lorg/openjsse/sun/security/ssl/Authenticator$DTLSNullAuthenticator;,
        Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;,
        Lorg/openjsse/sun/security/ssl/Authenticator$TLS13Authenticator;,
        Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Authenticator;,
        Lorg/openjsse/sun/security/ssl/Authenticator$SSL30Authenticator;,
        Lorg/openjsse/sun/security/ssl/Authenticator$SSLNullAuthenticator;,
        Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;
    }
.end annotation


# instance fields
.field protected final block:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0
    .param p1, "block"    # [B

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/Authenticator;->block:[B

    .line 48
    return-void
.end method

.method synthetic constructor <init>([BLorg/openjsse/sun/security/ssl/Authenticator$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/Authenticator$1;

    .line 41
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/Authenticator;-><init>([B)V

    return-void
.end method

.method static nullDtlsMac()Lorg/openjsse/sun/security/ssl/Authenticator;
    .locals 1

    .line 99
    new-instance v0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSNullMac;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSNullMac;-><init>()V

    return-object v0
.end method

.method static nullTlsMac()Lorg/openjsse/sun/security/ssl/Authenticator;
    .locals 1

    .line 95
    new-instance v0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLNullMac;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$SSLNullMac;-><init>()V

    return-object v0
.end method

.method static final toLong([B)J
    .locals 8
    .param p0, "recordEnS"    # [B

    .line 630
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 631
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v2, v0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v0, 0x38

    shl-long/2addr v2, v0

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x30

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x28

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x18

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x10

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    shl-long v0, v6, v1

    or-long/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 641
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;
    .locals 2
    .param p0, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 55
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS13Authenticator;

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS13Authenticator;-><init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/Authenticator$1;)V

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS10Authenticator;

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS10Authenticator;-><init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/Authenticator$1;)V

    return-object v0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    new-instance v0, Lorg/openjsse/sun/security/ssl/Authenticator$TLS13Authenticator;

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/Authenticator$TLS13Authenticator;-><init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/Authenticator$1;)V

    return-object v0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS10PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    new-instance v0, Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Authenticator;

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Authenticator;-><init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/Authenticator$1;)V

    return-object v0

    .line 67
    :cond_3
    new-instance v0, Lorg/openjsse/sun/security/ssl/Authenticator$SSL30Authenticator;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/Authenticator$SSL30Authenticator;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator$1;)V

    return-object v0
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/Authenticator;
    .locals 2
    .param p0, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p1, "macAlg"    # Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjsse/sun/security/ssl/Authenticator;",
            ":",
            "Lorg/openjsse/sun/security/ssl/Authenticator$MAC;",
            ">(",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            "Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;",
            "Ljavax/crypto/SecretKey;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 77
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS10Mac;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS10Mac;-><init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Ljavax/crypto/SecretKey;)V

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No MacAlg used in DTLS 1.3"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS10PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    new-instance v0, Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Mac;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Mac;-><init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Ljavax/crypto/SecretKey;)V

    return-object v0

    .line 89
    :cond_2
    new-instance v0, Lorg/openjsse/sun/security/ssl/Authenticator$SSL30Mac;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjsse/sun/security/ssl/Authenticator$SSL30Mac;-><init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Ljavax/crypto/SecretKey;)V

    return-object v0

    .line 85
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No MacAlg used in TLS 1.3"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method acquireAuthenticationBytes(BI[B)[B
    .locals 2
    .param p1, "type"    # B
    .param p2, "length"    # I
    .param p3, "sequence"    # [B

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Used by AEAD algorithms only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final increaseSequenceNumber()V
    .locals 3

    .line 151
    const/4 v0, 0x7

    .line 152
    .local v0, "k":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/Authenticator;->block:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-nez v2, :cond_0

    .line 153
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method abstract seqNumIsHuge()Z
.end method

.method abstract seqNumOverflow()Z
.end method

.method final sequenceNumber()[B
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator;->block:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method setEpochNumber(I)V
    .locals 2
    .param p1, "epoch"    # I

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Epoch numbers apply to DTLS protocols only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
