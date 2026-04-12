.class final Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossessionGenerator;
.super Ljava/lang/Object;
.source "RSAKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EphemeralRSAPossessionGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/RSAKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/RSAKeyExchange$1;

    .line 74
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossessionGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 84
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 85
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getEphemeralKeyManager()Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;

    move-result-object v1

    .line 86
    .local v1, "ekm":Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 87
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    .line 86
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;->getRSAKeyPair(ZLjava/security/SecureRandom;)Ljava/security/KeyPair;

    move-result-object v2

    .line 88
    .local v2, "kp":Ljava/security/KeyPair;
    if-eqz v2, :cond_0

    .line 89
    new-instance v3, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;

    .line 90
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;-><init>(Ljava/security/PrivateKey;Ljava/security/interfaces/RSAPublicKey;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-object v3

    .line 93
    :cond_0
    return-object v0

    .line 95
    .end local v1    # "ekm":Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;
    .end local v2    # "kp":Ljava/security/KeyPair;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "rte":Ljava/lang/RuntimeException;
    return-object v0
.end method
