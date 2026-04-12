.class final Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;
.super Ljava/lang/Object;
.source "ECDHKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ECDHEKAKeyDerivation"
.end annotation


# instance fields
.field private final context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

.field private final localPrivateKey:Ljava/security/PrivateKey;

.field private final peerPublicKey:Ljava/security/PublicKey;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "localPrivateKey"    # Ljava/security/PrivateKey;
    .param p3, "peerPublicKey"    # Ljava/security/PublicKey;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 409
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->localPrivateKey:Ljava/security/PrivateKey;

    .line 410
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->peerPublicKey:Ljava/security/PublicKey;

    .line 411
    return-void
.end method

.method private t12DeriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    :try_start_0
    const-string v0, "ECDH"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 427
    .local v0, "ka":Ljavax/crypto/KeyAgreement;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->localPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 428
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->peerPublicKey:Ljava/security/PublicKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 429
    const-string v1, "TlsPremasterSecret"

    .line 430
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 432
    .local v1, "preMasterSecret":Ljavax/crypto/SecretKey;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 433
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    move-result-object v2

    .line 435
    .local v2, "mskd":Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;
    if-eqz v2, :cond_0

    .line 441
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v3

    .line 443
    .local v3, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v4, "MasterSecret"

    invoke-interface {v3, v4, p2}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    return-object v4

    .line 437
    .end local v3    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :cond_0
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No expected master key derivation for protocol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "algorithm":Ljava/lang/String;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v0    # "ka":Ljavax/crypto/KeyAgreement;
    .end local v1    # "preMasterSecret":Ljavax/crypto/SecretKey;
    .end local v2    # "mskd":Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;
    .restart local p1    # "algorithm":Ljava/lang/String;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_0
    move-exception v0

    .line 445
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Could not generate secret"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1
.end method

.method private t13DeriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;
    .locals 10
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    :try_start_0
    const-string v0, "ECDH"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 454
    .local v0, "ka":Ljavax/crypto/KeyAgreement;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->localPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 455
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->peerPublicKey:Ljava/security/PublicKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 456
    const-string v1, "TlsPremasterSecret"

    .line 457
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 459
    .local v1, "sharedSecret":Ljavax/crypto/SecretKey;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 460
    .local v2, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 461
    .local v3, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    new-instance v4, Lorg/openjsse/sun/security/ssl/HKDF;

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/openjsse/sun/security/ssl/HKDF;-><init>(Ljava/lang/String;)V

    .line 462
    .local v4, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    if-nez v3, :cond_0

    .line 465
    iget v5, v2, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    new-array v5, v5, [B

    .line 466
    .local v5, "zeros":[B
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "TlsPreSharedSecret"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 468
    .local v6, "ikm":Ljavax/crypto/spec/SecretKeySpec;
    const-string v7, "TlsEarlySecret"

    .line 469
    invoke-virtual {v4, v5, v6, v7}, Lorg/openjsse/sun/security/ssl/HKDF;->extract([BLjavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 470
    .local v7, "earlySecret":Ljavax/crypto/SecretKey;
    new-instance v8, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    invoke-direct {v8, v9, v7}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    move-object v3, v8

    .line 474
    .end local v5    # "zeros":[B
    .end local v6    # "ikm":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "earlySecret":Ljavax/crypto/SecretKey;
    :cond_0
    const-string v5, "TlsSaltSecret"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 477
    .local v5, "saltSecret":Ljavax/crypto/SecretKey;
    invoke-virtual {v4, v5, v1, p1}, Lorg/openjsse/sun/security/ssl/HKDF;->extract(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 478
    .end local v0    # "ka":Ljavax/crypto/KeyAgreement;
    .end local v1    # "sharedSecret":Ljavax/crypto/SecretKey;
    .end local v2    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .end local v3    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v4    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .end local v5    # "saltSecret":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 479
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Could not generate secret"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1
.end method


# virtual methods
.method public deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->t12DeriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;->t13DeriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method
