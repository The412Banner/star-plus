.class final Lorg/openjsse/sun/security/ssl/ServerHello;
.super Ljava/lang/Object;
.source "ServerHello.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestConsumer;,
        Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloConsumer;,
        Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloConsumer;,
        Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloConsumer;,
        Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestReproducer;,
        Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestProducer;,
        Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloProducer;,
        Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer;,
        Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    }
.end annotation


# static fields
.field private static final d12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field private static final d13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field private static final d13HrrHandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final hrrHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final hrrReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field private static final t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field private static final t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field private static final t13HrrHandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloProducer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestProducer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->hrrHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 63
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestReproducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestReproducer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->hrrReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 66
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 68
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 71
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->d12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->d13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 76
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->t13HrrHandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 78
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->d13HrrHandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .locals 1

    .line 53
    sget-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->d13HrrHandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-object v0
.end method

.method static synthetic access$1200()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .locals 1

    .line 53
    sget-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->t13HrrHandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-object v0
.end method

.method static synthetic access$1300()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .locals 1

    .line 53
    sget-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->d13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-object v0
.end method

.method static synthetic access$1400()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .locals 1

    .line 53
    sget-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->d12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-object v0
.end method

.method static synthetic access$1500()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .locals 1

    .line 53
    sget-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-object v0
.end method

.method static synthetic access$1600()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .locals 1

    .line 53
    sget-object v0, Lorg/openjsse/sun/security/ssl/ServerHello;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-object v0
.end method

.method static synthetic access$900(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p1, "x1"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lorg/openjsse/sun/security/ssl/ServerHello;->setUpPskKD(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method private static setUpPskKD(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V
    .locals 5
    .param p0, "hc"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p1, "psk"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 1156
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl,handshake"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Using PSK to derive early secret"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 1162
    .local v0, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    new-instance v1, Lorg/openjsse/sun/security/ssl/HKDF;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/HKDF;-><init>(Ljava/lang/String;)V

    .line 1163
    .local v1, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    iget v2, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    new-array v2, v2, [B

    .line 1164
    .local v2, "zeros":[B
    const-string v3, "TlsEarlySecret"

    invoke-virtual {v1, v2, p1, v3}, Lorg/openjsse/sun/security/ssl/HKDF;->extract([BLjavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 1165
    .local v3, "earlySecret":Ljavax/crypto/SecretKey;
    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    invoke-direct {v4, p0, v3}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    .end local v0    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .end local v1    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .end local v2    # "zeros":[B
    .end local v3    # "earlySecret":Ljavax/crypto/SecretKey;
    nop

    .line 1171
    return-void

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Could not generate secret"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1
.end method
