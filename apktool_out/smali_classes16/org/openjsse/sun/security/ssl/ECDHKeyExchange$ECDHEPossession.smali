.class final Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;
.super Ljava/lang/Object;
.source "ECDHKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLPossession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ECDHEPossession"
.end annotation


# instance fields
.field final namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field final privateKey:Ljava/security/PrivateKey;

.field final publicKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "credentials"    # Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->popPublicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 126
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    :try_start_0
    const-string v1, "EC"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 127
    .local v1, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v1, v0, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 128
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 129
    .local v2, "kp":Ljava/security/KeyPair;
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->privateKey:Ljava/security/PrivateKey;

    .line 130
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->publicKey:Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "kp":Ljava/security/KeyPair;
    nop

    .line 136
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 137
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not generate ECDH keypair"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 109
    .local v0, "kpg":Ljava/security/KeyPairGenerator;
    nop

    .line 110
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    .line 111
    .local v1, "params":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v0, v1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 112
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 113
    .local v2, "kp":Ljava/security/KeyPair;
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->privateKey:Ljava/security/PrivateKey;

    .line 114
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->publicKey:Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v1    # "params":Ljava/security/spec/ECGenParameterSpec;
    .end local v2    # "kp":Ljava/security/KeyPair;
    nop

    .line 120
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 121
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not generate ECDH keypair"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method checkConstraints(Ljava/security/AlgorithmConstraints;[B)V
    .locals 7
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p2, "encodedPoint"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 183
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 184
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    nop

    .line 185
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 186
    .local v1, "point":Ljava/security/spec/ECPoint;
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 188
    .local v2, "spec":Ljava/security/spec/ECPublicKeySpec;
    const-string v3, "EC"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 189
    .local v3, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    .line 192
    .local v4, "pubKey":Ljava/security/interfaces/ECPublicKey;
    sget-object v5, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 193
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    .line 192
    invoke-interface {p1, v5, v4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v1    # "point":Ljava/security/spec/ECPoint;
    .end local v2    # "spec":Ljava/security/spec/ECPublicKeySpec;
    .end local v3    # "kf":Ljava/security/KeyFactory;
    .end local v4    # "pubKey":Ljava/security/interfaces/ECPublicKey;
    nop

    .line 201
    return-void

    .line 194
    .restart local v0    # "params":Ljava/security/spec/ECParameterSpec;
    .restart local v1    # "point":Ljava/security/spec/ECPoint;
    .restart local v2    # "spec":Ljava/security/spec/ECPublicKeySpec;
    .restart local v3    # "kf":Ljava/security/KeyFactory;
    .restart local v4    # "pubKey":Ljava/security/interfaces/ECPublicKey;
    :cond_0
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string v6, "ECPublicKey does not comply to algorithm constraints"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "constraints":Ljava/security/AlgorithmConstraints;
    .end local p2    # "encodedPoint":[B
    throw v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v1    # "point":Ljava/security/spec/ECPoint;
    .end local v2    # "spec":Ljava/security/spec/ECPublicKeySpec;
    .end local v3    # "kf":Ljava/security/KeyFactory;
    .end local v4    # "pubKey":Ljava/security/interfaces/ECPublicKey;
    .restart local p1    # "constraints":Ljava/security/AlgorithmConstraints;
    .restart local p2    # "encodedPoint":[B
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Could not generate ECPublicKey"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1
.end method

.method public encode()[B
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->publicKey:Ljava/security/interfaces/ECPublicKey;

    .line 142
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Lsun/security/util/ECUtil;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v0

    return-object v0
.end method

.method getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "peerPublicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 151
    :try_start_0
    const-string v0, "ECDH"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 152
    .local v0, "ka":Ljavax/crypto/KeyAgreement;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 154
    const-string v1, "TlsPremasterSecret"

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 155
    .end local v0    # "ka":Ljavax/crypto/KeyAgreement;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Could not generate secret"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1
.end method

.method getAgreedSecret([B)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "encodedPoint"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 166
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    nop

    .line 167
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 168
    .local v1, "point":Ljava/security/spec/ECPoint;
    const-string v2, "EC"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 169
    .local v2, "kf":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, v1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 170
    .local v3, "spec":Ljava/security/spec/ECPublicKeySpec;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 171
    .local v4, "peerPublicKey":Ljava/security/PublicKey;
    invoke-virtual {p0, v4}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 172
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v1    # "point":Ljava/security/spec/ECPoint;
    .end local v2    # "kf":Ljava/security/KeyFactory;
    .end local v3    # "spec":Ljava/security/spec/ECPublicKeySpec;
    .end local v4    # "peerPublicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Could not generate secret"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1
.end method
