.class final Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
.super Ljava/lang/Object;
.source "DHKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLPossession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DHKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DHEPossession"
.end annotation


# instance fields
.field final namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field final privateKey:Ljava/security/PrivateKey;

.field final publicKey:Ljavax/crypto/interfaces/DHPublicKey;


# direct methods
.method constructor <init>(ILjava/security/SecureRandom;)V
    .locals 6
    .param p1, "keyLength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->definedParams:Ljava/util/Map;

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 131
    .local v0, "params":Ljavax/crypto/spec/DHParameterSpec;
    :try_start_0
    const-string v1, "DiffieHellman"

    .line 132
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 133
    .local v1, "kpg":Ljava/security/KeyPairGenerator;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v1, v0, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v1, p1, p2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 139
    :goto_0
    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->generateDHKeyPair(Ljava/security/KeyPairGenerator;)Ljava/security/KeyPair;

    move-result-object v2

    .line 140
    .local v2, "kp":Ljava/security/KeyPair;
    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->privateKey:Ljava/security/PrivateKey;

    .line 146
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljavax/crypto/interfaces/DHPublicKey;

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->publicKey:Ljavax/crypto/interfaces/DHPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "kp":Ljava/security/KeyPair;
    nop

    .line 152
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->publicKey:Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(Ljavax/crypto/spec/DHParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 153
    return-void

    .line 141
    .restart local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .restart local v2    # "kp":Ljava/security/KeyPair;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not generate DH keypair of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local p1    # "keyLength":I
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "kp":Ljava/security/KeyPair;
    .restart local v0    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .restart local p1    # "keyLength":I
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "gse":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not generate DH keypair"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "credentials"    # Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 155
    const-string v0, "Could not generate DH keypair"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    :try_start_0
    const-string v1, "DiffieHellman"

    .line 158
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 159
    .local v1, "kpg":Ljava/security/KeyPairGenerator;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->popPublicKey:Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 160
    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->generateDHKeyPair(Ljava/security/KeyPairGenerator;)Ljava/security/KeyPair;

    move-result-object v2

    .line 161
    .local v2, "kp":Ljava/security/KeyPair;
    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->privateKey:Ljava/security/PrivateKey;

    .line 165
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljavax/crypto/interfaces/DHPublicKey;

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->publicKey:Ljavax/crypto/interfaces/DHPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "kp":Ljava/security/KeyPair;
    nop

    .line 171
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 172
    return-void

    .line 162
    .restart local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .restart local v2    # "kp":Ljava/security/KeyPair;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "credentials":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "kp":Ljava/security/KeyPair;
    .restart local p1    # "credentials":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "gse":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 106
    const-string v0, "Could not generate DH keypair"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    :try_start_0
    const-string v1, "DiffieHellman"

    .line 109
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 110
    .local v1, "kpg":Ljava/security/KeyPairGenerator;
    nop

    .line 111
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljavax/crypto/spec/DHParameterSpec;

    .line 112
    .local v2, "params":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v1, v2, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 113
    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->generateDHKeyPair(Ljava/security/KeyPairGenerator;)Ljava/security/KeyPair;

    move-result-object v3

    .line 114
    .local v3, "kp":Ljava/security/KeyPair;
    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->privateKey:Ljava/security/PrivateKey;

    .line 118
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljavax/crypto/interfaces/DHPublicKey;

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->publicKey:Ljavax/crypto/interfaces/DHPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local v3    # "kp":Ljava/security/KeyPair;
    nop

    .line 124
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 125
    return-void

    .line 115
    .restart local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .restart local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .restart local v3    # "kp":Ljava/security/KeyPair;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v4
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local v3    # "kp":Ljava/security/KeyPair;
    .restart local p1    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "gse":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private generateDHKeyPair(Ljava/security/KeyPairGenerator;)Ljava/security/KeyPair;
    .locals 6
    .param p1, "kpg"    # Ljava/security/KeyPairGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 177
    nop

    .line 178
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/security/util/KeyUtil;->isOracleJCEProvider(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 179
    .local v0, "doExtraValiadtion":Z
    const/4 v1, 0x0

    .line 180
    .local v1, "isRecovering":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_2

    .line 181
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 183
    .local v3, "kp":Ljava/security/KeyPair;
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->getDHPublicKeySpec(Ljava/security/PublicKey;)Ljavax/crypto/spec/DHPublicKeySpec;

    move-result-object v4

    .line 186
    .local v4, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :try_start_0
    invoke-static {v4}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_1

    .line 187
    :catch_0
    move-exception v5

    .line 188
    .local v5, "ivke":Ljava/security/InvalidKeyException;
    if-nez v1, :cond_0

    .line 192
    const/4 v1, 0x1

    .line 193
    nop

    .line 180
    .end local v3    # "kp":Ljava/security/KeyPair;
    .end local v4    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    .end local v5    # "ivke":Ljava/security/InvalidKeyException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .restart local v3    # "kp":Ljava/security/KeyPair;
    .restart local v4    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    .restart local v5    # "ivke":Ljava/security/InvalidKeyException;
    :cond_0
    throw v5

    .line 197
    .end local v4    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    .end local v5    # "ivke":Ljava/security/InvalidKeyException;
    :cond_1
    :goto_1
    return-object v3

    .line 200
    .end local v2    # "i":I
    .end local v3    # "kp":Ljava/security/KeyPair;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getDHPublicKeySpec(Ljava/security/PublicKey;)Ljavax/crypto/spec/DHPublicKeySpec;
    .locals 6
    .param p0, "key"    # Ljava/security/PublicKey;

    .line 204
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_0

    .line 205
    move-object v0, p0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 206
    .local v0, "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    .line 207
    .local v1, "params":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v2, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    .line 208
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 207
    return-object v2

    .line 211
    .end local v0    # "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v1    # "params":Ljavax/crypto/spec/DHParameterSpec;
    :cond_0
    :try_start_0
    const-string v0, "DiffieHellman"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 212
    .local v0, "factory":Ljava/security/KeyFactory;
    const-class v1, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v1

    check-cast v1, Ljavax/crypto/spec/DHPublicKeySpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 213
    .end local v0    # "factory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to get DHPublicKeySpec"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public encode()[B
    .locals 6

    .line 223
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->publicKey:Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Utilities;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 224
    .local v0, "encoded":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->publicKey:Ljavax/crypto/interfaces/DHPublicKey;

    invoke-static {v1}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    ushr-int/lit8 v1, v1, 0x3

    .line 225
    .local v1, "pSize":I
    if-lez v1, :cond_0

    array-length v2, v0

    if-ge v2, v1, :cond_0

    .line 226
    new-array v2, v1, [B

    .line 227
    .local v2, "buffer":[B
    array-length v3, v0

    sub-int v3, v1, v3

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    move-object v0, v2

    .line 232
    .end local v2    # "buffer":[B
    :cond_0
    return-object v0
.end method
